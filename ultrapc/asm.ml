(* 2オペランドではなく3オペランドのx86アセンブリもどき *)

type reg = string
type const16 = Label of Id.l | Constant of int
type bits5 = int
type off26 = int
type addr26 = int
type off26 = int
type const3 = int
type off21 = int
type ret2 = int
let loi_to_string = function
	| Label label -> "$" ^ label
	| Constant i -> "$" ^ (string_of_int i)

type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * Info.t
  | Let of (Id.t * Type.t) * exp * t * Info.t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
    | Nop
    | Add of reg * reg
    | Sub of reg * reg
    | Addi of  reg * const16
    | ShiftL of  reg * bits5
    | ShiftR of reg * bits5
    | Branch of off26
    | BranchEQ of off26
    | Jump of addr26
    | JumpEQ of addr26
    | Load of reg * off16
    | Store of reg * off16

    | FAdd of reg * reg
    | FSub of reg * reg
    | FMul of reg * reg
    | FDiv of reg * reg
    | FCmp of reg * reg * const3
    | FBranch of off21 * ret2 * const3
    | FJump of reg * ret2 * const3
    | FLoad of reg * off16
    | FStore of reg * off16

    | JLink of addr26
    | Link
    | Push of reg
    | Pop
    | Out
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * int) list * (Id.l * float) list * fundef list * t

let fletd(x, e1, e2, info) = Let((x, Type.Float info), e1, e2, info)
let seq(e1, e2, info) = Let((Id.gentmp (Type.Unit info) info, Type.Unit info), e1, e2, info)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [|
      "%r01"
      "%r02"
      "%r03"
      "%r04"
      "%r05"
      "%r06"
      "%r07"
      "%r08"
      "%r09"
      "%r10"
      "%r11"
      "%r12"
      "%r13"
      "%r14"
      "%r15"
      "%r16"
      "%r17"
      "%r18"
      "%r19"
      "%r20"
      "%r21"
      "%r22"
      "%r23"
      "%r24"
      "%r25"
      "%r26"
      "%r27"
      "%r28"
      "%r29"
  |]
let fregs = Array.init 32 (fun i -> Printf.sprintf "%%fr%d" i)
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
(*
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
*)
let reg_sp = "%rsp" (* stack pointer *)
let reg_hp = "%rhp" (* heap pointer (caml2html: sparcasm_reghp) *)
let reg_link = "%rlink"
let reg_zero = "%r0"
(* let reg_ra = "%eax" (* return address *) *)
let is_reg x = ((fst x).[0] = '%' || fst x = fst reg_hp)

(* super-tenuki *)
let rec remove_and_uniq xs = function
  | [] -> []
  | x :: ys when S.mem x xs -> remove_and_uniq xs ys
  | x :: ys -> x :: remove_and_uniq (S.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let fv_id_or_imm = function V(x) -> [x] | _ -> []
let rec fv_exp = function
  | Nop | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x) | Neg(x) | FMovD(x) | FNegD(x) | Save(x, _) -> [x]
  | Add(x, y') | Sub(x, y') | Ld(x, y', _) | LdDF(x, y', _) -> x :: fv_id_or_imm y'
  | St(x, y, z', _) | StDF(x, y, z', _) -> x :: y :: fv_id_or_imm z'
  | FAddD(x, y) | FSubD(x, y) | FMulD(x, y) | FDivD(x, y) -> [x; y]
  | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs) -> x :: ys @ zs
  | CallDir(_, ys, zs) -> ys @ zs
and fv = function
  | Ans(exp, info) -> fv_exp exp
  | Let((x, t), exp, e, info) ->
      fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
let fv e = remove_and_uniq S.empty (fv e)

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, info) -> Let(xt, exp, e2, info)
  | Let(yt, exp, e1', info) -> Let(yt, exp, concat e1' xt e2, info)

let align i = (if i mod 8 = 0 then i else i + 4)
let get_info = function
  | Ans (_, info)
  | Let (_, _, _, info) -> info
