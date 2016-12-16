type bits5 = int
type addr26 = int
type off26 = int
type const3 = int
type off21 = int
type ret2 = int
type label = string
type off15 = int
type size4 = int

type addr =
    (*relative address from a reg*)
    Relative of Operand.t * Loc.t
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic of Operand.t * size4 * Operand.t
    | Absolute of Loc.t * Loc.t option

type t = (* 命令の列 (caml2html: sparcasm_t) *)
  | Ans of exp * int * Info.t
  | Let of (Operand.t * Type.t) * exp * int * t * Info.t
and exp = (* 一つ一つの命令に対応する式 (caml2html: sparcasm_exp) *)
    | Int of int
    | Float of float
    | Nop
    | IntRead
    | FloatRead
    | Add of Operand.t * Operand.t
    | ShiftLeft of Operand.t * Operand.t
    | ShiftRight of Operand.t * Operand.t
    | Div of Operand.t * Operand.t
    | Mul of Operand.t * Operand.t
    | Sub of Operand.t * Operand.t
    | Addi of  Operand.t * Loc.t
    | Four of Operand.t
    | Half of Operand.t
    | Load of addr
    | Store of Operand.t * addr
    | Neg of Operand.t
    | FNeg of Operand.t
    | FAbs of Operand.t
    | Print of Operand.t
    | FAdd of Operand.t * Operand.t
    | FSub of Operand.t * Operand.t
    | FMul of Operand.t * Operand.t
    | FDiv of Operand.t * Operand.t
    | FLoad of addr
    | FStore of Operand.t * addr


    | MoveImm of Loc.t
    | Move of Operand.t
    | FMove of Operand.t

    | IfEQ of Operand.t * Operand.t * t * t
    | FIfEQ of Operand.t * Operand.t *t * t
    | IfLT of Operand.t * Operand.t * t * t
    | FIfLT of Operand.t * Operand.t * t * t
    | CallCls of Operand.t * Operand.t list * Operand.t list
    | CallDir of label * Operand.t list * Operand.t list
type fundef = { name : label; args : Operand.t list; fargs : Operand.t list; body : t; ret : Type.t ; info: Info.t}
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = fundef list * t

type command =
    Assignment of Operand.t * exp * id
    | Alias of Operand.t * Operand.t * id
    | Branch of exp * id
    | Entry of Operand.t * id

and
id = int
and
block = command list * id
and
env = {
    tail: bool;
    id: int;
    dest: Operand.t;
    funname: string;
    int_params: Operand.t list;
    float_params: Operand.t list;
    graph: IntSet.t IntMap.t;
    last_blocks: block list;
    block_map: block IntMap.t;
    tmp: Operand.t;
    command_map: command IntMap.t;
    ret_assignments : IntSet.t;
    fun_by_name : fundef StringMap.t;
    calculable: bool;
}
and
convert_data = {
    idata: (Id.l * int) list;
    fdata: (Id.l* float) list;
}

let rec concat e1 xt e2 =
  match e1 with
  | Ans(exp, id, info) -> Let(xt, exp, id, e2, info)
  | Let(yt, exp, id, e1', info) -> Let(yt, exp, id,  concat e1' xt e2, info)
let seq(e1, e2, info) =
    Let(
        (Operand.ID (Id.gentmp (Type.Unit info) info), Type.Unit info),
        e1,
        -1,
        e2,
        info
        )

(* super-tenuki *)
let rec remove_dup xs = function
  | [] -> []
  | x :: ys when OperandSet.mem x xs -> remove_dup xs ys
  | x :: ys -> x :: remove_dup (OperandSet.add x xs) ys

(* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
let rec fv_exp = function
    | Nop
    | IntRead
    | FloatRead
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | MoveImm _
    | Int _
    | Float _
        -> []

    | Add (a, b)
    | ShiftLeft (a, b)
    | ShiftRight (a, b)
    | Div (a, b)
    | Mul (a, b)
    | Sub(a, b)
    | Load ((Dynamic (a, _, b)))
    | FLoad ((Dynamic (a, _, b)))
    | FAdd(a, b)
    | FSub(a, b)
    | FMul(a, b)
    | FDiv(a, b)
    | Store(a, Relative (b, _))
    | FStore(a, Relative (b, _))
    (*| FCmp(a, b, _)*)
        -> [a; b]

    | Move r
    | FMove r
    | Addi (r, _)
    | Four r
    | Half r
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | Neg r
    | FNeg r
    | FAbs r
    | Print r
        ->  [r]

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> u :: v :: remove_dup OperandSet.empty (get_free_vars_ e1 @ get_free_vars_ e2)

    | CallCls (x, ys, zs)
    -> x :: ys @ zs
    | CallDir(_, ys, zs)
    -> ys @ zs

and get_free_vars_ = function
  | Ans(exp, _, info) -> fv_exp exp
  | Let((x, t), exp, _, e, info) ->
      fv_exp exp @ remove_dup (OperandSet.singleton x) (get_free_vars_ e)
let get_free_vars e = remove_dup OperandSet.empty (get_free_vars_ e)
let command_dest = function
    Assignment (t, _, _)
    | Entry (t, _)
    | Alias (t, _, _) -> S1.singleton t
    | Branch _ -> S1.empty

let command_source_exp = function
    | Nop
    | IntRead
    | FloatRead
    | Load (Absolute _ )
    | FLoad (Absolute _)
    | MoveImm _
    | Int _
    | Float _
        -> S1.empty

    | Add (a, b)
    | ShiftLeft (a, b)
    | ShiftRight (a, b)
    | Div (a, b)
    | Mul (a, b)
    | Sub(a, b)
    | Load ((Dynamic (a, _, b)))
    | FLoad ((Dynamic (a, _, b)))
    | FAdd(a, b)
    | FSub(a, b)
    | FMul(a, b)
    | FDiv(a, b)
    | Store(a, Relative (b, _))
    | FStore(a, Relative (b, _))
        -> S1.of_list [a; b]

    | Move r
    | FMove r
    | Addi (r, _)
    | Four r
    | Half r
    | Load (Relative (r, _))
    | FLoad (Relative(r, _))
    | Store(r, Absolute _)
    | FStore(r, Absolute _)
    | Neg r
    | FNeg r
    | FAbs r
    | Print r
        ->  S1.singleton r

    | Store(r1, Dynamic(r2, _, r3))
    | FStore(r1, Dynamic(r2, _, r3))
    -> S1.of_list [r1; r2; r3]

    | IfEQ (u, v, e1, e2)
    | FIfEQ(u, v, e1, e2)
    | IfLT(u, v, e1, e2)
    | FIfLT(u, v, e1, e2)
    -> S1.empty

    | CallCls (x, ys, zs)
    -> S1.add x @@ S1.union (S1.of_list ys) @@ S1.of_list @@ zs
    | CallDir(_, ys, zs)
    -> S1.union (S1.of_list ys) (S1.of_list zs)

let command_source_branch = function
    | Nop
    | IntRead
    | FloatRead
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Addi _
    | Four _
    | Int _
    | Float _
    | Half _
    | Load _
    | Store _
    | Neg _
    | FNeg _
    | FAbs _
    | Print _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _
    | FStore _

    | MoveImm _
    | Move _
    | FMove _

    | CallCls _
    | CallDir _
    -> S1.empty

    | IfEQ (u, v, _, _)
    | FIfEQ(u, v, _, _)
    | IfLT(u, v, _, _)
    | FIfLT(u, v, _, _)
    -> S1.of_list [u; v]

let command_source = function
    Assignment (_, exp, _) -> command_source_exp exp
    | Alias (_, t, _) -> S1.singleton t
    | Branch (exp, _ )-> command_source_branch exp
    | Entry (t, _) -> S1.empty

let graph_add_edge u v graph =
    IntMap.add u (IntSet.add v @@ IntMap.find u graph) graph


    let get_block_id = snd

let env_new_block block env =
    let new_block_map =  IntMap.add (get_block_id block) block env.block_map
    in
    {env with
        block_map = new_block_map
    }

let env_append_block_force assigns env =
    let new_block_id = env.id
    in
    let new_block = (assigns, new_block_id)
    in
    let env = env_new_block new_block env
    in
        let graph = List.fold_left (fun graph (_, last_block_id) ->
            graph_add_edge last_block_id new_block_id graph
        )
        env.graph
        env.last_blocks
    in
        {env with
            graph = graph;
            last_blocks = [new_block];
        }

let env_append_assignments assigns env =
    match env.last_blocks with
        [(assign_list, block_id)] ->
            let last_block = assign_list @ assigns, block_id
            in
            let block_map = IntMap.add block_id last_block env.block_map
            in
            {env with
                last_blocks = [last_block];
                block_map = block_map
        }
        | _ -> env_append_block_force assigns env

let env_new_command command env =
    {env with
        id= env.id + 1;
        command_map = IntMap.add env.id command env.command_map
    }

let env_tail_call int_args float_args env =
    let env = {env with calculable = false }
    in
    let params = env.int_params @ env.float_params
    in
    let args = int_args @ float_args
    in
    let assigns = Emit.shuffle env.tmp @@ List.map2 (fun x y -> (x, y)) params args
    in
    let assigns, env =
        List.fold_right (fun (param, arg) (assigns, env) ->
            let alias = Alias (param, arg, env.id)
            in
            alias:: assigns, env_new_command alias env
        )
        assigns
        ([], env)
    in
        env_append_assignments assigns env

let env_append_assignment exp env =
    let ret_assignments = env.ret_assignments
    in
    let ret_assignments =
        if env.tail then IntSet.add env.id ret_assignments
        else
            ret_assignments
    in
    let env = {env with ret_assignments = ret_assignments }
    in
    let assignment = Assignment (env.dest, exp, env.id)
    in
    let env = env_new_command assignment env
    in
        env_append_assignments []  env

let rec gen_graph env = function
    | Ans (e, _, info) ->
            let e, id, env = gen_graph_exp env e
            in
            Ans(e, id, info), env
    | Let ((op, op_typ), let_e, _, body, info) ->
            let let_e, id, env_new = gen_graph_exp { env with dest = op; tail = false } let_e
            in
            let body, env = gen_graph {env_new with dest = env.dest; tail = env.tail } body
            in
            Let((op, op_typ), let_e, id, body, info), env
and
gen_graph_exp env = function
    | CallDir (label, op_list1, op_list2) as exp when env.tail && label = env.funname
        ->
            exp,
            env.id,
            env_tail_call op_list1 op_list2 env

    | Nop
    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Addi _
    | Four _
    | Half _
    | Load _
    | Int _
    | Float _
    | Neg _
    | FNeg _
    | FAbs _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | FLoad _

    | MoveImm _
    | Move _
    | FMove _
    | CallDir _
    (*todo: figure out how to set calculable here*)
    as exp
    -> exp, env.id, env_append_assignment exp env

    | CallCls _
    | FStore _
    | Print _
    | Store _
    | IntRead
    | FloatRead
    as exp
    (*has side effect*)
    -> exp, env.id, env_append_assignment exp {env with calculable = false}

    | IfEQ (_, _, exp1, exp2)
    | FIfEQ (_, _, exp1, exp2)
    | IfLT (_, _, exp1, exp2)
    | FIfLT (_, _, exp1, exp2)
    as exp
    -> let body_true, body_false, env_new = env_append_branch exp exp1 exp2 env
    in
    (match exp with
    | IfEQ (t1, t2, _, _) -> IfEQ(t1, t2, body_true, body_false)
    | FIfEQ (t1, t2, _, _) -> FIfEQ(t1, t2, body_true, body_false)
    | IfLT (t1, t2, _, _ ) -> IfLT(t1, t2, body_true, body_false)
    | FIfLT (t1, t2, _, _) -> FIfLT(t1, t2, body_true, body_false)
    | _ -> assert false
    ), env.id, env_new
and
env_append_branch e exp1 exp2 env =
    let branch_command = Branch(e, env.id)
    in
    let env = env_new_command branch_command env
    in
    let env = env_append_block_force [branch_command]  env
    in
    let body_true, env_true = gen_graph env exp1
    in
    let body_false, env_false = gen_graph {env_true with last_blocks = env.last_blocks; dest = env.dest} exp2
    in
        body_true, body_false, {env_false with last_blocks = env_true.last_blocks @ env_false.last_blocks}

let graph_fold_edge f graph init =
    IntMap.fold (fun u ->
        IntSet.fold (fun v value' ->
            f (u, v) value'
        )
    )
    graph
    init

let command_get_id = function
    Assignment (_, _, id)
    | Alias(_, _, id)
    | Entry (_, id)
    | Branch (_, id) -> id

let effect_commands (command_list, _) =
    let define_map =
        List.fold_left (fun map command ->
            S1.fold (fun dest map ->
                M2.add dest command map
            )
            (command_dest command)
            map
        )
        M2.empty
        command_list
    in
        M2.fold (fun key value set -> IntSet.add (command_get_id value) set) define_map IntSet.empty

let find_def env =
    IntMap.fold (fun u neighbors ->
        IntMap.add u @@ effect_commands @@ IntMap.find u @@ env.block_map
    )
    env.graph
    IntMap.empty

let graph_rev graph =
    graph_fold_edge (fun (u, v) rev_graph ->
        let rev_graph =
            if not (IntMap.mem u rev_graph) then IntMap.add u IntSet.empty rev_graph
            else
                rev_graph
        in
        let current_v_innode = try IntMap.find v rev_graph with Not_found -> IntSet.empty
        in
            IntMap.add v (IntSet.add u current_v_innode) rev_graph
    )
    graph
    IntMap.empty

let find_kill def env =
    let rev_graph = graph_rev env.graph
    in
    graph_fold_edge (fun (u, v) kill ->
        let current_kill = try IntMap.find u kill with Not_found -> IntSet.empty
        in
        let sibling = IntMap.find v rev_graph
        in
        let sibling_notme = IntSet.remove u sibling
        in
        let my_def = IntMap.find u def
        in
        let my_def_var = IntSet.fold (fun command_id ->
            S1.union @@ command_dest @@ IntMap.find command_id env.command_map
            ) my_def S1.empty
        in
        let append_kill = IntSet.fold (fun sibling_id append_kill ->
            let sibling_def_command_ids = IntMap.find sibling_id def
            in
            let to_kill = IntSet.filter (fun command_id ->
                let command = IntMap.find command_id env.command_map
                in
                let def_vars = command_dest command
                in
                    not (S1.is_empty def_vars) && S1.subset def_vars my_def_var
                ) sibling_def_command_ids
            in
                IntSet.union to_kill append_kill
            )
            sibling_notme
            IntSet.empty
        in
        let new_kill = IntSet.union current_kill append_kill
        in
            IntMap.add u new_kill kill
    )
    env.graph
    IntMap.empty

let rec find_inout_loop rev_graph def kill env inset outset =
    let f block_id command_set =
        IntSet.union (IntMap.find block_id def) @@ IntSet.diff command_set @@ IntMap.find block_id kill
    in
    let outset, found =
        IntMap.fold (fun block_id old_out (outset, found) ->
            let in_p = IntMap.find block_id inset
            in
            let new_out = f block_id in_p
            in
                if IntSet.compare old_out new_out = 0 then
                    outset, found
                else
                    IntMap.add block_id new_out outset, true
        )
        outset
        (outset, false)
    in
        let inset, found =
        IntMap.fold (fun block_id old_in (inset, found) ->
            let in_nodes = IntMap.find block_id rev_graph
            in
            let new_in = IntSet.fold (fun x -> IntSet.union @@ IntMap.find x outset) in_nodes IntSet.empty
            in
            if IntSet.compare new_in old_in = 0 then
                inset, found
            else
                IntMap.add block_id new_in inset, true

        )
        inset
        (inset, found)
    in
        if found then
            find_inout_loop rev_graph def kill env inset outset
        else
            inset, outset

let find_inout def kill env =
    let entry_block_id = 0
    in
    let empty_map = IntMap.map (fun _ -> IntSet.empty) def
    in
    let inset = IntMap.empty |> IntMap.add entry_block_id @@ IntMap.find entry_block_id def
    in
    let outset = empty_map
    in
    find_inout_loop (graph_rev env.graph) def kill env inset outset


let find_reach inset env =
    IntMap.fold (fun block_id (command_list, _) reach ->
        let reach, _ =
            (*for each block*)
            List.fold_left (fun (reach, last_def_command_id) command ->
                let command_id = command_get_id command
                in
                let used_vars = command_source command
                in
                    S1.fold (fun var reach ->
                        let reach_set =
                            if M2.mem var last_def_command_id then
                                IntSet.singleton (M2.find var last_def_command_id)
                            else
                                IntSet.filter (fun def_command_id_outside ->
                                    S1.mem var @@ command_dest @@ IntMap.find def_command_id_outside env.command_map
                                )
                                (IntMap.find block_id inset)
                        in
                        M3.add (command_id, var) reach_set reach
                    )
                    used_vars
                    (*for each command in block*)
                    (*find reach[command_id, used_var]*)
                    reach,

                    S1.fold (fun def_var last_def_command_id ->
                        M2.add def_var command_id last_def_command_id
                    )
                    (command_dest command)
                    last_def_command_id
            )
            (reach, M2.empty)
            command_list
        in
            reach
    )
    env.block_map
    M3.empty

    (*note: use set does not contain all command ids*)
let find_use reach env =
    M3.fold (fun (command_id, _) def_command_set use ->
        IntSet.fold (fun def_command_id use ->
            let old_use = try IntMap.find def_command_id use with Not_found -> IntSet.empty
            in
            let new_use = IntSet.add def_command_id old_use
            in
                IntMap.add def_command_id new_use use
        )
        def_command_set
        use
    )
    reach
    IntMap.empty

type const =
    | Unit
    | CInt of int
    | CFloat of float

type const_env = {
    const_map: const M2.t;
    const_commands: (Operand.t * const) IntMap.t;
    use_const:  const M2.t IntMap.t;
    worklist: (Operand.t * const) IntMap.t;
    call_stack: string list;
    args: const M2.t option;
}

let rec get_const_exp const_env env = function
    | Nop
    -> Some Unit

    | MoveImm (Loc.Constant c)
    -> Some (CInt c)

    | Int i
        -> Some (CInt i)
    | Float f -> Some (CFloat f)

    | Add (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        ->(
            match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x + y))
            | _ -> None
        )
    | ShiftLeft (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x lsl y))
            | _ -> None
        )
    | ShiftRight (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x lsr y))
            | _ -> None
        )
    | Div (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x / y))
            | _ -> None
        )
    | Mul (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x * y))
            | _ -> None
        )
    | Sub (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CInt x, CInt y -> Some (CInt (x - y))
            | _ -> None
        )
    | Addi (op1, Loc.Constant c) when M2.mem op1 const_env.const_map
        -> (match M2.find op1 const_env.const_map with
            CInt op -> Some (CInt (op + c))
            | _ -> None
        )
    | Four op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (i * 4 ))
            | _ -> None
        )
    | Half op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (i / 2))
            | _ -> None
        )
    | Neg op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (-i ))
            | _ -> None
        )
    | FNeg op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CFloat i -> Some (CFloat (-. i ))
            | _ -> None
        )
    | FAbs op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CFloat i -> Some (CFloat (Pervasives.abs_float i ))
            | _ -> None
        )
    | FAdd (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x +. y))
    | _ -> None
        )
    | FSub (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x -. y))
    | _ -> None
        )
    | FMul (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x *. y))
    | _ -> None
        )
    | FDiv (op1, op2) when M2.mem op1 const_env.const_map && M2.mem op2 const_env.const_map
        -> (match M2.find op1 const_env.const_map, M2.find op2 const_env.const_map with
            CFloat x, CFloat y -> Some (CFloat (x /. y))
    | _ -> None
        )
    | Move op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CInt i -> Some (CInt (i ))
    | _ -> None
        )
    | FMove op when M2.mem op const_env.const_map
        -> (match M2.find op const_env.const_map with
            CFloat i -> Some (CFloat (i ))
    | _ -> None
        )

    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_cos"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.cos f))
        | _ -> None
    )
    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_sin"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.sin f))
        | _ -> None
    )
    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_sqrt"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.sqrt f))
        | _ -> None
    )
    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_atan"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.atan f))
        | _ -> None
    )
    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_floor"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CFloat ( Pervasives.floor f))
        | _ -> None
    )
    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_int_of_float"
    -> (match M2.find op const_env.const_map with
        CFloat f -> Some (CInt ( Pervasives.int_of_float f))
        | _ -> None
    )
    | CallDir (label, op_list1, [op]) when M2.mem op const_env.const_map && label = "min_caml_float_of_int"
    -> (match M2.find op const_env.const_map with
        CInt i -> Some (CFloat ( Pervasives.float_of_int i))
        | _ -> None
    )
    | CallDir (label, op_list1, op_list2)
    -> if List.mem label const_env.call_stack then
        None
    else
        (*external fun*)
        if not (StringMap.mem label env.fun_by_name) then None
    else(
        let _, const_env, env = const_fold env.tmp (StringMap.find label env.fun_by_name) env.fun_by_name
            (Some (M2.filter (fun op _ ->
                    List.mem op op_list1|| List.mem op op_list2
                )
                const_env.const_map
            )
            )
            (const_env.call_stack @ [label])
        in
            if env.calculable then
                let ret_assignments = env.ret_assignments
                in
                try
                    let any = IntSet.choose ret_assignments
                    in
                    let _, const = IntMap.find any const_env.const_commands
                    in
                    let same_value = IntSet.fold (fun command_id same_value ->
                            if not same_value then same_value
                            else
                                try
                                let _, c = IntMap.find command_id const_env.const_commands
                                in
                                    c = const
                                with Not_found -> false
                        )
                        ret_assignments
                        true
                    in
                    if same_value then Some const
                    else
                        None

                with Not_found -> None
            else
                None
    )

    | Add _
    | ShiftLeft _
    | ShiftRight _
    | Div _
    | Mul _
    | Sub _
    | Four _
    | Half _
    | Neg _
    | FNeg _
    | FAbs _
    | FAdd _
    | FSub _
    | FMul _
    | FDiv _
    | Move _
    | FMove _

    | Print _
    | FStore _
    | Store _
    | Addi _
    | Load _
    | FLoad _

    | MoveImm _
    | IntRead
    | FloatRead
    | IfEQ _
    | FIfEQ _
    | IfLT _
    | FIfLT _
    | CallCls _
    -> None

