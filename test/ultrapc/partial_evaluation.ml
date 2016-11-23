let a = 97
in
let b = 98
in
let bigA = 65
in
let bigB = 66
in
let space = 32
in
let aVar = create_array 1 a
in
let bVar = create_array 1 b
in
let _ =
    (let t = fun x y z -> () in aVar.(0) <- bigA; t)
    (bVar.(0) <- bigB; ())
in
    print_byte bVar.(0);
    print_byte space;
    print_byte aVar.(0)
    (*result: A B*)
