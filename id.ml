type t = string * Info.t (* 変数の名前 (caml2html: id_t) *)
type l = L of string * Info.t (* トップレベル関数やグローバル配列のラベル (caml2html: id_l) *)

let to_L x = L (fst x, snd x)
let to_t( L(x, y)) = x, y

let to_string (id, info) = Printf.sprintf "ID(%s,%s)" id (Info.to_string info)

let rec pp_list = function
  | [] -> ""
  | [x] -> to_string x
  | x :: xs -> (to_string x) ^ " " ^ pp_list xs

let counter = ref 0
let genid (s, info) =
  incr counter;
  Printf.sprintf "%s.%d" s !counter, info

let rec id_of_typ = function
  | Type.Unit _-> "u"
  | Type.Bool _-> "b"
  | Type.Int _-> "i"
  | Type.Float _-> "d"
  | Type.Fun _ -> "f"
  | Type.Tuple _ -> "t"
  | Type.Array _ -> "a" 
  | Type.Var _ -> assert false
let gentmp typ info=
  incr counter;
  Printf.sprintf "T%s%d" (id_of_typ typ) !counter, info

let to_string_pre pre ((id, info): t) = Printf.sprintf "%sID %s\t#%s" pre id (Info.to_string info)
let get_key x = fst x
let to_string_core x = fst x
