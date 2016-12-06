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
    | IntRead
    | FloatRead
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

    | IfEQ of Operand.t * Operand.t * t * t
    | FIfEQ of Operand.t * Operand.t *t * t
    | IfLT of Operand.t * Operand.t * t * t
    | FIfLT of Operand.t * Operand.t * t * t
    | CallCls of Operand.t * Operand.t list * Operand.t list
    | CallDir of Loc.t * Operand.t list * Operand.t list
    | Restore of Id.t
    | Save of Id.t * Type.t
type fundef = { name : label; args : Operand.t list; fargs : Operand.t list; body : t; ret : Type.t ; info: Info.t}
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * int) list * (Id.l * float) list * fundef list * t

let fletd(x, e1, e2, info) =
    Let(
        (x, Type.Float info),
        e1,
        e2,
        info)
(*connect 2 expression into 1*)
let seq(e1, e2, info) =
    Let(
        (ID (Id.gentmp (Type.Unit info) info), Type.Unit info),
        e1,
        e2,
        info
        )

(* super-tenuki *)
let rec remove_dup xs = function
  | [] -> []
  | x :: ys when OperandSet.mem x xs -> remove_dup xs ys
  | x :: ys -> x :: remove_dup (OperandSet.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let rec fv_exp = function
    | Nop
    | IntRead
    | FloatRead
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | MoveImm _
    (*note: save and Restore are special instructions*)
    | Restore _
    | Save _
        -> []

    | Add (a, b)
    | ShiftLeft (a, b)
    | ShiftRight (a, b)
    | Div (a, b)
    | Mul (a, b)
    | Sub(a, b)
    | Load ((Dynamic (a, _, b)))
    | FLoad ((Dynamic (a, _, b)))
    | FAdd(a, b)
    | FSub(a, b)
    | FMul(a, b)
    | FDiv(a, b)
    | Store(a, Relative (b, _))
    | FStore(a, Relative (b, _))
    (*| FCmp(a, b, _)*)
        -> [a; b]

    | Move r
    | Addi (r, _)
    | Four r
    | Half r
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | Neg r
    | FNeg r
    | FAbs r
    | Print r
        ->  [r]

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> u :: v :: remove_dup OperandSet.empty (get_free_vars_ e1 @ get_free_vars_ e2)

    | CallCls (x, ys, zs)
    -> x :: ys @ zs
    | CallDir(_, ys, zs)
    -> ys @ zs

and get_free_vars_ = function
  | Ans(exp, info) -> fv_exp exp
  | Let((x, t), exp, e, info) ->
      fv_exp exp @ remove_dup (OperandSet.singleton x) (get_free_vars_ e)
let get_free_vars e = remove_dup OperandSet.empty (get_free_vars_ e)

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
    let npre = pre ^ "\t"
    in
    match e with
  | Ans (exp, info) -> Printf.sprintf "%sAns of\t#%s\n%s" pre (Info.to_string info) (exp_to_string_pre npre exp)
  | Let ((operand, operand_type), exp, t, info) ->
          Printf.sprintf "%sLET %s:%s\t#%s\n%s=\n%s\n%sIN\n%s" pre (Operand.to_string operand) (Type.to_string operand_type) (Info.to_string info)
            pre (exp_to_string_pre npre exp) pre (to_string_pre npre t)
and
to_string exp =
    to_string_pre "" exp
and
exp_to_string_pre pre = function
    | Nop -> "Nop"
    | IntRead -> "IntRead"
    | FloatRead -> "FloatRead"
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

    | IfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfEQ %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | FIfEQ (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfEQ %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | IfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sIfLT %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | FIfLT (op1, op2, exp1, exp2) -> Printf.sprintf "%sFIfLT %s, %s\n%s\n%s" pre (Operand.to_string op1) (Operand.to_string op2) (to_string_pre (pre ^ "\t") exp1) (to_string_pre (pre ^ "\t") exp2)
    | CallCls (op, op_list1, op_list2) -> Printf.sprintf "%sCallCls %s%s%s" pre (Operand.to_string op) (op_list_to_string op_list1 (pre ^ "\t")) (op_list_to_string op_list2 (pre ^ "\t"))
    | CallDir (loc, op_list1, op_list2) -> Printf.sprintf "%sCallDir %s%s%s" pre (Loc.to_string loc) (op_list_to_string op_list1 (pre ^ "\t")) (op_list_to_string op_list2 (pre ^ "\t"))
    | Restore id -> Printf.sprintf "%sRestore %s" pre (Id.to_string id)
    | Save (id, _) -> Printf.sprintf "%sSave %s" pre (Id.to_string id)
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
