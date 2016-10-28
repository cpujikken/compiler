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
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                     (function
                       | (y', z) when y = y' -> (sw, z)
                       | yz -> yz)
                     xys)
  | xys, acyc -> acyc @ shuffle sw xys

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
    | NonTail _,  FCmp(r1, r2, c3) ->
            append_cmd cmd_fCmp [r1; r2; int_to_string c3] info
    | NonTail _, FJump (addr26, r2, c3) ->
            append_cmd cmd_fJump [int_to_string addr26; int_to_string r2; int_to_string c3] info
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

    | (NonTail _) as dest, Save(r, id) when List.mem r allregs && not (S.mem id !stackset) ->
            save id;
            g' info (NonTail r, Load (Relative (reg_sp, Constant (offset id ))))
    | NonTail _ as dest, Save(r, id) when List.mem r allfregs && not (S.mem id !stackset) ->
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
    | Tail, (Nop | Add _ | Sub _ | Addi _ | ShiftL _ | ShiftR _ | JumpEQ _ | JumpLT _ | Load _ | Store _ | JLink _ | Link | Push _ | Pop | Out as exp) ->
            g' info (NonTail reg_zero, exp)
    | Tail, (FMul _ | FSub _ | FDiv _ | FAdd _  | FCmp _ | FLoad _ | FStore _ as exp )->
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
            g'_tail_if_eq e1 e2 info
    | Tail, IfLT(r1, r2, e1, e2) ->
            append_cmd cmd_sub [reg_zero; r1; r2] info;
            g'_tail_if_lt e1 e2 info
    | Tail, FIfEQ(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2] info;
            g'_tail_fif_eq e1 e2 info
    | Tail, FIfLT(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2] info;
            g'_tail_fif_lt e1 e2 info
    | NonTail rd, IfEQ(r1, r2, e1, e2) ->
            append_cmd cmd_sub [reg_zero; r1; r2] info;
            g'_nontail_if_eq e1 e2 info
    | NonTail rd, IfLT(r1, r2, e1, e2) ->
            append_cmd cmd_sub [reg_zero; r1; r2] info;
            g'_nontail_if_lt e1 e2 info
    | NonTail rd, FIfEQ(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2] info;
            g'_nontail_fif_eq e1 e2 info
    | NonTail rd, FIfLT(r1, r2, e1, e2) ->
            append_cmd cmd_fCmp [r1; r2] info;
            g'_nontail_fif_lt e1 e2 info
    | Tail, CallCls(rcls, rparam, rvalue) ->
            g'_args [(rcls, reg_cl)] rparam rvalue info;
            append_cmd cmd_JumpCls [] info
    | Tail, CallDir(l, rparam, rvalue) ->
            g'_args [] rparam rvalue info;
            append_cmd cmd_jump [Loc.to_string l] info
    | NonTail rd, CallCls(rcls, rparam, rvalue) ->
            (*set param*)
            g'_args [(rcls, reg_cl)] rparam, rvalue;
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
                    append_cmd cmd_fAdd [rd; ferg_zero; freg_ret] info
    | NonTail rd, CallDir(l, rparam, rvalue) ->
            (*set param*)
            g'_args [] rparam, rvalue;
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
and g'_tail_if oc e1 e2 b bn info=
  let b_else = Id.genid((b ^ "_else"), info) in
  Printf.fprintf oc "\t%s\t%s\n" bn (Id.to_string_core b_else);
  let stackset_back = !stackset in
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" (Id.to_string_core b_else);
  stackset := stackset_back;
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn info =
  let b_else = Id.genid((b ^ "_else"),info) in
  let b_cont = Id.genid((b ^ "_cont"),info) in
  Printf.fprintf oc "\t%s\t%s\n" bn (Id.to_string_core b_else);
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tjmp\t%s\n" (Id.to_string_core b_cont);
  Printf.fprintf oc "%s:\n" (Id.to_string_core b_else);
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" (Id.to_string_core b_cont);
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs =
  assert (List.length ys <= Array.length regs - List.length x_reg_cl);
  assert (List.length zs <= Array.length fregs);
  let sw = Printf.sprintf "%d(%s)" (stacksize ()) (Id.to_string_core reg_sp) in
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmov\t%s, %s\n" y r)
    (shuffle sw  (List.map (fun (x, y) -> Id.to_string_core  x, Id.to_string_core y) yrs));
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmovsd\t%s, %s\n" z fr)
    (shuffle sw (List.map (fun(x, y) ->Id.to_string_core x, Id.to_string_core y )zfrs))

let h oc { name = Id.L(x, _); args = _; fargs = _; body = e; ret = _ } =
    append (Label (x, None));
  stackset := S.empty;
  stackmap := [];
  g (Tail, e)

(* type prog = Prog of (Id.l * float) list * fundef list * t *)
let f (Prog(idata, data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";

    (*.start label: starting point*)
    append (Directive (start_directive, Some entry_label, None));

    (*data section*)
    append (Directive (data_directive, None, None));
    append (Directive (align_directive, align_length, None));

    (*print double floating point constant labels*)
    (*use fold_left by flavor of tail recursive optimization*)
    List.iter
        (fun cmd_list (Id.L(x, _), d) ->
            append (Label (x, Printf.sprintf "%f" d));
            append (Data (gethi d));
            append (Data (getlo d));
        )
        data;

  (*print int constant labels*)
  List.iter
    (fun (Id.L(x, info), d) ->
        append (Label (x, Printf.sprintf "%d %s" d (Info.to_string info)))
        append (Data d);
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
    append_cmd_noinfo cmd_push ["%r9"] None;
    append_cmd_noinfo cmd_push ["%r10"] None;
    append_cmd_noinfo cmd_push ["%r11"] None;
    append_cmd_noinfo cmd_push ["%r12"] None;
    append_cmd_noinfo cmd_push ["%r13"] None;
    stackset := S.empty;
    stackmap := [];
    g (NonTail(reg_ret), e);

    (*restore all regs*)
    append_cmd_noinfo cmd_pop ["%r9"];
    append_cmd_noinfo cmd_pop ["%r10"];
    append_cmd_noinfo cmd_pop ["%r11"];
    append_cmd_noinfo cmd_pop ["%r12"];
    append_cmd_noinfo cmd_pop ["%r13"];
    append_cmd cmd_out [] None;
