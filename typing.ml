(* type inference/reconstruction *)

open Syntax

exception Unify of Type.t * Type.t
exception Error of t * Type.t * Type.t

let extenv = ref M.empty
let partial_evaluating = ref true
let partial_evaluation_threshold = 100 (*partial evaluation expansion threshold*)
let continue_partial_eval = ref false

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
  | LT(e1, e2, info) -> LT(deref_term e1, deref_term e2, info)
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
  | Array(e1, typ, info) -> Array(deref_term e1, typ, info)
  | CreateArray(e1, e2, info) -> CreateArray(deref_term e1, deref_term e2, info)
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
  | CharRead _ as e
  -> e

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2, info) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s, info) -> List.exists (occur r1) t2s
  | Type.Array(t2, info) -> occur r1 t2
  | Type.Var(r2, info) when r1 == r2 -> true
  | Type.Var({ contents = None }, info) -> false
  | Type.Var({ contents = Some(t2) }, info) -> occur r1 t2
  | _ -> false

  (*expect type: t1
   * argument type: t2
   * *)
let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  match t1, t2 with
  | Type.Unit _, Type.Unit _ | Type.Bool _ , Type.Bool _ | Type.Int _, Type.Int _ | Type.Float _, Type.Float _ -> ()

  | Type.Fun(t1s, t1', info1), Type.Fun(t2s, t2', info2) ->
      let rec loop = function
          | [], [] -> unify t1' t2'
          | [], rest->
              unify t1' (Type.Fun(rest, t2', info2))
          | rest, [] ->
              unify (Type.Fun(rest, t1', info1)) t2'
          | (t1::rest1), (t2::rest2)->
              unify t1 t2; loop (rest1, rest2)
      in
      loop (t1s, t2s);

  | Type.Tuple(t1s, _), Type.Tuple(t2s, _) ->
      (try List.iter2 unify t1s t2s
      with Invalid_argument(_) -> raise (Unify(t1, t2)))
  | Type.Array(t1, _), Type.Array(t2, _) -> unify t1 t2
  | Type.Var(r1, _), Type.Var(r2, _) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }, info), _ -> unify t1' t2
  | _, Type.Var({ contents = Some(t2') }, info) -> unify t1 t2'
  | Type.Var({ contents = None } as r1, info), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 t2 then raise (Unify(t1, t2));
    continue_partial_eval := true;
      r1 := Some(t2)
  | _, Type.Var({ contents = None } as r2, info) ->
      if occur r2 t1 then raise (Unify(t1, t2));
    continue_partial_eval := true;
      r2 := Some(t1)
  | _, _ -> raise (Unify(t1, t2))

let rec generate env e = (* 型推論ルーチン (caml2html: typing_g) *)
  try
    match e with
    | Unit info -> Type.Unit info, e
    | Bool (_, info) -> Type.Bool info, e
    | Int(_, info) -> Type.Int info, e
    | Float(_, info) -> Type.Float info, e
    | Not(not_e, info) ->
            let ne_type, ne_exp = generate env not_e
            in
            unify (Type.Bool info) ne_type;
            Type.Bool info, Syntax.Not (ne_exp, info)
    | Four (e, info) ->
            let four_type, four_exp = generate env e
            in
            (
            try
                unify (Type.Int info) four_type;
                Type.Int info, Four(four_exp, info)
            with
                Unify _ ->
                unify (Type.Float info) four_type;
                Type.Float info, FMul(four_exp, Float (4., info), info)
            )
    | Half (e, info) ->
            let half_type, half_exp = generate env e
            in (try
                unify (Type.Int info) half_type;
                Type.Int info, Half(half_exp, info)
            with
            Unify _ ->
                unify (Type.Float info) half_type;
                Type.Float info, FDiv(half_exp, Float(2., info), info)
            )

    | Neg(e, info)
    ->
        let neg_type, neg_exp = generate env e
        in
        (
        try
            unify (Type.Int info) neg_type;
            Type.Int info, Neg (neg_exp, info)
        with Unify _ ->
            unify (Type.Float info) neg_type;
            Type.Float info, FNeg (neg_exp, info)
        )
    | Print(e, info)
    ->
        let typ, exp = generate env e
        in
        unify (Type.Int info) typ;
        Type.Unit info, Print(exp, info)

    | Add(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in(
        try
            unify (Type.Int info) typ1;
            unify (Type.Int info) typ2;
            Type.Int info, Add(exp1, exp2, info)
        with Unify _ ->
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FAdd(exp1, exp2, info)
        )
    | Sub(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
        (
        try
        unify (Type.Int info) typ1;
        unify (Type.Int info) typ2;
        Type.Int info, Sub(exp1, exp2, info)
        with
            Unify _ ->
        unify (Type.Float info) typ1;
        unify (Type.Float info) typ2;
        Type.Float info, FSub(exp1, exp2, info)
        )
    | Mul(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in(try
            unify (Type.Int info) typ1;
            unify (Type.Int info) typ2;
            Type.Int info, Mul(exp1, exp2, info)
        with Unify _ ->
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FMul(exp1, exp2, info)
        )
    | Div(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in (try
            unify (Type.Int info) typ1;
            unify (Type.Int info) typ2;
            Type.Int info, Div(exp1, exp2, info)
        with Unify _ ->
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FDiv(exp1, exp2, info)
        )
    | ShiftLeft(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
        unify (Type.Int info) typ1;
        unify (Type.Int info) typ2;
        Type.Int info, ShiftLeft(exp1, exp2, info)
    | ShiftRight(e1, e2, info)
    -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
        unify (Type.Int info) typ1;
        unify (Type.Int info) typ2;
        Type.Int info, ShiftRight(exp1, exp2, info)

    | FNeg(e, info)
    ->
        let typ, exp = generate env e
        in
            unify (Type.Float info) typ;
            Type.Float info, FNeg( exp, info)
    | FAbs(e, info)
    ->
        let typ, exp = generate env e
        in
            unify (Type.Float info) typ;
            Type.Float info, FAbs(exp, info)

    | FAdd(e1, e2, info)
    ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FAdd(exp1, exp2, info)
    | FSub(e1, e2, info)
    ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FSub(exp1, exp2, info)
    | FMul(e1, e2, info)
    ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FMul(exp1, exp2, info)
    | FDiv(e1, e2, info)
    ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            unify (Type.Float info) typ1;
            unify (Type.Float info) typ2;
            Type.Float info, FDiv(exp1, exp2, info)

    | Eq(e1, e2, info)
    ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            unify typ1 typ2;
            Type.Bool info, Eq(exp1, exp2, info)
    | LT(e1, e2, info)
    ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            unify typ1 typ2;
            Type.Bool info, LT(exp1, exp2, info)

    | If(e1, e2, e3, info) ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
        let typ3, exp3 = generate env e3
        in
            unify (Type.Bool info) typ1 ;
            unify typ2 typ3;
            typ2, If(exp1, exp2, exp3, info)

    | Let((x, t), e1, e2, info) -> (* letの型推論 (caml2html: typing_let) *)
        let typ1, exp1 = generate env e1
        in
            unify t typ1;
            let typ2, exp2 = generate (M.add x t env) e2
            in
                typ2, Let((x, t), exp1, exp2, info)

    | Var(x, info) when M.mem x env -> M.find x env, e (* 変数の型推論 (caml2html: typing_var) *)
    | Var(x, info) when M.mem x !extenv -> M.find x !extenv, e
    | Var((ext_var,_) as x, info) when StringMap.mem ext_var Type.external_func_type ->
            let t = (StringMap.find ext_var Type.external_func_type ) info
            in
                extenv := M.add x t !extenv;
                t, e
    | Var(x, info) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
    Format.eprintf "free variable %s assumed as external@." (Id.to_string x);
	let t = Type.gentyp info in
	extenv := M.add x t !extenv;
	t, e

    | LetRec({ name = (x, t); args = id_types; body = let_rec_fun_body }, let_rec_body, info) -> (* let recの型推論 (caml2html: typing_letrec) *)
    let env = M.add x t env in
    let typ1, exp1 = generate (M.add_list id_types env) let_rec_fun_body
    in
	unify (Type.Fun(List.map snd id_types, typ1, info)) t;
    let typ2, exp2 = generate env let_rec_body
    in
        typ2, LetRec({name = (x, t); args = id_types; body = exp1}, exp2, info)

    | App(fun_exp, param_exps, info) -> (* 関数適用の型推論 (caml2html: typing_app) *)
        let f_type, f_exp = generate env fun_exp
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
                  continue_partial_eval := true;
                          (*generate lambda*)
                  (*test example:   let m = ref 10 in let n = ref 5 in let _ = (let t = fun x y z -> Printf.printf "%d\n" x in m := 1; t) (n := 3; 10) in Printf.printf "m = %d\n n = %d\n" !m !n;;
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
        let ee =
              List.fold_right
                (fun (id, exp) current_let ->
                    let typ, dexp = generate env exp
                    in
                    Let(
                        (id, typ),
                        dexp,
                        current_let,
                        Id.get_info id
                    )
                )
                param_id_exps
                (
              Let(
                  (original_fun_id, fun_type),
                  f_exp,
                  LetRec (
                      { name = partial_fun_id, Type.gentyp info ; args = last_params; body = App(original_fun_var, (param_vars @ last_args), info) },
                    partial_fun_var,
                    info
                      ),
                  info
              )
                    )
        in generate env ee
          | _  ->
            let t1 = Type.gentyp info
            in
            let param_type_exps = List.map (generate env) param_exps
            in
                unify (Type.Fun(List.map fst param_type_exps, t1, info)) f_type ;
                t1, App(f_exp, List.map snd param_type_exps, info)
        in
        process_t f_type
        )
    | Tuple(es, info) ->
            let type_exps = List.map (generate env) es
            in
            Type.Tuple(List.map fst type_exps, info), Tuple(List.map snd type_exps, info)

    | LetTuple(xts, e1, e2, info) ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate (M.add_list xts env) e2
        in
            unify (Type.Tuple(List.map snd xts, info)) typ1;
            typ2, LetTuple(xts, exp1, exp2, info)

    | CreateArray(e1, e2, info) -> (* must be a primitive for "polymorphic" typing *)
            let typ1, exp1 = generate env e1
            in
            let typ2, exp2 = generate env e2
            in
            unify (Type.Int info) typ1;
            Type.Array(typ2, info), CreateArray(e1, e2, info)
    | Array(e1, typ, info) ->
        let typ1, exp1 = generate env e1
        in
            unify (Type.Int info) typ1;
            Type.Array(typ, info), Array(exp1, typ, info)

    | Get(e1, e2, info) ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
            let t = Type.gentyp info
            in
            unify (Type.Array(t, info)) typ1;
            unify (Type.Int info) typ2;
            t, Get(exp1, exp2, info)

    | Put(e1, e2, e3, info) ->
        let typ1, exp1 = generate env e1
        in
        let typ2, exp2 = generate env e2
        in
        let typ3, exp3 = generate env e3
        in
            (*Printf.printf "%s\n" @@ Syntax.to_string exp1;*)
            (*Printf.printf "the type %s\n" @@ Type.to_string typ1;*)
            (*Printf.printf "%s\n" @@ Syntax.to_string exp2;*)
            (*Printf.printf "the type %s\n" @@ Type.to_string typ2;*)
            (*Printf.printf "%s\n" @@ Syntax.to_string exp3;*)
            (*Printf.printf "the type %s\n" @@ Type.to_string typ3;*)
            unify (Type.Array(typ3, info)) typ1;
            unify (Type.Int info) typ2;
            Type.Unit info, Put(exp1, exp2, exp3, info)

  | CharRead info -> Type.Int info, e
  with Unify(t1, t2) -> raise (Error(deref_term e, deref_typ t1, deref_typ t2))

let f out e =
  extenv := M.empty;
    (*
      (match deref_typ (generate M.empty e) with
      | Type.Unit -> ()
      | _ -> Format.eprintf "warning: final result does not have type unit@.");
    *)
    let rec rep e cnt =
        if cnt = 0 then
            (
            partial_evaluating := false;
            let _, ee = generate M.empty e
            in
                ee
            )
        else
            (
          partial_evaluating := true;
          continue_partial_eval := false;
          let _, ee = generate M.empty e
          in
            if !continue_partial_eval then
              rep ee (cnt - 1)
            else
                ee
            )
    in
      try
          let ee = rep e partial_evaluation_threshold
          in
          extenv := M.map deref_typ !extenv;
              let ret = deref_term ee
              in
              (*Printf.printf "after function expasion: %s\n" (Syntax.to_string ret);*)
                print_all out ret;
              ret

      with
        | Error(e, t1, t2) ->
                Format.eprintf "expect type\n%s\nbut type\n%s\nis passed while evaluating\n%s"  (Type.to_string t1) (Type.to_string t2) (Syntax.to_string e);
              exit 1
