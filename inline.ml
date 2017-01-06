open KNormal

(* インライン展開する関数の最大サイズ (caml2html: inline_threshold) *)
let threshold = ref 3 (* Mainで-inlineオプションによりセットされる *)

let rec size = function
  | IfEq(_, _, e1, e2, info) | IfLE(_, _, e1, e2, info)
  | Let(_, e1, e2, info) | LetRec({ body = e1 }, e2, info) -> 1 + size e1 + size e2
  | LetTuple(_, _, e, info) -> 1 + size e
  | _ -> 1

let rec generate env = function (* インライン展開ルーチン本体 (caml2html: inline_g) *)
  | IfEq(x, y, e1, e2, info) -> IfEq(x, y, generate env e1, generate env e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(x, y, generate env e1, generate env e2, info)
  | Let(xt, e1, e2, info) -> Let(xt, generate env e1, generate env e2, info)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, info) -> (* 関数定義の場合 (caml2html: inline_letrec) *)
          (* map function variables to their (argument list, body)*)
      let env = if size e1 > !threshold then env else M.add x (yts, e1) env in
      LetRec({ name = (x, t); args = yts; body = generate env e1}, generate env e2, info)
  | App(x, ys, info) when M.mem x env -> (* 関数適用の場合 (caml2html: inline_app) *)
      let (zs, e) = M.find x env in
      Format.eprintf "inlining %s@." (Id.to_string x);
      let env' =
          (* map function arguments variable to the input list*)
	List.fold_left2
	  (fun env' (z, t) y -> M.add z y env')
	  M.empty
	  zs
	  ys in
      Alpha.generate env' e
  | LetTuple(xts, y, e, info) -> LetTuple(xts, y, generate env e, info)
  | e -> e

let f e =
    if !Common.is_lib then threshold := 0;
    generate M.empty e
