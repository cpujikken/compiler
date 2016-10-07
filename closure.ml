type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* ���������Ѵ���μ� (caml2html: closure_t) *)
  | Unit of Syntax.info
  | Int of int * Syntax.info
  | Float of float * Syntax.info
  | Neg of Id.t * Syntax.info
  | Add of Id.t * Id.t * Syntax.info
  | Sub of Id.t * Id.t * Syntax.info
  | FNeg of Id.t * Syntax.info
  | FAdd of Id.t * Id.t * Syntax.info
  | FSub of Id.t * Id.t * Syntax.info
  | FMul of Id.t * Id.t * Syntax.info
  | FDiv of Id.t * Id.t * Syntax.info
  | IfEq of Id.t * Id.t * t * t * Syntax.info
  | IfLE of Id.t * Id.t * t * t * Syntax.info
  | Let of (Id.t * Type.t) * t * t * Syntax.info
  | Var of Id.t * Syntax.info
  | MakeCls of (Id.t * Type.t) * closure * t * Syntax.info
  | AppCls of Id.t * Id.t list * Syntax.info
  | AppDir of Id.l * Id.t list * Syntax.info
  | Tuple of Id.t list * Syntax.info
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Syntax.info
  | Get of Id.t * Id.t * Syntax.info
  | Put of Id.t * Id.t * Id.t * Syntax.info
  | ExtArray of Id.l * Syntax.info
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

let rec g env known = function (* ���������Ѵ��롼�������� (caml2html: closure_g) *)
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
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2, info) -> (* �ؿ�����ξ�� (caml2html: closure_letrec) *)
      (* �ؿ����let rec x y1 ... yn = e1 in e2�ξ��ϡ�
	 x�˼�ͳ�ѿ����ʤ�(closure��𤵤�direct�˸ƤӽФ���)
	 �Ȳ��ꤷ��known���ɲä���e1�򥯥������Ѵ����Ƥߤ� *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* �����˼�ͳ�ѿ����ʤ��ä������Ѵ����e1'���ǧ���� *)
      (* ���: e1'��x���Ȥ��ѿ��Ȥ��ƽи��������closure��ɬ��!
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml����) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
	if S.is_empty zs then known', e1' else
	(* ���ܤ��ä������(toplevel����)���ᤷ�ơ����������Ѵ�����ľ�� *)
	(Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
	 Format.eprintf "function %s cannot be directly applied in fact@." x;
	 toplevel := toplevel_backup;
	 let e1' = g (M.add_list yts env') known e1 in
	 known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* ��ͳ�ѿ��Υꥹ�� *)
      let zts = List.map (fun z -> (z, M.find z env')) zs in (* �����Ǽ�ͳ�ѿ�z�η����������˰���env��ɬ�� *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* �ȥåץ�٥�ؿ����ɲ� *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* x���ѿ��Ȥ���e2'�˽и����뤫 *)
	MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2', info) (* �и����Ƥ����������ʤ� *)
      else
	(Format.eprintf "eliminating closure(s) %s@." x;
	 e2') (* �и����ʤ����MakeCls���� *)
  | KNormal.App(x, ys, info) when S.mem x known -> (* �ؿ�Ŭ�Ѥξ�� (caml2html: closure_app) *)
      Format.eprintf "directly applying %s@." x;
      AppDir(Id.L(x), ys, info)
  | KNormal.App(f, xs, info) -> AppCls(f, xs, info)
  | KNormal.Tuple(xs, info) -> Tuple(xs, info)
  | KNormal.LetTuple(xts, y, e, info) -> LetTuple(xts, y, g (M.add_list xts env) known e, info)
  | KNormal.Get(x, y, info) -> Get(x, y, info)
  | KNormal.Put(x, y, z, info) -> Put(x, y, z, info)
  | KNormal.ExtArray(x, info) -> ExtArray(Id.L(x), info)
  | KNormal.ExtFunApp(x, ys, info) -> AppDir(Id.L("min_caml_" ^ x), ys, info)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Prog(List.rev !toplevel, e')
