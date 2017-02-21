let limit = ref 1000
in

let rec iter
        elim_out
        duplicate_let_out
        const_fold_out
        inline_out
        assoc_out
        beta_out
        n
        e
    = (* 最適化処理をくりかえす (caml2html: main_iter) *)
    Format.eprintf "iteration %d@." n;
  if n = 0 then e else
      let e' =
          Elim.f elim_out
          @@ DuplicateLet.f duplicate_let_out
          @@ ConstFold.f const_fold_out
          (*@@ Inline.f inline_out*)
          @@ Assoc.f assoc_out
          @@ Beta.f beta_out
          @@ e
        in
      if e = e' then e else
          iter
            elim_out
            duplicate_let_out
            const_fold_out
            inline_out
            assoc_out
            beta_out
              (n - 1)
              e'
in

let lexbuf file_name l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
    let out_with_ext ext = open_out (file_name ^ "-" ^ ext ^ ".out")
    in
    let asm_out = open_out (file_name ^ ".s")
    in
    let reg_alloc_out = out_with_ext "reg_alloc"
    in
    let elim_asm_out = out_with_ext "elim_asm"
    in
    let dfa_out = out_with_ext "dfa"
    in
    let simm_out = out_with_ext "simm"
    in
    let virtual_out = out_with_ext "virtual"
    in
    let expand_tuple_out = out_with_ext "expand_tuple"
    in
    let flat_tuple_out = out_with_ext "flat_tuple"
    in
    let closure_out = out_with_ext "closure"
    in
    let duplicate_let_out = out_with_ext "duplicate_let"
    in
    let alpha_out = out_with_ext "alpha"
    in
    let knormal_out = out_with_ext "knormal"
    in
    let syntax_out = out_with_ext "syntax"
    in
    let elim_closure_out = out_with_ext "elim_closure"
    in
    let const_fold_out = out_with_ext "const_fold"
    in
    let inline_out = out_with_ext "inline"
    in
    let assoc_out = out_with_ext "assoc"
    in
    let beta_out = out_with_ext "beta"
    in
    let elim_out = out_with_ext "elim"
   in
    let outs = [asm_out;
    reg_alloc_out;
    elim_asm_out;
    elim_closure_out;
    dfa_out;
    simm_out;
    virtual_out;
    expand_tuple_out;
    flat_tuple_out;
    closure_out;
    duplicate_let_out;
    alpha_out;
    knormal_out;
    syntax_out;
    elim_closure_out;
    const_fold_out;
    inline_out;
    assoc_out;
    beta_out;
    elim_out;
    ]
    in
try
    Id.counter := 0;
  Typing.extenv := M.empty;
  Emit.f asm_out
    @@ RegAlloc.f reg_alloc_out
    @@ ElimAsm.f elim_asm_out
    @@ Dfa.f dfa_out
    @@ Simm.f simm_out
    @@ Virtual.f virtual_out
    @@ ElimClosure.f elim_closure_out
    @@ ExpandTuple.f expand_tuple_out
    @@ FlatTuple.f flat_tuple_out
    @@ Closure.f closure_out
    @@ iter
        elim_out
        duplicate_let_out
        const_fold_out
        inline_out
        assoc_out
        beta_out
        !limit
    @@ DuplicateLet.f duplicate_let_out
    @@ Alpha.f alpha_out
    @@ KNormal.f knormal_out
    @@ Typing.f syntax_out
    @@
    Parser.exp Lexer.token l ;
  List.iter close_out outs;
with e -> (List.iter close_out outs; raise e)
in

(*let string s = lexbuf stdout (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)*)
(*in*)

let file file_name = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
    let inchan = open_in (file_name ^ ".ml") in
    try
        let lbuf = Lexing.from_channel inchan
      in
      lbuf.Lexing.lex_curr_p <- {
          lbuf.Lexing.lex_curr_p with Lexing.pos_fname = file_name ^ ".ml"
      };
    lexbuf file_name lbuf;
    close_in inchan;
    with e -> (close_in inchan; raise e)
in

let main _ = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
    let files = ref []
    in
    (
        Arg.parse
            [("-inline", Arg.Int(fun i -> Inline.threshold := i), "maximum size of functions inlined");
             ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
             ("-lib", Arg.Bool (fun b -> Common.is_lib := b), "compile for library");
             ("-dfa", Arg.Int(fun i-> Dfa.call_stack_threshold := i), "data flow analysis call stack threshold");
            ]
            (fun s -> files := !files @ [s])
            ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
             Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
      List.iter
        (fun f -> ignore (file f))
        !files
    )
in
    main()
