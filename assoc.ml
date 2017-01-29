(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec generate = function (* ネストしたletの簡約 (caml2html: assoc_f) *)
  | IfEq(x, y, e1, e2, info) -> IfEq(x, y, generate e1, generate e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(x, y, generate e1, generate e2, info)
  | Let(xt, e1, e2, info) -> (* letの場合 (caml2html: assoc_let) *)
      let rec insert = function
	| Let(yt, e3, e4, info) -> Let(yt, e3, insert e4, info)
	| LetRec(fundefs, e, info) -> LetRec(fundefs, insert e, info)
	| LetTuple(yts, z, e, info) -> LetTuple(yts, z, insert e, info)
	| e -> Let(xt, e, generate e2, info) in
      insert (generate e1)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, info) ->
      LetRec({ name = xt; args = yts; body = generate e1 }, generate e2, info)
  | LetTuple(xts, y, e, info) -> LetTuple(xts, y, generate e, info)
  | e -> e

let f out x =
    let r = generate x
    in
        print_all out r;
        r