and
init_worklist const_env env =
    let const_env =
        IntMap.fold (fun command_id command const_env -> match command with
            Assignment (op, exp, _) ->(match get_const_exp const_env env exp with
                None -> const_env
                | Some const ->
                        let const_commands =
                            IntMap.add command_id (op, const) const_env.const_commands
                        in {const_env with
                            const_commands = const_commands
                        }
            )
            | Alias _
            | Branch _
            -> const_env
            | Entry (op, _) -> match const_env.args with
                None -> const_env
                | Some args_map -> try
                    let value = M2.find op args_map
                    in
                    {const_env with
                        const_commands = IntMap.add command_id (op, value) const_env.const_commands
                    }
                with Not_found -> const_env
        )
        env.command_map
        const_env
    in {const_env with
        worklist = const_env.const_commands
    }

and
find_const_commands_loop const_env use reach env =
    if IntMap.is_empty const_env.worklist then const_env
    else
        let const_env =
            let s, (x, value) = IntMap.choose const_env.worklist
            in
            let worklist = IntMap.remove s const_env.worklist
            in
                IntSet.fold (fun t const_env ->
                    let reachable = IntSet.fold (fun sibling_id reachable ->
                        reachable &&
                        try
                            let _, sibling_value =
                                IntMap.find sibling_id const_env.const_commands
                            in
                                sibling_value = value
                        with Not_found -> false
                    )
                    (M3.find (t, x) reach)
                    true
                    in
                    if reachable then
                        let use_in_t = try IntMap.find t const_env.use_const with Not_found -> M2.empty
                        in
                        let use_in_t = M2.add x value use_in_t
                        in
                        let const_env = {const_env with
                            use_const = IntMap.add t use_in_t const_env.use_const;
                            const_map = use_in_t;
                        }
                        in
                        match IntMap.find t env.command_map with
                            Assignment (op, exp, _) ->(match get_const_exp const_env env exp with
                                None -> const_env
                                | Some const ->
                                        let const_commands =
                                            IntMap.add t (op, const) const_env.const_commands
                                        in {const_env with
                                            const_commands = const_commands
                                        }
                            )
                            | Alias _
                            | Branch _
                            | Entry _
                            -> const_env
                    else
                        const_env
                )
                (try IntMap.find s use with Not_found -> IntSet.empty)
                {const_env with
                    worklist = worklist
                }
        in
            find_const_commands_loop const_env use reach env

