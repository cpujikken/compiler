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
    | Add of Operand.t * Operand.t
    | Sub of Operand.t * Operand.t
    | Addi of  Operand.t * Loc.t
    | ShiftL of  Operand.t * bits5
    | ShiftR of Operand.t * bits5
    | Load of addr
    | Store of Operand.t * addr
    | Neg of Operand.t
    | FNeg of Operand.t

    | FAdd of Operand.t * Operand.t
    | FSub of Operand.t * Operand.t
    | FMul of Operand.t * Operand.t
    | FDiv of Operand.t * Operand.t
    | FLoad of addr
    | FStore of Operand.t * addr

    | JLink of addr26
    | Link
    | Push of Operand.t
    | Pop
    | Out

    | MoveImm of Loc.t
    | Move of Operand.t

    | IfEQ of Operand.t * Operand.t * t * t
    | FIfEQ of Operand.t * Operand.t *t * t
    | IfLT of Operand.t * Operand.t * t * t
    | FIfLT of Operand.t * Operand.t * t * t
    | CallCls of Operand.t * Operand.t list * Operand.t list
    | CallDir of Loc.t * Operand.t list * Operand.t list
    | Restore of Id.t
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
    | Link
    | Pop
    | Out
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | JLink _
    | Restore _
    | MoveImm _
        -> []

    | Add (a, b)
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
    | ShiftL (r, _)
    | ShiftR (r, _)
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | Push r
    | Neg r
    | FNeg r
        ->  [r]

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> u :: v :: remove_dup OperandSet.empty (get_free_vars e1 @ get_free_vars e2)

    | CallCls (x, ys, zs)
    -> x :: ys @ zs
    | CallDir(_, ys, zs)
    -> ys @ zs

and get_free_vars = function
  | Ans(exp, info) -> fv_exp exp
  | Let((x, t), exp, e, info) ->
      fv_exp exp @ remove_dup (OperandSet.singleton x) (get_free_vars e)
let get_free_vars e = remove_dup OperandSet.empty (get_free_vars e)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, info) -> Let(xt, exp, e2, info)
  | Let(yt, exp, e1', info) -> Let(yt, exp, concat e1' xt e2, info)

let align i = (if i mod 8 = 0 then i else i + 4)
let get_info = function
  | Ans (_, info)
  | Let (_, _, _, info) -> info

let int_size = 4
let float_size = 4
let imm_length = 21
