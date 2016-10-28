type t = Reg of Reg.t | ID of Id.t
let compare x y =
    match x, y with
        | Reg _ , ID _ -> -1
        | ID _, Reg _ -> 1
        | ID u, ID v -> Id.compare u v
        | Reg u, Reg v -> Pervasives.compare u v

