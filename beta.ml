open KNormal

let find x env = try M.find x env with Not_found -> x (* 置換のための関数 (caml2html: beta_find) *)

let rec generate env = function (* β簡約ルーチン本体 (caml2html: beta_g) *)
  | Unit info -> Unit info
  | CharRead info -> CharRead info
  | Int(i, info) -> Int(i, info)
  | Float(d, info) -> Float(d, info)
  | Neg(x, info) -> Neg(find x env, info)
  | Four(x, info) -> Four(find x env, info)
  | Print(x, info) -> Print(find x env, info)
  | Half(x, info) -> Half(find x env, info)
  | Add(x, y, info) -> Add(find x env, find y env, info)
  | Mul(x, y, info) -> Mul(find x env, find y env, info)
  | Div(x, y, info) -> Div(find x env, find y env, info)
  | Array(x, t, info) -> Array(find x env, t, info)
  | ShiftLeft(x, y, info) -> ShiftLeft(find x env, find y env, info)
  | ShiftRight(x, y, info) -> ShiftRight(find x env, find y env, info)
  | Sub(x, y, info) -> Sub(find x env, find y env, info)
  | FNeg(x, info) -> FNeg(find x env, info)
  | FAbs(x, info) -> FAbs(find x env, info)
  | FAdd(x, y, info) -> FAdd(find x env, find y env, info)
  | FSub(x, y, info) -> FSub(find x env, find y env, info)
  | FMul(x, y, info) -> FMul(find x env, find y env, info)
  | FDiv(x, y, info) -> FDiv(find x env, find y env, info)
  | IfEq(x, y, e1, e2, info) -> IfEq(find x env, find y env, generate env e1, generate env e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(find x env, find y env, generate env e1, generate env e2, info)
  | Let((x, t), e1, e2, info) -> (* letのβ簡約 (caml2html: beta_let) *)
      (match generate env e1 with
      | Var(y, info) ->
	  (*Format.eprintf "beta-reducing %s = %s@." (Id.to_string x) (Id.to_string y);*)
	  generate (M.add x y env) e2
      | e1' ->
	  let e2' = generate env e2 in
	  Let((x, t), e1', e2', info))
  | LetRec({ name = xt; args = yts; body = e1 }, e2, info) ->
      LetRec({ name = xt; args = yts; body = generate env e1 }, generate env e2, info)
  | Var(x, info) -> Var(find x env, info) (* 変数を置換 (caml2html: beta_var) *)
  | Tuple(xs, info) -> Tuple(List.map (fun x -> find x env) xs, info)
  | LetTuple(xts, y, e, info) -> LetTuple(xts, find y env, generate env e, info)
  | Get(x, y, info) -> Get(find x env, find y env, info)
  | Put(x, y, z, info) -> Put(find x env, find y env, find z env, info)
  | App(generate, xs, info) -> App(find generate env, List.map (fun x -> find x env) xs, info)
  | ExtArray(x, info) -> ExtArray(x, info)
  | ExtFunApp(x, ys, info) -> ExtFunApp(x, List.map (fun y -> find y env) ys, info)

let f out x =
    let r = generate M.empty x
    in
        print_all out r;
        r
