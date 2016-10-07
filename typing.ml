(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of t * Type.t * Type.t

let extenv = ref M.empty

(* for pretty printing (and type normalization) *)
let rec deref_typ = function (* 型変数を中身でおきかえる関数 (caml2html: typing_deref) *)
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
let rec deref_id_typ (x, t) = (x, deref_typ t)
let rec deref_term = function
  | Not(e, info) -> Not(deref_term e, info)
  | Neg(e, info) -> Neg(deref_term e, info)
  | Add(e1, e2, info) -> Add(deref_term e1, deref_term e2, info)
  | Sub(e1, e2, info) -> Sub(deref_term e1, deref_term e2, info)
  | Eq(e1, e2, info) -> Eq(deref_term e1, deref_term e2, info)
  | LE(e1, e2, info) -> LE(deref_term e1, deref_term e2, info)
  | FNeg(e, info) -> FNeg(deref_term e, info)
  | FAdd(e1, e2, info) -> FAdd(deref_term e1, deref_term e2, info)
  | FSub(e1, e2, info) -> FSub(deref_term e1, deref_term e2, info)
  | FMul(e1, e2, info) -> FMul(deref_term e1, deref_term e2, info)
  | FDiv(e1, e2, info) -> FDiv(deref_term e1, deref_term e2, info)
  | If(e1, e2, e3, info) -> If(deref_term e1, deref_term e2, deref_term e3, info)
  | Let(xt, e1, e2, info) -> Let(deref_id_typ xt, deref_term e1, deref_term e2, info)
  | LetRec({ name = xt; args = yts; body = e1 }, e2, info) ->
      LetRec( { name = deref_id_typ xt;
	       args = List.map deref_id_typ yts;
	       body = deref_term e1 },
	     deref_term e2, info)
  | App(e, es, info) -> App(deref_term e, List.map (deref_term) es, info)
  | Tuple(es, info) -> Tuple(List.map (deref_term) es, info)
  | LetTuple(xts, e1, e2, info) -> LetTuple(List.map deref_id_typ xts, deref_term e1, deref_term e2, info)
  | Array(e1, e2, info) -> Array(deref_term e1, deref_term e2, info)
  | Get(e1, e2, info) -> Get(deref_term e1, deref_term e2, info)
  | Put(e1, e2, e3, info) -> Put(deref_term e1, deref_term e2, deref_term e3, info)
  | e -> e

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  match t1, t2 with
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument("List.iter2") -> raise (Unify(t1, t2)));
      unify t1' t2'
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument("List.iter2") -> raise (Unify(t1, t2)))
  | Type.Array(t1), Type.Array(t2) -> unify t1 t2
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 t2'
  | Type.Var({ contents = None } as r1), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

let rec g env e = (* 型推論ルーチン (caml2html: typing_g) *)
  try
    match e with
    | Unit _ -> Type.Unit
    | Bool(_) -> Type.Bool
    | Int(_) -> Type.Int
    | Float(_) -> Type.Float
    | Not(e, _) ->
	unify Type.Bool (g env e);
	Type.Bool
    | Neg(e, _) ->
	unify Type.Int (g env e);
	Type.Int
    | Add(e1, e2, _) | Sub(e1, e2, _) -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
	unify Type.Int (g env e1);
	unify Type.Int (g env e2);
	Type.Int
    | FNeg(e, _) ->
	unify Type.Float (g env e);
	Type.Float
    | FAdd(e1, e2, _) | FSub(e1, e2, _) | FMul(e1, e2, _) | FDiv(e1, e2, _) ->
	unify Type.Float (g env e1);
	unify Type.Float (g env e2);
	Type.Float
    | Eq(e1, e2, _) | LE(e1, e2, _) ->
	unify (g env e1) (g env e2);
	Type.Bool
    | If(e1, e2, e3, _) ->
	unify (g env e1) Type.Bool;
	let t2 = g env e2 in
	let t3 = g env e3 in
	unify t2 t3;
	t2
    | Let((x, t), e1, e2, _) -> (* letの型推論 (caml2html: typing_let) *)
	unify t (g env e1);
	g (M.add x t env) e2
    | Var(x, _) when M.mem x env -> M.find x env (* 変数の型推論 (caml2html: typing_var) *)
    | Var(x, _) when M.mem x !extenv -> M.find x !extenv
    | Var(x, _) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
	Format.eprintf "free variable %s assumed as external@." x;
	let t = Type.gentyp () in
	extenv := M.add x t !extenv;
	t
    | LetRec({ name = (x, t); args = yts; body = e1 }, e2, _) -> (* let recの型推論 (caml2html: typing_letrec) *)
	let env = M.add x t env in
	unify t (Type.Fun(List.map snd yts, g (M.add_list yts env) e1));
	g env e2
    | App(e, es, _) -> (* 関数適用の型推論 (caml2html: typing_app) *)
	let t = Type.gentyp () in
	unify (g env e) (Type.Fun(List.map (g env) es, t));
	t
    | Tuple(es, _) -> Type.Tuple(List.map (g env) es)
    | LetTuple(xts, e1, e2, _) ->
	unify (Type.Tuple(List.map snd xts)) (g env e1);
	g (M.add_list xts env) e2
    | Array(e1, e2, _) -> (* must be a primitive for "polymorphic" typing *)
	unify (g env e1) Type.Int;
	Type.Array(g env e2)
    | Get(e1, e2, _) ->
	let t = Type.gentyp () in
	unify (Type.Array(t)) (g env e1);
	unify Type.Int (g env e2);
	t
    | Put(e1, e2, e3, _) ->
	let t = g env e3 in
	unify (Type.Array(t)) (g env e1);
	unify Type.Int (g env e2);
	Type.Unit
  with Unify(t1, t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2))

let f e =
  extenv := M.empty;
(*
  (match deref_typ (g M.empty e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");
*)
  (try unify Type.Unit (g M.empty e)
  with Unify _ -> failwith "top level does not have type unit");
  extenv := M.map deref_typ !extenv;
  deref_term e
