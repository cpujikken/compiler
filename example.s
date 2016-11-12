.start	min_caml_start
.align	8
.data
.align	8
.text
f.4:
	ADDI	%r0, %r01, $1	# example.ml#1:15->1:20
min_caml_start:
	MVI	%r01, $1	# example.ml#3:11->3:12
	JLINK	$f.4	# example.ml#3:9->3:12
	MVI	%r02, $2	# example.ml#5:11->5:12
	LDR	%r01, %rsp, $0	# example.ml#5:9->5:12
	MV	%r02, %r01	# example.ml#5:9->5:12
	ADDI	%rsp, %rsp, $8	# example.ml#5:9->5:12
	JLINK	$f.4	# example.ml#5:9->5:12
	ADDI	%rsp, %rsp, $-8	# example.ml#5:9->5:12
	LDR	%r01, %rsp, $0	# example.ml#11:1->11:8
	ADDI	%rsp, %rsp, $8	# example.ml#11:1->11:8
	JLINK	$min_caml_print	# example.ml#11:1->11:8
	ADDI	%rsp, %rsp, $-8	# example.ml#11:1->11:8
	OUT
