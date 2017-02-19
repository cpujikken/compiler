(* give names to intermediate values (K-normalization) *)

type t = (* K正規化後の式 (caml2html: knormal_t) *)
  | Unit of Info.t
  | Int of int * Info.t
  | Float of float * Info.t
  | Neg of Id.t * Info.t
  | Add of Id.t * Id.t * Info.t
  | Sub of Id.t * Id.t * Info.t
  | FNeg of Id.t * Info.t
  | FAdd of Id.t * Id.t * Info.t
  | FSub of Id.t * Id.t * Info.t
  | FMul of Id.t * Id.t * Info.t
  | FDiv of Id.t * Id.t * Info.t
  | IfEq of Id.t * Id.t * t * t * Info.t (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t * Info.t (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t * Info.t
  | Var of Id.t * Info.t
  | LetRec of fundef * t * Info.t
  | App of Id.t * Id.t list * Info.t
  | Tuple of Id.t list * Info.t
  | LetTuple of (Id.t * Type.t) list * Id.t * t * Info.t
  | Get of Id.t * Id.t * Info.t
  | Put of Id.t * Id.t * Id.t * Info.t
  | ExtArray of Id.t * Info.t
  | Four of Id.t * Info.t
  | Addi of Id.t * int * Info.t
  | Half of Id.t * Info.t
  | ExtFunApp of Id.t * Id.t list * Info.t
  | FAbs of Id.t * Info.t
  | ShiftLeft of Id.t * Id.t * Info.t
  | ShiftRight of Id.t * Id.t * Info.t
  | CharRead of Info.t
  | Print of Id.t * Info.t
  | Mul of Id.t * Id.t * Info.t
  | Div of Id.t * Id.t * Info.t
  | Array of Id.t * Type.t * Info.t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let to_string x =
    let rec to_string_pre pre k =
        let npre = pre ^ Common.indent
        in
        match k with
        | Unit info -> Printf.sprintf "%sUnit\t %s" pre (Info.to_string info)
        | CharRead info -> Printf.sprintf "%sCharRead\t %s" pre (Info.to_string info)
        | FAbs(t, info) -> Printf.sprintf "%sFAbs\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Print(t, info) -> Printf.sprintf "%sPrint\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Int(i, info) -> Printf.sprintf "%sINT %d\t %s" pre i (Info.to_string info)
        | Float( f , info)-> Printf.sprintf "%sFLOAT %f\t %s" pre f (Info.to_string info)
        | Neg(t, info) -> Printf.sprintf "%sNEG\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Four(t, info) -> Printf.sprintf "%sFOUR\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Addi(t, i, info) -> Printf.sprintf "%sADDI\t %s\n%s\n%s%d" pre (Info.to_string info) (Id.to_string_pre npre t) npre i
        | Half(t, info) -> Printf.sprintf "%sHALF\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre t)
        | Add (x, y, info) -> Printf.sprintf "%sADD\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Sub (x, y, info) -> Printf.sprintf "%sSUB\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FNeg( t , info)-> Printf.sprintf "%sFNEG\t %s\n%s" pre  (Info.to_string info) (Id.to_string_pre npre t)
        | FAdd (x, y, info) -> Printf.sprintf "%sFADD\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Mul (x, y, info) -> Printf.sprintf "%sMul\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Div (x, y, info) -> Printf.sprintf "%sDiv\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | ShiftLeft (x, y, info) -> Printf.sprintf "%sShiftLeft\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | ShiftRight (x, y, info) -> Printf.sprintf "%sShiftRight\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FSub (x, y, info) -> Printf.sprintf "%sFSUB\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FMul (x, y, info) -> Printf.sprintf "%sFMUL\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | FDiv (x, y, info) -> Printf.sprintf "%sFDIV\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | IfEq (idx, idy, z, u, info) -> Printf.sprintf "%sIF_EQ\t %s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre idx) (Id.to_string_pre npre idy) (to_string_pre npre z) (to_string_pre npre u)
        | IfLE (idx, idy, z, u, info) -> Printf.sprintf "%sIF_LE\t %s\n%s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre idx) (Id.to_string_pre npre idy) (to_string_pre npre z) (to_string_pre npre u)
        | Let ((id, typ), x, y, info) -> Printf.sprintf "%sLET\t %s\n%s\n%s\n%s=\n%s\n%sIN\n%s" pre (Info.to_string info) (Id.to_string_pre npre id) (Type.to_string_pre npre typ) pre (to_string_pre npre x) pre (to_string_pre npre y)
        | Var( id , info)-> Printf.sprintf "%sVAR\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre id)
        | LetRec (f, t, info) -> Printf.sprintf "%sLET_REC\t %s\n%s\n%s" pre (Info.to_string info) (to_string_let_rec npre f) (to_string_pre npre t)
        | App (x, xlist, info) -> Printf.sprintf "%sAPP\t %s\n%s%s" pre (Info.to_string info) (Id.to_string_pre npre x) (to_string_idlist npre xlist)
        | Tuple(idlist, info) -> Printf.sprintf "%sTUPLE\t %s%s" pre (Info.to_string info) (to_string_idlist npre idlist)
        | LetTuple (idtype_list, id, x, info) -> Printf.sprintf "%sLET_TUPLE\t %s\t%s\n%s\n%s" pre (Info.to_string info) (to_string_idtype_list npre idtype_list) (Id.to_string_pre npre id) (to_string_pre npre x)
        | Get (x, y, info) -> Printf.sprintf "%sGET\t %s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y)
        | Put (x, y, z, info) -> Printf.sprintf "%sPUT\t %s\n%s\n%s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x) (Id.to_string_pre npre y) (Id.to_string_pre npre z)
        | ExtArray(x, info) -> Printf.sprintf "%sEXT_ARRAY\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x)
        | Array(x, typ, info) -> Printf.sprintf "%sARRAY\t %s\n%s" pre (Info.to_string info) (Id.to_string_pre npre x)
        | ExtFunApp (x, xlist, info) -> Printf.sprintf "%sEXT_FUN_APP\t %s\n%s%s" pre (Info.to_string info) (Id.to_string_pre npre x) (to_string_idlist npre xlist)
    and to_string_idlist pre = function
        | [] -> ""
        | id :: idlist -> Printf.sprintf "\n%s%s" (Id.to_string_pre pre id) (to_string_idlist pre idlist)
    and to_string_let_rec pre f =
        let npre = pre ^ " "
        in
        let nid, ntype = f.name
        in
        Printf.sprintf "%sNAME\n%s\n%sTYPE\n%s\n%sARG%s\n%sBODY\n%s" pre (Id.to_string_pre npre nid) pre (Type.to_string_pre npre ntype) pre (to_string_args npre f.args) pre (to_string_pre npre f.body)
    and to_string_args pre = function
        | [] -> ""
        | (id, typ) :: args -> Printf.sprintf "\n%s\n%s\t%s" (Id.to_string_pre pre id) (Type.to_string_pre pre typ) (to_string_args pre args)
    and to_string_idtype_list pre x = to_string_args pre x
    in
    to_string_pre "" x
let print_all out exp = Printf.fprintf out "%s\n\n" @@ to_string exp

let rec fv = function (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
  | Unit (_) | Int(_, _) | Float(_, _) | ExtArray(_, _)
  | CharRead _
  -> S.empty
  | Neg(x, _) | FNeg(x, _)
  | Four(x, _) | Half(x, _) | Addi(x, _, _)
  | FAbs(x, _)
  | Print(x, _)
  | Array(x, _, _)
  -> S.singleton x

  | Add(x, y, _) | Sub(x, y, _) | FAdd(x, y, _) | FSub(x, y, _) | FMul(x, y, _) | FDiv(x, y, _) | Get(x, y, _)
  | Mul(x, y, _)
  | Div(x, y, _)
  | ShiftLeft(x, y, _)
  | ShiftRight(x, y, _)
  -> S.of_list [x; y]

  | IfEq(x, y, e1, e2, _) | IfLE(x, y, e1, e2, _) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, t), e1, e2, _) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x, _) -> S.singleton x
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2, _) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys, _) -> S.of_list (x :: ys)
  | Tuple(xs, _) | ExtFunApp(_, xs, _) -> S.of_list xs
  | Put(x, y, z, _) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e, _) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))

