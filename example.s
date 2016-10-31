.start	min_caml_start
.data
.align	8
l.7:	#123456789123 example.ml#1:9->1:21
	.long	1cbe991a83
.align	8
.text
min_caml_start:
	LD	%r01, $l.7	# example.ml#1:9->1:21
	ADDI	%r0, %r0	# example.ml#3:9->3:12
	LD	%rsp, $0	# example.ml#5:1->5:8
	ADD	%r0, %r0	# example.ml#5:1->5:8
	ADDI	%rsp, %r0	# example.ml#5:1->5:8
	JLINK	$min_caml_print	# example.ml#5:1->5:8
	ADDI	%rsp, %r0	# example.ml#5:1->5:8
	LD	%rsp, $0	# example.ml#6:1->6:8
	ADDI	%rsp, %r0	# example.ml#6:1->6:8
	JLINK	$min_caml_print	# example.ml#6:1->6:8
	ADDI	%rsp, %r0	# example.ml#6:1->6:8
	OUT
