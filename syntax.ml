type info = int
type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit of info
  | Bool of bool * info
  | Int of int * info
  | Float of float * info
  | Not of t * info
  | Neg of t * info
  | Add of t * t * info
  | Sub of t * t * info
  | FNeg of t * info
  | FAdd of t * t * info
  | FSub of t * t * info
  | FMul of t * t * info
  | FDiv of t * t * info
  | Eq of t * t * info
  | LE of t * t * info
  | If of t * t * t * info
  | Let of (Id.t * Type.t) * t * t * info
  | Var of Id.t * info
  | LetRec of fundef * t * info
  | App of t * t list * info
  | Tuple of t list * info
  | LetTuple of (Id.t * Type.t) list * t * t * info
  | Array of t * t * info
  | Get of t * t * info
  | Put of t * t * t * info
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let info_show i = Printf.sprintf "\t;#%d" i

let to_string (x: t) =
    let rec to_string_pre pre t =
    let npre = pre ^ " "
    in
    match t with
        | Unit info -> Printf.sprintf "%sUnit%s" pre (info_show info)
        | Bool(b, info) -> pre ^ (if b then "BOOL true" else "BOOL false")
        | Int (i, info) -> Printf.sprintf "%sINT %d%s" pre i (info_show info)
        | Float (f, info) -> Printf.sprintf "%sFLOAT %f%s" pre f (info_show info)
        | Not (t, info) -> Printf.sprintf "%sNOT%s\n%s" pre (info_show info) (to_string_pre npre t)
        | Neg (t, info) -> Printf.sprintf "%sNEG%s\n%s" pre (info_show info) (to_string_pre npre t)
        | Add (x, y, info) -> Printf.sprintf "%sADD%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | Sub (x, y, info) -> Printf.sprintf "%sSUB%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | FNeg (t, info) -> Printf.sprintf "%sFNEG%s\n%s" pre  (info_show info) (to_string_pre npre t)
        | FAdd (x, y, info) -> Printf.sprintf "%sFADD%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | FSub (x, y, info) -> Printf.sprintf "%sFSUB%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | FMul (x, y, info) -> Printf.sprintf "%sFMUL%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | FDiv (x, y, info) -> Printf.sprintf "%sFDIV%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | Eq (x, y, info) -> Printf.sprintf "%sEQ%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | LE (x, y, info) -> Printf.sprintf "%sLE%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | If (x, y, z, info) -> Printf.sprintf "%sIF%s\n%s\n%sTHEN\n%s\n%sELSE\n%s" pre (info_show info) (to_string_pre (pre ^ " " ) x) pre (to_string_pre npre y) pre (to_string_pre npre z)
        | Let ((id, typ), x, y, info) -> Printf.sprintf "%sLET%s\n%s\n%s\n%s\n%s" pre (info_show info) (Id.to_string_pre npre id) (Type.to_string_pre npre typ) (to_string_pre npre x) (to_string_pre npre y)
        | Var (id, info) -> Printf.sprintf "%sVAR%s\n%s" pre (info_show info) (Id.to_string_pre npre id)
        | LetRec (f, t, info) -> Printf.sprintf "%sLET_REC%s\n%s\n%s" pre (info_show info) (to_string_let_rec npre f) (to_string_pre npre t)
        | App (x, xlist, info) -> Printf.sprintf "%sAPP%s\n%s%s" pre (info_show info) (to_string_pre npre x) (to_string_list npre xlist)
        | Tuple (xlist, info) -> Printf.sprintf "%sTUPLE%s%s" pre (info_show info) (to_string_list npre xlist)
        | LetTuple (idlist, x, y, info) -> Printf.sprintf "%sLET_TUPLE%s\n%s\n%s\n%s" pre (info_show info) (to_string_idtype_list npre idlist) (to_string_pre npre x) (to_string_pre npre y)
        | Array (x, y, info) -> Printf.sprintf "%sARRAY%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | Get (x, y, info) -> Printf.sprintf "%sGET%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y)
        | Put (x, y, z, info) -> Printf.sprintf "%sPUT%s\n%s\n%s\n%s" pre (info_show info) (to_string_pre npre x) (to_string_pre npre y ) (to_string_pre (pre ^ " " ) z)
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
