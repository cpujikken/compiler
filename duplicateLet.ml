let rec g env = function
    | KNormal.Let ((x, t), e1, e2, info) ->
            (
                match e1 with
  | KNormal.Unit _ | KNormal.Int _ | KNormal.Float _ ->
            let e2', env' = g env e2
            in
                KNormal.Let ((x, t), e1, e2', info), env'

    | _ ->
        try
            (*try finding occurence of exxpression e1 in current enviroment*)
            let y = M1.find e1 env
            in
            (*if found, re-create let by replacing e1 with its mapping in current enviroment(y)*)
            let e2', env' = g env e2
            in
            KNormal.Let ((x, t), y, e2', info), env'
        with Not_found ->
            (*if not found*)
            (*evaluate e1*)
            let e1', env' = g env e1
            in
            (*map e1 to variable x*)
            let env'' = M1.add e1 (KNormal.Var(x, Id.get_info x)) env'
            in
            let e2', env''' = g env'' e2
            in
                KNormal.Let ((x, t), e1', e2', info), env'''
            )
    | other -> other, env


    (*env maps expression to variable (Syntax.Var type)*)
let f e =
    let refined = fst (g M1.empty e)
    in
    Printf.printf "\n\ncode after remove duplicate elements:\n%s" (KNormal.to_string refined);
    refined
