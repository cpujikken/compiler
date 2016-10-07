type closure = { entry : Id.l; actual_fv : Id.t list }
type t =
  | Unit of Info.t
  | Int of int * Info.t
  | Float of float * Info.t
  | Neg of Id.t * Info.t
  | Add of Id.t * Id.t * Info.t
  | Sub of Id.t * Id.t * Info.t
  | FNeg of Id.t * Info.t
  | FAdd of Id.t * Id.t * Info.t
  | FSub of Id.t * Id.t * Info.t
  | FMul of Id.t * Id.t * Info.t
  | FDiv of Id.t * Id.t * Info.t
  | IfEq of Id.t * Id.t * t * t * Info.t
  | IfLE of Id.t * Id.t * t * t * Info.t
  | Let of (Id.t * Type.t) * t * t * Info.t
  | Var of Id.t * Info.t
  | MakeCls of (Id.t * Type.t) * closure * t * Info.t
  | AppCls of Id.t * Id.t list * Info.t
  | AppDir of Id.l * Id.t list * Info.t
  | Tuple of Id.t list * Info.t
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Info.t
  | Get of Id.t * Id.t * Info.t
  | Put of Id.t * Id.t * Id.t * Info.t
  | ExtArray of Id.l * Info.t
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

val fv : t -> S.t
val f : KNormal.t -> prog
