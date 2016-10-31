(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal

let find x env = try M.find x env with Not_found -> x

let rec g env = function (* α変換ルーチン本体 (caml2html: alpha_g) *)
  | Unit info -> Unit info
  | Int(i, info) -> Int(i, info)
  | Float(d, info) -> Float(d, info)
  | Neg(x, info) -> Neg(find x env, info)
  | Four(x, info) -> Four(find x env, info)
  | Half(x, info) -> Half(find x env, info)
  | Add(x, y, info) -> Add(find x env, find y env, info)
  | Sub(x, y, info) -> Sub(find x env, find y env, info)
  | FNeg(x, info) -> FNeg(find x env, info)
  | FAdd(x, y, info) -> FAdd(find x env, find y env, info)
  | FSub(x, y, info) -> FSub(find x env, find y env, info)
  | FMul(x, y, info) -> FMul(find x env, find y env, info)
  | FDiv(x, y, info) -> FDiv(find x env, find y env, info)
  | IfEq(x, y, e1, e2, info) -> IfEq(find x env, find y env, g env e1, g env e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(find x env, find y env, g env e1, g env e2, info)
  | Let((x, t), e1, e2, info) -> (* letのα変換 (caml2html: alpha_let) *)
      let x' = Id.genid x in
      Let((x', t), g env e1, g (M.add x x' env) e2, info)
  | Var(x, info) -> Var(find x env, info)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, info) -> (* let recのα変換 (caml2html: alpha_letrec) *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      LetRec({ name = (find x env, t);
	       args = List.map (fun (y, t) -> (find y env', t)) yts;
	       body = g env' e1 },
	     g env e2, info)
  | App(x, ys, info) -> App(find x env, List.map (fun y -> find y env) ys, info)
  | Tuple(xs, info) -> Tuple(List.map (fun x -> find x env) xs, info)
  | LetTuple(xts, y, e, info) -> (* LetTupleのα変換 (caml2html: alpha_lettuple) *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in
      LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
	       find y env,
	       g env' e, info)
  | Get(x, y, info) -> Get(find x env, find y env, info)
  | Put(x, y, z, info) -> Put(find x env, find y env, find z env, info)
  | ExtArray(x, info) -> ExtArray(x, info)
  | ExtFunApp(x, ys, info) -> ExtFunApp(x, List.map (fun y -> find y env) ys, info)

let f = g M.empty
