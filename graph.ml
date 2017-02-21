open Asm
let empty = M2.empty

(*return set of used variables, inttype and float type*)

let to_string graph =
    M2.fold (fun node neighbor_set str ->
      Printf.sprintf "%s\n" @@
        S1.fold (fun neighbor str' ->
            Printf.sprintf "%s%s, " str' (Operand.to_string neighbor)
        )
        neighbor_set
        (Printf.sprintf "%s%s -> " str @@ Operand.to_string node)
    )
    graph
    ""

let get_live_vars_addr = function
    (*relative address from a reg*)
    | Relative (t, _) -> S1.singleton t
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic (t1, _, t2) -> S1.of_list [t1; t2]
    | Absolute _ -> S1.empty

let get_use_vars_exp_easy = function
    | Nop
    | CharRead
    | Restore _
     -> S1.empty, S1.empty

    | Add (t1, t2)
    | ShiftLeft (t1, t2)
    | ShiftRight (t1, t2)
    | Div (t1, t2)
    | Mul (t1, t2)
    | Sub (t1, t2)
    -> S1.of_list [t1; t2], S1.empty

    | Four t
    | Half t
    | Neg t
    | Print t
    | Move t
    | Addi (t, _)
    -> S1.singleton t, S1.empty
    | FNeg t
    | FAbs t
    | FMove t
    -> S1.empty, S1.singleton t

    | Save id
    -> S1.singleton (Operand.ID id), S1.empty
    | FSave id
    -> S1.empty, S1.singleton (Operand.ID id)

    | FAdd (t1, t2)
    | FSub (t1, t2)
    | FMul (t1, t2)
    | FDiv (t1, t2)
    -> S1.empty, S1.of_list [t1; t2]

    | Load a
    | FLoad a
    -> get_live_vars_addr a, S1.empty

    | Store (t, a)
    -> S1.add t (get_live_vars_addr a), S1.empty

    | FStore (t, a)
    -> get_live_vars_addr a, S1.singleton t

    | MoveImm _
    -> S1.empty, S1.empty

    | IfEQ _
    | FIfEQ _
    | IfLT _
    | FIfLT _
    -> failwith "wrong compiler flow. please check Asm.get_use_vars"

    (*NOTE: should test how to assign returned register for float-return function*)
    | CallDir (_, l1, l2)
    -> S1.of_list l1, S1.of_list l2
    | CallCls (t, l1, l2)
        -> S1.add t (S1.of_list l1), S1.of_list l2

    (*return list of operand sets*)
    (*let dest = exp in cont*)
let rec get_live_vars_exp dest_op dest_type int_next_in float_next_in = function
    (*IN = LIVE - DEF + USE*)
    | IfEQ (op1, op2, t1, t2)
    | IfLT (op1, op2, t1, t2)
    ->
        get_live_vars_if dest_op dest_type int_next_in float_next_in op1 op2 t1 t2 false
    | FIfEQ (op1, op2, t1, t2)
    | FIfLT (op1, op2, t1, t2)
    ->
        get_live_vars_if dest_op dest_type int_next_in float_next_in op1 op2 t1 t2 true
    | exp ->
            (*Printf.printf "int vars\n";*)
            (*List.iter (S1.iter (fun x -> Printf.printf "%s\n" @@ Operand.to_string x)) int_in_cont;*)
            (*Printf.printf "float vars\n";*)
            (*List.iter (S1.iter (fun x -> Printf.printf "%s\n" @@ Operand.to_string x)) float_in_cont;*)
            let int_live = int_next_in
            in
            let float_live = float_next_in
            in
            let int_use, float_use = get_use_vars_exp_easy exp
            in
            let restore_def = match exp with
              | Restore id -> S1.singleton (Operand.ID id)
              | _ -> S1.empty
            in
            let int_def, float_def = (match dest_type with
                | Type.Float _ -> restore_def, S1.add dest_op restore_def
                | Type.Unit _ -> restore_def, restore_def
                | _ -> S1.add dest_op restore_def, restore_def
            )
            in
            (*omg: def should be included in current live*)
            let int_live = S1.union int_live int_def
            in
            let float_live = S1.union float_live float_def
            in
            let int_in = S1.union (S1.diff int_live int_def) int_use
            in
            let float_in = S1.union (S1.diff float_live float_def) float_use
            in
            (*if S1.inter spilled_vars int_live != S1.empty then*)
              (*failwith "helloworld";*)
              (*Printf.printf "spilled var list: ";*)
              (*S1.iter (fun x -> Printf.printf "%s, " @@ Operand.to_string x) spilled_vars;*)
              (*Printf.printf "\n";*)
              (*Printf.printf "int live list: ";*)
              (*S1.iter (fun x -> Printf.printf "%s, " @@ Operand.to_string x) int_live;*)
              (*Printf.printf "\n";*)
                [ int_live ], [ float_live ], int_in, float_in
