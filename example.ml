let rec f t = t + 1
in
let m = f 1
in
let n = f 2
in
let a = (m, n)
in
let (x, y) = a
in
print x