and
find_const_commands use reach env arg_opt call_stack =
    let const_env = {
        const_map = M2.empty;
        const_commands = IntMap.empty;
        worklist = IntMap.empty;
        use_const = IntMap.empty;
        call_stack = call_stack;
        args = arg_opt;
    }
    in
    let const_env = init_worklist const_env env
    in
        find_const_commands_loop const_env use reach env

and
const_fold tmp {name = name; args = int_args; fargs = float_args; body = body; ret = ret_type; info = info} fun_by_name args_opt call_stack =
    (*fidn dest*)
    let dest = match ret_type with Type.Float _ -> Operand.Reg Reg.freg_ret | _ -> Operand.Reg Reg.reg_ret
    in
    (*entry block link to first block (id = 1) *)
    let graph = IntMap.empty |> IntMap.add 0 @@ IntSet.singleton 1
    in
    let env = {
        calculable = true;
        tail = true;
        id = 0;
        dest = dest;
        funname = name;
        int_params = int_args;
        float_params = float_args;
        graph = graph;
        last_blocks = [];
        block_map = IntMap.empty;
        tmp = tmp;
        command_map = IntMap.empty;
        ret_assignments = IntSet.empty;
        fun_by_name = fun_by_name;
    }
    in
    let entry_block_id = env.id
    in
    let env, entry_block = List.fold_right (fun arg (env, entry_block) ->
        let new_command = Entry (arg, env.id)
        in
        let env = env_new_command new_command env
        in
            env, new_command::entry_block

        )
        (int_args @ float_args)
        (env, [])
    in
    let env = env_new_block (entry_block, entry_block_id) env
    in
    let body, env = gen_graph env body
    in
    let def = find_def env
    in
    let kill = find_kill def env
    in
    let inset, _ = find_inout def kill env
    in
    let reach = find_reach inset env
    in
    let use = find_use reach env
    in
    let const_env = find_const_commands use reach env args_opt call_stack
    in
        body, const_env, env

