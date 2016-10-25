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

let rec f output = function
    | [] -> Unit
    | ins :: alist ->
        Printf.fprintf output "%s\n" (to_string ins)
