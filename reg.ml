type t = string
let reg_no i = Printf.sprintf "%%r%d" i
let freg_no i = Printf.sprintf "%%fr%d" i
let regs = Array.init 28 reg_no
let fregs = Array.init 31 freg_no
let allregs = Array.to_list regs
let allfregs = Array.to_list fregs
let reg_cl = "%rcl" (*r28*)
let reg_sp = "%rsp" (* stack pointer *) (*r30*)
let reg_dump = "%rd" (*r31*)
let freg_dump = "%frd" (*fr31*)
let reg_ret = reg_no 0
let freg_ret = freg_no 0
let reg_hp = "%rhp" (*r29*)
(* let reg_ra = "%eax" (* return address *) *)
let to_string x = x

let compare = Pervasives.compare