let insert_let (exp, typ) body_fun info = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
  match exp with
  | Var(var, _) -> body_fun var
  | _ ->
      let temp_var = Id.gentmp typ info in
      let exp', typ' = body_fun temp_var in
      Let((temp_var, typ), exp, exp', info), typ'

let rec generate env = function (* K正規化ルーチン本体 (caml2html: knormal_g) *)
  | Syntax.Unit info -> Unit info, Type.Unit info
  | Syntax.CharRead info -> CharRead info, Type.Int info
  | Syntax.Array(e, typ, info) ->
          insert_let (generate env e) (fun x -> Array(x, typ, info), Type.Array(typ, info)) info
  | Syntax.CreateArray(e1, e2, info) ->
      insert_let (generate env e1)
    (fun x ->
      let _, t2 as g_e2 = generate env e2 in
      insert_let g_e2
        (fun y ->
          let l =
        match t2 with
        | Type.Float info -> "create_float_array", info
        | x -> "create_int_array", (Type.get_info x) in
          ExtFunApp(l, [x; y], info), Type.Array(t2, info)) info) info
  | Syntax.Bool(b, info) -> Int((if b then 1 else 0), info), Type.Int info (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i, info) -> Int(i, info), Type.Int info
  | Syntax.Float(d, info) -> Float(d, info), Type.Float info
  | Syntax.Not(e, info) -> generate env (Syntax.If(e, Syntax.Bool(false, info), Syntax.Bool(true, info), info))
  | Syntax.Four (e, info) ->
          insert_let (generate env e) (fun x -> Four(x, info), Type.Int info) info
  | Syntax.FAbs (e, info) ->
          insert_let (generate env e) (fun x -> FAbs(x, info), Type.Float info) info
  | Syntax.Print (e, info) ->
          insert_let (generate env e) (fun x -> Print(x, info), Type.Unit info) info
  | Syntax.Half (e, info) ->
          insert_let (generate env e) (fun x -> Half(x, info), Type.Int info) info
  | Syntax.Neg(e, info) ->
      insert_let (generate env e)
	(fun x -> Neg(x, info), Type.Int info) info
  | Syntax.Add(e1, Syntax.Int(i, _), info) when Pervasives.abs i < Common.addi_imm_limit -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let
        (generate env e1)
        (fun x -> Addi(x, i, info), Type.Int info)
        info
  | Syntax.Add(Syntax.Int(i, _), e1, info) when Pervasives.abs i < Common.addi_imm_limit -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let
        (generate env e1)
        (fun x -> Addi(x, i, info), Type.Int info)
        info
  | Syntax.Add(e1, e2, info) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let
        (generate env e1)
        (fun x -> insert_let (generate env e2)
        (fun y -> Add(x, y, info), Type.Int info) info) info
  | Syntax.Mul(e1, Syntax.Int(i, _), info) when i = 4
  ->
      insert_let
        (generate env e1)
        (fun x -> Four (x, info), Type.Int info)
        info
  | Syntax.Mul(Syntax.Int(i, _), e1, info) when i = 4
  ->
      insert_let
        (generate env e1)
        (fun x -> Four (x, info), Type.Int info)
        info
  | Syntax.Mul(e1, e2, info) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let
        (generate env e1)
        (fun x -> insert_let (generate env e2)
        (fun y -> Mul(x, y, info), Type.Int info) info) info
  | Syntax.Div(e, Syntax.Int(i, _), info) when i = 2 -> (* 足し算のK正規化 (caml2html: knormal_add) *)
        insert_let (generate env e) (fun x -> Half(x, info), Type.Int info) info
  | Syntax.Div(e1, e2, info) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> Div(x, y, info), Type.Int info) info) info
  | Syntax.ShiftLeft(e1, e2, info) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> ShiftLeft(x, y, info), Type.Int info) info) info
  | Syntax.ShiftRight(e1, e2, info) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> ShiftRight(x, y, info), Type.Int info) info) info
  | Syntax.Sub(e1, Syntax.Int(i, _), info) when Pervasives.abs i < Common.addi_imm_limit -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let
        (generate env e1)
        (fun x -> Addi(x, -i, info), Type.Int info)
        info
  | Syntax.Sub(e1, e2, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> Sub(x, y, info), Type.Int info) info) info
  | Syntax.FNeg(e, info) ->
      insert_let (generate env e)
	(fun x -> FNeg(x, info), Type.Float info) info
  | Syntax.FAdd(e1, e2, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> FAdd(x, y, info), Type.Float info) info) info
  | Syntax.FSub(e1, e2, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> FSub(x, y, info), Type.Float info) info) info
  | Syntax.FMul(e1, e2, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> FMul(x, y, info), Type.Float info) info) info
  | Syntax.FDiv(e1, e2, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> FDiv(x, y, info), Type.Float info) info) info
  | Syntax.Eq (_, _, info) | Syntax.LT (_, _, info) as cmp ->
      generate env (Syntax.If(cmp, Syntax.Bool(true, info), Syntax.Bool(false, info), info))
  | Syntax.If(Syntax.Not(e1, _), e2, e3, info) -> generate env (Syntax.If(e1, e3, e2, info)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If(Syntax.Eq(e1, e2, _), e3, e4, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y ->
	      let e3', t3 = generate env e3 in
	      let e4', t4 = generate env e4 in
	      IfEq(x, y, e3', e4', info), t3) info) info
  | Syntax.If(Syntax.LT(e1, e2, _), e3, e4, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y ->
	      let e3', t3 = generate env e3 in
	      let e4', t4 = generate env e4 in
	      IfLE(x, y, e3', e4', info), t3) info) info
  | Syntax.If(e1, e2, e3, info) -> generate env (Syntax.If(Syntax.Eq(e1, Syntax.Bool(false, info), info), e3, e2, info)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2, info) ->
      let e1', t1 = generate env e1 in
      let e2', t2 = generate (M.add x t env) e2 in
      Let((x, t), e1', e2', info), t2
  | Syntax.Var(x, info) when M.mem x env -> Var(x, info), M.find x env
  | Syntax.Var(x, info) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_, _) as t -> ExtArray(x, info), t
      | typ -> ExtArray(x, info), typ
              (*Info.exit info (Printf.sprintf "external variable %s has type\n%s\nbut type array is expected" (Id.to_string x) (Type.to_string typ))*)
              )
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2, info) ->
      let env' = M.add x t env in
      let e2', t2 = generate env' e2 in
      let e1', t1 = generate (M.add_list yts env') e1 in
      LetRec({ name = (x, t); args = yts; body = e1' }, e2', info), t2
  | Syntax.App(Syntax.Var(f, _) as f_with_info, e2s, info) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t, _) ->
	  let rec bind xs = function (* "xs" are identifiers for the arguments *)
	    | [] -> ExtFunApp(f, xs, info), t
	    | e2 :: e2s ->
		insert_let (generate env e2)
		  (fun x -> bind (xs @ [x]) e2s) info in
	  bind [] e2s (* left-to-right evaluation *)
      | _ -> Info.exit info (Printf.sprintf "%s is not a function" (Syntax.to_string f_with_info))
      )
  | Syntax.App(e1, e2s, info) ->
      (match generate env e1 with
      | _, Type.Fun(_, t, _) as g_e1 ->
	  insert_let g_e1
	    (fun f ->
	      let rec bind xs = function (* "xs" are identifiers for the arguments *)
		| [] -> App(f, xs, info), t
		| e2 :: e2s ->
		    insert_let (generate env e2)
		      (fun x -> bind (xs @ [x]) e2s) info in
	      bind [] e2s) info (* left-to-right evaluation *)
      | _ -> Info.exit info (Printf.sprintf "%s is not a function" (Syntax.to_string e1)))
  | Syntax.Tuple(es, info) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
	| [] -> Tuple(xs, info), Type.Tuple(ts, info)
	| e :: es ->
	    let _, t as g_e = generate env e in
	    insert_let g_e
	      (fun x -> bind (xs @ [x]) (ts @ [t]) es) info in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2, info) ->
      insert_let (generate env e1)
	(fun y ->
	  let e2', t2 = generate (M.add_list xts env) e2 in
	  LetTuple(xts, y, e2', info), t2) info
  | Syntax.Get(e1, e2, info) ->
      (match generate env e1 with
      |	_, Type.Array(t, info) as g_e1 ->
	  insert_let g_e1
	    (fun x -> insert_let (generate env e2)
		(fun y -> Get(x, y, info), t) info) info
      | _ -> Info.exit info (Printf.sprintf "cannot get element from non-array type (%s)" (Syntax.to_string e1)))
  | Syntax.Put(e1, e2, e3, info) ->
      insert_let (generate env e1)
	(fun x -> insert_let (generate env e2)
	    (fun y -> insert_let (generate env e3)
		(fun z -> Put(x, y, z, info), Type.Unit info) info) info) info

let f out e =
    let ret = fst (generate M.empty e)
    in
    print_all out ret;
    ret
let get_constructor_code = function
  | Unit _ -> 0
  | Int _ ->  1
  | Float _ -> 2
  | Neg _ -> 3
  | Add _ -> 4
  | Sub _ -> 5
  | FNeg _ -> 6
  | FAdd _ -> 7
  | FSub _ -> 8
  | FMul _ -> 9
  | FDiv _ -> 10
  | IfEq _ -> 11
  | IfLE _ -> 12
  | Let _ -> 13
  | Var _ -> 14
  | LetRec _ -> 15
  | App _ -> 16
  | Tuple _ -> 17
  | LetTuple _ -> 18
  | Get _ -> 19
  | Put _ -> 20
  | ExtArray _ -> 21
  | ExtFunApp _ -> 22
  | Four _ -> 23
  | Half _ -> 24
  | FAbs _ -> 25
  | Print _ -> 26
  | ShiftLeft _ -> 27
  | ShiftRight _ -> 28
  | Mul _ -> 29
  | Div _ -> 30
  | CharRead _ -> 31
  | Array _ -> 32
  | Addi _ -> 33


let id_type_compare (id1, type1) (id2, type2) =
    let cmp = Id.compare id1 id2 in
    if cmp != 0 then cmp else
    Type.compare type1 type2

(*expression compare*)
let rec compare x y = match x, y with
    | Unit _, Unit _
    | CharRead _, CharRead _
        -> 0
    | Int(a, _), Int(b, _) -> Pervasives.compare a b
    | Float(a, _), Float(b, _) -> Pervasives.compare a b

    | Neg (a, _), Neg(b, _)
    | FNeg (a, _), FNeg(b, _)
    -> Id.compare b a

    | Var (a, _), Var(b, _)
    | ExtArray(a, _), ExtArray(b, _)
    | Print(a, _), Print(b, _)
    | FAbs(a, _), FAbs(b, _)
    | Four(a, _), Four(b, _)
    | Half(a, _), Half(b, _)
    -> Id.compare a b

    | Add (a1, b1, _), Add (a2, b2, _)
    | Sub (a1, b1, _), Sub (a2, b2, _)
    | FAdd(a1, b1, _), FAdd (a2, b2, _)
    | FSub(a1, b1, _), FSub (a2, b2, _)
    | FMul(a1, b1, _), FMul (a2, b2, _)
    | FDiv(a1, b1, _), FDiv (a2, b2, _)
    | Get(a1, b1, _), Get(a2, b2, _)
    | ShiftLeft(a1, b1, _), ShiftLeft(a2, b2, _)
    | ShiftRight(a1, b1, _), ShiftRight(a2, b2, _)
    | Div(a1, b1, _), Div(a2, b2, _)
    | Mul(a1, b1, _), Mul(a2, b2, _)
    -> Common.list_compare [a1; b1] [a2; b2] Id.compare

    | Put(a1, b1, c1, _), Put(a2, b2, c2, _)
    -> Common.list_compare [a1; b1; c1]  [a2; b2; c2] Id.compare

    | IfEq(a1, b1, c1, d1, _), IfEq(a2, b2, c2, d2, _)
    | IfLE(a1, b1, c1, d1, _), IfLE(a2, b2, c2, d2, _)
    -> let cmp = Common.list_compare [a1; b1]  [a2; b2] Id.compare in
    if cmp = 0 then Common.list_compare [c1; d1]  [c2; d2] compare
    else cmp

    |App(id1, idlist1, _), App(id2, idlist2, _)
    |ExtFunApp(id1, idlist1, _), ExtFunApp(id2, idlist2, _)
    -> Common.list_compare (id1::idlist1)  (id2::idlist2) Id.compare

    | Let((id1, type1), e1, ee1, _), Let((id2, type2), e2, ee2, _)
    -> let cmp1 = Id.compare id1 id2 in
    if cmp1 != 0 then
      cmp1
    else
      let cmp2 = Type.compare type1 type2 in
      if cmp2 != 0 then
          cmp2
      else
          Common.list_compare [e1; ee1]  [e2; ee2] compare

    | Tuple(idlist1, _), Tuple(idlist2, _) -> Common.list_compare idlist1  idlist2 Id.compare

    | LetRec(x, e1, _), LetRec(y, e2, _)
    ->
        let cmp1 = Common.list_compare ((x.name)::(x.args)) ((y.name)::(y.args)) id_type_compare in
        if cmp1 != 0 then cmp1 else
            Common.list_compare [x.body; e1] [y.body; e2] compare

    |LetTuple(idtypelist1, id1, e1, _), LetTuple(idtypelist2, id2, e2, _)
    ->
        let cmp = Common.list_compare idtypelist1 idtypelist2 id_type_compare in
        if cmp != 0 then cmp else
            let cmp1 = Id.compare id1 id2 in
            if cmp1 != 0 then cmp1 else
                compare e1 e2

    | Addi(a1, i1, _), Addi(a2, i2, _)
    ->
      let t = Id.compare a1 a2
      in
      if t = 0 then Pervasives.compare i1 i2
      else
        t
    | _, _ ->
            let code_x = get_constructor_code x
            in
            let code_y = get_constructor_code y
            in
            if code_x = code_y then
                failwith "equivalent KNormal.t construct code auto comparison found. Please check KNormal.compare"
            else
                Pervasives.compare code_x code_y

