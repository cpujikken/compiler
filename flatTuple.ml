open Closure

let rec flat_type = function
  | Type.Unit _
  | Type.Bool _
  | Type.Int _
  | Type.Float _ as t -> t
  | Type.Fun (tlist, t, info) -> Type.Fun(List.map flat_type tlist, flat_type t, info)
  | Type.Tuple (tlist, info) ->
          Type.Tuple(
              List.fold_right (fun elm current_list -> match flat_type elm with
                |Type.Tuple (tlist, _) -> tlist @ current_list
                | other -> other::current_list
                ) tlist [], info
          )
  | Type.Array (t, info) -> Type.Array(flat_type t, info)
  | Type.Var({contents = Some(t)} as r, info) ->
          r := Some(flat_type t);
          Type.Var(r, info)
  | Type.Var ({contents = None}, info) ->
          Type.Var(ref None, info)
  (*| Type.Var (ref_opt_t, info) -> Type.Var*)

  (*cases:
      * lettuple a, b = (x, (y, z))
      * --> lettuple t1, t2, t3  =  x, y, z in let a = t1 in let b = t2, t3
      * let x = (u, (v, w), t)
      * type process
      *
      * tuple(a, b, c) with a = int(1), b = tuple(3, 4.0), c = float(1.) defined before, but unknown yet.
      * Solution: attach type enviroment for only tuple type -> only in Let expression
      * there no more tuple deinfed in lettuple expression (all are already flatten)
      * Mapping tuple type variable to its elements' type after expanded
      * Ex: b->[Type.int, Type.float]
      * Then:
          * let tuple (b1:Int, b2:Float) = b in tuple (a, b1, b2, c)
      *)

let rec flat env = function

  | Let ((var, var_type), value, body, info)
    ->
        let new_type = flat_type var_type
        in
        let new_exp = flat env value
        in
        let env = match new_type with
            | Type.Tuple (tlist, _) -> M.add var tlist env
            | _ -> env
        in
            Let((var, new_type), new_exp, flat env body, info)

  | MakeCls ((id, typ), cls, exp, info)
    -> MakeCls((id, flat_type typ), cls, flat env exp, info)

    (*consider id is already expaned*)
    (*note: a lot of Let expressions appear after wrap_after_flat.
     * They are already expanded, but there is need to flat them to update env*)
  | LetTuple (id_type_list, id, exp, info)
    ->
        let id_type_list', replacements = flat_id_type_list id_type_list
        in
        let wrapped_exp = wrap_after_flat replacements exp
        in
        let new_exp = flat env wrapped_exp
        in
        (*reassign flatten variable*)
        LetTuple(
            id_type_list',
            id,
            new_exp,
            info
        )
  | IfEq (id1, id2, e1, e2, info)
    -> IfEq(id1, id2, flat env e1, flat env e2, info)
  | IfLE (id1, id2, e1, e2, info)
  -> IfLE(id1, id2, flat env e1, flat env e2, info)
    | Tuple(idlist, info)
    ->
      let new_id_types, replacements = List.fold_left (fun (id_list, replacements) id ->
          try
              let types_list = M.find id env
              in
              let new_id_types =
                  List.fold_right (fun typ current -> (Id.genid id, typ) :: current) types_list []
              in
              let new_ids = List.map fst new_id_types
              in
                id_list @ new_ids, replacements @ [new_id_types, id]
          with Not_found -> id_list @ [id], replacements
      )
      ([], [])
      idlist
      in
          List.fold_right (fun (new_id_types, id) exp ->
              LetTuple(new_id_types, id, exp, info)
          )
          replacements
          (Tuple(new_id_types, info))

    | Unit _
    | CharRead _
    | Int _
    | Float _
    | Neg _
    | Print _
    | Four _
    | Addi _
    | Half _
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | FNeg _
    | FAbs _
    | Array _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | Var _

    | AppCls _
    | AppDir _
    | Get _
    | Put _
    | ExtArray _
    as exp
    ->
        exp
and flat_id_type_list id_type_list =
    List.fold_right
        (fun (id, typ) (tuple_list, replacements) -> match flat_type typ with
            | Type.Tuple (tlist, info) ->
                    (*generate list of new ids*)
                    let new_id_type_list = List.map (fun typ -> Id.genid id, typ) tlist
                    in
                    (new_id_type_list @ tuple_list, (id, new_id_type_list)::replacements)
            | other -> ((id, other) :: tuple_list, replacements)
        ) id_type_list ([], [])
and wrap_after_flat replacements exp =
    List.fold_right
    (fun ((_, info) as id, new_id_type_list)  exp ->
        Let (
            (id, Type.Tuple (List.map snd new_id_type_list, info)),
            Tuple(List.map fst new_id_type_list, info),
            exp,
            info
            )
    ) replacements exp


let fun_converter { name = (fun_name , fun_type); args = args_id_types; formal_fv = free_args_id_types; body = body; info = info } =
    let new_args_id_types, replacements = flat_id_type_list args_id_types
    in
    let new_body = wrap_after_flat replacements (flat M.empty body)
    in
    let new_free_args_id_types, replacements_fv = flat_id_type_list free_args_id_types
    in
    let new_body = wrap_after_flat replacements_fv new_body
    in
  (*Printf.printf "%s -> %d\n" (fst fun_name) (List.length new_args_id_types);*)
    {
        name = fun_name, flat_type fun_type;
        args = new_args_id_types;
        formal_fv = new_free_args_id_types;
        body = new_body;
        info = info
    }


let f out (Prog(fundefs, e)) =
    let new_e = flat M.empty e
    in
    let prog = Prog(List.map fun_converter fundefs, new_e)
    in
        print_all out prog;
        prog
