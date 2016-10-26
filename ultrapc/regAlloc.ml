open Asm
open Reg

(* for register coalescing *)
(* [XXX] Callがあったら、そこから先は無意味というか逆効果なので追わない。
         そのために「Callがあったかどうか」を返り値の第1要素に含める。 *)
let rec target' src (dest, t) = function
  | Mov(x) when x = src && is_reg dest ->
          (
          match t with
            | Type.Unit _ -> assert false
            | Type.Float _ -> assert false
              | _ -> ()
          );

      false, [dest]
  | FMovD(x) when x = src && is_reg dest ->
          (match t with
          | Type.Float _ -> ()
          | _ -> assert false
          );
      false, [dest]
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2)
  | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
      let c1, rs1 = target src (dest, t) e1 in
      let c2, rs2 = target src (dest, t) e2 in
      c1 && c2, rs1 @ rs2
  | CallCls(x, ys, zs) ->
      true, (target_args src regs 0 ys @
	     target_args src fregs 0 zs @
             if x = src then [reg_cl] else [])
  | CallDir(_, ys, zs) ->
      true, (target_args src regs 0 ys @
	     target_args src fregs 0 zs)
  | _ -> false, []
and target src dest = function (* register targeting (caml2html: regalloc_target) *)
  | Ans(exp, info) -> target' src dest exp
  | Let(xt, exp, e, info) ->
      let c1, rs1 = target' src xt exp in
      if c1 then true, rs1 else
      let c2, rs2 = target src dest e in
      c2, rs1 @ rs2
and target_args src all n = function (* auxiliary function for Call *)
  | [] -> []
  | y :: ys when src = y (* && n <= List.length all - 2 *) ->
      all.(n) :: target_args src all (n + 1) ys
  | _ :: ys -> target_args src all (n + 1) ys
(* "register sourcing" (?) as opposed to register targeting *)
(* （x86の2オペランド命令のためのregister coalescing） *)
let rec source t = function
  | Ans(exp, info) -> source' t exp
  | Let(_, _, e, info) -> source t e
and source' t = function
  | Mov(x) | Neg(x) | Add(x, C _) | Sub(x, _) | FMovD(x) | FNegD(x) | FSubD(x, _) | FDivD(x, _) -> [x]
  | Add(x, V y) | FAddD(x, y) | FMulD(x, y) -> [x; y]
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | IfGE(_, _, e1, e2) | IfFEq(_, _, e1, e2) | IfFLE(_, _, e1, e2) ->
      source t e1 @ source t e2
  | CallCls _ | CallDir _ -> (match t with Type.Unit _ -> [] | Type.Float _-> [fregs.(0)] | _ -> [regs.(0)])
  | _ -> []

type alloc_result = (* allocにおいてspillingがあったかどうかを表すデータ型 *)
  | Alloc of Id.t (* allocated register *)
  | Spill of Id.t (* spilled variable *)
let rec alloc cont regenv x t prefer =
  (* allocate a register or spill a variable *)
  assert (not (M.mem x regenv));
  let all =
    match t with
    | Type.Unit _-> [] (* dummy *)
    | Type.Float _ -> allfregs
    | _ -> allregs in
  if all = [] then Alloc("%unit", Info.dump ()) else (* [XX] ad hoc *)
  if is_reg x then Alloc(x) else
  let free = fv cont in
  try
    let live = (* 生きているレジスタ *)
      List.fold_left
        (fun live y ->
	  if is_reg y then S.add y live else
          try S.add (M.find y regenv) live
          with Not_found -> live)
        S.empty
        free in
    let r = (* そうでないレジスタを探す *)
      List.find
        (fun r -> not (S.mem r live))
        (prefer @ all) in
    (* Format.eprintf "allocated %s to %s@." x r; *)
    Alloc(r)
  with Not_found ->
    Format.eprintf "register allocation failed for %s@." (M.to_string x);
    let y = (* 型の合うレジスタ変数を探す *)
      List.find
        (fun y ->
	  not (is_reg y) &&
          try List.mem (M.find y regenv) all
          with Not_found -> false)
        (List.rev free) in
    Format.eprintf "spilling %s from %s@."(Id.to_string y) (M.to_string (M.find y regenv));
    Spill(y)

