type t =
    | Directive of string * directive_param * option * comment option
    | Label of string * comment option
    | Command of opcode * operand list * Info.t option
    | Data of int

and
opcode = string
and
operand = string
and
comment = string
and
directive_param = string

cmd_list = [] ref
  (*note: append each command in reserved order*)
  (*append command to current asm program*)
let append cmd =
    cmd_list := cmd :: !cmd_list

    (*convert one cmd to string*) (*one line*)
let to_string (opcode, operand_list, info) =
    let operand_list_to_string operand_list =
        let rec loop current = function
            | [] -> current
            | operand::alist ->
                    current ^ ", " ^ operand
        in
        match operand_list with
        | [] -> ""
        | first::remain ->
                "\t" ^ first ^ (loop remain)
    in
    Printf.sprintf "\t%s%s\t%s" opcode (operand_list_to_string operand_list)  (Info.to_string info)

let rec f output =
    let g = function
        | [] -> Unit
        | ins :: alist ->
                match ins with

                | Directive (directive, param_o, comment_o)->
                        Printf.fprintf output "%s" directive;
                        (match param_o with Some param -> Printf.fprintf output "\t%s" param);
                        (match comment_o with Some comment -> Printf.fprintf output "\t#%s" comment);
                        Printf.fprintf output "\n"

                | Label(label, comment_o) ->
                        Printf.fprintf output "%s:" comment;
                        (match comment_o with Some comment -> Printf.fprintf output "\t%s" comment);
                        Printf.fprintf output "\n"
                | Command cmd ->
                        Printf.fprintf output "%s\n" (to_string cmd)
                | Data i ->
                        Printf.fprintf output "\t.long\t%x" i
    in
    g !cmd_list

(*constant declaration*)
let start_directive = "start"
let data_directive = "data"
let align_directive = "align"
let entry_label = "min_caml_start"
let align_length = 8
let text_directive = "text"

let cmd_nop = "NOP"
let cmd_add = "ADD"
let cmd_sub = "SUB"
let cmd_addi = "ADDI"
let cmd_shiftL = "SHIFTL"
let cmd_shiftR = "SHIFTR"
let cmd_branch = "B"
let cmd_branchEQ = "BEQ"
let cmd_jump = "J"
let cmd_jumpEQ = "JEQ"
let cmd_load = "LD"
let cmd_store = "ST"

let cmd_fAdd = "FADD"
let cmd_fSub = "FSUB"
let cmd_fMul = "FMUL"
let cmd_fDiv = "FDIV"
let cmd_fCmp = "FCMP"
let cmd_fBranch = "FB"
let cmd_fJump = "FJ"
let cmd_fLoad = "FLD"
let cmd_fStore = "FSD"

let cmd_jLink = "JLINK"
let cmd_link = "LINK"
let cmd_push = "PUSH"
let cmd_pop = "POP"
let cmd_out = "OUT"

let append_cmd_noinfo opcode operand_list =
    append (Command (opcode, operand_list, None))
let append_cmd opcode operand_list info =
    append (Command (opcode, operand_list, Some info))
