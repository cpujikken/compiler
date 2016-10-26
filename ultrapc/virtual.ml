(* translation into assembly with infinite number of virtual registers *)

open Asm
open Reg

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)
let idata = ref [] (*list of big int value - bigger than 16bit*)

(*classify float, unit type and others*)
let classify id_type_list ini addf addi =
  List.fold_left
    (
        fun current (x, typ) ->
            match typ with
            (*skip if current type is unit*)
              | Type.Unit info -> current
              (*append float to current list*)
              | Type.Float info -> addf current x
              (*default append: int type, ..etc*)
              | _ -> addi current x typ
    )
    ini
    id_type_list

    (*separate int, float, unit types*)
let separate id_type_list =
  classify
    id_type_list
    ([], [])
    (fun (ints, floats) x -> (ints, floats @ [ID x]))
    (fun (ints, floats) x _ -> (ints @ [ID x], floats))

let expand id_type_list init addf addi =
  classify
    id_type_list
    init
    (fun (offset, acc) x ->
      (offset + float_size, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + int_size, addi x t offset acc))

let rec generate env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit info -> Ans(Nop, info)
  (*int*)
  | Closure.Int(i, info) ->
      if Pervasives.abs i < (1 lsl 15) then
          Ans(Addi(reg_zero, Constant i), info)
      else
      let l =
        try
          (* すでに定数テーブルにあったら再利用 *)
          let (l, _) = List.find (fun (_, i') -> i = i') !idata in
          fst l
        with Not_found ->
          let l = Id.genlabel info in
          idata := (l, i) :: !idata;
          fst l
      in
        Ans(Load(Absolute (Label l, None)), info)
        (*floating point*)
  | Closure.Float(d, info) ->
      let l =
        try
          (* すでに定数テーブルにあったら再利用 *)
          let (l, _) = List.find (fun (_, d') -> d = d') !data in
          fst l
        with Not_found ->
          let l = Id.genlabel info  in
          data := (l, d) :: !data;
          fst l
      in
        Ans(FLoad(Absolute (Label l, None)), info)
        (*negative*)
  | Closure.Neg(x, info) ->
          Ans(Sub(reg_zero, ID x), info)
  | Closure.Add(x, y, info) ->
          Ans(Add(ID x, ID y), info)
  | Closure.Sub(x, y, info) ->
          Ans(Sub(ID x, ID y), info)
  | Closure.FNeg(x, info) ->
          Ans(FSub(reg_zero, ID x), info)
  | Closure.FAdd(x, y, info) ->
          Ans(FAdd(ID x, ID y), info)
  | Closure.FSub(x, y, info) ->
          Ans(FSub(ID x, ID y), info)
  | Closure.FMul(x, y, info) ->
          Ans(FMul(ID x, ID y), info)
  | Closure.FDiv(x, y, info) ->
          Ans(FDiv(ID x, ID y), info)
  | Closure.IfEq(x, y, e1, e2, info) ->
      (match M.find x env with
      | Type.Bool _ | Type.Int _ ->
              Ans(IfEQ(ID x, ID y, generate env e1, generate env e2), info)
      | Type.Float _ ->
              Ans(FIfEQ(ID x, ID y, generate env e1, generate env e2), info)
      | _ -> Info.exit info "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2, info) ->
      (match M.find x env with
      | Type.Bool _ | Type.Int _->
              Ans(IfLT(ID x, ID y, generate env e1, generate env e2), info)
      | Type.Float _ -> Ans(FIfLT(ID x, ID y, generate env e1, generate env e2), info)
      | _ -> Info.exit info "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1, e2, info) ->
      let e1' = generate env e1 in
      let e2' = generate (M.add x t1 env) e2 in
      concat e1' (ID x, t1) e2'
  | Closure.Var(x, info) ->
      (match M.find x env with
      | Type.Unit _ -> Ans(Nop, info)
      | Type.Float _ -> Ans(FLoad(Absolute (Label (fst x), None)), info)
      | _ -> Ans(Load(Absolute (Label (fst x), None)), info))
  | Closure.MakeCls((start, t), { Closure.entry = entry; Closure.actual_fv = external_variable }, let_body, info) ->
          (* クロージャの生成 (caml2html: virtual_makecls) *)
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
  let let_body' = generate (M.add start t env) let_body
  in
  let offset, store_fv =
	expand
	  (List.map (fun y -> (y, M.find y env)) external_variable)
      (*open a free space of 4 bytes*)
	  (4, let_body')
	  (fun var offset store_fv -> seq(FStore(ID var, Relative(ID start, Constant offset)), store_fv, info))
	  (fun var _ offset store_fv -> seq(Store(ID var, Relative(ID start, Constant offset)), store_fv, info)) in
      Let(
          (ID start, t),
          (*move heap pointer to start variable*)
          Add(reg_zero, reg_hp),
          Let(
              (*increase heap pointer*)
              (reg_hp, Type.Int info),
              Addi(reg_hp, Constant (align offset)),

              (
                  (*make new var*)
              let new_var = ID (Id.genid("l", info))
              in
              Let(
                  (new_var, Type.Int info),
                  Addi(reg_zero, Label (fst entry)),
                  seq(
                      Store(new_var, Absolute(Label (fst start), None)),
                      store_fv,
                      info
                      ),
                  info
                  )
              ),

              info
              ),
          info
          )
  | Closure.AppCls(cls, params, info) ->
      let (ints, floats) = separate (List.map (fun y -> (y, M.find y env)) params)
      in
      Ans(CallCls(ID cls, ints, floats), info)
  | Closure.AppDir(cls, params, info) ->
      let (ints, floats) = separate (List.map (fun y -> (y, M.find y env)) params)
      in
      Ans(CallDir(Label (fst cls), ints, floats), info)
  | Closure.Tuple(id_list, info) -> (* 組の生成 (caml2html: virtual_tuple) *)
          (*generate a now id*)
          (*this ID should keep position of the tuple*)
      let tuple = ID (Id.genid("t", info )) in
      (*the last offset and list of assignment instructions*)
      let (offset, store) =
        expand
        (*gen id-type list*)
          (List.map (fun x -> (x, M.find x env)) id_list)
          (*last instruction is to move the result (tuple) to somewhere it is used*)
          (0, Ans(Add(reg_zero, tuple), info))
          (*float handler*)
          (*store ID take from current being scanned element to the memory at offset from tuple*)
          (fun x offset store -> seq(FStore(ID x, Relative(tuple, Constant offset)), store, info))
          (*int handler*)
          (fun x _ offset store -> seq(Store(ID x, Relative (tuple, Constant offset)), store, info))
      in
      (*make space for tuple*)
          Let(
              (*firstly, move heap pointer to tuple variable*)
              (tuple, Type.Tuple(List.map (fun x -> M.find x env) id_list, info)),
              Add(reg_zero, reg_hp),
              (*after that, increase heap pointer to make space*)
              Let(
                  (reg_hp, Type.Int info),
                  Addi(reg_hp, Constant (align offset)),
                  store,
                  info
                  ),
              info
          )
  | Closure.LetTuple(id_type_list, var, exp, info) ->
      let free_variables = Closure.fv exp in
      let (offset, load) =
        expand
          id_type_list
          (*evaluate let body expression*)
          (0, generate (M.add_list id_type_list env) exp)
          (
              fun x offset load ->
              (*if this var is not used in let body skip it*)
            if not (S.mem x free_variables) then
                load
            else (* [XX] a little ad hoc optimization *)
                fletd(ID x, FLoad(Relative(ID var, Constant offset)), load, info)
            )
          (fun x t offset load ->
            if not (S.mem x free_variables) then load else (* [XX] a little ad hoc optimization *)
            Let((ID x, t), Load(Relative(ID var, Constant offset)), load, info)
          )
      in
          load
  | Closure.Get(x, y, info) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (match M.find x env with
      | Type.Array(Type.Unit _, _) -> Ans(Nop, info)
      | Type.Array(Type.Float _, _) -> Ans(FLoad(Dynamic (ID  x, float_size, ID  y)), info)
      | Type.Array(_) -> Ans(Load(Dynamic(ID x, int_size, ID y)), info)
      | _ ->
              Info.exit info "cannot access index of non array type"
              )
  | Closure.Put(x, y, z, info) ->
      (match M.find x env with
      | Type.Array(Type.Unit _, _) -> Ans(Nop, info)
      | Type.Array(Type.Float _, _) -> Ans(FStore(ID z, Dynamic(ID x, float_size, ID y)), info)
      | Type.Array(_) -> Ans(Store(ID z, Dynamic(ID x, int_size, ID y)), info)
      | _ -> Info.exit info "cannot access index of non array type"
      )
  | Closure.ExtArray((x, _), info) ->
          Ans(
              Load(Absolute(Label ("min_caml_" ^ x), None)),
              info
          )

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (x , t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
    let info = Closure.get_info e in
  let (int, float) = separate yts in
  let (offset, load) =
    expand
      zts
      (4, generate (M.add x t (M.add_list yts (M.add_list zts M.empty))) e)
      (fun z offset load -> fletd(ID z, FLoad(Absolute(Label (fst x), Some (Constant offset))), load, info))
      (fun z t offset load -> Let((ID z, t), Load(Absolute(Label (fst x), Some (Constant offset))), load, info))
  in
  match t with
  | Type.Fun(_, t2, _) ->
      { name = Label (fst x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> Info.exit info "Cannot apply non-function type"

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  let fundefs = List.map h fundefs in
  let e = generate M.empty e in
  Prog(!idata, !data, fundefs, e)
