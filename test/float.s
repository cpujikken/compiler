.start	min_caml_start
.data
.align	8
l.37:	#48.300300 test/float.ml#8:13->8:37
	.long	42413382
l.36:	#4.500000 test/float.ml#8:6->8:9
	.long	40900000
l.35:	#-12.300000 test/float.ml#7:35->7:40
	.long	7fffffffc144cccd
l.38:	#1000000 test/float.ml#9:18->9:25
	.long	f4240
.align	8
.text
min_caml_start:
	FLD	%fr0, $3, $l.35	# test/float.ml#7:35->7:40
	JLINK	$min_caml_abs_float	# test/float.ml#7:24->7:41
	JLINK	$min_caml_sqrt	# test/float.ml#7:18->7:42
	JLINK	$min_caml_cos	# test/float.ml#7:13->7:43
	JLINK	$min_caml_sin	# test/float.ml#7:8->7:44
	FLD	%fr1, $3, $l.36	# test/float.ml#8:6->8:9
	FADD	%fr0, %fr0, %fr1	# test/float.ml#7:8->8:9
	FLD	%fr1, $3, $l.37	# test/float.ml#8:13->8:37
	FSUB	%fr0, %fr0, %fr1	# test/float.ml#7:8->8:37
	LD	%r01, $3, $l.38	# test/float.ml#9:18->9:25
	FLD	%fr0, $0, %rsp, $0	# test/float.ml#9:5->9:25
	ADDI	%rsp, %r0, $8	# test/float.ml#9:5->9:25
	JLINK	$min_caml_float_of_int	# test/float.ml#9:5->9:25
	ADDI	%rsp, %r0, $-8	# test/float.ml#9:5->9:25
	FLD	%fr1, $0, %rsp, $0	# test/float.ml#7:7->9:25
	FMUL	%fr0, %fr1, %fr0	# test/float.ml#7:7->9:25
	ADDI	%rsp, %r0, $8	# test/float.ml#6:4->9:26
	JLINK	$min_caml_int_of_float	# test/float.ml#6:4->9:26
	ADDI	%rsp, %r0, $-8	# test/float.ml#6:4->9:26
	ADDI	%rsp, %r0, $8	# test/float.ml#5:1->9:27
	JLINK	$min_caml_print_int	# test/float.ml#5:1->9:27
	ADDI	%rsp, %r0, $-8	# test/float.ml#5:1->9:27
	OUT
