(* 2オペランドではなく3オペランドのx86アセンブリもどき *)
open Loc
open Reg
type bits5 = int
type addr26 = int
type off26 = int
type const3 = int
type label = string
type off21 = int
type ret2 = int
type off15 = int
type size4 = int

type addr =
    (*relative address from a reg*)
    Relative of Reg.t * Loc.t
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
| Dynamic of Reg.t * size4 * Reg.t
| Absolute of Loc.t * Loc.t option

let loi_to_string = function
    | Label label -> "$" ^ label
    | Constant i -> "$" ^ (string_of_int i)

type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * Info.t
  | Let of (Reg.t * Type.t) * exp * t * Info.t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
    | Nop
    | IntRead
    | FloatRead
    | Add of Reg.t * Reg.t
    | ShiftLeft of Reg.t * Reg.t
    | ShiftRight of Reg.t * Reg.t
    | Div of Reg.t * Reg.t
    | Mul of Reg.t * Reg.t
    | Sub of Reg.t * Reg.t
    | Addi of  Reg.t * Loc.t
    | Four of Reg.t
    | Half of Reg.t
    | Load of addr
    | Store of Reg.t * addr
    | Neg of Reg.t
    | Print of Reg.t
    | FNeg of Reg.t
    | FAbs of Reg.t
    | Move of Reg.t
    | FMove of Reg.t
    | MoveImm of Loc.t

    | FAdd of Reg.t * Reg.t
    | FSub of Reg.t * Reg.t
    | FMul of Reg.t * Reg.t
    | FDiv of Reg.t * Reg.t
    | FLoad of addr
    | FStore of Reg.t * addr


    | IfEQ of Reg.t * Reg.t * t * t
    | FIfEQ of Reg.t * Reg.t *t * t
    | IfLT of Reg.t * Reg.t * t * t
    | FIfLT of Reg.t * Reg.t * t * t
    | CallCls of Reg.t * Reg.t list * Reg.t list
    | CallDir of Loc.t * Reg.t list * Reg.t list
    | Restore of Id.t
    | Save of Reg.t * Id.t
type fundef = { name : label; args : Reg.t list; fargs : Reg.t list; body : t; ret : Type.t ; info: Info.t}
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * int) list * (Id.l * float) list * fundef list * t

let seq(e1, e2, info) =
    Let(
        (reg_dump, Type.Unit info),
        e1,
        e2,
        info
        )

let rec concat e1 reg_and_type e2 =
  match e1 with
  | Ans(exp, info) -> Let(reg_and_type, exp, e2, info)
  | Let(yt, exp, e1', info) -> Let(yt, exp, concat e1' reg_and_type e2, info)

let rec to_string_pre pre e =
    let npre = pre ^ "\t"
    in
    match e with
  | Ans (exp, info) -> Printf.sprintf "%sAns of\t#%s\n%s" pre (Info.to_string info) (exp_to_string_pre npre exp)
  | Let ((operand, operand_type), exp, t, info) ->
          Printf.sprintf "%sLET %s:%s\t#%s\n%s=\n%s\n%sIN\n%s" pre (Reg.to_string operand) (Type.to_string operand_type) (Info.to_string info)
            pre (exp_to_string_pre npre exp) pre (to_string_pre npre t)
and
to_string exp =
    to_string_pre "" exp
and
exp_to_string_pre pre = function
    | Nop -> "Nop"
    | IntRead -> "IntRead"
    | FloatRead -> "FloatRead"
    | Add (op1, op2) -> Printf.sprintf "%sAdd %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | ShiftLeft (op1, op2) -> Printf.sprintf "%sShiftLeft %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | ShiftRight (op1, op2) -> Printf.sprintf "%sShiftRight %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | Div (op1, op2) -> Printf.sprintf "%sDiv %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | Mul (op1, op2) -> Printf.sprintf "%sMul %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | Sub (op1, op2) -> Printf.sprintf "%sSub %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | Addi (op1, loc) -> Printf.sprintf "%sAddi %s, %s" pre (Reg.to_string op1) (Loc.to_string loc)
    | Four op -> Printf.sprintf "%sFour %s" pre (Reg.to_string op)
    | Half op -> Printf.sprintf "%sHalf %s" pre (Reg.to_string op)
    | Load addr -> Printf.sprintf "%sLoad %s" pre (addr_to_string addr)
    | Store (op, add) -> Printf.sprintf "%sStore %s, %s" pre (Reg.to_string op) (addr_to_string add)
    | Neg op -> Printf.sprintf "%sNeg %s" pre (Reg.to_string op)
    | FNeg op -> Printf.sprintf "%sFNeg %s" pre (Reg.to_string op)
    | FAbs op -> Printf.sprintf "%sFAbs %s" pre (Reg.to_string op)
    | Print op -> Printf.sprintf "%sPrint %s" pre (Reg.to_string op)
    | FAdd (op1, op2) -> Printf.sprintf "%sFAdd %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | FSub (op1, op2) -> Printf.sprintf "%sFSub %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | FMul (op1, op2) -> Printf.sprintf "%sFMul %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | FDiv (op1, op2) -> Printf.sprintf "%sFDiv %s, %s" pre (Reg.to_string op1) (Reg.to_string op2)
    | FLoad addr -> Printf.sprintf "%sFLoat %s" pre (addr_to_string addr)
    | FStore (op, add) -> Printf.sprintf "%sFStore %s, %s" pre (Reg.to_string op) (addr_to_string add)


    | MoveImm loc -> Printf.sprintf "%sMoveImm %s" pre (Loc.to_string loc)
    | Move op -> Printf.sprintf "%sMove %s" pre (Reg.to_string op)
    | FMove op -> Printf.sprintf "%sFMove %s" pre (Reg.to_string op)

    | IfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfEQ %s, %s\n%s\n%s" pre (Reg.to_string op1) (Reg.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | FIfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfEQ %s, %s\n%s\n%s" pre (Reg.to_string op1) (Reg.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | IfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfLT %s, %s\n%s\n%s" pre (Reg.to_string op1) (Reg.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | FIfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfLT %s, %s\n%s\n%s" pre (Reg.to_string op1) (Reg.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | CallCls (op, op_list1, op_list2) -> Printf.sprintf "%sCallCls %s%s%s" pre (Reg.to_string op) (op_list_to_string op_list1 (pre ^ "\t")) (op_list_to_string op_list2 (pre ^ "\t"))
    | CallDir (loc, op_list1, op_list2) -> Printf.sprintf "%sCallDir %s%s%s" pre (Loc.to_string loc) (op_list_to_string op_list1 (pre ^ "\t")) (op_list_to_string op_list2 (pre ^ "\t"))
    | Restore id -> Printf.sprintf "%sRestore %s" pre (Id.to_string id)
    | Save (reg, t) -> Printf.sprintf "%sSave %s, %s" pre (Reg.to_string reg) (Id.to_string t)
and
op_list_to_string ll pre = List.fold_left
    (fun current op  -> Printf.sprintf "\n%s%s" pre (Reg.to_string op))
    ""
    ll
and
addr_to_string = function
    | Relative (op, loc) -> Printf.sprintf "Relative %s(%s)" (Loc.to_string loc) (Reg.to_string op)
    | Dynamic (op1, size4, op2) -> Printf.sprintf "Dynamic (%s * %d)(%s)" (Reg.to_string op2) size4 (Reg.to_string op1)
    | Absolute (loc1, Some loc2) -> Printf.sprintf "Absolute %s + %s" (Loc.to_string loc1) (Loc.to_string loc2)
    | Absolute(loc, None) -> Printf.sprintf "Absolute %s" (Loc.to_string loc)
