open AsmReg
open Loc
open Cmd
open Reg

let max_nparams = ref 0
let max_nfparams = ref 0

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x info=
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    (let pad =
      if List.length !stackmap mod 2 = 0 then [] else [Id.gentmp (Type.Int info) info] in
    stackmap := !stackmap @ pad @ [x; x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x =
    try
    4 * List.hd (locate x)
    with _ -> failwith (Printf.sprintf "try to restore variable %s before saving it" @@ Id.to_string x)
let stacksize () = List.length !stackmap * 4

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
(*note that one variable appears in left or right at most once*)
(*(shuffle (List.map (fun (x, y) -> Some x, Some y) param_regs));*)
(*regs = list of (Some argument_reg * Some regs[ind])*)
let rec shuffle tmp regs =
  (* remove identical moves *)
  let _, regs = List.partition (fun (x, y) -> x = y) regs in
  (* find acyclic moves *)
  (* regs = array of (x, y) format
   * check all y registers those have another register points to it (_, y)
   *)
  match List.partition (fun (_, y) -> List.mem_assoc y regs ) regs with
  | [], [] -> []
  (*x points to y, and y points to someone else*)
  | (x, y) :: regs, [] -> (* no acyclic moves; resolve a cyclic move *)
          (*prepend new assignment
           * y points to stack top
           *)
      (y, tmp ) :: (x, y) :: shuffle tmp (List.map
         (function
             (*find the place where y points to
              * something like: (x -> y) & (y -> z) ==> (x -> y) (y -> sw) (sw -> z)
              * *)
           | (y', z) when y = y' -> (tmp, z)
           | other -> other
         )
         regs)
  | regs, acyc -> acyc  @ shuffle tmp regs

type dest = Tail | NonTail of Reg.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec generate = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp, info) -> generate' info (dest, exp)
  | dest, Let((x, t), exp, e, info) ->
      generate' info (NonTail(x), exp);
      generate (dest, e)
and generate' info = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
    (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
    | NonTail _, Nop -> ()
    | NonTail _, Print rs when rs = reg_dump -> ()
    | NonTail _, Print rs ->
            append_cmd cmd_print [rs] info

    | NonTail rd, Add (ra, rb) when ra = reg_dump || rb = reg_dump || rd = reg_dump -> ()
    | NonTail rd, Add (ra, rb) ->
        append_cmd cmd_add [rd; ra; rb] info
    | NonTail rd, ShiftLeft (ra, rb) when ra = reg_dump || rb = reg_dump || rd = reg_dump -> ()
    | NonTail rd, ShiftLeft (ra, rb) ->
        append_cmd cmd_shiftLeft [rd; ra; rb] info
    | NonTail rd, ShiftRight (ra, rb) when ra = reg_dump || rb = reg_dump  || rd = reg_dump -> ()
    | NonTail rd, ShiftRight (ra, rb) ->
        append_cmd cmd_shiftRight [rd; ra; rb] info
    | NonTail rd, Div (ra, rb) when ra = reg_dump || rb = reg_dump  || rd = reg_dump -> ()
    | NonTail rd, Div (ra, rb) ->
        append_cmd cmd_div [rd; ra; rb] info
    | NonTail rd, Mul (ra, rb) when ra = reg_dump || rb = reg_dump ||  rd = reg_dump  -> ()
    | NonTail rd, Mul (ra, rb) ->
        append_cmd cmd_mul [rd; ra; rb] info
    | NonTail rd, Sub (ra, rb) when ra = reg_dump || rb = reg_dump || rd = reg_dump -> ()
    | NonTail rd, Sub (ra, rb) ->
        append_cmd cmd_sub [rd; ra; rb] info
    | NonTail rd, Addi _ when rd = reg_dump -> ()
    | NonTail _, Addi (ra, _) when ra = reg_dump ->
        failwith "cannot Addi from dump reg"
    | NonTail rd, Addi (ra, Constant c) when c >= Common.addi_imm_limit
    -> failwith "Addi constant is over limit"
    | NonTail rd, Addi (ra, Constant c) when rd = ra && c = 1->
            append_cmd cmd_inc [rd] info
    | NonTail rd, Addi (ra, Constant c) when rd = ra && c = -1->
            append_cmd cmd_dec [rd] info
    | NonTail rd, Addi (ra, Constant c) when c = 0 ->
            generate' info (NonTail rd, Move ra);
    | NonTail rd, Addi (ra, loc) ->
        append_cmd cmd_addi  [rd; ra; Loc.to_string loc] info
    | NonTail rd, Move (rs) when rd = reg_dump || rs = reg_dump -> ()
    | NonTail rd, Move (rs) when rd = rs-> ()
    | NonTail rd, Move (rs) ->
            append_cmd cmd_move [rd; rs] info
    | NonTail rd, MoveImm _ when rd = reg_dump  ->()
    | NonTail rd, MoveImm (Constant c) when c >= Common.movei_imm_limit
    -> failwith "MoveImm constant is over limit"
    | NonTail rd, MoveImm loc ->
            append_cmd cmd_moveImm [rd; Loc.to_string loc] info
    | NonTail rd, Neg(ra) when rd = reg_dump || ra = reg_dump -> ()
    | NonTail rd, Neg(ra) when ra = rd->
                append_cmd cmd_neg1 [ra] info
    | NonTail rd, Neg(ra) ->
                append_cmd cmd_neg2 [rd; ra] info
    | NonTail rd, FMove rs when rd = reg_dump || rd = freg_dump  -> ()
    | NonTail rd, FMove rs when rd = rs -> ()
    | NonTail rd, FMove rs ->
            append_cmd cmd_fMove [rd; rs] info
    | NonTail rd, FNeg(rs) when rd = reg_dump || rs = reg_dump -> ()
    | NonTail rd, FNeg(rs) when rd = rs ->
                append_cmd cmd_fNeg1 [rd] info
    | NonTail rd, FNeg(rs) ->
                append_cmd cmd_fNeg2 [rd; rs] info
    | NonTail rd, CharRead ->
            append_cmd cmd_readChar [rd] info
    | NonTail rd, FAbs(rs) when rd = reg_dump || rs = reg_dump -> ()
    | NonTail rd, FAbs(rs) ->
                append_cmd cmd_fAbs [rd; rs] info
    | NonTail rd, Four(rs) when rd = reg_dump || rs = reg_dump -> ()
    | NonTail rd, Four(rs) ->
            append_cmd cmd_four [rd; rs] info
    | NonTail rd, Half(rs) when rd = reg_dump || rs = reg_dump -> ()
    | NonTail rd, Half(rs) ->
            append_cmd cmd_half [rd; rs] info
    | NonTail rd, Load (Relative (r, loc)) when rd = reg_dump || r = reg_dump -> ()
    | NonTail rd, Load (Relative (r, loc)) ->
         append_cmd cmd_loadRelative [rd; r; Loc.to_string loc] info
    | NonTail rd, Load ( Dynamic(r1, s4, r2)) when rd = reg_dump || r1 = reg_dump || r2 = reg_dump ->()
    | NonTail rd, Load ( Dynamic(r1, s4, r2)) ->
            append_cmd cmd_loadDynamic [rd; r1; Cmd.int_to_string s4; r2] info
    | NonTail rd, Load ( Absolute (l1, _)) when rd = reg_dump -> ()
    | NonTail rd, Load ( Absolute (l1, None)) ->
             append_cmd cmd_loadAbsolute [rd; Loc.to_string l1] info
    | NonTail rd, Load ( Absolute (l1, Some l2)) ->
            append_cmd cmd_loadAbsolute [rd; Loc.to_string l1; Loc.to_string l2] info
    | NonTail _, Store (rs, Relative(r, loc)) when rs = reg_dump || r = reg_dump -> ()
    | NonTail _, Store (rs, Relative(r, loc)) ->
            append_cmd cmd_storeRelative [rs; r; Loc.to_string loc] info
    | NonTail _, Store (rs, Dynamic(r1, s4, r2)) when rs = reg_dump || r1 = reg_dump || r2 = reg_dump ->()
    | NonTail _, Store (rs, Dynamic(r1, s4, r2)) ->
            append_cmd cmd_storeDynamic [rs; r1; Cmd.int_to_string s4; r2] info
    | NonTail _, Store (rs, Absolute (l1, _)) when rs = reg_dump  ->()
    | NonTail _, Store (rs, Absolute (l1, None)) ->
            append_cmd cmd_storeAbsolute [rs; Loc.to_string l1] info
    | NonTail _, Store (rs, Absolute (l1, Some l2)) ->
            append_cmd cmd_storeAbsolute [rs; Loc.to_string l1; Loc.to_string l2] info
    | NonTail rd, FAdd (ra, rb) when rd = freg_dump || ra = freg_dump || rb = freg_dump -> ()
    | NonTail rd, FAdd (ra, rb) ->
        append_cmd cmd_fAdd [rd; ra; rb] info
    | NonTail rd, FSub (ra, rb) when rd = freg_dump || ra = freg_dump || rb = freg_dump -> ()
    | NonTail rd, FSub (ra, rb) ->
        append_cmd cmd_fSub [rd; ra; rb] info
    | NonTail rd, FMul (ra, rb) when rd = freg_dump || ra = freg_dump || rb = freg_dump -> ()
    | NonTail rd, FMul (ra, rb) ->
        append_cmd cmd_fMul [rd; ra; rb] info
    | NonTail rd, FDiv (ra, rb) when rd = freg_dump || ra = freg_dump || rb = freg_dump -> ()
    | NonTail rd, FDiv (ra, rb) ->
        append_cmd cmd_fDiv [rd; ra; rb] info
    | NonTail rd, FLoad (Relative(r, loc)) when rd = freg_dump || r = reg_dump -> ()
    | NonTail rd, FLoad (Relative(r, loc)) ->
            append_cmd cmd_fLoadRelative [rd; r; Loc.to_string loc] info
    | NonTail rd, FLoad (Dynamic(r1, s4, r2)) when rd = freg_dump || r1 = reg_dump || r2 = reg_dump ->()
    | NonTail rd, FLoad (Dynamic(r1, s4, r2)) ->
            append_cmd cmd_fLoadDynamic [rd; r1; Cmd.int_to_string s4; r2] info
    | NonTail rd, FLoad (Absolute (l1, _ )) when rd = freg_dump -> ()
    | NonTail rd, FLoad (Absolute (l1, None ))->
            append_cmd cmd_fLoadAbsolute [rd; Loc.to_string l1] info
    | NonTail rd, FLoad (Absolute (l1, Some l2 ))->
            append_cmd cmd_fLoadAbsolute [rd; Loc.to_string l1; Loc.to_string l2] info
    | NonTail _, FStore (rd, Relative(r, loc)) when rd = freg_dump || r = reg_dump -> ()
    | NonTail _, FStore (rd, Relative(r, loc)) ->
            append_cmd cmd_fStoreRelative [rd; r; Loc.to_string loc] info
    | NonTail _, FStore (rd, Dynamic(r1, s4, r2)) when rd = freg_dump || r1 = reg_dump || r2 = reg_dump -> ()
    | NonTail _, FStore (rd, Dynamic(r1, s4, r2)) ->
            append_cmd cmd_fStoreDynamic [rd; r1; Cmd.int_to_string s4; r2] info
    | NonTail _, FStore (rd, Absolute (l1, _)) when rd = freg_dump -> ()
    | NonTail _, FStore (rd, Absolute (l1,None)) ->
            append_cmd cmd_fStoreAbsolute [rd; Loc.to_string l1] info
    | NonTail _, FStore (rd, Absolute (l1,Some l2)) ->
            append_cmd cmd_fStoreAbsolute [rd; Loc.to_string l1; Loc.to_string l2] info

    | NonTail _, Save(r, id) when List.mem r allregs && not (S.mem id !stackset) ->
            save id;
            generate' info (NonTail r, Store (r, Relative (reg_sp, Constant (offset id ))))
    | NonTail _ , Save(r, id) when List.mem r allfregs && not (S.mem id !stackset) ->
            save id;
            generate' info (NonTail r, FStore (r, Relative (reg_sp, Constant (offset id ))))
    | NonTail _, Save(r, id) when S.mem id !stackset ->
        ()
    | NonTail _, Save(r, id) ->
        failwith (Printf.sprintf "invalid register for saving %s. ID: %s" r (Id.to_string id))

    | NonTail rd, Restore id when List.mem rd allregs ->
            generate' info (NonTail rd, Load (Relative (reg_sp, Constant(offset id))))
    | NonTail rd, Restore id ->
            if  List.mem rd allfregs then
                generate' info (NonTail rd, FLoad (Relative (reg_sp, Constant (offset id))))
            else
                failwith "invalid register for restore"
    | Tail, (Add _ | ShiftLeft _ | ShiftRight _ | Div _ | Mul _ | CharRead
    | Sub _ | Addi _ | Four _ | Half _ | Load _ |  Move _ | MoveImm _ | Neg _ | FNeg _ |  FMove _ | Nop | Print _
    | Store _ | Save _
    as exp) ->
            generate' info (NonTail reg_ret, exp);
            append_cmd cmd_link [] info
    | Tail, (FMul _ | FSub _ | FDiv _ | FAdd _  | FAbs _ | FLoad _ | FStore _ as exp )->
            generate' info (NonTail freg_ret, exp);
            append_cmd cmd_link [] info
    | Tail, (Restore (id) as exp )->
            ((match locate id with
            | [i] -> generate' info (NonTail reg_ret, exp)
            | [i; j] when i + 1 = j -> generate' info (NonTail reg_ret, exp)
            | _ -> failwith "invalid register for restore"
            );
            append_cmd cmd_link [] info
            )
    | Tail, IfEQ(r1, r2, e1, e2) ->
          append_cmd cmd_compareEqual [r1; r2] info;
          let b_eq = fst (Id.genid("if_eq", info))
          in
            append_cmd cmd_jumpZero [Cmd.label_to_string b_eq] info;
            let stackset_backup = !stackset
            in
                generate (Tail, e2);
                append (Label (b_eq, None));
                stackset := stackset_backup;
                generate (Tail, e1);
    | Tail, IfLT(r1, r2, e1, e2) ->
          append_cmd cmd_cmp [r1; r2] info;
          let b_lt = fst (Id.genid("if_lt", info))
          in
            append_cmd cmd_jumpZero [Cmd.label_to_string b_lt] info;
            let stackset_backup = !stackset
            in
                generate (Tail, e2);
                append (Label (b_lt, None));
                stackset := stackset_backup;
                generate (Tail, e1);
    | Tail, FIfEQ(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2; int_to_string 0] info;
          let b_eq = fst (Id.genid("if_feq", info))
          in
            append_cmd cmd_fJumpEqual [Cmd.label_to_string b_eq] info;
            let stackset_backup = !stackset
            in
                generate (Tail, e2);
                append (Label (b_eq, None));
                stackset := stackset_backup;
                generate (Tail, e1);
    | Tail, FIfLT(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2] info;
          let b_flt = fst (Id.genid("if_flt", info))
          in
            append_cmd cmd_fJumpLT [Cmd.label_to_string b_flt] info;
            let stackset_backup = !stackset
            in
                generate (Tail, e2);
                append (Label (b_flt, None));
                stackset := stackset_backup;
                generate (Tail, e1);
    | NonTail rd as dest, IfEQ(r1, r2, e1, e2) ->
          append_cmd cmd_compareEqual [r1; r2] info;
          let b_eq = fst (Id.genid("if_eq", info))
          in
          let b_cont = fst (Id.genid("if_eq_cont", info))
          in
            append_cmd cmd_jumpZero [Cmd.label_to_string b_eq] info;
            let stackset_backup = !stackset
            in
                generate (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if equal" label*)
                    append (Label (b_eq, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    generate (dest, e1);
                    append (Label (b_cont, None));
                    let stackset2 = !stackset
                    in
                    stackset := S.inter stackset1 stackset2;
    | NonTail rd as dest, IfLT(r1, r2, e1, e2) ->
          append_cmd cmd_cmp [r1; r2] info;
          let b_lt = fst (Id.genid("if_lt", info))
          in
          let b_cont = fst (Id.genid("if_lt_cont", info))
          in
            append_cmd cmd_jumpZero [Cmd.label_to_string b_lt] info;
            let stackset_backup = !stackset
            in
                generate (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if less than" label*)
                    append (Label (b_lt, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    generate (dest, e1);
                    append (Label (b_cont, None));
                    let stackset2 = !stackset
                    in
                    stackset := S.inter stackset1 stackset2;
    | NonTail rd as dest, FIfEQ(r1, r2, e1, e2) ->
          append_cmd cmd_fCmp [r1; r2] info;
          let b_feq = fst (Id.genid("if_feq", info))
          in
          let b_cont = fst (Id.genid("if_feq_cont", info))
          in
            append_cmd cmd_fJumpEqual [Cmd.label_to_string b_feq] info;
            let stackset_backup = !stackset
            in
                generate (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if equal" label*)
                    append (Label (b_feq, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    generate (dest, e1);
                    append (Label (b_cont, None));
                    let stackset2 = !stackset
                    in
                    stackset := S.inter stackset1 stackset2;
    | NonTail rd as dest, FIfLT(r1, r2, e1, e2) ->
          append_cmd cmd_fCmp [r1; r2] info;
          let b_flt = fst (Id.genid("if_flt", info))
          in
          let b_cont = fst (Id.genid("if_flt_cont", info))
          in
            append_cmd cmd_fJumpLT [Cmd.label_to_string b_flt] info;
            let stackset_backup = !stackset
            in
                generate (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if less than" label*)
                    append (Label (b_flt, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    generate (dest, e1);
                    append (Label (b_cont, None));
                    let stackset2 = !stackset
                    in
                    stackset := S.inter stackset1 stackset2;
    | Tail, CallCls(closure_name, params, fparams) ->
        (*Printf.printf "fun name %s\n" closure_name;*)
            generate_args params fparams info @@ Some closure_name;
            append_cmd cmd_jumpCls [] info
    | Tail, CallDir(l, params, fparams) ->
        (*Printf.printf "cardir name %s\n" l;*)
            generate_args  params fparams info None;
            append_cmd cmd_jump [Cmd.label_to_string l] info
    | NonTail rd, CallCls(closure_name, params, fparams) ->
        (*Printf.printf "fun name %s\n" closure_name;*)
            (*set param*)
            generate_args  params fparams info @@ Some closure_name;
            let ss = stacksize ()
            in
            if ss > 0 then
                (*increase stack*)
                generate' info (NonTail reg_sp, Addi (reg_sp, Constant ss));
            (*jump and link to closure register*)
            append_cmd cmd_addi [reg_sp; reg_sp; Loc.to_string @@ Constant 4] info;
            append_cmd cmd_storeIp [] info;
            append_cmd cmd_jumpCls [] info;
            (*the subroutines will automatically jump back here*)
            if ss > 0 then
                (*decrease stack*)
                generate' info (NonTail reg_sp, Addi (reg_sp, Constant (-ss)));
            (*returned value is set to reg_ret by convention*)
            if List.mem rd allregs then
                generate' info (NonTail rd, Move reg_ret)
            else
                if List.mem rd allfregs  then
                    generate' info (NonTail rd, FMove freg_ret)
    | NonTail rd, CallDir(l, params, fparams) ->
        (*Printf.printf "cardir name %s\n" l;*)
            (*set param*)
            generate_args  params fparams info None;
            let ss = stacksize()
            in
            (*increase stack*)
            if ss > 0 then
                generate' info (NonTail reg_sp, Addi(reg_sp, Constant ss));
            (*call*)
            append_cmd cmd_addi [reg_sp; reg_sp; Loc.to_string @@ Constant 4] info;
            append_cmd cmd_storeIp [] info;
            append_cmd cmd_jump [Cmd.label_to_string l] info;
            (*resstore stack*)
            if ss > 0 then
                generate' info (NonTail reg_sp, Addi (reg_sp, Constant (-ss)));
            (*save returned value*)
            if List.mem rd allregs  then
                generate' info (NonTail rd, Move reg_ret)
            else
                if List.mem rd allfregs then
                    generate' info (NonTail rd, FMove freg_ret)
and generate_args params fparams info closure_name_opt =
  if List.length params > Common.reg_nfree then
    failwith (Printf.sprintf "Require %d but there are only %d of integer params when applying %s" (List.length params) (Common.reg_nfree) (match closure_name_opt with
      None -> "closure"
    | Some name -> name
    ));
  if List.length fparams > Common.freg_nfree then
    failwith (Printf.sprintf "Require %d but there are only %d of float params when applying %s" (List.length fparams) (Common.freg_nfree) (match closure_name_opt with
      None -> "closure"
    | Some name -> name
    ));
    (*Printf.printf "number of params for %s %d %d\n" (match closure_name_opt with*)
    (*| None -> "closure"*)
    (*| Some name -> name*)
    (* ) (List.length params) @@ List.length fparams;*)
  max_nparams := Pervasives.max !max_nparams @@ List.length params;
  max_nfparams := Pervasives.max !max_nfparams @@ List.length fparams;

  let stacksize_backup = stacksize()
  in
  (*let sw = Printf.sprintf "%d(%s)" (stacksize ()) (Id.to_string_core reg_sp)*)
  (*in*)
  let (i, param_regs) =
    List.fold_left
      (fun (i, param_regs) y -> (i + 1, (y, reg_no i) :: param_regs))
      (match closure_name_opt with
        | None -> 1, []
        | Some closure_name -> 1, [(closure_name, reg_cl)]
      )
      params
  in
  List.iter
    (fun (y, r) ->
        match y, r with
        | Some reg, None ->
                generate' info (NonTail reg_dump , Store(reg, Relative (reg_sp, Constant stacksize_backup)))
        | None, Some reg ->
                generate' info (NonTail reg, Load (Relative(reg_sp, Constant stacksize_backup)))
        | Some r1, Some r2 ->
                generate' info (NonTail r2, Move r1)
        | _ -> ()
    )
    (shuffle None (List.map (fun (x, y) -> Some x, Some y) param_regs));

  let (d, param_fregs) =
    List.fold_left
      (fun (d, param_fregs) z -> (d + 1, (z, freg_no d) :: param_fregs))
      (1, [])
      fparams in
  List.iter
    (fun (y, fr) ->
        match y, fr with
        | Some reg, None ->
                generate' info (NonTail freg_dump, FStore(reg, Relative (reg_sp, Constant stacksize_backup)))
        | None, Some reg ->
                generate' info (NonTail reg, FLoad (Relative(reg_sp, Constant stacksize_backup)))
        | Some r1, Some r2 ->
                generate' info (NonTail r2, FMove r1)
        | _ -> ()
    )
    (shuffle None (List.map (fun (x, y) -> Some x, Some y)  param_fregs))

let print_fun { name = x; args = _; fargs = _; body = e; ret = _ } =
    append (Label (x, None));
  stackset := S.empty;
  stackmap := [];
  generate (Tail, e)

(* type prog = Prog of (Id.l * float) list * fundef list * t *)
let f out (Prog(idata, fdata, fundefs, e)) =
  let info = get_info e
  in
  Format.eprintf "generating assembly...@.";

    (*.start label: starting point*)
    if not !Common.is_lib then
        append (Directive (start_directive, Some entry_label, None));

    (*data section*)
    append (Directive (data_directive, None, None));
    append (Directive (align_directive, Some (string_of_int align_length), None));

    (*print double floating point constant labels*)
    (*use fold_left by flavor of tail recursive optimization*)
    List.iter
        (fun ((id, info), d) ->
            append (Label (id, Some (Printf.sprintf "%f %s" d (Info.to_string info) )));
            append (FData d)
        )
        fdata;

  (*print int constant labels*)
  List.iter
    (fun ((x, info), d) ->
        append (Label (x, Some (Printf.sprintf "%d %s" d (Info.to_string info))));
        append (IData d)
    )
    idata;

    append (Directive (align_directive, Some (string_of_int align_length), None));
  (*end of data section*)

  (*begin coding section*)
  append (Directive (text_directive, None, None));
  (*fun def*)
  List.iter (fun fundef -> print_fun fundef) fundefs;

  if not !Common.is_lib then
      (
      append (Label (entry_label, None));

      (*init*)
        stackset := S.empty;
        stackmap := [];
        generate (NonTail reg_ret, e);
        append_cmd cmd_finish [] info;
      );
  Printf.printf "number of requiment free int args: %d\n" !max_nparams;
  Printf.printf "number of requiment free float args: %d\n" !max_nfparams;
  Cmd.f out;
