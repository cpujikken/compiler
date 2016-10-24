(* 2オペランドではなく3オペランドのx86アセンブリもどき *)

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * Info.t
  | Let of (Id.t * Type.t) * exp * t * Info.t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
  | Nop
  | Set of int
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Ld of Id.t * id_or_imm * int
  | St of Id.t * Id.t * id_or_imm * int
  | FMovD of Id.t
  | FNegD of Id.t
  | FAddD of Id.t * Id.t
  | FSubD of Id.t * Id.t
  | FMulD of Id.t * Id.t
  | FDivD of Id.t * Id.t
  | LdDF of Id.t * id_or_imm * int
  | StDF of Id.t * Id.t * id_or_imm * int
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let fletd(x, e1, e2, info) = Let((x, Type.Float info), e1, e2, info)
let seq(e1, e2, info) = Let((Id.gentmp (Type.Unit info) info, Type.Unit info), e1, e2, info)

let regs = (* Array.init 16 (fun i -> Printf.sprintf "%%r%d" i) *)
  [|
      "%r1", Info.dump();
      "%r2", Info.dump();
      "%r3", Info.dump();
      "%r4", Info.dump();
      "%r5", Info.dump();
      "%r6", Info.dump();
      "%r7", Info.dump();
      "%r8", Info.dump();
      "%r9", Info.dump();
      "%r10", Info.dump();
      "%r11", Info.dump();
      "%r12", Info.dump();
      "%r13", Info.dump();
  |]
let fregs = Array.init 16 (fun i -> Printf.sprintf "%%xmm%d" i, Info.dump())
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = regs.(Array.length regs - 1) (* closure address (caml2html: sparcasm_regcl) *)
(*
let reg_sw = regs.(Array.length regs - 1) (* temporary for swap *)
let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
*)
let reg_sp = "%sp", Info.dump() (* stack pointer *)
let link_reg = "%link", Info.dump()
let reg_hp = "min_caml_hp", Info.dump() (* heap pointer (caml2html: sparcasm_reghp) *)
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
  | Nop _ | Set(_) | SetL(_) | Comment(_) | Restore(_) -> []
  | Mov(x, info) | Neg(x, info) | FMovD(x, info) | FNegD(x, info) | Save(x, _, info) -> [x]
  | Add(x, y', info) | Sub(x, y', info) | Ld(x, y', _, info) | LdDF(x, y', _, info) -> x :: fv_id_or_imm y'
  | St(x, y, z', _, info) | StDF(x, y, z', _, info) -> x :: y :: fv_id_or_imm z'
  | FAddD(x, y, info) | FSubD(x, y, info) | FMulD(x, y, info) | FDivD(x, y, info) -> [x; y]
  | IfEq(x, y', e1, e2, info) | IfLE(x, y', e1, e2, info) | IfGE(x, y', e1, e2, info) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | IfFEq(x, y, e1, e2, info) | IfFLE(x, y, e1, e2, info) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
  | CallCls(x, ys, zs, info) -> x :: ys @ zs
  | CallDir(_, ys, zs, info) -> ys @ zs
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
let get_info_exp = function
  | Nop info
  | Set (_, info)
  | SetL (_, info)
  | Mov (_, info)
  | Neg (_, info)
  | Add (_, _, info)
  | Sub (_, _, info)
  | Ld (_, _, _, info)
  | St (_, _, _, _, info)
  | FMovD (_, info)
  | FNegD (_, info)
  | FAddD (_, _, info)
  | FSubD (_, _, info)
  | FMulD (_, _, info)
  | FDivD (_, _, info)
  | LdDF (_, _, _, info)
  | StDF (_, _, _, _, info)
  | Comment (_, info)
  (* virtual instructions *)
  | IfEq (_, _, _, _, info)
  | IfLE (_, _, _, _, info)
  | IfGE (_, _, _, _, info)
  | IfFEq (_, _, _, _, info)
  | IfFLE (_, _, _, _, info)
  | CallCls (_, _, _, info)
  | CallDir (_, _, _, info)
  | Save (_, _, info)
  | Restore (_, info) -> info
let get_info_t = function
  | Ans (_, info)
  | Let (_, _, _, info) -> info
