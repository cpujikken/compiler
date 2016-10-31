open AsmReg
open Loc
open Cmd
open Reg

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

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
let offset x = 4 * List.hd (locate x)
let stacksize () = align (List.length !stackmap * 4)

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
type param = Go of Reg.t | Hide
let rec shuffle regs =
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
      (y, Hide) :: (x, y) :: shuffle (List.map
         (function
             (*find the place where y points to
              * something like: (x -> y) & (y -> z) ==> (x -> y) (y -> sw) (sw -> z)
              * *)
           | (y', z) when y = y' -> (Hide, z)
           | other -> other
         )
         regs)
  | regs, acyc -> acyc  @ shuffle regs

type dest = Tail | NonTail of Reg.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)
let rec g = function (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
  | dest, Ans(exp, info) -> g' info (dest, exp)
  | dest, Let((x, t), exp, e, info) ->
      g' info (NonTail(x), exp);
      g (dest, e)
and g' info = function (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
    (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
    | NonTail _, Nop -> ()

    | NonTail rd, Add (ra, rb) ->
        if rd = ra && rb = reg_zero || rd = rb && ra = reg_zero then
            ()
        else
            append_cmd cmd_add [rd; ra; rb] info
    | NonTail rd, Sub (ra, rb) ->
            if rb = reg_zero  && rd = ra then
                ()
            else
                append_cmd cmd_sub [rd; ra; rb] info
    | NonTail rd, Addi (ra, loc) ->
        append_cmd cmd_addi  [rd; ra; Loc.to_string loc] info
    | NonTail rd, ShiftL (r, b5) ->
            append_cmd cmd_shiftL [rd; r; int_to_string b5] info
    |NonTail rd, ShiftR (r, b5) ->
            append_cmd cmd_shiftR [rd; r; int_to_string b5] info
    | NonTail _, Jump addr26 ->
            append_cmd cmd_jump [int_to_string addr26] info
    | NonTail _, JumpEQ addr26 ->
            append_cmd cmd_jumpEQ [int_to_string addr26] info
    | NonTail _, JumpLT addr26 ->
            append_cmd cmd_jumpLT [int_to_string addr26] info
    | NonTail rd, Load addr ->
            append_cmd cmd_load (addr_to_param rd addr) info
    | NonTail _, Store (rd, addr)->
            append_cmd cmd_store (addr_to_param rd addr) info
    | NonTail rd, FAdd (ra, rb) ->
        append_cmd cmd_fAdd [rd; ra; rb] info
    | NonTail rd, FSub (ra, rb) ->
        append_cmd cmd_fSub [rd; ra; rb] info
    | NonTail rd, FMul (ra, rb) ->
        append_cmd cmd_fMul [rd; ra; rb] info
    | NonTail rd, FDiv (ra, rb) ->
        append_cmd cmd_fDiv [rd; ra; rb] info
    | NonTail rd, FLoad addr ->
            append_cmd cmd_fLoad (addr_to_param rd addr) info
    | NonTail _, FStore (rd, addr) ->
            append_cmd cmd_fStore (addr_to_param rd addr) info
    | NonTail _, JLink addr26 ->
            append_cmd cmd_jLink [int_to_string addr26] info
    | NonTail _, Link ->
            append_cmd cmd_link [] info
    | NonTail _, Push r ->
            append_cmd cmd_push [r] info
    | NonTail _, Pop ->
            append_cmd cmd_pop [] info
    | NonTail _, Out ->
            append_cmd cmd_out [] info

    | (NonTail _), Save(r, id) when List.mem r allregs && not (S.mem id !stackset) ->
            save id;
            g' info (NonTail r, Load (Relative (reg_sp, Constant (offset id ))))
    | NonTail _ , Save(r, id) when List.mem r allfregs && not (S.mem id !stackset) ->
            save id;
            g' info (NonTail r, FLoad (Relative (reg_sp, Constant (offset id ))))
    | NonTail _, Save(r, id) ->
            if S.mem id !stackset then
                ()
            else
                failwith "invalid register for saving"

    | NonTail rd, Restore id when List.mem rd allregs ->
            g' info (NonTail rd, Load (Relative (reg_sp, Constant(offset id))))
    | NonTail rd, Restore id ->
            if  List.mem rd allfregs then
                g' info (NonTail rd, FLoad (Relative (reg_sp, Constant (offset id))))
            else
                failwith "invalid register for restore"
    | Tail, (Nop | Add _ | Sub _ | Addi _ | ShiftL _ | ShiftR _ | JumpEQ _ | JumpLT _ | Load _ | Store _ | JLink _ | Link | Push _ | Pop | Out | Jump _ | Save _ as exp) ->
            g' info (NonTail reg_zero, exp)
    | Tail, (FMul _ | FSub _ | FDiv _ | FAdd _  | FLoad _ | FStore _ as exp )->
            g' info (NonTail freg_zero, exp)
    | Tail, (Restore (id) as exp )->
            ((match locate id with
            | [i] -> g' info (NonTail(reg_zero), exp)
            | [i; j] when i + 1 = j -> g' info (NonTail (freg_zero), exp)
            | _ -> failwith "invalid register for restore"
            );
            append_cmd cmd_link [] info
            )
    | Tail, IfEQ(r1, r2, e1, e2) ->
          append_cmd cmd_sub [reg_zero; r1; r2] info;
          let b_eq = fst (Id.genid("if_eq", info))
          in
            append_cmd cmd_jumpEQ [Cmd.label_to_string b_eq] info;
            let stackset_backup = !stackset
            in
                g (Tail, e2);
                append (Label (b_eq, None));
                stackset := stackset_backup;
                g (Tail, e1);
    | Tail, IfLT(r1, r2, e1, e2) ->
          append_cmd cmd_sub [reg_zero; r1; r2] info;
          let b_lt = fst (Id.genid("if_lt", info))
          in
            append_cmd cmd_jumpLT [Cmd.label_to_string b_lt] info;
            let stackset_backup = !stackset
            in
                g (Tail, e2);
                append (Label (b_lt, None));
                stackset := stackset_backup;
                g (Tail, e1);
    | Tail, FIfEQ(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2; int_to_string 0] info;
          let b_eq = fst (Id.genid("if_eq", info))
          in
            append_cmd cmd_fJumpEQ [Cmd.label_to_string b_eq] info;
            let stackset_backup = !stackset
            in
                g (Tail, e2);
                append (Label (b_eq, None));
                stackset := stackset_backup;
                g (Tail, e1);
    | Tail, FIfLT(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2] info;
          let b_flt = fst (Id.genid("if_flt", info))
          in
            append_cmd cmd_fJumpLT [Cmd.label_to_string b_flt] info;
            let stackset_backup = !stackset
            in
                g (Tail, e2);
                append (Label (b_flt, None));
                stackset := stackset_backup;
                g (Tail, e1);
    | NonTail rd as dest, IfEQ(r1, r2, e1, e2) ->
          append_cmd cmd_sub [reg_zero; r1; r2] info;
          let b_eq = fst (Id.genid("if_eq", info))
          in
          let b_cont = fst (Id.genid("if_eq_cont", info))
          in
            append_cmd cmd_jumpEQ [Cmd.label_to_string b_eq] info;
            let stackset_backup = !stackset
            in
                g (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if equal" label*)
                    append (Label (b_eq, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    g (dest, e1);
                    append (Label (b_cont, None));
                    let stackset2 = !stackset
                    in
                    stackset := S.inter stackset1 stackset2;
    | NonTail rd as dest, IfLT(r1, r2, e1, e2) ->
          append_cmd cmd_sub [reg_zero; r1; r2] info;
          let b_lt = fst (Id.genid("if_lt", info))
          in
          let b_cont = fst (Id.genid("if_lt_cont", info))
          in
            append_cmd cmd_jumpEQ [Cmd.label_to_string b_lt] info;
            let stackset_backup = !stackset
            in
                g (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if less than" label*)
                    append (Label (b_lt, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    g (dest, e1);
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
            append_cmd cmd_jumpEQ [Cmd.label_to_string b_feq] info;
            let stackset_backup = !stackset
            in
                g (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if equal" label*)
                    append (Label (b_feq, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    g (dest, e1);
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
            append_cmd cmd_jumpEQ [Cmd.label_to_string b_flt] info;
            let stackset_backup = !stackset
            in
                g (dest, e2);
                let stackset1 = !stackset
                in
                    (*continue after comparison*)
                    append_cmd cmd_jump [Cmd.label_to_string b_cont] info;
                    (*print "if less than" label*)
                    append (Label (b_flt, None));
                    stackset := stackset_backup;
                    (*if equal*)
                    g (dest, e1);
                    append (Label (b_cont, None));
                    let stackset2 = !stackset
                    in
                    stackset := S.inter stackset1 stackset2;
    | Tail, CallCls(rcls, params, fparams) ->
            g'_args [(rcls, reg_cl)] params fparams info;
            append_cmd cmd_jumpCls [] info
    | Tail, CallDir(l, params, fparams) ->
            g'_args [] params fparams info;
            append_cmd cmd_jump [Loc.to_string l] info
    | NonTail rd, CallCls(rcls, params, fparams) ->
            (*set param*)
            g'_args [(rcls, reg_cl)] params fparams info;
            let ss = stacksize ()
            in
            if ss > 0 then
                (*increase stack*)
                append_cmd cmd_addi [reg_sp; reg_zero; int_to_string ss] info;
            (*jump and link to closure register*)
            append_cmd cmd_jLinkCls [] info;
            (*the subroutines will automatically jump back here*)
            if ss > 0 then
                (*decrease stack*)
                append_cmd cmd_addi [reg_sp; reg_zero; int_to_string (-ss)] info;
            (*returned value is set to reg_ret by convention*)
            if List.mem rd allregs && rd <> reg_ret then
                append_cmd cmd_add [rd; reg_zero; reg_ret] info
            else
                if List.mem rd allfregs && rd <> freg_ret then
                    append_cmd cmd_fAdd [rd; freg_zero; freg_ret] info
    | NonTail rd, CallDir(l, params, fparams) ->
            (*set param*)
            g'_args [] params fparams info;
            let ss = stacksize()
            in
            (*increase stack*)
            if ss > 0 then
                append_cmd cmd_addi [reg_sp; reg_zero; int_to_string ss] info;
            (*call*)
            append_cmd cmd_jLink [Loc.to_string l] info;
            (*resstore stack*)
            if ss > 0 then
                append_cmd cmd_addi [reg_sp; reg_zero; int_to_string (-ss)] info;
            (*save returned value*)
            if List.mem rd allregs && rd <> reg_ret then
                append_cmd cmd_add [rd; reg_zero; reg_ret] info
            else
                if List.mem rd allfregs && rd <> freg_ret then
                    append_cmd cmd_add [rd;freg_zero; freg_ret] info
and g'_args x_reg_cl params fparams info =
    (*quick assertion*)
    if List.length params > Array.length regs - List.length x_reg_cl then
        failwith "number of parameter is larger than number of available registers";
  if List.length fparams > Array.length fregs then
      failwith "number of float params is larger than number of available float registers";

  let stacksize_backup = stacksize()
  in
  (*let sw = Printf.sprintf "%d(%s)" (stacksize ()) (Id.to_string_core reg_sp)*)
  (*in*)
  let (i, param_regs) =
    List.fold_left
      (fun (i, param_regs) y -> (i + 1, (y, regs.(i)) :: param_regs))
      (0, x_reg_cl)
      params
  in
  List.iter
    (fun (y, r) ->
        match y, r with
        | Go reg, Hide ->
                append_cmd cmd_store [reg; int_to_string addr_mode_relative; int_to_string stacksize_backup; reg_sp] info
        | Hide, Go reg ->
                append_cmd cmd_load [reg; int_to_string addr_mode_relative; int_to_string stacksize_backup; reg_sp] info
        | Go r1, Go r2 ->
                append_cmd cmd_add [r1; reg_zero; r2] info
        | _ -> ()
    )
    (shuffle (List.map (fun (x, y) -> Go x, Go y) param_regs));

  let (d, param_fregs) =
    List.fold_left
      (fun (d, param_fregs) z -> (d + 1, (z, fregs.(d)) :: param_fregs))
      (0, [])
      fparams in
  List.iter
    (fun (y, fr) ->
        match y, fr with
        | Go reg, Hide ->
                append_cmd cmd_fStore [reg; int_to_string addr_mode_relative; int_to_string stacksize_backup; reg_sp] info
        | Hide, Go reg ->
                append_cmd cmd_fLoad [reg; int_to_string addr_mode_relative; int_to_string stacksize_backup; reg_sp] info
        | Go r1, Go r2 ->
                append_cmd cmd_fAdd [r1; reg_zero; r2] info
        | _ -> ()
    )
    (shuffle (List.map (fun (x, y) -> Go x, Go y)  param_fregs))

let h { name = x; args = _; fargs = _; body = e; ret = _ } =
    append (Label (x, None));
  stackset := S.empty;
  stackmap := [];
  g (Tail, e)

(* type prog = Prog of (Id.l * float) list * fundef list * t *)
let f (Prog(idata, fdata, fundefs, e)) =
  Format.eprintf "generating assembly...@.";

    (*.start label: starting point*)
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

    append (Directive (align_directive, Some "8", None));
  (*end of data section*)

  (*begin coding section*)
  append (Directive (text_directive, None, None));
  (*fun def*)
  List.iter (fun fundef -> h fundef) fundefs;

  append (Label (entry_label, None));

    (*backup all regs*)
    stackset := S.empty;
    stackmap := [];
    g (NonTail(reg_ret), e);

    (*restore all regs*)
    append_cmd_noinfo cmd_out [] ;
