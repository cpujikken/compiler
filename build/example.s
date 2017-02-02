.start	min_caml_start
.data
.align	4
l.6:	#33554432 build/example.ml#1:11->1:13
	.long	02000000
l.5:	#1048576 build/example.ml#1:11->1:13
	.long	00100000
.align	4
.text
min_caml_start:
	LDA	%r30, $l.5	# build/example.ml#1:11->1:13
	LDA	%r31, $l.6	# build/example.ml#1:11->1:13
	SDR	%r9, %r31, $0	# build/example.ml#1:11->1:13
	MVI	%r9, $10	# build/example.ml#1:11->1:13
	MV	%r1, %r9	# build/example.ml#1:1->1:13
	ADDI	%r31, %r31, $4	# build/example.ml#1:1->1:13
	ADDI	%r31, %r31, $4	# build/example.ml#1:1->1:13
	SIP	# build/example.ml#1:1->1:13
	J	$min_caml_print_int	# build/example.ml#1:1->1:13
	ADDI	%r31, %r31, $-4	# build/example.ml#1:1->1:13
	LDR	%r9, %r31, $0	# build/example.ml#1:11->1:13
	FIN
