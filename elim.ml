open KNormal

let rec effect = function (* �����Ѥ�̵ͭ (caml2html: elim_effect) *)
  | Let(_, e1, e2, info) | IfEq(_, _, e1, e2, info) | IfLE(_, _, e1, e2, info) -> effect e1 || effect e2
  | LetRec(_, e, info) | LetTuple(_, _, e, info) -> effect e
  | App _ | Put _ | ExtFunApp _ -> true
  | _ -> false

let rec f = function (* �����������롼�������� (caml2html: elim_f) *)
  | IfEq(x, y, e1, e2, info) -> IfEq(x, y, f e1, f e2, info)
  | IfLE(x, y, e1, e2, info) -> IfLE(x, y, f e1, f e2, info)
  | Let((x, t), e1, e2, info) -> (* let�ξ�� (caml2html: elim_let) *)
      let e1' = f e1 in
      let e2' = f e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2', info) else
      (Format.eprintf "eliminating variable %s@." x;
       e2')
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, info) -> (* let rec�ξ�� (caml2html: elim_letrec) *)
      let e2' = f e2 in
      if S.mem x (fv e2') then
	LetRec({ name = (x, t); args = yts; body = f e1 }, e2', info)
      else
	(Format.eprintf "eliminating function %s@." x;
	 e2')
  | LetTuple(xts, y, e, info) ->
      let xs = List.map fst xts in
      let e' = f e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e', info) else
      (Format.eprintf "eliminating variables %s@." (Id.pp_list xs);
       e')
  | e -> e
