type t = Reg of Reg.t | ID of Id.t
let compare x y =
    match x, y with
        | Reg _ , ID _ -> -1
        | ID _, Reg _ -> 1
        | ID u, ID v -> Id.compare u v
        | Reg u, Reg v -> Pervasives.compare u v

let to_string  = function
    Reg reg -> Printf.sprintf "Reg(%s)" (Reg.to_string reg)
    | ID id -> Printf.sprintf "ID(%s)" (Id.to_string id)

let compare a b =
    match a, b with
    | Reg x, Reg y -> Reg.compare x y
    | ID x, ID y -> Id.compare x y
    | Reg _, ID _ -> -1
    | ID _, Reg _ -> 1
