let rec generate env = function
    | KNormal.Let ((x, t), e1, e2, info) ->
            (
            match e1 with
              | KNormal.Unit _ | KNormal.Int _ | KNormal.Float _ ->
                        let e2', _ = generate env e2
                        in
                            KNormal.Let ((x, t), e1, e2', info), env

                | _ ->
                    try
                        (*try finding occurence of exxpression e1 in current enviroment*)
                        let y = M1.find e1 env
                        in
                        (*if found, re-create let by replacing e1 with its mapping in current enviroment(y)*)
                        let e2', _ = generate env e2
                        in
                        KNormal.Let ((x, t), y, e2', info), env
                    with Not_found ->

                        (*if not found*)
                        (*evaluate e1*)
                        let e1', _ = generate env e1
                        in
                        let env' =
                            if Elim.effect e1 then
                                env
                            else
                                (*map e1 to variable x*)
                                M1.add e1 (KNormal.Var(x, Id.get_info x)) env
                        in
                        let e2', _ = generate env' e2
                        in
                            KNormal.Let ((x, t), e1', e2', info), env
            )
  | KNormal.Unit _
  | KNormal.Int _
  | KNormal.Float _
  | KNormal.Neg _
  | KNormal.Four _
  | KNormal.Half _
  | KNormal.Add _
  | KNormal.Sub _
  | KNormal.FNeg _
  | KNormal.FAdd _
  | KNormal.FSub _
  | KNormal.FMul _
  | KNormal.FDiv _
  | KNormal.App _
  | KNormal.Tuple _
  | KNormal.Var _
  | KNormal.Get _
  | KNormal.Put _
  | KNormal.ExtArray _
  | KNormal.ExtFunApp _
  | KNormal.Mul _
  | KNormal.Div _
  | KNormal.ShiftLeft _
  | KNormal.ShiftRight _
  | KNormal.FAbs _
  | KNormal.IntRead _
  | KNormal.FloatRead _
  | KNormal.Print _
  | KNormal.Array _
  as exp
      -> exp, env
  | KNormal.LetTuple (a, b,e, info)
  -> KNormal.LetTuple(a, b, fst (generate env e), info), env

  | KNormal.IfEq (id1, id2, t1, t2, info)
  -> KNormal.IfEq(id1, id2, fst (generate env t1), fst (generate env t2), info), env

  | KNormal.IfLE (id1, id2, t1, t2, info)
  -> KNormal.IfLE(id1, id2, fst (generate env t1), fst (generate env t2), info), env

  | KNormal.LetRec (f, e, info)
  ->
      KNormal.LetRec({
          KNormal.name = f.KNormal.name; KNormal.args = f.KNormal.args; KNormal.body = fst (generate env (f.KNormal.body))
      }, fst (generate env e), info), env

    (*env maps expression to variable (Syntax.Var type)*)
let f e =
    (*fst (generate M1.empty e)*)
    let refined = fst (generate M1.empty e)
    in
    (*Printf.printf "\n\n code before removing duplicate elements:\n%s" (KNormal.to_string e);*)
    (*Printf.printf "\n\ncode after removing duplicate elements:\n%s" (KNormal.to_string refined);*)
    refined
