type t = string * Info.t (* 変数の名前 (caml2html: id_t) *)
type l = L of string (* トップレベル関数やグローバル配列のラベル (caml2html: id_l) *)

let rec pp_list = function
  | [] -> ""
  | [x] -> x
  | x :: xs -> x ^ " " ^ pp_list xs

let counter = ref 0
let genid s =
  incr counter;
  Printf.sprintf "%s.%d" s !counter

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

let to_string_pre pre ((id, info): t) = Printf.sprintf "%sID%s\t#%s" pre id (Info.to_string info)
