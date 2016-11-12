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
    | Add of Reg.t * Reg.t
    | Sub of Reg.t * Reg.t
    | Addi of  Reg.t * Loc.t
    | Four of Reg.t
    | Half of Reg.t
    | Load of addr
    | Store of Reg.t * addr
    | Neg of Reg.t
    | FNeg of Reg.t
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

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, info) -> Let(xt, exp, e2, info)
  | Let(yt, exp, e1', info) -> Let(yt, exp, concat e1' xt e2, info)
let align i = (if i mod 8 = 0 then i else i + 4)

(*let addr_to_param rd = function*)
    (*| Relative (r, loc) -> [ rd; Cmd.int_to_string Cmd.addr_mode_relative; r; Loc.to_string loc]*)
    (*| Dynamic(r1, s4, r2) -> [ rd;Cmd.int_to_string Cmd.addr_mode_dynamic; r1; Cmd.int_to_string s4; r2]*)
    (*| Absolute(l1, l2_o) -> match l2_o with*)
        (*None -> [rd; Cmd.int_to_string Cmd.addr_mode_absolute; Loc.to_string l1]*)
        (*| Some l2 -> [rd; Cmd.int_to_string Cmd.addr_mode_absolute; Loc.to_string l1; Loc.to_string l2]*)
