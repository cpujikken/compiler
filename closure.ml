type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit of Info.t
  | Int of int * Info.t
  | Float of float * Info.t
  | Neg of Id.t * Info.t
  | Add of Id.t * Id.t * Info.t
  | Sub of Id.t * Id.t * Info.t
  | FNeg of Id.t * Info.t
  | FAdd of Id.t * Id.t * Info.t
  | FSub of Id.t * Id.t * Info.t
  | FMul of Id.t * Id.t * Info.t
  | FDiv of Id.t * Id.t * Info.t
  | IfEq of Id.t * Id.t * t * t * Info.t
  | IfLE of Id.t * Id.t * t * t * Info.t
  | Let of (Id.t * Type.t) * t * t * Info.t
  | Var of Id.t * Info.t
  | MakeCls of (Id.t * Type.t) * closure * t * Info.t
  | AppCls of Id.t * Id.t list * Info.t
  | AppDir of Id.l * Id.t list * Info.t
  | Tuple of Id.t list * Info.t
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Info.t
  | Get of Id.t * Id.t * Info.t
  | Put of Id.t * Id.t * Id.t * Info.t
  | ExtArray of Id.l * Info.t
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
		body : t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit _ | Int(_) | Float(_) | ExtArray(_) -> S.empty
  | Neg(x, info) | FNeg(x, info) -> S.singleton x
  | Add(x, y, info) | Sub(x, y, info) | FAdd(x, y, info) | FSub(x, y, info) | FMul(x, y, info) | FDiv(x, y, info) | Get(x, y, info) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, info)| IfLE(x, y, e1, e2, info) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, info) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, info) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, info) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys, info) -> S.of_list (x :: ys)
  | AppDir(_, xs, info) | Tuple(xs, info) -> S.of_list xs
  | LetTuple(xts, y, e, info) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z, info) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

let rec g env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | KNormal.Unit info -> Unit info
  | KNormal.Int(i, info) -> Int(i, info)
  | KNormal.Float(d, info) -> Float(d, info)
  | KNormal.Neg(x, info) -> Neg(x, info)
  | KNormal.Add(x, y, info) -> Add(x, y, info)
  | KNormal.Sub(x, y, info) -> Sub(x, y, info)
  | KNormal.FNeg(x, info) -> FNeg(x, info)
  | KNormal.FAdd(x, y, info) -> FAdd(x, y, info)
  | KNormal.FSub(x, y, info) -> FSub(x, y, info)
  | KNormal.FMul(x, y, info) -> FMul(x, y, info)
  | KNormal.FDiv(x, y, info) -> FDiv(x, y, info)
  | KNormal.IfEq(x, y, e1, e2, info) -> IfEq(x, y, g env known e1, g env known e2, info)
  | KNormal.IfLE(x, y, e1, e2, info) -> IfLE(x, y, g env known e1, g env known e2, info)
  | KNormal.Let((x, t), e1, e2, info) -> Let((x, t), g env known e1, g (M.add x t env) known e2, info)
  | KNormal.Var(x, info) -> Var(x, info)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2, info) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
	 xに自由変数がない(closureを介さずdirectに呼び出せる)
	 と仮定し、knownに追加してe1をクロージャ変換してみる *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
	if S.is_empty zs then known', e1' else
	(* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
	(Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) (Id.to_string x);
	 Format.eprintf "function %s cannot be directly applied in fact@." (Id.to_string x);
	 toplevel := toplevel_backup;
	 let e1' = g (M.add_list yts env') known e1 in
	 known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
      toplevel := { name = (Id.to_L x, t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
	MakeCls((x, t), { entry = Id.to_L x; actual_fv = zs }, e2', info) (* 出現していたら削除しない *)
      else
	(Format.eprintf "eliminating closure(s) %s@." (Id.to_string x);
	 e2') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys, info) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." (Id.to_string x);
      AppDir(Id.to_L x, ys, info)
  | KNormal.App(f, xs, info) -> AppCls(f, xs, info)
  | KNormal.Tuple(xs, info) -> Tuple(xs, info)
  | KNormal.LetTuple(xts, y, e, info) -> LetTuple(xts, y, g (M.add_list xts env) known e, info)
  | KNormal.Get(x, y, info) -> Get(x, y, info)
  | KNormal.Put(x, y, z, info) -> Put(x, y, z, info)
  | KNormal.ExtArray(x, info) -> ExtArray(Id.to_L(x), info)
  | KNormal.ExtFunApp(x, ys, info) -> AppDir(Id.L("min_caml_" ^ (fst x), snd x), ys, info)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')

let get_info = function
  | Unit info
  | Int (_, info)
  | Float(_, info)
  | Neg(_, info)
  | Add (_, _, info)
  | Sub (_, _, info)
  | FNeg(_, info)
  | FAdd (_, _, info)
  | FSub (_, _, info)
  | FMul (_, _, info)
  | FDiv (_, _, info)
  | IfEq (_, _, _, _, info)
  | IfLE (_, _, _, _, info)
  | Let (_, _, _, info)
  | Var(_, info)
  | MakeCls (_, _, _, info)
  | AppCls (_, _, info)
  | AppDir (_, _, info)
  | Tuple(_, info)
  | LetTuple (_, _, _, info)
  | Get (_, _, info)
  | Put (_, _, _, info)
  | ExtArray(_, info)
  -> info
