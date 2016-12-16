type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  | Unit of Info.t
  | Bool of bool * Info.t
  | Int of int * Info.t
  | Float of float * Info.t
  | Not of t * Info.t
  | Neg of t * Info.t
  | Add of t * t * Info.t
  | Sub of t * t * Info.t
  | FNeg of t * Info.t
  | FAdd of t * t * Info.t
  | FSub of t * t * Info.t
  | FMul of t * t * Info.t
  | FDiv of t * t * Info.t
  | Eq of t * t * Info.t
  | LE of t * t * Info.t
  | If of t * t * t * Info.t
  | Let of (Id.t * Type.t) * t * t * Info.t
  | Var of Id.t * Info.t
  | LetRec of fundef * t * Info.t
  | App of t * t list * Info.t
  | Tuple of t list * Info.t
  | LetTuple of (Id.t * Type.t) list * t * t * Info.t
  | Array of t * Type.t * Info.t
  | CreateArray of t * t * Info.t
  | Get of t * t * Info.t
  | Four of t * Info.t
  | Half of t * Info.t
  | Put of t * t * t * Info.t
  | ShiftLeft of t * t * Info.t
  | ShiftRight of t * t * Info.t
  | FloatRead of Info.t
  | IntRead of Info.t
  | Print of t * Info.t
  | Mul of t * t * Info.t
  | Div of t * t * Info.t
  | FAbs of t * Info.t

