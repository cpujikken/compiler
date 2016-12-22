open Dfa
open Operand
open Reg
open Loc

(*remove unused let if all of place can be replacable*)
let rec generate env = function (* 命令列の即値最適化 (caml2html: simm13_g) *)
  | Ans(exp, id, info) -> Ans(generate' env exp, id, info)
  | Let((ID x, t), MoveImm(Constant i), id, e, info) ->
      (* Format.eprintf "found simm %s = %d@." x i; *)
      let e' = generate (M.add x i env) e in
      if List.mem (ID x) (get_free_vars e') then
          Let((ID x, t),MoveImm(Constant i), id, e', info)
      else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       e')
  | Let(xt, exp, id, e, info) -> Let(xt, generate' env exp, id, generate env e, info)
and generate' env = function (* 各命令の即値最適化 (caml2html: simm13_gprime) *)
  | Add(x, ID y) when M.mem y env -> Addi(x, Constant (M.find y env))
  | Add(ID x, y) when M.mem x env -> Addi(y, Constant (M.find x env))
  | Add(ID x, ID y) when M.mem x env && M.mem y env && Pervasives.abs (M.find x env + M.find y env) < (1 lsl (Asm.imm_length - 1))
    -> MoveImm(Constant (M.find y env + M.find x env))
  | ShiftLeft(ID x, ID y) when M.mem x env && M.mem y env && Pervasives.abs (M.find x env lsl M.find y env) < (1 lsl (Asm.imm_length - 1))
    -> MoveImm(Constant (M.find y env lsl+ M.find x env))
  | ShiftRight(ID x, ID y) when M.mem x env && M.mem y env && Pervasives.abs (M.find x env lsr M.find y env) < (1 lsl (Asm.imm_length - 1))
    -> MoveImm(Constant (M.find y env lsr M.find x env))
  | Div(ID x, ID y) when M.mem x env && M.mem y env
    -> MoveImm(Constant (M.find y env / M.find x env))
  | Mul(ID x, ID y) when M.mem x env && M.mem y env && Pervasives.abs (M.find x env * M.find y env) < (1 lsl (Asm.imm_length - 1))
    -> MoveImm(Constant (M.find y env * M.find x env))
  | Sub(x, ID y) when M.mem y env -> Addi(x, Constant (-(M.find y env)))
  | Sub(ID x, ID y) when M.mem x env && M.mem y env && Pervasives.abs (M.find x env - M.find y env) < (1 lsl (Asm.imm_length - 1))
    -> MoveImm(Constant (M.find y env - M.find x env))
  | Four(ID x) when M.mem x env && Pervasives.abs (M.find x env * 4 ) < (1 lsl (Asm.imm_length - 1))
    -> MoveImm(Constant (M.find x env * 4))
  | Half(ID x) when M.mem x env -> MoveImm(Constant (M.find x env / 2))
  | Neg(ID x) when M.mem x env -> MoveImm(Constant (-(M.find x env)))
  | Load (Relative (ID id, loc)) when M.mem id env ->
          Load (Absolute(Constant (M.find id env), Some loc))
  | FLoad (Relative (ID id, loc)) when M.mem id env ->
          FLoad (Absolute(Constant (M.find id env), Some loc))
  | Store(reg1, Relative(ID id, loc)) when M.mem id env ->
          Store(reg1, Absolute(Constant (M.find id env), Some loc))
  | FStore(reg1, Relative(ID id, loc)) when M.mem id env ->
          FStore(reg1, Absolute(Constant (M.find id env), Some loc))
  | IfEQ(reg1, reg2, asm1, asm2) -> IfEQ(reg1, reg2, generate env asm1, generate env asm2)
  | IfLT(reg1, reg2, asm1, asm2) -> IfLT(reg1, reg2, generate env asm1, generate env asm2)
  | FIfEQ(reg1, reg2, asm1, asm2) -> FIfEQ(reg1, reg2, generate env asm1, generate env asm2)
  | FIfLT(reg1, reg2, asm1, asm2) -> FIfLT(reg1, reg2, generate env asm1, generate env asm2)
  | e -> e

let fun_converter { name = l; args = xs; fargs = ys; body = e; ret = t ; info = info} = (* トップレベル関数の即値最適化 *)
    { name = l; args = xs; fargs = ys; body = generate M.empty e; ret = t; info = info }

let f out (fundefs, e) = (* プログラム全体の即値最適化 *)
    let prog = List.map fun_converter fundefs, generate M.empty e
    in
        Dfa.print_all out prog;
        prog
