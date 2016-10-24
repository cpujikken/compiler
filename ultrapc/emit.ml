open Asm

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"

let stackset = ref S.empty (* ���Ǥ�Save���줿�ѿ��ν��� (caml2html: emit_stackset) *)
let stackmap = ref [] (* Save���줿�ѿ��Ρ������å��ˤ�������� (caml2html: emit_stackmap) *)
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

let pp_id_or_imm = function
  | V(x, _) -> x
  | C(i) -> "$" ^ string_of_int i

(* �ؿ��ƤӽФ��Τ���˰������¤��ؤ���(register shuffling) (caml2html: emit_shuffle) *)
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

type dest = Tail | NonTail of Id.t (* �������ɤ�����ɽ���ǡ����� (caml2html: emit_dest) *)
let rec g oc = function (* ̿����Υ�����֥����� (caml2html: emit_g) *)
  | dest, Ans(exp, info) -> g' oc info (dest, exp)
  | dest, Let((x, t), exp, e, info) ->
      g' oc info (NonTail(x), exp);
      g oc (dest, e)
and g' oc info = function (* ��̿��Υ�����֥����� (caml2html: emit_gprime) *)
  (* �����Ǥʤ��ä���׻���̤�dest�˥��å� (caml2html: emit_nontail) *)
  | NonTail(_), Nop -> ()
  | NonTail(x), Set(i) -> Printf.fprintf oc "\tmovl\t$%d, %s\t#%s\n" i (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), SetL(Id.L(y, _)) -> Printf.fprintf oc "\tmovl\t$%s, %s\t#%s\n" y (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), Mov(y) ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), Neg(y) ->
      if x <> y then Printf.fprintf oc "\tmovl\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
      Printf.fprintf oc "\tnegl\t%s\t#%s\n" (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), Add(y, z') ->
      if V(x) = z' then
	Printf.fprintf oc "\taddl\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
      else
	(if x <> y then Printf.fprintf oc "\tmovl\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	 Printf.fprintf oc "\taddl\t%s, %s\t#%s\n" (pp_id_or_imm z') (Id.to_string_core x) (Info.to_string info))
  | NonTail(x), Sub(y, z') ->
      if V(x) = z' then
          (Printf.fprintf oc "\tsubl\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
         Printf.fprintf oc "\tnegl\t%s\t#%s\n" (Id.to_string_core x) (Info.to_string info))
      else
	(if x <> y then Printf.fprintf oc "\tmovl\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	 Printf.fprintf oc "\tsubl\t%s, %s\t#%s\n" (pp_id_or_imm z') (Id.to_string_core x) (Info.to_string info))
  | NonTail(x), Ld(y, V(z), i) -> Printf.fprintf oc "\tmovl\t(%s,%s,%d), %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core z) i (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), Ld(y, C(j), i) -> Printf.fprintf oc "\tmovl\t%d(%s), %s\t#%s\n" (j * i) (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
  | NonTail(_), St(x, y, V(z), i) -> Printf.fprintf oc "\tmovl\t%s, (%s,%s,%d)\t#%s\n" (Id.to_string_core x) (Id.to_string_core y) (Id.to_string_core z) i (Info.to_string info)
  | NonTail(_), St(x, y, C(j), i) -> Printf.fprintf oc "\tmovl\t%s, %d(%s)\t#%s\n" (Id.to_string_core x) (j * i) (Id.to_string_core y) (Info.to_string info)
  | NonTail(x), FMovD(y) ->
      if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), FNegD(y) ->
          if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
      Printf.fprintf oc "\txorpd\tmin_caml_fnegd, %s\t#%s\n" (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), FAddD(y, z) ->
      if x = z then
        Printf.fprintf oc "\taddsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	 Printf.fprintf oc "\taddsd\t%s, %s\t#%s\n" (Id.to_string_core z) (Id.to_string_core x) (Info.to_string info))
  | NonTail(x), FSubD(y, z) ->
      if x = z then (* [XXX] ugly *)
	let ss = stacksize () in
    Printf.fprintf oc "\tmovsd\t%s, %d(%s)\t#%s\n" (Id.to_string_core z) ss (Id.to_string_core reg_sp) (Info.to_string info);
	if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	Printf.fprintf oc "\tsubsd\t%d(%s), %s\t#%s\n" ss (Id.to_string_core reg_sp) (Id.to_string_core x) (Info.to_string info)
      else
	(if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	 Printf.fprintf oc "\tsubsd\t%s, %s\t#%s\n" (Id.to_string_core z) (Id.to_string_core x) (Info.to_string info))
  | NonTail(x), FMulD(y, z) ->
      if x = z then
        Printf.fprintf oc "\tmulsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
      else
        (if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	 Printf.fprintf oc "\tmulsd\t%s, %s\t#%s\n" (Id.to_string_core z) (Id.to_string_core x) (Info.to_string info))
  | NonTail(x), FDivD(y, z) ->
      if x = z then (* [XXX] ugly *)
	let ss = stacksize () in
	Printf.fprintf oc "\tmovsd\t%s, %d(%s)\t#%s\n" (Id.to_string_core z) ss (Id.to_string_core reg_sp) (Info.to_string info);
	if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	Printf.fprintf oc "\tdivsd\t%d(%s), %s\t#%s\n" ss (Id.to_string_core reg_sp) (Id.to_string_core x) (Info.to_string info)
      else
	(if x <> y then Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
	 Printf.fprintf oc "\tdivsd\t%s, %s\t#%s\n" (Id.to_string_core z) (Id.to_string_core x) (Info.to_string info))
  | NonTail(x), LdDF(y, V(z), i) -> Printf.fprintf oc "\tmovsd\t(%s,%s,%d), %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core z) i (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), LdDF(y, C(j), i) -> Printf.fprintf oc "\tmovsd\t%d(%s), %s\t#%s\n" (j * i) (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info)
  | NonTail(_), StDF(x, y, V(z), i) -> Printf.fprintf oc "\tmovsd\t%s, (%s,%s,%d)\t#%s\n" (Id.to_string_core x) (Id.to_string_core y) (Id.to_string_core z) i (Info.to_string info)
  | NonTail(_), StDF(x, y, C(j), i) -> Printf.fprintf oc "\tmovsd\t%s, %d(%s)\t#%s\n" (Id.to_string_core x) (j * i) (Id.to_string_core y) (Info.to_string info)
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\t#%s\n" s (Info.to_string info)
  (* ����β���̿��μ��� (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tmovl\t%s, %d(%s)\t#%s\n" (Id.to_string_core x) (offset y) (Id.to_string_core reg_sp) (Info.to_string info)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y info;
      Printf.fprintf oc "\tmovsd\t%s, %d(%s)\t#%s\n" (Id.to_string_core x) (offset y) (Id.to_string_core reg_sp) (Info.to_string info)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* �����β���̿��μ��� (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tmovl\t%d(%s), %s\t#%s\n" (offset y) (Id.to_string_core reg_sp) (Id.to_string_core x) (Info.to_string info)
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tmovsd\t%d(%s), %s\t#%s\n" (offset y) (Id.to_string_core reg_sp) (Id.to_string_core x) (Info.to_string info)
  (* �������ä���׻���̤����쥸�����˥��åȤ���ret (caml2html: emit_tailret) *)
  | Tail, (Nop| St (_) | StDF (_) | Comment( _) | Save( _) as exp) ->
      g' oc info (NonTail(Id.gentmp (Type.Unit info) info), exp);
      Printf.fprintf oc "\tret\t#%s\n" (Info.to_string info);
  | Tail, (Set(_) | SetL(_) | Mov(_) | Neg(_) | Add(_) | Sub(_) | Ld(_) as exp) ->
      g' oc info (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tret\n";
  | Tail, (FMovD _ | FNegD _ | FAddD _ | FSubD _ | FMulD _ | FDivD _ | LdDF _  as exp) ->
      g' oc info (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tret\n";
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc info (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc info (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tret\n";
  | Tail, IfEq(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s\t#%s\n" (pp_id_or_imm y') (Id.to_string_core x) (Info.to_string info);
      g'_tail_if oc e1 e2 "je" "jne" info
  | Tail, IfLE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s\t#%s\n" (pp_id_or_imm y') (Id.to_string_core x) (Info.to_string info);
      g'_tail_if oc e1 e2 "jle" "jg" info
  | Tail, IfGE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s\t#%s\n" (pp_id_or_imm y') (Id.to_string_core x) (Info.to_string info);
      g'_tail_if oc e1 e2 "jge" "jl" info
  | Tail, IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
      g'_tail_if oc e1 e2 "je" "jne" info
  | Tail, IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
      g'_tail_if oc e1 e2 "jbe" "ja" info
  | NonTail(z), IfEq(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s\t#%s\n" (pp_id_or_imm y') (Id.to_string_core x) (Info.to_string info);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne" info
  | NonTail(z), IfLE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s\t#%s\n" (pp_id_or_imm y') (Id.to_string_core x) (Info.to_string info);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jle" "jg" info
  | NonTail(z), IfGE(x, y', e1, e2) ->
      Printf.fprintf oc "\tcmpl\t%s, %s\t#%s\n" (pp_id_or_imm y') (Id.to_string_core x) (Info.to_string info);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jge" "jl" info
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "je" "jne" info
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tcomisd\t%s, %s\t#%s\n" (Id.to_string_core y) (Id.to_string_core x) (Info.to_string info);
      g'_non_tail_if oc (NonTail(z)) e1 e2 "jbe" "ja" info
  (* �ؿ��ƤӽФ��β���̿��μ��� (caml2html: emit_call) *)
  | Tail, CallCls(x, ys, zs) -> (* �����ƤӽФ� (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tjmp\t*(%s)\t#%s\n" (Id.to_string_core reg_cl) (Info.to_string info);
  | Tail, CallDir(Id.L(x, _), ys, zs) -> (* �����ƤӽФ� *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tjmp\t%s\t#%s\n" x (Info.to_string info);
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s\t#%s\n" ss (Id.to_string_core reg_sp) (Info.to_string info);
      Printf.fprintf oc "\tcall\t*(%s)\t#%s\n" (Id.to_string_core reg_cl) (Info.to_string info);
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s\t#%s\n" ss (Id.to_string_core reg_sp) (Info.to_string info);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s\t#%s\n" (Id.to_string_core regs.(0)) (Id.to_string_core a) (Info.to_string info)
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core fregs.(0)) (Id.to_string_core a) (Info.to_string info)
  | NonTail(a), CallDir(Id.L(x, _), ys, zs) ->
      g'_args oc [] ys zs;
      let ss = stacksize () in
      if ss > 0 then Printf.fprintf oc "\taddl\t$%d, %s\t#%s\n" ss (Id.to_string_core reg_sp) (Info.to_string info);
      Printf.fprintf oc "\tcall\t%s\t#%s\n" x (Info.to_string info);
      if ss > 0 then Printf.fprintf oc "\tsubl\t$%d, %s\t#%s\n" ss (Id.to_string_core reg_sp) (Info.to_string info);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmovl\t%s, %s\t#%s\n" (Id.to_string_core regs.(0)) (Id.to_string_core a) (Info.to_string info)
      else if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmovsd\t%s, %s\t#%s\n" (Id.to_string_core fregs.(0)) (Id.to_string_core a) (Info.to_string info)
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
    (fun (y, r) -> Printf.fprintf oc "\tmovl\t%s, %s\n" y r)
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
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

(* type prog = Prog of (Id.l * float) list * fundef list * t *)
let f oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  Printf.fprintf oc ".data\n";
  Printf.fprintf oc ".balign\t8\n";
  List.iter
    (fun (Id.L(x, _), d) ->
      Printf.fprintf oc "%s:\t# %f\n" x d;
      Printf.fprintf oc "\t.long\t0x%lx\n" (gethi d);
      Printf.fprintf oc "\t.long\t0x%lx\n" (getlo d))
    data;
  Printf.fprintf oc ".text\n";
  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc ".globl\tmin_caml_start\n";
  Printf.fprintf oc "min_caml_start:\n";
  Printf.fprintf oc ".globl\t_min_caml_start\n";
  Printf.fprintf oc "_min_caml_start: # for cygwin\n";
  Printf.fprintf oc "\tpushl\t%%eax\n";
  Printf.fprintf oc "\tpushl\t%%ebx\n";
  Printf.fprintf oc "\tpushl\t%%ecx\n";
  Printf.fprintf oc "\tpushl\t%%edx\n";
  Printf.fprintf oc "\tpushl\t%%esi\n";
  Printf.fprintf oc "\tpushl\t%%edi\n";
  Printf.fprintf oc "\tpushl\t%%ebp\n";
  Printf.fprintf oc "\tmovl\t32(%%esp),%s\n" (Id.to_string_core reg_sp);
  Printf.fprintf oc "\tmovl\t36(%%esp),%s\n" (Id.to_string_core regs.(0));
  Printf.fprintf oc "\tmovl\t%s,%s\n" (Id.to_string_core regs.(0)) (Id.to_string_core reg_hp);
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail(regs.(0)), e);
  Printf.fprintf oc "\tpopl\t%%ebp\n";
  Printf.fprintf oc "\tpopl\t%%edi\n";
  Printf.fprintf oc "\tpopl\t%%esi\n";
  Printf.fprintf oc "\tpopl\t%%edx\n";
  Printf.fprintf oc "\tpopl\t%%ecx\n";
  Printf.fprintf oc "\tpopl\t%%ebx\n";
  Printf.fprintf oc "\tpopl\t%%eax\n";
  Printf.fprintf oc "\tret\n";
