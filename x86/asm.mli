type id_or_imm = V of Id.t | C of int
type t =
  | Ans of exp * Syntax.info
  | Let of (Id.t * Type.t) * exp * t * Syntax.info
and exp =
  | Nop of Syntax.info
  | Set of int * Syntax.info
  | SetL of Id.l * Syntax.info
  | Mov of Id.t * Syntax.info
  | Neg of Id.t * Syntax.info
  | Add of Id.t * id_or_imm * Syntax.info
  | Sub of Id.t * id_or_imm * Syntax.info
  | Ld of Id.t * id_or_imm * int * Syntax.info
  | St of Id.t * Id.t * id_or_imm * int * Syntax.info
  | FMovD of Id.t * Syntax.info
  | FNegD of Id.t * Syntax.info
  | FAddD of Id.t * Id.t * Syntax.info
  | FSubD of Id.t * Id.t * Syntax.info
  | FMulD of Id.t * Id.t * Syntax.info
  | FDivD of Id.t * Id.t * Syntax.info
  | LdDF of Id.t * id_or_imm * int * Syntax.info
  | StDF of Id.t * Id.t * id_or_imm * int * Syntax.info
  | Comment of string * Syntax.info
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t * Syntax.info
  | IfLE of Id.t * id_or_imm * t * t * Syntax.info
  | IfGE of Id.t * id_or_imm * t * t * Syntax.info
  | IfFEq of Id.t * Id.t * t * t * Syntax.info
  | IfFLE of Id.t * Id.t * t * t * Syntax.info
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list * Syntax.info
  | CallDir of Id.l * Id.t list * Id.t list * Syntax.info
  | Save of Id.t * Id.t  * Syntax.info (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t * Syntax.info  (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * t

val fletd : Id.t * exp * t * Syntax.info -> t (* shorthand of Let for float *)
val seq : exp * t  * Syntax.info -> t (* shorthand of Let for unit *)

val regs : Id.t array
val fregs : Id.t array
val allregs : Id.t list
val allfregs : Id.t list
val reg_cl : Id.t
(*
val reg_sw : Id.t
val reg_fsw : Id.t
val reg_ra : Id.t
*)
val reg_hp : Id.t
val reg_sp : Id.t
val is_reg : Id.t -> bool

val fv : t -> Id.t list
val concat : t -> Id.t * Type.t -> t -> t

val align : int -> int
val get_info_exp: exp -> Syntax.info
val get_info_t: t -> Syntax.info
