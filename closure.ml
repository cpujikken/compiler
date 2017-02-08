type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  | Unit of Info.t
  | CharRead of Info.t
  | Int of int * Info.t
  | Float of float * Info.t
  | Neg of Id.t * Info.t
  | Print of Id.t * Info.t
  | Four of Id.t * Info.t
  | Half of Id.t * Info.t
  | Add of Id.t * Id.t * Info.t
  | ShiftLeft of Id.t * Id.t * Info.t
  | ShiftRight of Id.t * Id.t * Info.t
  | Div of Id.t * Id.t * Info.t
  | Mul of Id.t * Id.t * Info.t
  | Sub of Id.t * Id.t * Info.t
  | FNeg of Id.t * Info.t
  | FAbs of Id.t * Info.t
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
  | Array of Id.t * Info.t
type fundef = { name : Id.l * Type.t;
		args : (Id.t * Type.t) list;
		formal_fv : (Id.t * Type.t) list;
        body : t;
        info: Info.t }
type prog = Prog of fundef list * t

let rec fv = function
  | Unit _
  | CharRead _
  | Int(_) | Float(_) | ExtArray(_) -> S.empty

  | Neg(x, info)
  | Print(x, info)
  | Four(x, info)
  | Half(x, info)
  | FNeg(x, info)
  | Array(x, info)
  | FAbs(x, info) -> S.singleton x

  | Add(x, y, info)
  | ShiftLeft(x, y, info)
  | ShiftRight(x, y, info)
  | Div(x, y, info)
  | Mul(x, y, info)
  | Sub(x, y, info) | FAdd(x, y, info) | FSub(x, y, info) | FMul(x, y, info) | FDiv(x, y, info) | Get(x, y, info) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2, info)| IfLE(x, y, e1, e2, info) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, info) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, info) -> S.singleton x
  | MakeCls((x, t), { entry = l; actual_fv = ys }, e, info) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys, info) -> S.of_list (x :: ys)
  | AppDir(_, xs, info) | Tuple(xs, info) -> S.of_list xs
  | LetTuple(xts, y, e, info) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z, info) -> S.of_list [x; y; z]

let toplevel : fundef list ref = ref []

(*
 * convert KNormal.t to Closure.t
 *)
