(* translation into assembly with infinite number of virtual registers *)

open Operand
open Dfa
open Reg
open Loc

(*let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)*)
(*let idata = ref [] (*list of big int value - bigger than 16bit*)*)

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
    (fun (ints, floats) x -> (ints, floats @ [x]))
    (fun (ints, floats) x _ -> (ints @ [x], floats))

let expand id_type_list init addf addi =
  classify
    id_type_list
    init
    (fun (offset, acc) x ->
      (offset + 4, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + 4, addi x t offset acc))

let rec generate env = function (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
  | Closure.Unit info -> Ans(Nop, -1, info)
  (*int*)
  | Closure.Int(i, info) -> Ans(Int(i), -1, info)
      (*if Pervasives.abs i < (1 lsl (Asm.imm_length - 1)) then*)
          (*Ans(MoveImm(Constant i), info)*)
      (*else*)
      (*let l =*)
        (*try*)
          (*(* すでに定数テーブルにあったら再利用 *)*)
          (*let (l, _) = List.find (fun (_, i') -> i = i') !idata in*)
          (*fst l*)
        (*with Not_found ->*)
          (*let l = Id.genlabel info in*)
          (*idata := (l, i) :: !idata;*)
          (*fst l*)
      (*in*)
        (*Ans(Load(Absolute (Label l, None)), info)*)
        (*floating point*)
  | Closure.Float(d, info) -> Ans(Float(d), -1, info)
      (*let l =*)
        (*try*)
          (*(* すでに定数テーブルにあったら再利用 *)*)
          (*let (l, _) = List.find (fun (_, d') -> d = d') !data in*)
          (*fst l*)
        (*with Not_found ->*)
          (*let l = Id.genlabel info  in*)
          (*data := (l, d) :: !data;*)
          (*fst l*)
      (*in*)
        (*Ans(FLoad(Absolute (Label l, None)), info)*)
        (*negative*)
  | Closure.Neg(x, info) -> Ans(Neg(ID x), -1, info)
  | Closure.Print(x, info) -> Ans(Print(ID x), -1, info)
  | Closure.Four(x, info) -> Ans(Four(ID x), -1, info)
  | Closure.Half(x, info) -> Ans(Half(ID x), -1, info)
  | Closure.CharRead info -> Ans(CharRead, -1, info)
  | Closure.Add(x, y, info) ->
          Ans(Add(ID x, ID y), -1, info)
  | Closure.ShiftLeft(x, y, info) ->
          Ans(ShiftLeft(ID x, ID y), -1, info)
  | Closure.ShiftRight(x, y, info) ->
          Ans(ShiftRight(ID x, ID y), -1, info)
  | Closure.Div(x, y, info) ->
          Ans(Div(ID x, ID y), -1, info)
  | Closure.Mul(x, y, info) ->
          Ans(Mul(ID x, ID y), -1, info)
  | Closure.Sub(x, y, info) ->
          Ans(Sub(ID x, ID y), -1, info)
  | Closure.FNeg(x, info) ->
          Ans(FNeg(ID x), -1, info)
  | Closure.FAbs(x, info) ->
          Ans(FAbs(ID x), -1, info)
  | Closure.FAdd(x, y, info) ->
          Ans(FAdd(ID x, ID y), -1, info)
  | Closure.FSub(x, y, info) ->
          Ans(FSub(ID x, ID y), -1, info)
  | Closure.FMul(x, y, info) ->
          Ans(FMul(ID x, ID y), -1, info)
  | Closure.FDiv(x, y, info) ->
          Ans(FDiv(ID x, ID y), -1, info)
  | Closure.IfEq(x, y, e1, e2, info) ->
      (match M.find x env with
      | Type.Bool _ | Type.Int _ ->
              Ans(IfEQ(ID x, ID y, generate env e1, generate env e2), -1, info)
      | Type.Float _ ->
              Ans(FIfEQ(ID x, ID y, generate env e1, generate env e2), -1, info)
      | _ -> Info.exit info "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2, info) ->
      (match M.find x env with
      | Type.Bool _ | Type.Int _->
              Ans(IfLT(ID x, ID y, generate env e1, generate env e2), -1, info)
      | Type.Float _ -> Ans(FIfLT(ID x, ID y, generate env e1, generate env e2), -1, info)
      | _ -> Info.exit info "inequality supported only for bool, int, and float")
  | Closure.Let((x, t1), e1,e2, info) ->
      let e1' = generate env e1 in
      let e2' = generate (M.add x t1 env) e2 in
      concat e1' (ID x, t1) e2'
  | Closure.Var(x, info) ->
      (match M.find x env with
      | Type.Unit _ -> Ans(Nop, -1, info)
      | Type.Float _ -> Ans(FMove(Operand.ID x), -1, info)
      | _ -> Ans(Move(Operand.ID x), -1, info))
  | Closure.Array (count, info) ->
      Let(
          (Reg reg_hp, Type.Int info),
          Add (Reg reg_hp, ID count),
          -1,
          Ans (Move (Reg reg_hp), -1, info),
          info
      )

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
      (fun var _ offset store_fv -> seq(Store(ID var, Relative(ID start, Constant offset)), store_fv, info))
  in
      Let(
          (ID start, t),
          (*move heap pointer to start variable*)
          Move(Reg reg_hp),
          -1,
          Let(
              (*increase heap pointer*)
              (Reg reg_hp, Type.Int info),
              Addi(Reg reg_hp, Constant offset),
              -1,

              (
                  (*make new var*)
              let new_var = ID (Id.genid("closure", info))
              in
              Let(
                  (new_var, Type.Int info),
                  MoveImm( Label (fst entry)),
                  -1,
                  seq(
                      Store(new_var, Relative(Operand.ID start, Constant 0)),
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
      Ans(CallCls(ID cls, List.map (fun x -> Operand.ID x) ints, List.map (fun x -> Operand.ID x) floats), -1, info)
  | Closure.AppDir(cls, params, info) ->
      let (ints, floats) = separate (List.map (fun y -> (y, M.find y env)) params)
      in
      Ans(CallDir(fst cls, List.map (fun x -> Operand.ID x) ints, List.map (fun x -> Operand.ID x) floats), -1, info)
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
          (0, Ans(Move( tuple), -1, info))
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
              Move( Reg reg_hp),
              -1,
              (*after that, increase heap pointer to make space*)
              Let(
                  (Reg reg_hp, Type.Int info),
                  Addi(Reg reg_hp, Constant offset),
                  -1,
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
                Let((ID x, Type.Float info), FLoad(Relative(ID var, Constant offset)), -1, load, info)
            )
          (fun x t offset load ->
            if not (S.mem x free_variables) then load else (* [XX] a little ad hoc optimization *)
            Let((ID x, t), Load(Relative(ID var, Constant offset)), -1, load, info)
          )
      in
          load
  | Closure.Get(x, y, info) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (match M.find x env with
      | Type.Array(Type.Unit _, _) -> Ans(Nop, -1, info)
      | Type.Array(Type.Float _, _) -> Ans(FLoad(Dynamic (ID  x, 4, ID  y)), -1, info)
      | Type.Array(_) -> Ans(Load(Dynamic(ID x, 4, ID y)), -1, info)
      | _ ->
              Info.exit info "cannot access index of non array type"
              )
  | Closure.Put(x, y, z, info) ->
      (match M.find x env with
      | Type.Array(Type.Unit _, _) -> Ans(Nop, -1, info)
      | Type.Array(Type.Float _, _) -> Ans(FStore(ID z, Dynamic(ID x, 4, ID y)), -1, info)
      | Type.Array(_) -> Ans(Store(ID z, Dynamic(ID x, 4, ID y)), -1, info)
      | _ -> Info.exit info "cannot access index of non array type"
      )
  | Closure.ExtArray((x, _), info) ->
          Ans(
              MoveImm(Label ("min_caml_" ^ x)),
              -1, info
          )

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let fun_converter { Closure.name = (x , t); Closure.args = args; Closure.formal_fv = free_args; Closure.body = e; Closure.info = info } =
  let info = Closure.get_info e
  in
  let (ints, floats) = separate args
  in
  (*Printf.printf "%s -> %d\n" (fst x) (List.length ints);*)
  let all_args = M.add_list args (M.add_list free_args M.empty)
  in
  let all_vars = (M.add x t all_args)
  in
  let (offset, load) =
    expand
      free_args
      (4, generate all_vars e)
      (fun z offset load -> Let((ID z, Type.Float info), FLoad(Relative(Reg reg_cl, Constant offset)), -1, load, info))
      (fun z t offset load -> Let((ID z, t), Load(Relative(Reg reg_cl, Constant offset)), -1, load, info))
  in
  match t with
  | Type.Fun(_, t2, _) ->
          { name = fst x; args = ints; fargs = floats; body = load; ret = t2 ; info = info}
  | _ -> Info.exit info "Cannot apply non-function type"

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f out (Closure.Prog(fundefs, e)) =
    (*Printf.printf "before transform to asm\n%s\n" (Closure.to_string e);*)
    (*List.iter (fun def -> Printf.printf "%s\n" (Closure.fundef_to_string def)) fundefs;*)
  (*data := [];*)
  (*idata := [];*)
  let fundefs = List.map fun_converter fundefs in
  let e = generate M.empty e in
  let prog = fundefs, e
  in
        Dfa.print_all out prog;
        prog
