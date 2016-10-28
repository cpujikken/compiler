type t = Label of string | Constant of int
let to_string = function
    | Label label -> Cmd.label_to_string label
    | Constant i -> Cmd.int_to_string i
