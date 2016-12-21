# Sumii's Makefile for Min-Caml (for GNU Make)
# 
# ack.mlなどのテストプログラムをtest/に用意してmake do_testを実行すると、
# min-camlとocamlでコンパイル・実行した結果を自動で比較します。

RESULT = min-caml
NCSUFFIX = .opt
CC = gcc
CFLAGS = -g -O2 -Wall
OCAMLLDFLAGS=-warn-error -31

default: debug-code top $(RESULT)# do_test
$(RESULT): debug-code top
## [自分（住井）用の注]
## ・OCamlMakefileや古いGNU Makeのバグ(?)で上のような定義が必要(??)
## ・OCamlMakefileではdebug-codeとnative-codeのそれぞれで
##   .mliがコンパイルされてしまうので、両方ともdefault:の右辺に入れると
##   再make時に（.mliが変更されているので）.mlも再コンパイルされる
clean:: nobackup

# ↓もし実装を改造したら、それに合わせて変える
SOURCES = float.c common.ml info.ml cmd.ml type.ml id.ml stringSet.ml m.ml s.ml \
		  stringMap.ml \
	intMap.ml \
	intSet.ml \
		  loc.ml \
		  reg.ml operand.ml operandSet.ml \
		  m2.ml \
		  s2.ml \
		  s1.ml \
		syntax.ml parser.mly lexer.mll typing.ml kNormal.ml \
		m1.ml \
		alpha.ml beta.ml assoc.ml \
		inline.ml constFold.ml elim.ml duplicateLet.ml \
			closure.ml expandTuple.ml flatTuple.ml asmReg.ml asm.ml \
		  graph.ml \
		regAlloc.ml emit.ml \
		m3.ml\
		elimAsm.ml \
		dfa.ml virtual.ml simm.ml \
		main.ml

# ↓テストプログラムが増えたら、これも増やす
TESTS = print sum-tail gcd sum fib ack even-odd \
adder funcomp cls-rec cls-bug cls-bug2 cls-reg-bug \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
nprod inprod-rec inprod-loop matmul matmul-flat \
manyargs

do_test: $(TESTS:%=test/%.cmp)

.PRECIOUS: test/%.s test/% test/%.res test/%.ans test/%.cmp
TRASH = $(TESTS:%=test/%.s) $(TESTS:%=test/%) $(TESTS:%=test/%.res) $(TESTS:%=test/%.ans) $(TESTS:%=test/%.cmp)

test/%.s: $(RESULT) test/%.ml
	./$(RESULT) test/$*
test/%: test/%.s libmincaml.S stub.c
	$(CC) $(CFLAGS) -m32 $^ -lm -o $@
test/%.res: test/%
	$< > $@
test/%.ans: test/%.ml
	ocaml $< > $@
test/%.cmp: test/%.res test/%.ans
	diff $^ > $@

min-caml.html: main.ml id.ml m.ml stringSet.ml s.ml \
	intMap.ml \
	intSet.ml \
	loc.ml \
	reg.ml \
	operand.ml \
	m2.ml \
		  s2.ml \
		s1.ml \
		stringMap.ml \
		syntax.ml type.ml parser.mly lexer.mll typing.ml kNormal.ml \
		alpha.ml beta.ml assoc.ml \
		inline.ml constFold.ml elim.ml \
		closure.ml expandTuple.ml flatTuple.ml asmReg.ml asm.ml \
	graph.ml \
		regAlloc.ml emit.ml info.ml \
		m3.ml\
		elimAsm.ml \
dfa.ml virtual.ml simm.ml \
		duplicateLet.ml common.ml m1.ml cmd.ml operandSet.ml
	./to_sparc
	caml2html -o min-caml.html $^
	sed 's/.*<\/title>/MinCaml Source Code<\/title>/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	sed 's/charset=iso-8859-1/charset=euc-jp/g' < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html
	ocaml str.cma anchor.ml < min-caml.html > min-caml.tmp.html
	mv min-caml.tmp.html min-caml.html

release: min-caml.html
	rm -fr tmp ; mkdir tmp ; cd tmp ; cvs -d:ext:sumii@min-caml.cvs.sf.net://cvsroot/min-caml export -Dtomorrow min-caml ; tar cvzf ../min-caml.tar.gz min-caml ; cd .. ; rm -fr tmp
	cp Makefile stub.c SPARC/libmincaml.S min-caml.html min-caml.tar.gz ../htdocs/

include OCamlMakefile
