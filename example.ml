let x = 1
in
let y = 2
in
let rec t k =
    let arg = k in
    let rec f a = a + arg
    in
    f
in
let f1 = t x
in
let f2 = t y
in
let z = f2 3
in
let m = f2 4
in print m
