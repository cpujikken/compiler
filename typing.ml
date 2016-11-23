(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of t * Type.t * Type.t

let extenv = ref M.empty

(* for pretty printing (and type normalization) *)
let rec deref_typ = function (* 型変数を中身でおきかえる関数 (caml2html: typing_deref) *)
  | Type.Fun(t1s, t2, info) -> Type.Fun(List.map deref_typ t1s, deref_typ t2, info)
  | Type.Tuple(ts, info) -> Type.Tuple(List.map deref_typ ts, info)
  | Type.Array(t, info) -> Type.Array(deref_typ t, info)
  | Type.Var({ contents = None } as r, info) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int info);
      Type.Int info
  | Type.Var({ contents = Some(t) } as r, info) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t
let rec deref_id_typ (x, t) = (x, deref_typ t)
let rec deref_term = function
  | Not(e, info) -> Not(deref_term e, info)
  | Neg(e, info) -> Neg(deref_term e, info)
  | Four(e, info) -> Four(deref_term e, info)
  | Half(e, info) -> Half(deref_term e, info)
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
  | ShiftLeft(e1, e2, info) -> ShiftLeft(deref_term e1, deref_term e2, info)
  | ShiftRight(e1, e2, info) -> ShiftRight(deref_term e1, deref_term e2, info)
  | Div(e1, e2, info) -> Div(deref_term e1, deref_term e2, info)
  | Mul(e1, e2, info) -> Mul(deref_term e1, deref_term e2, info)
  | FAbs(e, info) -> FAbs(deref_term e, info)
  | Print (e, info) -> Print(deref_term e, info)

  | Unit _
  | Bool _
  | Int _
  | Float _
  | Var _
  | FloatRead _
  | IntRead _ as e
  -> e

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2, info) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s, info) -> List.exists (occur r1) t2s
  | Type.Array(t2, info) -> occur r1 t2
  | Type.Var(r2, info) when r1 == r2 -> true
  | Type.Var({ contents = None }, info) -> false
  | Type.Var({ contents = Some(t2) }, info) -> occur r1 t2
  | _ -> false

let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  match t1, t2 with
  | Type.Unit _, Type.Unit _ | Type.Bool _ , Type.Bool _ | Type.Int _, Type.Int _ | Type.Float _, Type.Float _ -> ()

  | Type.Fun(t1s, t1', _), Type.Fun(t2s, t2', _) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)));
      unify t1' t2'

  | Type.Tuple(t1s, _), Type.Tuple(t2s, _) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)))
  | Type.Array(t1, _), Type.Array(t2, _) -> unify t1 t2
  | Type.Var(r1, _), Type.Var(r2, _) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }, info), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }, info) -> unify t1 t2'
  | Type.Var({ contents = None } as r1, info), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2, info) ->
      if occur r2 t1 then raise (Unify(t1, t2));
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