(* auxiliary function for generate and generate'_and_restore *)
let add x r regenv =
  if is_reg x then (assert (x = r); regenv) else
  M.add x r regenv

(* auxiliary functions for generate' *)
exception NoReg of Id.t * Type.t * Info.t
let find x t regenv =
    match x with
    | Reg _ -> x
    | ID id ->
            try
                M.find id regenv
            with Not_found -> raise (NoReg(id, t, Type.get_info t))

let find' x' regenv info =
  match x' with
  | V(x) -> V(find x (Type.Int info) regenv info)
  | c -> c

let rec generate dest cont regenv = function (* 命令列のレジスタ割り当て (caml2html: regalloc_g) *)
  | Ans(exp, info) -> generate'_and_restore dest cont regenv exp info
  | Let((x, t) as xt, exp, e, info) ->
      assert (not (M.mem x regenv));
      let cont' = concat e dest cont in
      let (e1', regenv1) = generate'_and_restore xt cont' regenv exp info in
      let (_call, targets) = target x dest cont' in
      let sources = source t e1' in
      (* レジスタ間のmovよりメモリを介するswapのほうが問題なので、sourcesよりtargetsを優先 *)
      (match alloc cont' regenv1 x t (targets @ sources) with
      | Spill(y) ->
	  let r = M.find y regenv1 in
	  let (e2', regenv2) = generate dest cont (add x r (M.remove y regenv1)) e in
	  let save =
	    try Save(M.find y regenv, y)
	    with Not_found -> Nop in
      (seq(save, concat e1' (r, t) e2', info), regenv2)
      | Alloc(r) ->
              let (e2', regenv2) = generate dest cont (add x r regenv1) e in
              (concat e1' (r, t) e2', regenv2))
and generate'_and_restore dest cont regenv exp info = (* 使用される変数をスタックからレジスタへRestore (caml2html: regalloc_unspill) *)
  try generate' dest cont regenv info exp
  (*try generate*)
  with NoReg(x, t, info) ->
      (*if out of register, assign to new var*)
    ((* Format.eprintf "restoring %s@." x; *)
     generate dest cont regenv (Let((x, t), Restore(x), Ans(exp, info), info)))
and generate' dest cont regenv info exp = (* 各命令のレジスタ割り当て (caml2html: regalloc_gprime) *)
    let reg_finder reg =
        find reg (Type.Int info) regenv
    in
    let freg_finder reg =
        find reg (Type.Float info) regenv
    in
    let addr_finder = function
        | Relative(reg, loc) -> Relative(reg_finder reg, loc)
        | Dynamic(reg1, s4, reg2) -> Dynamic(reg_finder reg1, s4, reg_finder reg2)
        | other -> other
    in
    match exp with
    | Nop
    | Jump _
    | JumpEQ _
    | JumpLT _
    | JLink _
    | Link
    | Pop
    | Out
    ->
            Ans(exp, info), regenv
    | Addi(reg, loc) ->
            Ans(Addi(reg_finder reg), info), regenv

    | Add (reg1, reg2) ->
            Ans(Add(
                reg_finder reg1,
                reg_finder reg2
                ), info), regenv
    | Sub (reg1, reg2) ->
            Ans(Sub(
                reg_finder reg1,
                reg_finder reg2
                ), info), regenv
    | ShiftL (reg, b5) ->
            Ans(ShiftL(reg_finder reg, b5), info), regenv
    | ShiftR (reg, b5) ->
            Ans(ShiftR(reg_finder reg, b5), info), regenv
    | Load addr -> Ans( Load(addr_finder addr), info), regenv
    | FLoad addr -> Ans( FLoad(addr_finder addr), info), regenv
    | Store (reg, addr) -> Ans(Store(reg_finder reg, addr_finder addr), info), regenv
    | FStore (reg, addr) -> Ans(FStore(reg_finder reg, addr_finder addr), info), regenv

    | FAdd (reg1, reg2) -> Ans(FAdd(freg_finder reg1, freg_finder reg2), info), regenv
    | FSub (reg1, reg2) -> Ans(FSub(freg_finder reg1, freg_finder reg2), info), regenv
    | FMul (reg1, reg2) -> Ans(FMul(freg_finder reg1, freg_finder reg2), info), regenv
    | FDiv (reg1, reg2) -> Ans(FDiv(freg_finder reg1, freg_finder reg2), info), regenv
    | FCmp(reg1, reg2, c3) -> Ans(FCmp(freg_finder reg1, freg_finder reg2, c3), info), regenv
    | FJump(reg, r2, c3) -> Ans(FJump(freg_finder reg, r2, c3), info), regenv
    | Push reg -> Ans(Push(reg_finder reg), info), regenv

    | IfEQ(reg1, reg2, e1, e2) ->
        generate'_if dest cont regenv exp (fun e1' e2' ->
            IfEQ(reg_finder reg1, reg_finder reg2, e1', e2')
    | IfLT(reg1, reg2, e1, e2) ->
        generate'_if dest cont regenv exp (fun e1' e2' ->
            IfLT(reg_finder reg1, reg_finder reg2, e1', e2')
    | FIfEQ(reg1, reg2, e1, e2) ->
        generate'_if dest cont regenv exp (fun e1' e2' ->
            FIfEQ(freg_finder reg1, freg_finder reg2, e1', e2')
    | FIfLT(reg1, reg2, e1, e2) ->
        generate'_if dest cont regenv exp (fun e1' e2' ->
            FIfLT(freg_finder reg1, freg_finder reg2, e1', e2')
    | CallCls(reg, reg_list1, reg_list2) ->
            generate'_call dest cont regenv exp (fun ys zs ->
                CallCls(reg_finder reg, ys, zs)) reg_list1 reg_list2 info
    | CallDir (loc, reg_list1, reg_list2) ->
            generate'_call dest cont regenv exp (fun ys zs -> CallDir(loc, ys, zs)) reg_list1 reg_list2 info
and generate'_if dest cont regenv exp constr e1 e2 info = (* ifのレジスタ割り当て (caml2html: regalloc_if) *)
  let (e1', regenv1) = generate dest cont regenv e1 in
  let (e2', regenv2) = generate dest cont regenv e2 in
  let regenv' = (* 両方に共通のレジスタ変数だけ利用 *)
    List.fold_left
      (fun regenv' x ->
        try
            match x with
            | Reg _ -> regenv'
            | ID id ->
                    let r1 = M.find id regenv1 in
                    let r2 = M.find id  regenv2 in
                    if r1 <> r2 then regenv' else
                        M.add id r1 regenv'
        with Not_found -> regenv')
      M.empty
      (fv cont) in
  (List.fold_left
     (fun e x ->
       if x = fst dest || not (M.mem x regenv) || M.mem x regenv' then e else
       seq(Save(M.find x regenv, x), e, info)) (* そうでない変数は分岐直前にセーブ *)
     (Ans(constr e1' e2', info))
     (fv cont),
   regenv')
and generate'_call dest cont regenv exp constr ys zs info = (* 関数呼び出しのレジスタ割り当て (caml2html: regalloc_call) *)
  (List.fold_left
     (fun e x ->
       if x = fst dest || not (M.mem x regenv) then e else
       seq(Save(M.find x regenv, x), e, info))
     (Ans(constr
	    (List.map (fun y -> find y (Type.Int info) regenv info) ys)
	    (List.map (fun z -> find z (Type.Float info) regenv info) zs), info))
     (fv cont),
   M.empty)

  (*assign register for func*)
let process_def { name = x; args = args; fargs = float_args; body = body; ret = t } = (* 関数のレジスタ割り当て (caml2html: regalloc_h) *)
  let regenv = M.add (Id.to_t x) reg_cl M.empty in
  let (i, arg_regs, regenv) =
    List.fold_left
      (fun (i, arg_regs, regenv) y ->
        let r = regs.(i) in
        (i + 1,
	 arg_regs @ [r],
	 (assert (not (is_reg y));
	  M.add y r regenv)))
      (0, [], regenv)
      args in
  let (d, farg_regs, regenv) =
    List.fold_left
      (fun (d, farg_regs, regenv) z ->
        let fr = fregs.(d) in
        (d + 1,
	 farg_regs @ [fr],
	 (assert (not (is_reg z));
	  M.add z fr regenv)))
      (0, [], regenv)
      float_args in
  let a =
    match t with
    | Type.Unit info -> Id.gentmp (Type.Unit info) info
    | Type.Float info -> fregs.(0)
    | _ -> regs.(0) in
  let info = Asm.get_info body in
  let (body', regenv') = generate (a, t) (Ans(Mov(a), info)) regenv body in
  { name = x; args = arg_regs; fargs = farg_regs; body = body'; ret = t }

  (*assign register*)
let f (Prog(idata, data, fundefs, e)) = (* プログラム全体のレジスタ割り当て (caml2html: regalloc_f) *)
  Format.eprintf "register allocation: may take some time (up to a few minutes, depending on the size of functions)@.";
  let fundefs' = List.map process_def fundefs in
  let info = Asm.get_info e in
  let e', regenv' = generate (ID (Id.gentmp (Type.Unit info) info), Type.Unit info) (Ans(Nop, info)) M.empty e in
  Prog(idata, data, fundefs', e')
