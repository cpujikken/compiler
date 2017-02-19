open KNormal

let rec effect = function (* 副作用の有無 (caml2html: elim_effect) *)
  | Let(_, e1, e2, info) | IfEq(_, _, e1, e2, info) | IfLE(_, _, e1, e2, info) -> effect e1 || effect e2
  | LetRec(_, e, info) | LetTuple(_, _, e, info) -> effect e
  | App _ | Put _ | ExtFunApp _ | Print _ | CharRead _ -> true

  | Unit _
  | Int _
  | Float _
  | Neg _
  | Add _
  | Sub _
  | FNeg _
  | FAdd _
  | FSub _
  | FMul _
  | FDiv _
  | Var _
  | Tuple _
  | Get _
  | ExtArray _
  | Four _
  | Addi _
  | Half _
  | FAbs _
  | ShiftLeft _
  | ShiftRight _
  | Mul _
  | Div _
  | Array _
  -> false

let rec generate = function
    (* 不要定義削除ルーチン本体 (caml2html: elim_f) *)
  | IfEq(x, y, e1, e2, info) -> IfEq(x, y, generate e1, generate e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(x, y, generate e1, generate e2, info)
  | Let((x, t), e1, e2, info) -> (* letの場合 (caml2html: elim_let) *)
      let e1' = generate e1 in
      let e2' = generate e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2', info) else
      (
          (*Format.eprintf "eliminating variable %s@." (Id.to_string x);*)
       e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, info) -> (* let recの場合 (caml2html: elim_letrec) *)
      let e2' = generate e2 in
      if S.mem x (fv e2') then
        LetRec({ name = (x, t); args = yts; body = generate e1 }, e2', info)
      else
	(
        (*Format.eprintf "eliminating function %s@." (Id.to_string x);*)
	 e2')
  | LetTuple(xts, y, e, info) ->
      let xs = List.map fst xts in
      let e' = generate e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e', info) else
      (
          (*Format.eprintf "eliminating variables %s@." (Id.pp_list xs);*)
       e')
  | e -> e

let f out x =
    let r = generate x
    in
        print_all out r;
        r