let rec generate env known = function (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
  | KNormal.Unit info -> Unit info
  | KNormal.CharRead info -> CharRead info
  | KNormal.Int(i, info) -> Int(i, info)
  | KNormal.Float(d, info) -> Float(d, info)
  | KNormal.Neg(x, info) -> Neg(x, info)
  | KNormal.Print(x, info) -> Print(x, info)
  | KNormal.Four(x, info) -> Four(x, info)
  | KNormal.Half(x, info) -> Half(x, info)
  | KNormal.Add(x, y, info) -> Add(x, y, info)
  | KNormal.ShiftLeft(x, y, info) -> ShiftLeft(x, y, info)
  | KNormal.ShiftRight(x, y, info) -> ShiftRight(x, y, info)
  | KNormal.Div(x, y, info) -> Div(x, y, info)
  | KNormal.Array(x, t, info) -> Array(x, info)
  | KNormal.Mul(x, y, info) -> Mul(x, y, info)
  | KNormal.Sub(x, y, info) -> Sub(x, y, info)
  | KNormal.FNeg(x, info) -> FNeg(x, info)
  | KNormal.FAbs(x, info) -> FAbs(x, info)
  | KNormal.FAdd(x, y, info) -> FAdd(x, y, info)
  | KNormal.FSub(x, y, info) -> FSub(x, y, info)
  | KNormal.FMul(x, y, info) -> FMul(x, y, info)
  | KNormal.FDiv(x, y, info) -> FDiv(x, y, info)
  | KNormal.IfEq(x, y, e1, e2, info) -> IfEq(x, y, generate env known e1, generate env known e2, info)
  | KNormal.IfLE(x, y, e1, e2, info) -> IfLE(x, y, generate env known e1, generate env known e2, info)
  | KNormal.Let((x, t), e1, e2, info) -> Let((x, t), generate env known e1, generate (M.add x t env) known e2, info)
  | KNormal.Var(x, info) -> Var(x, info)
  | KNormal.LetRec({ KNormal.name = (fun_name, fun_type); KNormal.args = param_list; KNormal.body = fun_body }, let_body, info) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
    (* 関数定義let rec fun_name y1 ... yn = fun_body in let_bodyの場合は、
    fun_nameに自由変数がない(closureを介さずdirectに呼び出せる)
    と仮定し、knownに追加してfun_bodyをクロージャ変換してみる *)

    (*backup top level*)
    let toplevel_backup = !toplevel in

    (*add function definition (function type) to current enviroment*)
    let env' = M.add fun_name fun_type env in

    (*add function name to known-free variable list*)
    let known' = S.add fun_name known in

    (*add parameter list (by name with type) to current env
    * and transform function's expression
    * *)
    let fun_body' = generate (M.add_list param_list env') known' fun_body in
    (* 本当に自由変数がなかったか、変換結果fun_body'を確認する *)
    (* 注意: fun_body'にfun_name自身が変数として出現する場合はclosureが必要!
     (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)

    (*get list of variables used in fun_body but not parameter
     * external_variables might include function name
     *
     * This is just a hack to known' variable.
     * If there is no external (free) variable, there also no need of closure.
     * Keep function name into known' list to acknowledge of application to use
     * closure
     *
     * Otherwise, Remove function name from known' list
    * *)
    let external_variables = S.diff (fv fun_body') (S.of_list (List.map fst param_list)) in

    let known', fun_body' =
        if
            S.is_empty external_variables
        then
            (*keep function name in known' list to aknowledge that there is no need of closure*)
            known', fun_body'
        else
            (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
            (
                (*Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements external_variables)) (Id.to_string fun_name);*)
                 Format.eprintf "function %s cannot be directly applied in fact@." (Id.to_string fun_name);
                 toplevel := toplevel_backup;

                 (*reevaluate function's expression but without function name.
                  * There is no need of closure for this fun
                  * *)
                 let fun_body' = generate (M.add_list param_list env') known fun_body
                 in
                 known, fun_body'
             )
    in
    (*re-calculate extern variables list*)
    let external_variables =
        (*convert to list*)
        S.elements
            (*free variable in this letrec*)
            (S.diff
                (*free variable in function's expression without func name*)
                (fv fun_body')
                (*paramter + func name set*)
                (S.add
                    fun_name
                    (*all parameter set*)
                    (S.of_list
                        (*all parameter list*)
                        (List.map fst param_list)
                    )
                )
            )(* 自由変数のリスト *)
    in
    let external_variable_with_type =
        List.map
            (fun z ->
                (*return a pair of its name and type*)
                (z, M.find z env')
                )
            (*for all free variables*)
            external_variables
    in (* ここで自由変数zの型を引くために引数envが必要 *)
  (*Printf.printf "%s -> %d\n" (fst fun_name) (List.length param_list);*)
        toplevel := { name = (Id.to_L fun_name, fun_type); args = param_list; formal_fv = external_variable_with_type; body = fun_body'; info = info } :: !toplevel; (* トップレベル関数を追加 *)
        (*parse let_body*)
        let let_body' = generate env' known' let_body
        in
            (*if function is used after that*)
            if S.mem fun_name (fv let_body') then (* fun_nameが変数としてlet_body'に出現するか *)
                (* return a closure call*)
                MakeCls((fun_name, fun_type), { entry = Id.to_L fun_name; actual_fv = external_variables }, let_body', info) (* 出現していたら削除しない *)
            else
                (*just return let_body if function is not used*)
                (
                    (*Format.eprintf "eliminating closure(s) %s@." (Id.to_string fun_name);*)
                let_body') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys, info) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      (*Format.eprintf "directly applying %s@." (Id.to_string x);*)
      AppDir(Id.to_L x, ys, info)
  | KNormal.App(f, xs, info) -> AppCls(f, xs, info)
  | KNormal.Tuple(xs, info) -> Tuple(xs, info)
  | KNormal.LetTuple(xts, y, e, info) -> LetTuple(xts, y, generate (M.add_list xts env) known e, info)
  | KNormal.Get(x, y, info) -> Get(x, y, info)
  | KNormal.Put(x, y, z, info) -> Put(x, y, z, info)
  | KNormal.ExtArray(x, info) -> ExtArray(Id.to_L(x), info)
  | KNormal.ExtFunApp(x, ys, info) -> AppDir(("min_caml_" ^ (fst x), snd x), ys, info)

let get_info = function
  | Unit info
  | CharRead info
  | Int (_, info)
  | Float(_, info)
  | Neg(_, info)
  | Print(_, info)
  | Four(_, info)
  | Half(_, info)
  | Add (_, _, info)
  | Sub (_, _, info)
  | FNeg(_, info)
  | FAbs(_, info)
  | FAdd (_, _, info)
  | ShiftLeft (_, _, info)
  | ShiftRight (_, _, info)
  | Div (_, _, info)
  | Mul (_, _, info)
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
  | Array(_, info)
  -> info

let to_string x =
    let rec to_string_pre pre k =
        let npre = pre ^ Common.indent
        in
        match k with
        | Unit info -> Printf.sprintf "%sUnit\t %s" pre (Info.to_string info)
        | CharRead info -> Printf.sprintf "%sCharRead\t %s" pre (Info.to_string info)
        | Int(i, info) -> Printf.sprintf "%sINT %d\t %s" pre i (Info.to_string info)
        | Float( f , info)-> Printf.sprintf "%sFLOAT %f\t %s" pre f (Info.to_string info)
        | Neg(t, info) -> Printf.sprintf "%sNEG\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Print(t, info) -> Printf.sprintf "%sPrint\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Four(t, info) -> Printf.sprintf "%sFOUR\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Half(t, info) -> Printf.sprintf "%sHALF\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Add (x, y, info) -> Printf.sprintf "%sADD\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | ShiftLeft (x, y, info) -> Printf.sprintf "%sSHIFT_LEFT\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | ShiftRight (x, y, info) -> Printf.sprintf "%sSHIFT_RIGHT\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Div (x, y, info) -> Printf.sprintf "%sDIV\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Mul (x, y, info) -> Printf.sprintf "%sMUL\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Sub (x, y, info) -> Printf.sprintf "%sSUB\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FNeg( t , info)-> Printf.sprintf "%sFNEG\t %s\n%s" pre  (Info.to_string info) (Id.to_string_pre npre t)
        | FAbs( t , info)-> Printf.sprintf "%sFABS\t %s\n%s" pre  (Info.to_string info) (Id.to_string_pre npre t)
        | Array( t , info)-> Printf.sprintf "%sMAKE_ARRAY\t %s\n%s" pre  (Info.to_string info) (Id.to_string_pre npre t)
        | FAdd (x, y, info) -> Printf.sprintf "%sFADD\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FSub (x, y, info) -> Printf.sprintf "%sFSUB\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FMul (x, y, info) -> Printf.sprintf "%sFMUL\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FDiv (x, y, info) -> Printf.sprintf "%sFDIV\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | IfEq (idx, idy, z, u, info) -> Printf.sprintf "%sIF_EQ\t %s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre idx) (Id.to_string_pre npre idy) (to_string_pre npre z) (to_string_pre npre u)
        | IfLE (idx, idy, z, u, info) -> Printf.sprintf "%sIF_LE\t %s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre idx) (Id.to_string_pre npre idy) (to_string_pre npre z) (to_string_pre npre u)
        | Let ((id, typ), x, y, info) -> Printf.sprintf "%sLET\t %s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id) (Type.to_string_pre npre typ) (to_string_pre npre x) (to_string_pre npre y)
        | Var( id , info)-> Printf.sprintf "%sVAR\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id)
        | MakeCls((id, typ), closure, exp, info)
        -> Printf.sprintf "%sMAKE_CLS\t %s" pre (Info.to_string info)

        | AppCls (x, xlist, info) -> Printf.sprintf "%sAPPCLS\t %s\n%s%s" pre (Info.to_string info) (Id.to_string_pre npre x) (to_string_idlist npre xlist)
        | AppDir (x, xlist, info) -> Printf.sprintf "%sAPPDIR\t %s\n%s%s" pre (Info.to_string info) (Id.to_string_pre npre x) (to_string_idlist npre xlist)
        | Tuple(idlist, info) -> Printf.sprintf "%sTUPLE\t %s%s" pre (Info.to_string info) (to_string_idlist npre idlist)
        | LetTuple (idtype_list, id, x, info) -> Printf.sprintf "%sLET_TUPLE\t %s\t%s\n%s\n%s" pre (Info.to_string info) (to_string_idtype_list npre idtype_list) (Id.to_string_pre npre id) (to_string_pre npre x)
        | Get (x, y, info) -> Printf.sprintf "%sGET\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Put (x, y, z, info) -> Printf.sprintf "%sPUT\t %s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y) (Id.to_string_pre npre z)
        | ExtArray(x, info) -> Printf.sprintf "%sEXT_ARRAY\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x)
    and to_string_idlist pre = function
        | [] -> ""
        | id :: idlist -> Printf.sprintf "\n%s%s" (Id.to_string_pre pre id) (to_string_idlist pre idlist)
    and to_string_args pre = function
        | [] -> ""
        | (id, typ) :: args -> Printf.sprintf "\n%s\n%s\t%s" (Id.to_string_pre pre id) (Type.to_string_pre pre typ) (to_string_args pre args)
    and to_string_idtype_list pre x = to_string_args pre x
    in
    to_string_pre "" x

let print_all out (Prog(fundefs, body)) =
    Printf.fprintf out "body:\n";
    Printf.fprintf out "%s\n" @@ to_string body;
    List.iter (fun fundef -> Printf.fprintf out "closure %s\n" @@ Id.to_string @@ fst fundef.name;
    Printf.fprintf out "int args:\n";
    List.iter (fun (id, typ) -> Printf.fprintf out "%s\nof type\n%s\n" (Id.to_string id) @@ Type.to_string typ) fundef.args;
    Printf.fprintf out "float args:\n";
    List.iter (fun (id, typ) -> Printf.fprintf out "%s\nof type\n%s\n" (Id.to_string id) @@ Type.to_string typ) fundef.formal_fv;
    Printf.fprintf out "closre body: \n%s\n" @@ to_string fundef.body;
    ) fundefs

let f out e =
  toplevel := [];
  let e' = generate M.empty S.empty e in
  let prog = Prog(List.rev !toplevel, e')
  in
      print_all out prog;
      prog
