(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec f = function (* ネストしたletの簡約 (caml2html: assoc_f) *)
  | IfEq(x, y, e1, e2, info) -> IfEq(x, y, f e1, f e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(x, y, f e1, f e2, info)
  | Let(xt, e1, e2, info) -> (* letの場合 (caml2html: assoc_let) *)
      let rec insert = function
	| Let(yt, e3, e4, info) -> Let(yt, e3, insert e4, info)
	| LetRec(fundefs, e, info) -> LetRec(fundefs, insert e, info)
	| LetTuple(yts, z, e, info) -> LetTuple(yts, z, insert e, info)
	| e -> Let(xt, e, f e2, info) in
      insert (f e1)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, info) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2, info)
  | LetTuple(xts, y, e, info) -> LetTuple(xts, y, f e, info)
  | e -> e
