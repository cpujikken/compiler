open Operand
open Loc
(* 2オペランドではなく3オペランドのx86アセンブリもどき *)
type bits5 = int
type addr26 = int
type off26 = int
type const3 = int
type off21 = int
type ret2 = int
type label = string
type off15 = int
type size4 = int

type addr =
    (*relative address from a reg*)
    Relative of Operand.t * Loc.t
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic of Operand.t * size4 * Operand.t
    | Absolute of Loc.t * Loc.t option

let loi_to_string = function
    | Label label -> "$" ^ label
    | Constant i -> "$" ^ (string_of_int i)

type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * Info.t
  | Let of (Operand.t * Type.t) * exp * t * Info.t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
    | Nop
    | CharRead
    | Add of Operand.t * Operand.t
    | ShiftLeft of Operand.t * Operand.t
    | ShiftRight of Operand.t * Operand.t
    | Div of Operand.t * Operand.t
    | Mul of Operand.t * Operand.t
    | Sub of Operand.t * Operand.t
    | Addi of  Operand.t * Loc.t
    | Four of Operand.t
    | Half of Operand.t
    | Load of addr
    | Store of Operand.t * addr
    | Neg of Operand.t
    | FNeg of Operand.t
    | FAbs of Operand.t
    | Print of Operand.t
    | FAdd of Operand.t * Operand.t
    | FSub of Operand.t * Operand.t
    | FMul of Operand.t * Operand.t
    | FDiv of Operand.t * Operand.t
    | FLoad of addr
    | FStore of Operand.t * addr


    | MoveImm of Loc.t
    | Move of Operand.t
    | FMove of Operand.t

    | IfEQ of Operand.t * Operand.t * t * t
    | FIfEQ of Operand.t * Operand.t *t * t
    | IfLT of Operand.t * Operand.t * t * t
    | FIfLT of Operand.t * Operand.t * t * t
    | CallCls of Operand.t * Operand.t list * Operand.t list
    | CallDir of label * Operand.t list * Operand.t list
type fundef = { name : label; args : Operand.t list; fargs : Operand.t list; body : t; ret : Type.t ; info: Info.t}
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * int) list * (Id.l * float) list * fundef list * t

(*connect 2 expression into 1*)
let seq(e1, e2, info) =
    Let(
        (ID (Id.gentmp (Type.Unit info) info), Type.Unit info),
        e1,
        e2,
        info
        )

(*let xt = e1 then evaluate e2*)
let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, info) -> Let(xt, exp, e2, info)
  | Let(yt, exp, e1', info) -> Let(yt, exp, concat e1' xt e2, info)

let get_info = function
  | Ans (_, info)
  | Let (_, _, _, info) -> info

let int_size = 4
let float_size = 4
let imm_length = 21

let rec to_string_pre pre e =
    let npre = pre ^ "  "
    in
    match e with
  | Ans (exp, info) -> Printf.sprintf "%sAns of\t#%s\n%s" pre (Info.to_string info) (exp_to_string_pre npre exp)
  | Let ((operand, operand_type), exp, t, info) ->
          Printf.sprintf "%sLET %s\t%s\n%s\n%s=\n%s\n%sIN\n%s" pre (Operand.to_string operand) (Info.to_string info) (Type.to_string_pre npre operand_type)
            pre (exp_to_string_pre npre exp) pre (to_string_pre npre t)
and
to_string exp =
    to_string_pre "" exp
