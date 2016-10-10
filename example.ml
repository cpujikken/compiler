let x = 1
in
let y = 2
in
let rec f x = 3
in
let t = x + y
in
let u = x + y
in
let p = (f ()) + x
in
let q = (f ()) + x
in
t + u
