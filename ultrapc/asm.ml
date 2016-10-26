(* 2オペランドではなく3オペランドのx86アセンブリもどき *)
type label_or_const = Label of string | Constant of int
type bits5 = int
type addr26 = int
type off26 = int
type const3 = int
type off21 = int
type ret2 = int
type off15 = int
type size4 = int

type addr =
    (*relative address from a reg*)
    Relative of Reg.t * label_or_const
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
| Dynamic of Reg.t * size4 * Reg.t
| Absolute of label_or_const * label_or_const option

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
    | Addi of  Reg.t * label_or_const
    | ShiftL of  Reg.t * bits5
    | ShiftR of Reg.t * bits5
    | Jump of addr26
    | JumpEQ of addr26
    | JumpLT of addr26
    | Load of addr
    | Store of Reg.t * addr

    | FAdd of Reg.t * Reg.t
    | FSub of Reg.t * Reg.t
    | FMul of Reg.t * Reg.t
    | FDiv of Reg.t * Reg.t
    | FCmp of Reg.t * Reg.t * const3
    | FJump of Reg.t * ret2 * const3
    | FLoad of addr
    | FStore of Reg.t * addr

    | JLink of addr26
    | Link
    | Push of Reg.t
    | Pop
    | Out

    | IfEQ of Reg.t * Reg.t * t * t
    | FIfEQ of Reg.t * Reg.t *t * t
    | IfLT of Reg.t * Reg.t * t * t
    | FIfLT of Reg.t * Reg.t * t * t
    | CallCls of Reg.t * Reg.t list * Reg.t list
    | CallDir of label_or_const * Reg.t list * Reg.t list
type fundef = { name : label_or_const; args : Reg.t list; fargs : Reg.t list; body : t; ret : Type.t }
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
        (Reg.ID (Id.gentmp (Type.Unit info) info), Type.Unit info),
        e1,
        e2,
        info
        )

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [|
      Reg.Reg "%r01";
      Reg.Reg "%r02";
      Reg.Reg "%r03";
      Reg.Reg "%r04";
      Reg.Reg "%r05";
      Reg.Reg "%r06";
      Reg.Reg "%r07";
      Reg.Reg "%r08";
      Reg.Reg "%r09";
      Reg.Reg "%r10";
      Reg.Reg "%r11";
      Reg.Reg "%r12";
      Reg.Reg "%r13";
      Reg.Reg "%r14";
      Reg.Reg "%r15";
      Reg.Reg "%r16";
      Reg.Reg "%r17";
      Reg.Reg "%r18";
      Reg.Reg "%r19";
      Reg.Reg "%r20";
      Reg.Reg "%r21";
      Reg.Reg "%r22";
      Reg.Reg "%r23";
      Reg.Reg "%r24";
      Reg.Reg "%r25";
      Reg.Reg "%r26";
      Reg.Reg "%r27";
      Reg.Reg "%r28";
      Reg.Reg "%r29"
  |]
let fregs = Array.init 32 (fun i -> Reg.Reg (Printf.sprintf "%%fr%d" i))
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
(*
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
*)
let reg_sp = Reg.Reg "%rsp" (* stack pointer *)
let reg_hp = Reg.Reg "%rhp" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_link = Reg.Reg "%rlink"
let reg_zero = Reg.Reg "%r0"
(* let reg_ra = "%eax" (* return address *) *)
let is_reg = function
    | Reg.Reg _ -> true
    | _ -> false

(* super-tenuki *)
let rec remove_dup xs = function
  | [] -> []
  | x :: ys when RegSet.mem x xs -> remove_dup xs ys
  | x :: ys -> x :: remove_dup (RegSet.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let rec fv_exp = function
    | Nop
    | Jump _
    | JumpEQ _
    | JumpLT _
    | Link
    | Pop
    | Out
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | JLink _
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
    | FCmp(a, b, _)
        -> [a; b]

    | Addi (r, _)
    | ShiftL (r, _)
    | ShiftR (r, _)
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | FJump(r, _, _)
    | Push r
        ->  [r]

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> u :: v :: remove_dup RegSet.empty (fv e1 @ fv e2)

    | CallCls (x, ys, zs)
    -> x :: ys @ zs
    | CallDir(_, ys, zs)
    -> ys @ zs

and fv = function
  | Ans(exp, info) -> fv_exp exp
  | Let((x, t), exp, e, info) ->
      fv_exp exp @ remove_dup (RegSet.singleton x) (fv e)
let fv e = remove_dup RegSet.empty (fv e)

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