and
exp_to_string_pre pre exp =
    let npre = pre ^ "  "
    in
    match exp with
    | Nop -> "Nop"
    | CharRead -> "CharRead"
    | Add (op1, op2) -> Printf.sprintf "%sAdd %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | ShiftLeft (op1, op2) -> Printf.sprintf "%sShiftLeft %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | ShiftRight (op1, op2) -> Printf.sprintf "%sShiftRight %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Div (op1, op2) -> Printf.sprintf "%sDiv %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Mul (op1, op2) -> Printf.sprintf "%sMul %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Sub (op1, op2) -> Printf.sprintf "%sSub %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | Addi (op1, loc) -> Printf.sprintf "%sAddi %s, %s" pre (Operand.to_string op1) (Loc.to_string loc)
    | Four op -> Printf.sprintf "%sFour %s" pre (Operand.to_string op)
    | Half op -> Printf.sprintf "%sHalf %s" pre (Operand.to_string op)
    | Load addr -> Printf.sprintf "%sLoad %s" pre (addr_to_string addr)
    | Store (op, add) -> Printf.sprintf "%sStore %s, %s" pre (Operand.to_string op) (addr_to_string add)
    | Neg op -> Printf.sprintf "%sNeg %s" pre (Operand.to_string op)
    | FNeg op -> Printf.sprintf "%sFNeg %s" pre (Operand.to_string op)
    | FAbs op -> Printf.sprintf "%sFAbs %s" pre (Operand.to_string op)
    | Print op -> Printf.sprintf "%sPrint %s" pre (Operand.to_string op)
    | FAdd (op1, op2) -> Printf.sprintf "%sFAdd %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FSub (op1, op2) -> Printf.sprintf "%sFSub %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FMul (op1, op2) -> Printf.sprintf "%sFMul %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FDiv (op1, op2) -> Printf.sprintf "%sFDiv %s, %s" pre (Operand.to_string op1) (Operand.to_string op2)
    | FLoad addr -> Printf.sprintf "%sFLoat %s" pre (addr_to_string addr)
    | FStore (op, add) -> Printf.sprintf "%sFStore %s, %s" pre (Operand.to_string op) (addr_to_string add)


    | MoveImm loc -> Printf.sprintf "%sMoveImm %s" pre (Loc.to_string loc)
    | Move op -> Printf.sprintf "%sMove %s" pre (Operand.to_string op)
    | FMove op -> Printf.sprintf "%sFMove %s" pre (Operand.to_string op)

    | IfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfEQ %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | FIfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfEQ %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | IfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfLT %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | FIfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfLT %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre npre exp1) (to_string_pre npre exp2)
    | CallCls (op, op_list1, op_list2) -> Printf.sprintf "%sCallCls %s%s%s" pre (Operand.to_string op) (op_list_to_string op_list1 npre) (op_list_to_string op_list2 npre)
    | CallDir (label, op_list1, op_list2) -> Printf.sprintf "%sCallDir %s%s%s" pre label (op_list_to_string op_list1 npre) (op_list_to_string op_list2 npre)
and
op_list_to_string ll pre = List.fold_left
    (fun current op  -> Printf.sprintf "\n%s%s" pre (Operand.to_string op))
    ""
    ll
and
addr_to_string = function
    | Relative (op, loc) -> Printf.sprintf "Relative %s(%s)" (Loc.to_string loc) (Operand.to_string op)
    | Dynamic (op1, size4, op2) -> Printf.sprintf "Dynamic (%s * %d)(%s)" (Operand.to_string op2) size4 (Operand.to_string op1)
    | Absolute (loc1, Some loc2) -> Printf.sprintf "Absolute %s + %s" (Loc.to_string loc1) (Loc.to_string loc2)
    | Absolute(loc, None) -> Printf.sprintf "Absolute %s" (Loc.to_string loc)

let rec has_sub_call = function
  | Ans (e, _) -> has_sub_call_exp e
  | Let (_, exp, body, _) -> has_sub_call_exp exp || has_sub_call body
and
has_sub_call_exp = function
    | Nop
    | CharRead
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Addi _
    | Four _
    | Half _
    | Load _
    | Store _
    | Neg _
    | FNeg _
    | FAbs _
    | Print _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _
    | FStore _
    | MoveImm _
    | Move _
    | FMove _
    -> false

    | IfEQ (_, _, t1, t2)
    | FIfEQ (_, _, t1, t2)
    | IfLT (_, _, t1, t2)
    | FIfLT (_, _, t1, t2)
    -> has_sub_call t1 || has_sub_call t2

    | CallCls _
    | CallDir _
    -> true
let print_all out (Prog(idata, fdata, fundefs, body ) )=
      Printf.fprintf out "int data:\n";
      List.iter (fun (label, i) -> Printf.fprintf out "%s -> %d\n"  (Id.to_string label) i) idata;
      Printf.fprintf out "float data:\n";
      List.iter (fun (label, i) -> Printf.fprintf out "%s -> %.3f\n"  (Id.to_string label) i) fdata;
      Printf.fprintf out "main:\n%s\n" @@ to_string body;
      List.iter (fun fundef ->
          Printf.fprintf out "closure %s\n" fundef.name ;
          Printf.fprintf out "int args:\n";
          List.iter (fun x->Printf.fprintf out "%s, " @@ Operand.to_string x) fundef.args;
          Printf.fprintf out "\n";
          Printf.fprintf out "float args:\n";
          List.iter (fun x->Printf.fprintf out "%s, " @@ Operand.to_string x) fundef.fargs;
          Printf.fprintf out "\n";
          Printf.fprintf out "closure body\n";
          Printf.fprintf out "%s\n" @@ to_string fundef.body
      ) fundefs;
