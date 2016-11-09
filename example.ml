let a = (1, (2, 3))
in
let (x, y) = a
in
let (p, q) = y
in
let result = p + q + x
in

let a = (1, 2)
in
let b = (a, 3)
in
let (x, y) = b
in
let result = result + y
in
    show result
