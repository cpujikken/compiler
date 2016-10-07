type id_or_imm = V of Id.t | C of int
type t =
  | Ans of exp * Info.t
  | Let of (Id.t * Type.t) * exp * t * Info.t
and exp =
  | Nop of Info.t
  | Set of int * Info.t
  | SetL of Id.l * Info.t
  | Mov of Id.t * Info.t
  | Neg of Id.t * Info.t
  | Add of Id.t * id_or_imm * Info.t
  | Sub of Id.t * id_or_imm * Info.t
  | Ld of Id.t * id_or_imm * int * Info.t
  | St of Id.t * Id.t * id_or_imm * int * Info.t
  | FMovD of Id.t * Info.t
  | FNegD of Id.t * Info.t
  | FAddD of Id.t * Id.t * Info.t
  | FSubD of Id.t * Id.t * Info.t
  | FMulD of Id.t * Id.t * Info.t
  | FDivD of Id.t * Id.t * Info.t
  | LdDF of Id.t * id_or_imm * int * Info.t
  | StDF of Id.t * Id.t * id_or_imm * int * Info.t
  | Comment of string * Info.t
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t * Info.t
  | IfLE of Id.t * id_or_imm * t * t * Info.t
  | IfGE of Id.t * id_or_imm * t * t * Info.t
  | IfFEq of Id.t * Id.t * t * t * Info.t
  | IfFLE of Id.t * Id.t * t * t * Info.t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list * Info.t
  | CallDir of Id.l * Id.t list * Id.t list * Info.t
  | Save of Id.t * Id.t  * Info.t (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore of Id.t * Info.t  (* スタック変数から値を復元 *)
type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
type prog = Prog of (Id.l * float) list * fundef list * t

val fletd : Id.t * exp * t * Info.t -> t (* shorthand of Let for float *)
val seq : exp * t  * Info.t -> t (* shorthand of Let for unit *)

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
val get_info_exp: exp -> Info.t
val get_info_t: t -> Info.t
