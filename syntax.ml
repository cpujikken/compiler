type info = int
type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }
type t_info = t * info

let to_string (x: t) =
    let rec to_string_pre pre t =
    let npre = pre ^ " "
    in
    match t with
        | Unit -> Printf.sprintf "%sUnit" pre
        | Bool b -> pre ^ (if b then "BOOL true" else "BOOL false")
        | Int i -> Printf.sprintf "%sINT %d" pre i
        | Float f -> Printf.sprintf "%sFLOAT %f" pre f
        | Not t -> Printf.sprintf "%sNOT\n%s" pre (to_string_pre npre t)
        | Neg t -> Printf.sprintf "%sNEG\n%s" pre (to_string_pre npre t)
        | Add (x, y) -> Printf.sprintf "%sADD\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | Sub (x, y) -> Printf.sprintf "%sSUB\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | FNeg t -> Printf.sprintf "%sFNEG\n%s" pre (to_string_pre npre t)
        | FAdd (x, y) -> Printf.sprintf "%sFADD\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | FSub (x, y) -> Printf.sprintf "%sFSUB\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | FMul (x, y) -> Printf.sprintf "%sFMUL\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | FDiv (x, y) -> Printf.sprintf "%sFDIV\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | Eq (x, y) -> Printf.sprintf "%sEQ\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | LE (x, y) -> Printf.sprintf "%sLE\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | If (x, y, z) -> Printf.sprintf "%sIF\n%s\n%sTHEN\n%s\n%sELSE\n%s" pre (to_string_pre (pre ^ " " ) x) pre (to_string_pre npre y) pre (to_string_pre npre z)
        | Let ((id, typ), x, y) -> Printf.sprintf "%sLET\n%s\n%s\n%s\n%s" pre (Id.to_string_pre npre id) (Type.to_string_pre npre typ) (to_string_pre npre x) (to_string_pre npre y)
        | Var id -> Printf.sprintf "%sVAR\n%s" pre (Id.to_string_pre npre id)
        | LetRec (f, t) -> Printf.sprintf "%sLET_REC\n%s\n%s" pre (to_string_let_rec npre f) (to_string_pre npre t)
        | App (x, xlist) -> Printf.sprintf "%sAPP\n%s%s" pre (to_string_pre npre x) (to_string_list npre xlist)
        | Tuple (xlist) -> Printf.sprintf "%sTUPLE%s" pre (to_string_list npre xlist)
        | LetTuple (idlist, x, y) -> Printf.sprintf "%sLET_TUPLE\n%s\n%s\n%s" pre (to_string_idtype_list npre idlist) (to_string_pre npre x) (to_string_pre npre y)
        | Array (x, y) -> Printf.sprintf "%sARRAY\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | Get (x, y) -> Printf.sprintf "%sGET\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y)
        | Put (x, y, z) -> Printf.sprintf "%sPUT\n%s\n%s\n%s" pre (to_string_pre npre x) (to_string_pre npre y ) (to_string_pre (pre ^ " " ) z)
    and to_string_list pre = function
        | [] -> ""
        | x :: xlist -> Printf.sprintf "\n%s%s" (to_string_pre pre x) (to_string_list pre xlist)
    and to_string_let_rec pre f =
        let npre = pre ^ " "
        in
        let nid, ntype = f.name
        in
        Printf.sprintf "%sNAME\n%s\n%sTYPE\n%s\n%sARG%s\n%sBODY\n%s" pre (Id.to_string_pre npre nid) pre (Type.to_string_pre npre ntype) pre (to_string_args npre f.args) pre (to_string_pre npre f.body)
    and to_string_args pre = function
        | [] -> ""
        | (id, typ) :: args -> Printf.sprintf "\n%s\n%s%s" (Id.to_string_pre pre id) (Type.to_string_pre pre typ) (to_string_args pre args)
    and to_string_idtype_list pre x = to_string_args pre x
    in
    to_string_pre "" x