let const_to_exp data info = function
    Unit -> data, Asm.Nop
    | CInt i ->
          if Pervasives.abs i < (1 lsl (Asm.imm_length - 1)) then
              data, Asm.MoveImm(Loc.Constant i)
          else
          let data, label =
            try
              (* すでに定数テーブルにあったら再利用 *)
              let (l, _) = List.find (fun (_, i') -> i = i') data.idata in
              data, fst l
            with Not_found ->
              let l = Id.genlabel info in
              {data with idata = (l, i) :: data.idata},
              fst l
          in
            data, Asm.Load(Asm.Absolute (Loc.Label label, None))
    | CFloat f ->
          let data, label =
            try
              (* すでに定数テーブルにあったら再利用 *)
              let (l, _) = List.find (fun (_, f') -> f = f') data.fdata in
              data, fst l
            with Not_found ->
              let l = Id.genlabel info  in
              {data with fdata = (l, f) :: data.fdata},
              fst l
          in
            data, Asm.FLoad(Asm.Absolute (Loc.Label label, None))
let rec convert_def_loop const_env data  = function
    | Ans (exp, id, info) when IntMap.mem id const_env.const_commands ->
            let _, const = IntMap.find id const_env.const_commands
            in
            let data, exp = const_to_exp data info const
            in
                data, Asm.Ans(exp, info)
    | Let ((op, op_typ), exp, id, body, info) when IntMap.mem id const_env.const_commands ->
            let _, const = IntMap.find id const_env.const_commands
            in
            let data, exp = const_to_exp data info const
            in
            let data, body = convert_def_loop const_env data body
            in
                data, Asm.Let((op, op_typ), exp, body, info)
    | Ans(exp, id, info) ->
            let data, exp = convert_def_loop_exp const_env data exp
            in
                data, Asm.Ans(exp, info)
    | Let ((op, op_typ), exp, id, body, info) ->
            let data, exp = convert_def_loop_exp const_env data exp
            in
            let data, body = convert_def_loop const_env data body
            in
                data, Asm.Let((op, op_typ), exp, body, info)
and
convert_def_loop_exp const_env data = function
    | Nop -> data, Asm.Nop
    | Int _ | Float _ -> failwith "wrong compiler flow. Int and float must be const folded before"
    | IntRead -> data, Asm.IntRead
    | FloatRead -> data, Asm.FloatRead
    | Add (op1, op2) -> data, Asm.Add (op1, op2)
    | ShiftLeft (op1, op2) -> data, Asm.ShiftLeft (op1, op2)
    | ShiftRight (op1, op2) -> data, Asm.ShiftRight (op1, op2)
    | Div (op1, op2) -> data, Asm.Div (op1, op2)
    | Mul (op1, op2) -> data, Asm.Mul (op1, op2)
    | Sub (op1, op2) -> data, Asm.Sub (op1, op2)
    | Addi (op1, loc) -> data, Asm.Addi (op1, loc)
    | Four op -> data, Asm.Four op
    | Half op -> data, Asm.Half op
    | Load addr -> data, Asm.Load (convert_def_loop_addr addr)
    | Store (op, add) -> data, Asm.Store (op, convert_def_loop_addr add)
    | Neg op -> data, Asm.Neg op
    | FNeg op -> data, Asm.FNeg op
    | FAbs op -> data, Asm.FAbs op
    | Print op -> data, Asm.Print op
    | FAdd (op1, op2) -> data, Asm.FAdd (op1, op2)
    | FSub (op1, op2) -> data, Asm.FSub (op1, op2)
    | FMul (op1, op2) -> data, Asm.FMul (op1, op2)
    | FDiv (op1, op2) -> data, Asm.FDiv (op1, op2)
    | FLoad addr -> data, Asm.FLoad (convert_def_loop_addr addr)
    | FStore (op, add) -> data, Asm.FStore (op, convert_def_loop_addr add)


    | MoveImm loc -> data, Asm.MoveImm loc
    | Move op -> data, Asm.Move op
    | FMove op -> data, Asm.FMove op

    | IfEQ (op1, op2, exp1, exp2) ->
            convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
                data, Asm.IfEQ (op1, op2, body1, body2)
            )
    | FIfEQ (op1, op2, exp1, exp2) ->
        convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
            data, Asm.FIfEQ (op1, op2, body1, body2)
        )
    | IfLT (op1, op2, exp1, exp2) ->
        convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
            data, Asm.IfLT (op1, op2, body1, body2)
        )
    | FIfLT (op1, op2, exp1, exp2) ->
        convert_def_loop_branch const_env data exp1 exp2 (fun data body1 body2 ->
            data, Asm.FIfLT (op1, op2, body1, body2)
        )
    | CallCls (op, op_list1, op_list2) -> data, Asm.CallCls (op, op_list1, op_list2)
    | CallDir (label, op_list1, op_list2) -> data, Asm.CallDir (label, op_list1, op_list2)