and
get_live_vars_if dest_op dest_type int_next_in float_next_in op1 op2 t1 t2 is_float =
    let int_lives1, float_lives1, int_in1, float_in1 = get_live_vars dest_op dest_type int_next_in float_next_in t1
    in
    let int_lives2, float_lives2, int_in2, float_in2 = get_live_vars dest_op dest_type int_next_in float_next_in t2
    in
    let int_live, float_live  =
        S1.union int_in1 int_in2,
        S1.union float_in1 float_in2
    in
    let int_use, float_use =
        if is_float then
            S1.empty,
            S1.of_list [op1; op2]
        else
            S1.of_list [op1; op2],
            S1.empty
    in
    let int_in, float_in =
        S1.union int_live int_use,
        S1.union float_live float_use
    in
        int_live :: (int_lives1 @ int_lives2), float_live :: (float_lives1 @ float_lives2), int_in, float_in
and
get_live_vars dest_op dest_type int_next_in float_next_in = function
  | Ans (exp, _) -> get_live_vars_exp dest_op dest_type int_next_in float_next_in exp
  | Let ((op, typ), let_exp, body_exp, _) ->
      let int_lives, float_lives, int_next_in, float_next_in = get_live_vars dest_op dest_type int_next_in float_next_in body_exp
      in
      let int_live1, float_lives1, int_next_in1, float_next_in1 = get_live_vars_exp op typ int_next_in float_next_in let_exp
      in
        int_lives @ int_live1, float_lives @ float_lives1, int_next_in1, float_next_in1