let rec generate env e = (* 型推論ルーチン (caml2html: typing_g) *)
  try
    match e with
    | Unit info -> Type.Unit info
    | Bool (_, info) -> Type.Bool info
    | Int(_, info) -> Type.Int info
    | Float(_, info) -> Type.Float info
    | Not(e, info) ->
        unify (Type.Bool info) (generate env e);
        Type.Bool info
    | Four (e, info) ->
            unify (Type.Int info) (generate env e);
            Type.Int info
    | Half (e, info) ->
            unify (Type.Int info) (generate env e);
            Type.Int info

    | Neg(e, info)
    | Print(e, info)
    ->
        unify (Type.Int info) (generate env e);
        Type.Unit info

    | Add(e1, e2, info)
    | Sub(e1, e2, info)
    | Mul(e1, e2, info)
    | Div(e1, e2, info)
    | ShiftLeft(e1, e2, info)
    | ShiftRight(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
	unify (Type.Int info) (generate env e1);
	unify (Type.Int info) (generate env e2);
	Type.Int info

    | FNeg(e, info)
    | FAbs(e, info)
    ->
	unify (Type.Float info) (generate env e);
	Type.Float info

    | FAdd(e1, e2, info) | FSub(e1, e2, info) | FMul(e1, e2, info) | FDiv(e1, e2, info) ->
	unify (Type.Float info) (generate env e1);
	unify (Type.Float info) (generate env e2);
	Type.Float info

    | Eq(e1, e2, info) | LE(e1, e2, info) ->
	unify (generate env e1) (generate env e2);
	Type.Bool info
    | If(e1, e2, e3, info) ->
	unify (generate env e1) (Type.Bool info);
	let t2 = generate env e2 in
	let t3 = generate env e3 in
	unify t2 t3;
	t2
    | Let((x, t), e1, e2, info) -> (* letの型推論 (caml2html: typing_let) *)
	unify t (generate env e1);
	generate (M.add x t env) e2
    | Var(x, info) when M.mem x env -> M.find x env (* 変数の型推論 (caml2html: typing_var) *)
    | Var(x, info) when M.mem x !extenv -> M.find x !extenv
    | Var(x, info) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
	Format.eprintf "free variable %s assumed as external@." (Id.to_string x);
	let t = Type.gentyp info in
	extenv := M.add x t !extenv;
	t
    | LetRec({ name = (x, t); args = yts; body = e1 }, e2, info) -> (* let recの型推論 (caml2html: typing_letrec) *)
	let env = M.add x t env in
	unify t (Type.Fun(List.map snd yts, generate (M.add_list yts env) e1, info));
	generate env e2

    | App(fun_exp, param_exps, info) -> (* 関数適用の型推論 (caml2html: typing_app) *)
        let t = generate env fun_exp
        in
        let len = List.length param_exps
        in
        (
            let rec process_t = function
                | Type.Var({contents = Some tt}, _) -> process_t tt
          | Type.Fun(t1s, _, _) when List.length t1s < len ->
                      Format.eprintf "apply function\n%s\nwith too many arguments. Did you forget ;" (Syntax.to_string fun_exp);
                    exit 1
          | Type.Fun(t1s, _, _) as fun_type when List.length t1s > len ->
                          (*generate lambda*)
                  (*test example: # let m = ref 10 in let n = ref 5 in let _ = (let t = fun x y z -> Printf.printf "%d\n" x in m := 1; t) (n := 3; 10) in Printf.printf "m = %d\n n = %d\n" !m !n;;
* should print 1, 3 (not 10, 5)*)
                  let rec seperate_params params args param_id_exps param_exps = function
                      | [] -> params, args, param_id_exps
                      | param::rest -> match param_exps with
                        | [] ->
                                  let id = Id.genid ("partial_eval_param_new", info)
                                  in
                                  let var = Var(id, info)
                                  in
                                  seperate_params ((id, param)::params) (var::args) param_id_exps [] rest
                        | param_exp::param_exps_rest ->
                                let id = Id.genid ("partial_eval_param_org", get_info param_exp)
                                in
                                  seperate_params params args ((id, param_exp)::param_id_exps) param_exps_rest rest
                  in
                  let last_params, last_args, param_id_exps = seperate_params [] [] [] param_exps t1s
                  in
                  let partial_fun_id = Id.genid ("partial_fun_new", info)
                  in
                  let partial_fun_var = Var(partial_fun_id, info)
                  in
                  let original_fun_id = Id.genid("partial_fun_org", info)
                  in
                  let original_fun_var = Var(original_fun_id, info)
                  in
                    let param_vars = List.map (fun (id, _) -> Var(id, Id.get_info id)) param_id_exps
                    in
                      generate env (
                          Let(
                              (original_fun_id, fun_type),
                              fun_exp,
                              List.fold_right
                                (fun (id, exp) current_let -> Let(
                                        (id, generate env exp),
                                        exp,
                                        current_let,
                                        Id.get_info id
                                    )
                                )
                                param_id_exps
                                  (LetRec (
                                    { name = partial_fun_id, Type.gentyp info ; args = last_params; body = App(original_fun_var, (param_vars @ last_args), info) },
                                    partial_fun_var,
                                    info
                                  )),
                              info
                          )
                      )
          | _ ->
            let t1 = Type.gentyp info
            in
                unify t (Type.Fun(List.map (generate env) param_exps, t1, info));
                t1
            in
            process_t t
        )
    | Tuple(es, info) -> Type.Tuple(List.map (generate env) es, info)
    | LetTuple(xts, e1, e2, info) ->
	unify (Type.Tuple(List.map snd xts, info)) (generate env e1);
	generate (M.add_list xts env) e2
    | Array(e1, e2, info) -> (* must be a primitive for "polymorphic" typing *)
	unify (generate env e1) (Type.Int info);
	Type.Array(generate env e2, info)
    | Get(e1, e2, info) ->
	let t = Type.gentyp info in
	unify (Type.Array(t, info)) (generate env e1);
	unify (Type.Int info) (generate env e2);
	t
    | Put(e1, e2, e3, info) ->
	let t = generate env e3 in
	unify (Type.Array(t, info)) (generate env e1);
	unify (Type.Int info) (generate env e2);
	Type.Unit info

  | IntRead info -> Type.Int info
  | FloatRead info -> Type.Float info
  with Unify(t1, t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2))

let f e =
  extenv := M.empty;
(*
  (match deref_typ (generate M.empty e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");
*)
  (try
      let _ = generate M.empty e
      in
          ()
  with
    | Error(e, t1, t2) ->
            Format.eprintf "type\n%s\nis not compatible with type\n%s\nwhile evaluating\n%s" (Type.to_string t2) (Type.to_string t1) (Syntax.to_string e);
      exit 1
  );
  extenv := M.map deref_typ !extenv;
  deref_term e
