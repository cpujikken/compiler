type closure = { entry : Id.l; actual_fv : Id.t list }
type t =
  | Unit of Syntax.info
  | Int of int * Syntax.info
  | Float of float * Syntax.info
  | Neg of Id.t * Syntax.info
  | Add of Id.t * Id.t * Syntax.info
  | Sub of Id.t * Id.t * Syntax.info
  | FNeg of Id.t * Syntax.info
  | FAdd of Id.t * Id.t * Syntax.info
  | FSub of Id.t * Id.t * Syntax.info
  | FMul of Id.t * Id.t * Syntax.info
  | FDiv of Id.t * Id.t * Syntax.info
  | IfEq of Id.t * Id.t * t * t * Syntax.info
  | IfLE of Id.t * Id.t * t * t * Syntax.info
  | Let of (Id.t * Type.t) * t * t * Syntax.info
  | Var of Id.t * Syntax.info
  | MakeCls of (Id.t * Type.t) * closure * t * Syntax.info
  | AppCls of Id.t * Id.t list * Syntax.info
  | AppDir of Id.l * Id.t list * Syntax.info
  | Tuple of Id.t list * Syntax.info
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Syntax.info
  | Get of Id.t * Id.t * Syntax.info
  | Put of Id.t * Id.t * Id.t * Syntax.info
  | ExtArray of Id.l * Syntax.info
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

val fv : t -> S.t
val f : KNormal.t -> prog