let graph_from_lives lives =
    List.fold_right (fun var_set graph ->
      (*Printf.printf "live set: ";*)
      (*S1.iter (fun x -> Printf.printf "%s, " @@ Operand.to_string x) var_set;*)
      (*Printf.printf "\n";*)
        (*for each live variables set of each instruction*)
        S1.fold (fun u graph' ->
            (*for each element of live variables set*)
            let u_nearby_set = (try M2.find u graph' with Not_found -> S1.empty)
            in
            let u_nearby_set' = S1.remove u (S1.union u_nearby_set var_set)
            in
            M2.add u u_nearby_set' graph'
        )
        var_set
        graph
    )
    lives
    empty


let rec get_vars = function
  | Ans (exp, _) -> get_vars_exp exp
  | Let ((Operand.ID id, Type.Unit _), let_exp, body_exp, _) ->
      let i, f, u =
          combine_vars
              (get_vars_exp let_exp)
              (get_vars body_exp)
      in
        i, f, S.add id u
  | Let ((op, Type.Float _), let_exp, body_exp, _) ->
        let i, f, u = combine_vars
              (get_vars_exp let_exp)
              (get_vars body_exp)
        in
            i, S1.add op f, u
  | Let ((op, _), let_exp, body_exp, _) ->
        let i, f, u = combine_vars
              (get_vars_exp let_exp)
              (get_vars body_exp)
        in
            S1.add op i, f, u
and
combine_vars (i1, f1, u1) (i2, f2, u2) =
    S1.union i1 i2, S1.union f1 f2, S.union u1 u2
and
get_vars_exp = function
    (*IN = LIVE - DEF + USE*)
    | IfEQ (op1, op2, t1, t2)
    | IfLT (op1, op2, t1, t2)
    ->
        let i, f, u = combine_vars
              (get_vars t1)
              (get_vars t2)
        in
            S1.union (S1.of_list [op1; op2]) i, f, u
    | FIfEQ (op1, op2, t1, t2)
    | FIfLT (op1, op2, t1, t2)
    ->
        let i, f, u = combine_vars
              (get_vars t1)
              (get_vars t2)
        in
            i, S1.union (S1.of_list [op1; op2]) f, u
    | exp -> S1.empty, S1.empty, S.empty
            (*let i, f = get_use_vars_exp_easy exp*)

let graph_supply vars graph =
    S1.fold (fun node graph' ->
        if M2.mem node graph' then
            graph'
        else
            M2.add node S1.empty graph'
    )
    vars
    graph

let gen_graph dest_type e =
    (*Printf.printf "\n";*)
    (*Printf.printf "\n";*)
    (*Printf.printf "\n";*)
    (*Printf.printf "\n";*)
    (*Printf.printf "\n";*)
    (*Printf.printf "\n";*)
    (*Printf.printf "\n";*)
    (*Printf.printf "spilled list: ";*)
    (*S1.iter (fun x -> Printf.printf "%s, " @@ Operand.to_string x) spilled_vars;*)
    (*Printf.printf "\n";*)
    let ret_op = match dest_type with
        | Type.Float _ -> Operand.Reg Reg.freg_ret
        | Type.Unit _ -> Operand.Reg Reg.reg_dump
        | _ -> Operand.Reg Reg.reg_ret
    in
    let int_lives, float_lives, _, _ = get_live_vars ret_op dest_type S1.empty S1.empty e
    in
    let int_graph, float_graph  = graph_from_lives int_lives , graph_from_lives float_lives
    in
    (*Printf.printf "int graph: \n%s\n" @@ to_string int_graph;*)
    let int_vars, float_vars, unit_vars = get_vars e
    in
        graph_supply int_vars int_graph, graph_supply float_vars float_graph, unit_vars

let graph_get_degree_map graph =
    M2.map (fun set -> S1.size set) graph

    (*return min degree and set of nodes have this min degree value*)
let graph_get_min_deg_node degree_map =
    M2.fold (fun key deg (min_deg, min_deg_nodes) ->
        if deg < min_deg then
            deg, [key]
        else
            if deg = min_deg then
                deg, (key::min_deg_nodes)
            else
                min_deg, min_deg_nodes
    ) degree_map (M2.size degree_map, [])

    (*return max degree over all node's neighbors. Or return 0 if node does not have neighbor*)
let graph_get_neighbor_max_deg node degree_map graph =
    S1.fold (fun neighbor max_deg ->
        let neighbor_deg = M2.find neighbor degree_map
        in
            Pervasives.max neighbor_deg max_deg
        )
    (M2.find node graph)
    0


    (*return node has a neighbor that has max degress*)
let get_max_neighbor_deg_node min_deg_nodes degree_map graph =
    match
    List.fold_right (fun node (max_neighbor_deg, optimized_node_opt) ->
            let neighbor_deg = graph_get_neighbor_max_deg node degree_map graph
            in
            if neighbor_deg > max_neighbor_deg then
                neighbor_deg, Some node
            else
                max_neighbor_deg, optimized_node_opt
        )
        min_deg_nodes
        (-1, None)
    with
        _, Some node -> node
        | _, None -> failwith "wrong graph coloring flow: getting the best node between zero-degree nodes"


let graph_remove_node node graph =
    M2.fold (fun v neigbors  graph' ->
        M2.add v (S1.remove node neigbors) graph'
    )
    (M2.remove node graph)
    (M2.remove node graph)

let rec coloring_make_stack current_stack graph spillable threshold =
    if graph = empty then
        current_stack, empty, spillable
    else
        let degree_map = graph_get_degree_map graph
        in
        (*M2.iter (fun key v -> Printf.printf "%s: %d\n" (Operand.to_string key) v) degree_map;*)
        let min_deg, min_deg_nodes = graph_get_min_deg_node degree_map
        in
        let to_remove_node  =
            if min_deg = 0 then
                try
                List.hd min_deg_nodes
                with _ -> failwith "common"
            else
                get_max_neighbor_deg_node min_deg_nodes degree_map graph
        in
        let spillable' =
            if min_deg >= threshold then match to_remove_node with Operand.ID to_remove_node_id -> S.add to_remove_node_id spillable
                | _ -> spillable
            else
                spillable
        in
            coloring_make_stack (to_remove_node ::current_stack) (graph_remove_node to_remove_node graph) spillable' threshold

exception Spill of Id.t
(*strategy: how to choose node to spill
    * choose one from spillable set that is not spilled
    * if spillable set is empty or all elements are already spilled
    * choose current coloring node
    * if current coloring node is already spilled
    * choose one of its neighbors
    * if all its neighbors are spilled
    * choose any from graph
    * if all nodes of graph are already spilled
    * -> this graph can not be colored by this algorithm
    *)
let coloring_graph graph regs param_env spilled has_subcall =
    let stack, _,  spillable = coloring_make_stack [] graph S.empty (StringSet.size regs)
    in
    (*List.iter (fun x -> Printf.printf "%s\n" (Operand.to_string x)) stack;*)
    (*Printf.printf "%s\n" (to_string graph);*)
    (*M.iter (fun key x -> Printf.printf "%s: %s\n" (Id.to_string key) x) param_env;*)
    (*failwith "ha";*)
        List.fold_left (fun color_map node ->
            match node with
                | Operand.Reg reg -> color_map
                | Operand.ID id when M.mem id color_map -> color_map
                | Operand.ID id ->
                    let neighbor = M2.find node graph
                    in
                    let neighbor_colors =
                        S1.fold (fun node colors ->
                            match node with
                            | Operand.ID id when M.mem id color_map -> StringSet.add (M.find id color_map) colors
                            | Operand.Reg reg -> StringSet.add reg colors
                            | _ -> colors
                        )
                        neighbor
                        StringSet.empty
                    in
                    let selectable_color = StringSet.diff regs neighbor_colors
                    in
                    (*print list of selectable colors*)
                    (*Printf.printf "%s\n" (Id.to_string id);*)
                    (*StringSet.iter (Printf.printf "%s\n") selectable_color;*)
                    (*failwith "ha";*)
                    try
                        let color =
                            (*if S.mem id spilled then*)
                                (*choose from top*)
                            if has_subcall then
                                StringSet.max_elt selectable_color
                            else
                                StringSet.min_elt selectable_color
                            (*else*)
                                (*StringSet.max_elt selectable_color*)
                        in
                        M.add id color color_map
                    with
                        Not_found -> (*spill id*)
                            let spillable_not_spilled = S.diff spillable spilled
                            in
                                if spillable_not_spilled != S.empty then(
                                    let spill_id = S.choose spillable_not_spilled
                                    in
                                        raise (Spill spill_id)
                                );
                              ( if not (S.mem id spilled) then
                                  raise (Spill id)
                              ) ;
                            (
                            let neighbors = M2.find node graph
                            in
                                S1.iter (fun elt -> match elt with
                                    Operand.ID id when not (S.mem id spilled) -> raise (Spill id)
                                    | _ -> ()
                                )
                                neighbors
                            );
                            (
                            M2.iter (fun node _ -> match node with
                                Operand.ID id when not (S.mem id spilled) -> raise (Spill id)
                                    | _ -> ()
                                )
                                graph
                            );
                            (*Printf.printf "id that can not be colored %s\n" @@ Id.to_string id;*)
                            (*Printf.printf "%s's label list: " @@ Id.to_string id;*)
                            (*S1.iter (fun x -> Printf.printf "%s, " @@ Operand.to_string x) @@ M2.find (Operand.ID id) graph;*)
                            (*Printf.printf "\n";*)
                            (*Printf.printf "spilled list: ";*)
                            (*S.iter (fun x -> Printf.printf "%s, " @@ Id.to_string x) spilled;*)
                            failwith "graph can not be colored"


        )
        param_env
        stack

    (*need to separate to int_graph and float_graph because sets of register are difference (Reg.allregs and Reg.allfregs)*)

let save id typ info body =
  let save_st = match typ with
    Type.Float _ -> FSave(id)
    | _ -> Save(id)
  in
  Let(
    (Operand.Reg Reg.reg_dump, typ),
    save_st,
    body,
    info
    )
let rec add_spill id typ = function
  | Ans(exp, info) ->
      let to_restore, exp = add_spill_exp id typ exp
      in
      if to_restore then
        Let((Operand.ID id, typ), Restore id, Ans(exp, info), info)
      else
        Ans(exp, info)
  | Let((Operand.ID op_id, typ) as op_typ, let_exp, body, info) when op_id = id ->
      Let(op_typ, let_exp,
        save op_id typ info @@ add_spill id typ body,
        info
      )
  | Let(op_typ, let_exp, body, info) ->
      let to_restore, exp = add_spill_exp id typ let_exp
      in
      let core = Let(op_typ, exp, add_spill id typ body, info)
      in
      if to_restore then
        Let((Operand.ID id, typ), Restore id, core, info)
      else
        core
and
add_spill_exp id typ= function
    | IfEQ (op1, op2, t1, t2)
    -> op1 = Operand.ID id || op2 = Operand.ID id, IfEQ(op1, op2, add_spill id typ t1, add_spill id typ t2)
    | IfLT (op1, op2, t1, t2)
    -> op1 = Operand.ID id || op2 = Operand.ID id, IfLT(op1, op2, add_spill id typ t1, add_spill id typ t2)
    | FIfEQ (op1, op2, t1, t2)
    -> op1 = Operand.ID id || op2 = Operand.ID id, FIfEQ(op1, op2, add_spill id typ t1, add_spill id typ t2)
    | FIfLT (op1, op2, t1, t2)
    -> op1 = Operand.ID id || op2 = Operand.ID id, FIfLT(op1, op2, add_spill id typ t1, add_spill id typ t2)
    | e ->
    let used_int, used_float = get_use_vars_exp_easy e
    in
      S1.exists (fun x -> x = Operand.ID id) used_int || S1.exists (fun x-> x = Operand.ID id) used_float, e

let rec coloring_loop dest_type param_env spilled_vars_id has_subcall typ_env e =
    (*Printf.printf "closure body:\n%s\n" (Asm.to_string e);*)
  (*Printf.printf "spilled vars id list";*)
  (*S.iter (fun x -> Printf.printf "%s, " @@ Id.to_string x) spilled_vars_id;*)
    let int_graph, float_graph, unit_vars = gen_graph dest_type e
    in
    let param_env' = S.fold (fun node current ->
        M.add node Reg.reg_dump current
    )
    unit_vars
    param_env
    in
    (*Printf.printf "%s\n" (to_string int_graph);*)
    try
        let int_color_map = coloring_graph int_graph (StringSet.remove Reg.reg_cl @@ StringSet.remove Reg.reg_ret @@ StringSet.of_list Reg.allregs) param_env' spilled_vars_id has_subcall
        in
        coloring_graph float_graph (StringSet.remove Reg.freg_ret @@ StringSet.of_list Reg.allfregs) int_color_map spilled_vars_id has_subcall, e, spilled_vars_id
    with
        Spill id ->
            Printf.printf "Spill %s ...\n" (Id.to_string id);
            let typ = M.find id typ_env
            in
            coloring_loop dest_type param_env (S.add id spilled_vars_id) has_subcall typ_env (add_spill id typ e)

let coloring dest_type e param_env has_subcall typ_env =
  let color_map, e, spilled_vars_id = coloring_loop dest_type param_env S.empty has_subcall typ_env e
  in
  let info = get_info e
  in
  let e = S.fold (fun spilled_id e ->
    if M.mem spilled_id param_env then
      save spilled_id (M.find spilled_id typ_env) info e
    else
      e
  ) spilled_vars_id e
  in
    color_map, e
