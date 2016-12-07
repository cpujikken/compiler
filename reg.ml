let global_reg_threshold = 5
let nreg = 32
let nfreg = 32

type t = string
let reg_no i = Printf.sprintf "%%r%d" i
let freg_no i = Printf.sprintf "%%fr%d" i
let allregs = Array.to_list (Array.init (nreg - 4) reg_no)
let allfregs = Array.to_list (Array.init (nfreg - 1) freg_no)
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

let local_regs = Array.to_list (Array.init  global_reg_threshold reg_no)
let local_fregs = Array.to_list (Array.init  global_reg_threshold freg_no)
let is_global_reg reg =
    not (List.mem reg local_regs) && not (List.mem reg local_fregs)