and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let to_string (x: t) =
    let rec to_string_pre pre t =
    let npre = pre ^ " "
    in
    match t with
        | Unit info -> Printf.sprintf "%sUnit\t#%s" pre (Info.to_string info)
        | Bool(b, info) -> Printf.sprintf "%s%s\t#%s" pre (if b then "BOOL true" else "BOOL false") (Info.to_string info)
        | Int (i, info) -> Printf.sprintf "%sINT %d\t#%s" pre i (Info.to_string info)
        | Float (f, info) -> Printf.sprintf "%sFLOAT %f\t#%s" pre f (Info.to_string info)
        | Not (t, info) -> Printf.sprintf "%sNOT\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
        | Neg (t, info) -> Printf.sprintf "%sNEG\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
        | Four (t, info) -> Printf.sprintf "%sFOUR\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
        | Half (t, info) -> Printf.sprintf "%sHALF\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
        | Add (x, y, info) -> Printf.sprintf "%sADD\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | Sub (x, y, info) -> Printf.sprintf "%sSUB\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | FNeg (t, info) -> Printf.sprintf "%sFNEG\t#%s\n%s" pre  (Info.to_string info) (to_string_pre npre t)
        | FAdd (x, y, info) -> Printf.sprintf "%sFADD\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | FSub (x, y, info) -> Printf.sprintf "%sFSUB\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | FMul (x, y, info) -> Printf.sprintf "%sFMUL\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | FDiv (x, y, info) -> Printf.sprintf "%sFDIV\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | Eq (x, y, info) -> Printf.sprintf "%sEQ\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | LE (x, y, info) -> Printf.sprintf "%sLE\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | If (x, y, z, info) -> Printf.sprintf "%sIF\t#%s\n%s\n%sTHEN\t#%s\n%s\n%sELSE\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre x) pre (Info.to_string info) (to_string_pre npre y) pre (Info.to_string info) (to_string_pre npre z)
        | Let ((id, typ), x, y, info) -> Printf.sprintf "%sLET\t#%s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id) (Type.to_string_pre npre typ) (to_string_pre npre x) (to_string_pre npre y)
        | Var (id, info) -> Printf.sprintf "%sVAR\t#%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id)
        | LetRec (f, t, info) -> Printf.sprintf "%sLET_REC\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_let_rec npre f info) (to_string_pre npre t)
        | App (x, xlist, info) -> Printf.sprintf "%sAPP\t#%s\n%s%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_list npre xlist)
        | Tuple (xlist, info) -> Printf.sprintf "%sTUPLE\t#%s%s" pre (Info.to_string info) (to_string_list npre xlist)
        | LetTuple (idlist, x, y, info) -> Printf.sprintf "%sLET_TUPLE\t#%s\n%s\n%s\n%s" pre (Info.to_string info) (to_string_idtype_list npre idlist) (to_string_pre npre x) (to_string_pre npre y)
        | Array (x, typ, info) -> Printf.sprintf "%sArray\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre x) 
        | CreateArray (x, y, info) -> Printf.sprintf "%sCreateArray\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | Get (x, y, info) -> Printf.sprintf "%sGET\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
        | Put (x, y, z, info) -> Printf.sprintf "%sPUT\t#%s\n%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y ) (to_string_pre npre z)
  | ShiftLeft (x, y, info) -> Printf.sprintf "%sSHIFT_LEFT\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
  | ShiftRight (x, y, info) -> Printf.sprintf "%sSHIFT_RIGHT\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
    | FloatRead info -> Printf.sprintf "%sFLOAT_READ\t#%s" pre (Info.to_string info)
    | IntRead info -> Printf.sprintf "%sINT_READ\t#%s" pre (Info.to_string info)
    | Print (t, info) -> Printf.sprintf "%sPRINT\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
    | FAbs (t, info) -> Printf.sprintf "%sFABS\t#%s\n%s" pre (Info.to_string info) (to_string_pre npre t)
  | Mul (x, y, info) -> Printf.sprintf "%sMUL\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
  | Div (x, y, info) -> Printf.sprintf "%sDIV\t#%s\n%s\n%s" pre (Info.to_string info) (to_string_pre npre x) (to_string_pre npre y)
    and to_string_list pre = function
        | [] -> ""
        | x :: xlist -> Printf.sprintf "\n%s%s" (to_string_pre pre x) (to_string_list pre xlist)
    and to_string_let_rec pre f info =
        let npre = pre ^ " "
        in
        let nid, ntype = f.name
        in
        Printf.sprintf "%sNAME\t#%s\n%s\n%sTYPE\t#%s\n%s\n%sARGS\t#%s%s\n%sBODY\t#%s\n%s"
            pre
            (Info.to_string info) (*after NAME *)

            (Id.to_string_pre npre nid)

            (*TYPE*)
            pre
            (Info.to_string info)

            (Type.to_string_pre npre ntype)

            pre
            (Info.to_string info)

            (*ARGS*)
            (to_string_args npre f.args)

            pre
            (Info.to_string info)

            (to_string_pre npre f.body)
    and to_string_args pre = function
        | [] -> ""
        | (id, typ) :: args -> Printf.sprintf "\n%s\n%s%s" (Id.to_string_pre pre id) (Type.to_string_pre pre typ) (to_string_args pre args)
    and to_string_idtype_list pre x = to_string_args pre x
    in
    to_string_pre "" x

let get_info = function
  | Unit info
  | Four (_, info)
  | Half (_, info)
  | Bool (_, info)
  | Int (_, info)
  | Float (_, info)
  | Not (_, info)
  | Neg (_, info)
  | Add (_, _, info)
  | Sub (_, _, info)
  | FNeg (_, info)
  | FAdd (_, _, info)
  | FSub (_, _, info)
  | FMul (_, _, info)
  | FDiv (_, _, info)
  | Eq (_, _, info)
  | LE (_, _, info)
  | If (_, _, _, info)
  | Let (_, _, _, info)
  | Var (_, info)
  | LetRec (_, _, info)
  | App (_, _, info)
  | Tuple (_, info)
  | LetTuple (_, _, _, info)
  | Array (_, _, info)
  | CreateArray (_, _, info)
  | Get (_, _, info)
  | Put (_, _, _, info)
  | ShiftLeft(_, _, info)
  | ShiftRight(_, _, info)
  | FloatRead info
  | IntRead info
  | Print (_, info)
  | FAbs (_, info)
  | Div(_, _, info)
  | Mul(_, _, info)
  -> info
