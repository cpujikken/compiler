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
  | LetRec of fundef * t * Syntax.info
  | App of Id.t * Id.t list * Syntax.info
  | Tuple of Id.t list * Syntax.info
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Syntax.info
  | Get of Id.t * Id.t * Syntax.info
  | Put of Id.t * Id.t * Id.t * Syntax.info
  | ExtArray of Id.t * Syntax.info
  | ExtFunApp of Id.t * Id.t list * Syntax.info
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

val fv : t -> S.t
val f : Syntax.t -> t