and
convert_def_loop_addr = function
    (*relative address from a reg*)
    Relative (t, loc) -> Asm.Relative(t, loc)
    (*(r1, s4, r2): relative address
     * of offset r2 * s4 from r1*)
    | Dynamic (op1, size, op2) -> Asm.Dynamic (op1, size, op2)
    | Absolute (loc, loc_opt) -> Asm.Absolute (loc, loc_opt)
and
convert_def_loop_branch const_env data exp1 exp2 f =
    let data, body1 = convert_def_loop const_env data exp1
    in
    let data, body2 = convert_def_loop const_env data exp2
    in
        f data body1 body2

let convert_def tmp fun_by_name data fundef =
    let body, const_env, env = const_fold tmp fundef fun_by_name None []
    in convert_def_loop const_env data body

let get_info = function
  | Ans (_, _, info)
  | Let (_, _, _, _, info) -> info

let generate tmp data fun_by_name body =
    let info = get_info body
    in
    let fundef =
        {name = "min_caml_start"; args = []; fargs = []; body = body; ret = Type.Unit info; info = info}
    in
        convert_def tmp fun_by_name data fundef

let gen_fundefs tmp fundefs =
    let fun_by_name = List.fold_left (fun map fundef -> StringMap.add (fundef.name) fundef map) StringMap.empty fundefs
    in
    fun_by_name, List.fold_right (fun fundef (data, ret) ->
        let data, converted_def =  convert_def tmp fun_by_name data fundef
        in
        let fundef = { Asm.name = fundef.name; args = fundef.args; fargs = fundef.fargs; body = converted_def; ret = fundef.ret ; info = fundef.info}
        in
            data, (fundef :: ret)
    )
    fundefs
    ({
        idata = [];
        fdata = [];
    }, [])

let f (fundefs, e) =
    let tmp = Operand.ID (Id.genid ("dfa_tmp", get_info e))
    in
    let fun_by_name, (data, fundefs) = gen_fundefs tmp fundefs
    in
    let data, e = generate tmp data fun_by_name  e
    in
        Asm.Prog(data.idata, data.fdata, fundefs, e)
