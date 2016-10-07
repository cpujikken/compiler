let rec fib n =
    if n <= 1 then
        n
    else
        fib (n - 1) + fib (n - 2)
        (*hello
         * ddd*)
in
let x1 = 3.
in
let x2 = 3 + 2
in
let x3 = 3.0 +. 1.2
in
let x4 = 3 - 2
in
let x5 = 3.2 -. 1.2
in
let x6 = -. x3
in
let x7 = 1.2 *. 2.3
in
let x8 = 1.2 /. 2.2
in
let x9 = (2, 3, 4)
in
let x10 =
if x2 = 5 then
    3
else
    4
in
print_int (fib 30)
