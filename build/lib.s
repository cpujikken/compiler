.data
.align	4
min_caml_l.1231:	#0.100000 build/lib.ml#128:26->128:29
	.long	3dcccccd
min_caml_l.1230:	#-0.000000 build/lib.ml#36:75->36:86
	.long	b3d6bf95
min_caml_l.1229:	#0.000000 build/lib.ml#36:31->36:40
	.long	33d6bf95
min_caml_l.1228:	#1.570796 build/lib.ml#45:5->45:22
	.long	3fc90fdb
min_caml_l.1227:	#6.000000 build/lib.ml#62:90->62:93
	.long	40c00000
min_caml_l.1226:	#5040.000000 build/lib.ml#62:69->62:75
	.long	459d8000
min_caml_l.1225:	#120.000000 build/lib.ml#62:37->62:42
	.long	42f00000
min_caml_l.1224:	#1.000000 build/lib.ml#63:118->63:121
	.long	3f800000
min_caml_l.1223:	#24.000000 build/lib.ml#63:94->63:98
	.long	41c00000
min_caml_l.1222:	#720.000000 build/lib.ml#63:71->63:76
	.long	44340000
min_caml_l.1221:	#40320.000000 build/lib.ml#63:40->63:47
	.long	471d8000
min_caml_l.1220:	#5.497787 build/lib.ml#70:9->70:31
	.long	40afeddf
min_caml_l.1219:	#4.712389 build/lib.ml#69:9->69:31
	.long	4096cbe4
min_caml_l.1218:	#3.926991 build/lib.ml#68:9->68:31
	.long	407b53d1
min_caml_l.1217:	#3.141593 build/lib.ml#67:9->67:31
	.long	40490fdb
min_caml_l.1216:	#2.356194 build/lib.ml#66:9->66:31
	.long	4016cbe4
min_caml_l.1215:	#1.570796 build/lib.ml#65:9->65:31
	.long	3fc90fdb
min_caml_l.1214:	#8.000000 build/lib.ml#61:41->61:44
	.long	41000000
min_caml_l.1213:	#0.785398 build/lib.ml#61:20->61:37
	.long	3f490fdb
min_caml_l.1212:	#6.283185 build/lib.ml#60:38->60:62
	.long	40c90fdb
min_caml_l.1211:	#0.000000 build/lib.ml#98:24->98:27
	.long	00000000
min_caml_l.1210:	#2.000000 build/lib.ml#100:24->100:27
	.long	40000000
min_caml_l.1421:	#33554432 build/lib.ml#9:63->9:64
	.long	02000000
min_caml_l.1420:	#1048576 build/lib.ml#9:63->9:64
	.long	00100000
.align	4
.text
min_caml_create_float_array:
	SDR	%r9, %r31, $0	# build/lib.ml#124:14->124:19
	FOUR	%r9, %r1	# build/lib.ml#124:14->124:19
	ADD	%r30, %r30, %r9	# build/lib.ml#124:14->124:19
	MV	%r9, %r30	# build/lib.ml#124:14->124:19
	SDR	%r1, %r31, $4	# build/lib.ml#126:8->126:31
	MV	%r2, %r1	# build/lib.ml#126:8->126:31
	MV	%r1, %r9	# build/lib.ml#126:8->126:31
	ADDI	%r31, %r31, $8	# build/lib.ml#126:8->126:31
	ADDI	%r31, %r31, $4	# build/lib.ml#126:8->126:31
	SIP	# build/lib.ml#126:8->126:31
	J	$min_caml_copy_loop.600	# build/lib.ml#126:8->126:31
	ADDI	%r31, %r31, $-8	# build/lib.ml#126:8->126:31
	LDR	%r1, %r31, $4	# build/lib.ml#126:8->126:31
	LDR	%r9, %r31, $0	# build/lib.ml#124:14->124:19
	LINK	# build/lib.ml#124:14->124:19
min_caml_copy_loop.600:
	SDR	%r9, %r31, $0	# build/lib.ml#117:17->117:18
	MVI	%r9, $0	# build/lib.ml#117:17->117:18
	CMP	%r2, %r9	# build/lib.ml#117:8->122:13
	JZ	$min_caml_if_lt.1422	# build/lib.ml#117:8->122:13
	FSDD	%fr0, %r1, $4, %r2	# build/lib.ml#120:12->120:30
	MVI	%r9, $1	# build/lib.ml#121:33->121:34
	SUB	%r9, %r2, %r9	# build/lib.ml#121:27->121:34
	SDR	%r2, %r31, $4	# build/lib.ml#121:12->121:41
	SDR	%r1, %r31, $8	# build/lib.ml#121:12->121:41
	MV	%r2, %r9	# build/lib.ml#121:12->121:41
	ADDI	%r31, %r31, $12	# build/lib.ml#121:12->121:41
	ADDI	%r31, %r31, $4	# build/lib.ml#121:12->121:41
	SIP	# build/lib.ml#121:12->121:41
	J	$min_caml_copy_loop.600	# build/lib.ml#121:12->121:41
	ADDI	%r31, %r31, $-12	# build/lib.ml#121:12->121:41
	LDR	%r2, %r31, $4	# build/lib.ml#121:12->121:41
	LDR	%r1, %r31, $8	# build/lib.ml#121:12->121:41
	J	$min_caml_if_lt_cont.1423	# build/lib.ml#117:8->122:13
min_caml_if_lt.1422:
	MV	%r0, %r1	# build/lib.ml#117:24->117:27
min_caml_if_lt_cont.1423:
	LDR	%r9, %r31, $0	# build/lib.ml#117:17->117:18
	LINK	# build/lib.ml#117:17->117:18
min_caml_create_int_array:
	SDR	%r9, %r31, $0	# build/lib.ml#111:14->111:19
	FOUR	%r9, %r1	# build/lib.ml#111:14->111:19
	ADD	%r30, %r30, %r9	# build/lib.ml#111:14->111:19
	MV	%r9, %r30	# build/lib.ml#111:14->111:19
	SDR	%r2, %r31, $4	# build/lib.ml#113:8->113:31
	SDR	%r1, %r31, $8	# build/lib.ml#113:8->113:31
	MV	%r3, %r2	# build/lib.ml#113:8->113:31
	MV	%r2, %r1	# build/lib.ml#113:8->113:31
	MV	%r1, %r9	# build/lib.ml#113:8->113:31
	ADDI	%r31, %r31, $12	# build/lib.ml#113:8->113:31
	ADDI	%r31, %r31, $4	# build/lib.ml#113:8->113:31
	SIP	# build/lib.ml#113:8->113:31
	J	$min_caml_copy_loop.612	# build/lib.ml#113:8->113:31
	ADDI	%r31, %r31, $-12	# build/lib.ml#113:8->113:31
	LDR	%r2, %r31, $4	# build/lib.ml#113:8->113:31
	LDR	%r1, %r31, $8	# build/lib.ml#113:8->113:31
	LDR	%r9, %r31, $0	# build/lib.ml#111:14->111:19
	LINK	# build/lib.ml#111:14->111:19
min_caml_copy_loop.612:
	SDR	%r9, %r31, $0	# build/lib.ml#104:17->104:18
	MVI	%r9, $0	# build/lib.ml#104:17->104:18
	CMP	%r2, %r9	# build/lib.ml#104:8->109:13
	JZ	$min_caml_if_lt.1424	# build/lib.ml#104:8->109:13
	SDD	%r3, %r1, $4, %r2	# build/lib.ml#107:12->107:30
	MVI	%r9, $1	# build/lib.ml#108:33->108:34
	SUB	%r9, %r2, %r9	# build/lib.ml#108:27->108:34
	SDR	%r3, %r31, $4	# build/lib.ml#108:12->108:41
	SDR	%r2, %r31, $8	# build/lib.ml#108:12->108:41
	SDR	%r1, %r31, $12	# build/lib.ml#108:12->108:41
	MV	%r2, %r9	# build/lib.ml#108:12->108:41
	ADDI	%r31, %r31, $16	# build/lib.ml#108:12->108:41
	ADDI	%r31, %r31, $4	# build/lib.ml#108:12->108:41
	SIP	# build/lib.ml#108:12->108:41
	J	$min_caml_copy_loop.612	# build/lib.ml#108:12->108:41
	ADDI	%r31, %r31, $-16	# build/lib.ml#108:12->108:41
	LDR	%r3, %r31, $4	# build/lib.ml#108:12->108:41
	LDR	%r2, %r31, $8	# build/lib.ml#108:12->108:41
	LDR	%r1, %r31, $12	# build/lib.ml#108:12->108:41
	J	$min_caml_if_lt_cont.1425	# build/lib.ml#104:8->109:13
min_caml_if_lt.1424:
	MV	%r0, %r1	# build/lib.ml#104:24->104:27
min_caml_if_lt_cont.1425:
	LDR	%r9, %r31, $0	# build/lib.ml#104:17->104:18
	LINK	# build/lib.ml#104:17->104:18
min_caml_fless:
	FCMP	%fr0, %fr1	# build/lib.ml#101:21->101:26
	FJLT	$min_caml_if_flt.1426	# build/lib.ml#101:21->101:26
	MVI	%r0, $0	# build/lib.ml#101:21->101:26
	J	$min_caml_if_flt_cont.1427	# build/lib.ml#101:21->101:26
min_caml_if_flt.1426:
	MVI	%r0, $1	# build/lib.ml#101:21->101:26
min_caml_if_flt_cont.1427:
	LINK	# build/lib.ml#101:21->101:26
min_caml_fhalf:
	FLDA	%fr1, $min_caml_l.1210	# build/lib.ml#100:24->100:27
	FDIV	%fr0, %fr0, %fr1	# build/lib.ml#100:19->100:27
	LINK	# build/lib.ml#100:24->100:27
min_caml_fsqr:
	FMUL	%fr0, %fr0, %fr0	# build/lib.ml#99:18->99:24
	LINK	# build/lib.ml#99:18->99:24
min_caml_fisneg:
	FLDA	%fr1, $min_caml_l.1211	# build/lib.ml#98:24->98:27
	FCMP	%fr0, %fr1	# build/lib.ml#98:20->98:27
	FJLT	$min_caml_if_flt.1428	# build/lib.ml#98:20->98:27
	MVI	%r0, $0	# build/lib.ml#98:20->98:27
	J	$min_caml_if_flt_cont.1429	# build/lib.ml#98:20->98:27
min_caml_if_flt.1428:
	MVI	%r0, $1	# build/lib.ml#98:20->98:27
min_caml_if_flt_cont.1429:
	LINK	# build/lib.ml#98:24->98:27
min_caml_fneg:
	FNEG1	%fr0	# build/lib.ml#97:18->97:22
	LINK	# build/lib.ml#97:18->97:22
min_caml_fispos:
	FLDA	%fr1, $min_caml_l.1211	# build/lib.ml#96:24->96:27
	FCMP	%fr1, %fr0	# build/lib.ml#96:20->96:27
	FJLT	$min_caml_if_flt.1430	# build/lib.ml#96:20->96:27
	MVI	%r0, $0	# build/lib.ml#96:20->96:27
	J	$min_caml_if_flt_cont.1431	# build/lib.ml#96:20->96:27
min_caml_if_flt.1430:
	MVI	%r0, $1	# build/lib.ml#96:20->96:27
min_caml_if_flt_cont.1431:
	LINK	# build/lib.ml#96:24->96:27
min_caml_fiszero:
	FLDA	%fr1, $min_caml_l.1211	# build/lib.ml#95:25->95:28
	FCMP	%fr0, %fr1	# build/lib.ml#95:21->95:28
	FJEQ	$min_caml_if_feq.1432	# build/lib.ml#95:21->95:28
	MVI	%r0, $0	# build/lib.ml#95:21->95:28
	J	$min_caml_if_feq_cont.1433	# build/lib.ml#95:21->95:28
min_caml_if_feq.1432:
	MVI	%r0, $1	# build/lib.ml#95:21->95:28
min_caml_if_feq_cont.1433:
	LINK	# build/lib.ml#95:25->95:28
min_caml_print_char:
	PRINT	%r1	# build/lib.ml#94:24->94:36
	LINK	# build/lib.ml#94:24->94:36
min_caml_print_space:
	MVI	%r1, $32	# build/lib.ml#93:36->93:38
	PRINT	%r1	# build/lib.ml#93:25->93:38
	LINK	# build/lib.ml#93:36->93:38
min_caml_print_newline:
	MVI	%r1, $10	# build/lib.ml#92:38->92:40
	PRINT	%r1	# build/lib.ml#92:27->92:40
	LINK	# build/lib.ml#92:38->92:40
min_caml_print_int:
	SDR	%r9, %r31, $0	# build/lib.ml#73:9->73:10
	MVI	%r9, $0	# build/lib.ml#73:9->73:10
	CMP	%r1, %r9	# build/lib.ml#73:2->90:93
	JZ	$min_caml_if_lt.1434	# build/lib.ml#73:2->90:93
	MVI	%r9, $1	# build/lib.ml#90:91->90:92
	SDR	%r1, %r31, $4	# build/lib.ml#90:78->90:92
	MV	%r2, %r9	# build/lib.ml#90:78->90:92
	ADDI	%r31, %r31, $8	# build/lib.ml#90:78->90:92
	ADDI	%r31, %r31, $4	# build/lib.ml#90:78->90:92
	SIP	# build/lib.ml#90:78->90:92
	J	$min_caml_print_loop.650	# build/lib.ml#90:78->90:92
	ADDI	%r31, %r31, $-8	# build/lib.ml#90:78->90:92
	MV	%r9, %r0	# build/lib.ml#90:78->90:92
	LDR	%r1, %r31, $4	# build/lib.ml#90:78->90:92
	J	$min_caml_if_lt_cont.1435	# build/lib.ml#73:2->90:93
min_caml_if_lt.1434:
	MVI	%r9, $45	# build/lib.ml#73:28->73:30
	PRINT	%r9	# build/lib.ml#73:17->73:30
	NEG2	%r9, %r1	# build/lib.ml#73:42->73:45
	SDR	%r1, %r31, $8	# build/lib.ml#73:31->73:46
	MV	%r1, %r9	# build/lib.ml#73:31->73:46
	ADDI	%r31, %r31, $12	# build/lib.ml#73:31->73:46
	ADDI	%r31, %r31, $4	# build/lib.ml#73:31->73:46
	SIP	# build/lib.ml#73:31->73:46
	J	$min_caml_print_int	# build/lib.ml#73:31->73:46
	ADDI	%r31, %r31, $-12	# build/lib.ml#73:31->73:46
	LDR	%r1, %r31, $8	# build/lib.ml#73:31->73:46
min_caml_if_lt_cont.1435:
	LDR	%r9, %r31, $0	# build/lib.ml#73:9->73:10
	LINK	# build/lib.ml#73:9->73:10
min_caml_print_loop.650:
	SDR	%r9, %r31, $0	# build/lib.ml#89:19->89:25
	SDR	%r1, %r31, $4	# build/lib.ml#89:19->89:25
	MV	%r1, %r2	# build/lib.ml#89:19->89:25
	ADDI	%r31, %r31, $8	# build/lib.ml#89:19->89:25
	ADDI	%r31, %r31, $4	# build/lib.ml#89:19->89:25
	SIP	# build/lib.ml#89:19->89:25
	J	$min_caml_four.641	# build/lib.ml#89:19->89:25
	ADDI	%r31, %r31, $-8	# build/lib.ml#89:19->89:25
	MV	%r9, %r0	# build/lib.ml#89:19->89:25
	LDR	%r1, %r31, $4	# build/lib.ml#89:19->89:25
	SDR	%r1, %r31, $8	# build/lib.ml#89:13->89:26
	MV	%r1, %r9	# build/lib.ml#89:13->89:26
	ADDI	%r31, %r31, $12	# build/lib.ml#89:13->89:26
	ADDI	%r31, %r31, $4	# build/lib.ml#89:13->89:26
	SIP	# build/lib.ml#89:13->89:26
	J	$min_caml_four.641	# build/lib.ml#89:13->89:26
	ADDI	%r31, %r31, $-12	# build/lib.ml#89:13->89:26
	MV	%r9, %r0	# build/lib.ml#89:13->89:26
	LDR	%r1, %r31, $8	# build/lib.ml#89:13->89:26
	SDR	%r1, %r31, $12	# build/lib.ml#89:7->89:27
	MV	%r1, %r9	# build/lib.ml#89:7->89:27
	ADDI	%r31, %r31, $16	# build/lib.ml#89:7->89:27
	ADDI	%r31, %r31, $4	# build/lib.ml#89:7->89:27
	SIP	# build/lib.ml#89:7->89:27
	J	$min_caml_half.643	# build/lib.ml#89:7->89:27
	ADDI	%r31, %r31, $-16	# build/lib.ml#89:7->89:27
	MV	%r9, %r0	# build/lib.ml#89:7->89:27
	LDR	%r1, %r31, $12	# build/lib.ml#89:7->89:27
	ADD	%r9, %r9, %r2	# build/lib.ml#89:6->89:32
	ADD	%r9, %r9, %r2	# build/lib.ml#89:6->89:36
	CMP	%r1, %r9	# build/lib.ml#89:3->90:71
	JZ	$min_caml_if_lt.1436	# build/lib.ml#89:3->90:71
	SDR	%r1, %r31, $16	# build/lib.ml#90:50->90:56
	MV	%r1, %r2	# build/lib.ml#90:50->90:56
	ADDI	%r31, %r31, $20	# build/lib.ml#90:50->90:56
	ADDI	%r31, %r31, $4	# build/lib.ml#90:50->90:56
	SIP	# build/lib.ml#90:50->90:56
	J	$min_caml_four.641	# build/lib.ml#90:50->90:56
	ADDI	%r31, %r31, $-20	# build/lib.ml#90:50->90:56
	MV	%r9, %r0	# build/lib.ml#90:50->90:56
	LDR	%r1, %r31, $16	# build/lib.ml#90:50->90:56
	SDR	%r1, %r31, $20	# build/lib.ml#90:44->90:57
	MV	%r1, %r9	# build/lib.ml#90:44->90:57
	ADDI	%r31, %r31, $24	# build/lib.ml#90:44->90:57
	ADDI	%r31, %r31, $4	# build/lib.ml#90:44->90:57
	SIP	# build/lib.ml#90:44->90:57
	J	$min_caml_four.641	# build/lib.ml#90:44->90:57
	ADDI	%r31, %r31, $-24	# build/lib.ml#90:44->90:57
	MV	%r9, %r0	# build/lib.ml#90:44->90:57
	LDR	%r1, %r31, $20	# build/lib.ml#90:44->90:57
	SDR	%r1, %r31, $24	# build/lib.ml#90:38->90:58
	MV	%r1, %r9	# build/lib.ml#90:38->90:58
	ADDI	%r31, %r31, $28	# build/lib.ml#90:38->90:58
	ADDI	%r31, %r31, $4	# build/lib.ml#90:38->90:58
	SIP	# build/lib.ml#90:38->90:58
	J	$min_caml_half.643	# build/lib.ml#90:38->90:58
	ADDI	%r31, %r31, $-28	# build/lib.ml#90:38->90:58
	MV	%r9, %r0	# build/lib.ml#90:38->90:58
	LDR	%r1, %r31, $24	# build/lib.ml#90:38->90:58
	ADD	%r9, %r9, %r2	# build/lib.ml#90:37->90:63
	ADD	%r9, %r9, %r2	# build/lib.ml#90:37->90:67
	SDR	%r2, %r31, $28	# build/lib.ml#90:23->90:68
	SDR	%r1, %r31, $32	# build/lib.ml#90:23->90:68
	MV	%r2, %r9	# build/lib.ml#90:23->90:68
	ADDI	%r31, %r31, $36	# build/lib.ml#90:23->90:68
	ADDI	%r31, %r31, $4	# build/lib.ml#90:23->90:68
	SIP	# build/lib.ml#90:23->90:68
	J	$min_caml_print_loop.650	# build/lib.ml#90:23->90:68
	ADDI	%r31, %r31, $-36	# build/lib.ml#90:23->90:68
	MV	%r9, %r0	# build/lib.ml#90:23->90:68
	LDR	%r2, %r31, $28	# build/lib.ml#90:23->90:68
	LDR	%r1, %r31, $32	# build/lib.ml#90:23->90:68
	SDR	%r2, %r31, $36	# build/lib.ml#90:8->90:71
	SDR	%r1, %r31, $40	# build/lib.ml#90:8->90:71
	MV	%r1, %r9	# build/lib.ml#90:8->90:71
	ADDI	%r31, %r31, $44	# build/lib.ml#90:8->90:71
	ADDI	%r31, %r31, $4	# build/lib.ml#90:8->90:71
	SIP	# build/lib.ml#90:8->90:71
	J	$min_caml_print_int_sub.647	# build/lib.ml#90:8->90:71
	ADDI	%r31, %r31, $-44	# build/lib.ml#90:8->90:71
	LDR	%r2, %r31, $36	# build/lib.ml#90:8->90:71
	LDR	%r1, %r31, $40	# build/lib.ml#90:8->90:71
	J	$min_caml_if_lt_cont.1437	# build/lib.ml#89:3->90:71
min_caml_if_lt.1436:
	SDR	%r2, %r31, $44	# build/lib.ml#89:46->89:63
	SDR	%r1, %r31, $48	# build/lib.ml#89:46->89:63
	ADDI	%r31, %r31, $52	# build/lib.ml#89:46->89:63
	ADDI	%r31, %r31, $4	# build/lib.ml#89:46->89:63
	SIP	# build/lib.ml#89:46->89:63
	J	$min_caml_print_int_sub.647	# build/lib.ml#89:46->89:63
	ADDI	%r31, %r31, $-52	# build/lib.ml#89:46->89:63
	LDR	%r2, %r31, $44	# build/lib.ml#89:46->89:63
	LDR	%r1, %r31, $48	# build/lib.ml#89:46->89:63
min_caml_if_lt_cont.1437:
	LDR	%r9, %r31, $0	# build/lib.ml#89:19->89:25
	LINK	# build/lib.ml#89:19->89:25
min_caml_print_int_sub.647:
	SDR	%r9, %r31, $0	# build/lib.ml#78:3->87:54
	CMP	%r1, %r2	# build/lib.ml#78:3->87:54
	JZ	$min_caml_if_lt.1438	# build/lib.ml#78:3->87:54
	ADD	%r9, %r2, %r2	# build/lib.ml#79:11->79:16
	CMP	%r1, %r9	# build/lib.ml#79:8->87:54
	JZ	$min_caml_if_lt.1440	# build/lib.ml#79:8->87:54
	ADD	%r9, %r9, %r2	# build/lib.ml#80:11->80:20
	CMP	%r1, %r9	# build/lib.ml#80:8->87:54
	JZ	$min_caml_if_lt.1442	# build/lib.ml#80:8->87:54
	SDR	%r1, %r31, $4	# build/lib.ml#81:11->81:17
	MV	%r1, %r2	# build/lib.ml#81:11->81:17
	ADDI	%r31, %r31, $8	# build/lib.ml#81:11->81:17
	ADDI	%r31, %r31, $4	# build/lib.ml#81:11->81:17
	SIP	# build/lib.ml#81:11->81:17
	J	$min_caml_four.641	# build/lib.ml#81:11->81:17
	ADDI	%r31, %r31, $-8	# build/lib.ml#81:11->81:17
	MV	%r9, %r0	# build/lib.ml#81:11->81:17
	LDR	%r1, %r31, $4	# build/lib.ml#81:11->81:17
	CMP	%r1, %r9	# build/lib.ml#81:8->87:54
	JZ	$min_caml_if_lt.1444	# build/lib.ml#81:8->87:54
	SDR	%r1, %r31, $8	# build/lib.ml#82:12->82:18
	MV	%r1, %r2	# build/lib.ml#82:12->82:18
	ADDI	%r31, %r31, $12	# build/lib.ml#82:12->82:18
	ADDI	%r31, %r31, $4	# build/lib.ml#82:12->82:18
	SIP	# build/lib.ml#82:12->82:18
	J	$min_caml_four.641	# build/lib.ml#82:12->82:18
	ADDI	%r31, %r31, $-12	# build/lib.ml#82:12->82:18
	MV	%r9, %r0	# build/lib.ml#82:12->82:18
	LDR	%r1, %r31, $8	# build/lib.ml#82:12->82:18
	ADD	%r9, %r9, %r2	# build/lib.ml#82:11->82:23
	CMP	%r1, %r9	# build/lib.ml#82:8->87:54
	JZ	$min_caml_if_lt.1446	# build/lib.ml#82:8->87:54
	SDR	%r1, %r31, $12	# build/lib.ml#83:12->83:18
	MV	%r1, %r2	# build/lib.ml#83:12->83:18
	ADDI	%r31, %r31, $16	# build/lib.ml#83:12->83:18
	ADDI	%r31, %r31, $4	# build/lib.ml#83:12->83:18
	SIP	# build/lib.ml#83:12->83:18
	J	$min_caml_four.641	# build/lib.ml#83:12->83:18
	ADDI	%r31, %r31, $-16	# build/lib.ml#83:12->83:18
	MV	%r9, %r0	# build/lib.ml#83:12->83:18
	LDR	%r1, %r31, $12	# build/lib.ml#83:12->83:18
	ADD	%r9, %r9, %r2	# build/lib.ml#83:11->83:23
	ADD	%r9, %r9, %r2	# build/lib.ml#83:11->83:27
	CMP	%r1, %r9	# build/lib.ml#83:8->87:54
	JZ	$min_caml_if_lt.1448	# build/lib.ml#83:8->87:54
	SDR	%r1, %r31, $16	# build/lib.ml#84:12->84:18
	MV	%r1, %r2	# build/lib.ml#84:12->84:18
	ADDI	%r31, %r31, $20	# build/lib.ml#84:12->84:18
	ADDI	%r31, %r31, $4	# build/lib.ml#84:12->84:18
	SIP	# build/lib.ml#84:12->84:18
	J	$min_caml_four.641	# build/lib.ml#84:12->84:18
	ADDI	%r31, %r31, $-20	# build/lib.ml#84:12->84:18
	MV	%r9, %r0	# build/lib.ml#84:12->84:18
	LDR	%r1, %r31, $16	# build/lib.ml#84:12->84:18
	ADD	%r9, %r9, %r2	# build/lib.ml#84:11->84:23
	ADD	%r9, %r9, %r2	# build/lib.ml#84:11->84:27
	ADD	%r9, %r9, %r2	# build/lib.ml#84:11->84:31
	CMP	%r1, %r9	# build/lib.ml#84:8->87:54
	JZ	$min_caml_if_lt.1450	# build/lib.ml#84:8->87:54
	SDR	%r1, %r31, $20	# build/lib.ml#85:24->85:30
	MV	%r1, %r2	# build/lib.ml#85:24->85:30
	ADDI	%r31, %r31, $24	# build/lib.ml#85:24->85:30
	ADDI	%r31, %r31, $4	# build/lib.ml#85:24->85:30
	SIP	# build/lib.ml#85:24->85:30
	J	$min_caml_four.641	# build/lib.ml#85:24->85:30
	ADDI	%r31, %r31, $-24	# build/lib.ml#85:24->85:30
	MV	%r9, %r0	# build/lib.ml#85:24->85:30
	LDR	%r1, %r31, $20	# build/lib.ml#85:24->85:30
	SDR	%r1, %r31, $24	# build/lib.ml#85:18->85:31
	MV	%r1, %r9	# build/lib.ml#85:18->85:31
	ADDI	%r31, %r31, $28	# build/lib.ml#85:18->85:31
	ADDI	%r31, %r31, $4	# build/lib.ml#85:18->85:31
	SIP	# build/lib.ml#85:18->85:31
	J	$min_caml_four.641	# build/lib.ml#85:18->85:31
	ADDI	%r31, %r31, $-28	# build/lib.ml#85:18->85:31
	MV	%r9, %r0	# build/lib.ml#85:18->85:31
	LDR	%r1, %r31, $24	# build/lib.ml#85:18->85:31
	SDR	%r1, %r31, $28	# build/lib.ml#85:12->85:32
	MV	%r1, %r9	# build/lib.ml#85:12->85:32
	ADDI	%r31, %r31, $32	# build/lib.ml#85:12->85:32
	ADDI	%r31, %r31, $4	# build/lib.ml#85:12->85:32
	SIP	# build/lib.ml#85:12->85:32
	J	$min_caml_half.643	# build/lib.ml#85:12->85:32
	ADDI	%r31, %r31, $-32	# build/lib.ml#85:12->85:32
	MV	%r9, %r0	# build/lib.ml#85:12->85:32
	LDR	%r1, %r31, $28	# build/lib.ml#85:12->85:32
	CMP	%r1, %r9	# build/lib.ml#85:8->87:54
	JZ	$min_caml_if_lt.1452	# build/lib.ml#85:8->87:54
	SDR	%r1, %r31, $32	# build/lib.ml#86:24->86:30
	MV	%r1, %r2	# build/lib.ml#86:24->86:30
	ADDI	%r31, %r31, $36	# build/lib.ml#86:24->86:30
	ADDI	%r31, %r31, $4	# build/lib.ml#86:24->86:30
	SIP	# build/lib.ml#86:24->86:30
	J	$min_caml_four.641	# build/lib.ml#86:24->86:30
	ADDI	%r31, %r31, $-36	# build/lib.ml#86:24->86:30
	MV	%r9, %r0	# build/lib.ml#86:24->86:30
	LDR	%r1, %r31, $32	# build/lib.ml#86:24->86:30
	SDR	%r1, %r31, $36	# build/lib.ml#86:18->86:31
	MV	%r1, %r9	# build/lib.ml#86:18->86:31
	ADDI	%r31, %r31, $40	# build/lib.ml#86:18->86:31
	ADDI	%r31, %r31, $4	# build/lib.ml#86:18->86:31
	SIP	# build/lib.ml#86:18->86:31
	J	$min_caml_four.641	# build/lib.ml#86:18->86:31
	ADDI	%r31, %r31, $-40	# build/lib.ml#86:18->86:31
	MV	%r9, %r0	# build/lib.ml#86:18->86:31
	LDR	%r1, %r31, $36	# build/lib.ml#86:18->86:31
	SDR	%r1, %r31, $40	# build/lib.ml#86:12->86:32
	MV	%r1, %r9	# build/lib.ml#86:12->86:32
	ADDI	%r31, %r31, $44	# build/lib.ml#86:12->86:32
	ADDI	%r31, %r31, $4	# build/lib.ml#86:12->86:32
	SIP	# build/lib.ml#86:12->86:32
	J	$min_caml_half.643	# build/lib.ml#86:12->86:32
	ADDI	%r31, %r31, $-44	# build/lib.ml#86:12->86:32
	MV	%r9, %r0	# build/lib.ml#86:12->86:32
	LDR	%r1, %r31, $40	# build/lib.ml#86:12->86:32
	ADD	%r9, %r9, %r2	# build/lib.ml#86:11->86:37
	CMP	%r1, %r9	# build/lib.ml#86:8->87:54
	JZ	$min_caml_if_lt.1454	# build/lib.ml#86:8->87:54
	MVI	%r9, $57	# build/lib.ml#87:20->87:22
	PRINT	%r9	# build/lib.ml#87:9->87:22
	SDR	%r1, %r31, $44	# build/lib.ml#87:40->87:46
	MV	%r1, %r2	# build/lib.ml#87:40->87:46
	ADDI	%r31, %r31, $48	# build/lib.ml#87:40->87:46
	ADDI	%r31, %r31, $4	# build/lib.ml#87:40->87:46
	SIP	# build/lib.ml#87:40->87:46
	J	$min_caml_four.641	# build/lib.ml#87:40->87:46
	ADDI	%r31, %r31, $-48	# build/lib.ml#87:40->87:46
	MV	%r9, %r0	# build/lib.ml#87:40->87:46
	LDR	%r1, %r31, $44	# build/lib.ml#87:40->87:46
	SDR	%r1, %r31, $48	# build/lib.ml#87:34->87:47
	MV	%r1, %r9	# build/lib.ml#87:34->87:47
	ADDI	%r31, %r31, $52	# build/lib.ml#87:34->87:47
	ADDI	%r31, %r31, $4	# build/lib.ml#87:34->87:47
	SIP	# build/lib.ml#87:34->87:47
	J	$min_caml_four.641	# build/lib.ml#87:34->87:47
	ADDI	%r31, %r31, $-52	# build/lib.ml#87:34->87:47
	MV	%r9, %r0	# build/lib.ml#87:34->87:47
	LDR	%r1, %r31, $48	# build/lib.ml#87:34->87:47
	SDR	%r1, %r31, $52	# build/lib.ml#87:28->87:48
	MV	%r1, %r9	# build/lib.ml#87:28->87:48
	ADDI	%r31, %r31, $56	# build/lib.ml#87:28->87:48
	ADDI	%r31, %r31, $4	# build/lib.ml#87:28->87:48
	SIP	# build/lib.ml#87:28->87:48
	J	$min_caml_half.643	# build/lib.ml#87:28->87:48
	ADDI	%r31, %r31, $-56	# build/lib.ml#87:28->87:48
	MV	%r9, %r0	# build/lib.ml#87:28->87:48
	LDR	%r1, %r31, $52	# build/lib.ml#87:28->87:48
	SUB	%r9, %r1, %r9	# build/lib.ml#87:23->87:49
	SUB	%r0, %r9, %r2	# build/lib.ml#87:23->87:53
	J	$min_caml_if_lt_cont.1455	# build/lib.ml#86:8->87:54
min_caml_if_lt.1454:
	MVI	%r9, $56	# build/lib.ml#86:59->86:61
	PRINT	%r9	# build/lib.ml#86:48->86:61
	SDR	%r1, %r31, $56	# build/lib.ml#86:79->86:85
	MV	%r1, %r2	# build/lib.ml#86:79->86:85
	ADDI	%r31, %r31, $60	# build/lib.ml#86:79->86:85
	ADDI	%r31, %r31, $4	# build/lib.ml#86:79->86:85
	SIP	# build/lib.ml#86:79->86:85
	J	$min_caml_four.641	# build/lib.ml#86:79->86:85
	ADDI	%r31, %r31, $-60	# build/lib.ml#86:79->86:85
	MV	%r9, %r0	# build/lib.ml#86:79->86:85
	LDR	%r1, %r31, $56	# build/lib.ml#86:79->86:85
	SDR	%r1, %r31, $60	# build/lib.ml#86:73->86:86
	MV	%r1, %r9	# build/lib.ml#86:73->86:86
	ADDI	%r31, %r31, $64	# build/lib.ml#86:73->86:86
	ADDI	%r31, %r31, $4	# build/lib.ml#86:73->86:86
	SIP	# build/lib.ml#86:73->86:86
	J	$min_caml_four.641	# build/lib.ml#86:73->86:86
	ADDI	%r31, %r31, $-64	# build/lib.ml#86:73->86:86
	MV	%r9, %r0	# build/lib.ml#86:73->86:86
	LDR	%r1, %r31, $60	# build/lib.ml#86:73->86:86
	SDR	%r1, %r31, $64	# build/lib.ml#86:67->86:87
	MV	%r1, %r9	# build/lib.ml#86:67->86:87
	ADDI	%r31, %r31, $68	# build/lib.ml#86:67->86:87
	ADDI	%r31, %r31, $4	# build/lib.ml#86:67->86:87
	SIP	# build/lib.ml#86:67->86:87
	J	$min_caml_half.643	# build/lib.ml#86:67->86:87
	ADDI	%r31, %r31, $-68	# build/lib.ml#86:67->86:87
	MV	%r9, %r0	# build/lib.ml#86:67->86:87
	LDR	%r1, %r31, $64	# build/lib.ml#86:67->86:87
	SUB	%r0, %r1, %r9	# build/lib.ml#86:62->86:88
min_caml_if_lt_cont.1455:
	J	$min_caml_if_lt_cont.1453	# build/lib.ml#85:8->87:54
min_caml_if_lt.1452:
	MVI	%r9, $55	# build/lib.ml#85:55->85:57
	PRINT	%r9	# build/lib.ml#85:44->85:57
	SDR	%r1, %r31, $68	# build/lib.ml#85:63->85:69
	MV	%r1, %r2	# build/lib.ml#85:63->85:69
	ADDI	%r31, %r31, $72	# build/lib.ml#85:63->85:69
	ADDI	%r31, %r31, $4	# build/lib.ml#85:63->85:69
	SIP	# build/lib.ml#85:63->85:69
	J	$min_caml_four.641	# build/lib.ml#85:63->85:69
	ADDI	%r31, %r31, $-72	# build/lib.ml#85:63->85:69
	MV	%r9, %r0	# build/lib.ml#85:63->85:69
	LDR	%r1, %r31, $68	# build/lib.ml#85:63->85:69
	SUB	%r9, %r1, %r9	# build/lib.ml#85:58->85:70
	SUB	%r9, %r9, %r2	# build/lib.ml#85:58->85:74
	SUB	%r9, %r9, %r2	# build/lib.ml#85:58->85:78
	SUB	%r0, %r9, %r2	# build/lib.ml#85:58->85:82
min_caml_if_lt_cont.1453:
	J	$min_caml_if_lt_cont.1451	# build/lib.ml#84:8->87:54
min_caml_if_lt.1450:
	MVI	%r9, $54	# build/lib.ml#84:53->84:55
	PRINT	%r9	# build/lib.ml#84:42->84:55
	SDR	%r1, %r31, $72	# build/lib.ml#84:61->84:67
	MV	%r1, %r2	# build/lib.ml#84:61->84:67
	ADDI	%r31, %r31, $76	# build/lib.ml#84:61->84:67
	ADDI	%r31, %r31, $4	# build/lib.ml#84:61->84:67
	SIP	# build/lib.ml#84:61->84:67
	J	$min_caml_four.641	# build/lib.ml#84:61->84:67
	ADDI	%r31, %r31, $-76	# build/lib.ml#84:61->84:67
	MV	%r9, %r0	# build/lib.ml#84:61->84:67
	LDR	%r1, %r31, $72	# build/lib.ml#84:61->84:67
	SUB	%r9, %r1, %r9	# build/lib.ml#84:56->84:68
	SUB	%r9, %r9, %r2	# build/lib.ml#84:56->84:72
	SUB	%r0, %r9, %r2	# build/lib.ml#84:56->84:76
min_caml_if_lt_cont.1451:
	J	$min_caml_if_lt_cont.1449	# build/lib.ml#83:8->87:54
min_caml_if_lt.1448:
	MVI	%r9, $53	# build/lib.ml#83:49->83:51
	PRINT	%r9	# build/lib.ml#83:38->83:51
	SDR	%r1, %r31, $76	# build/lib.ml#83:57->83:63
	MV	%r1, %r2	# build/lib.ml#83:57->83:63
	ADDI	%r31, %r31, $80	# build/lib.ml#83:57->83:63
	ADDI	%r31, %r31, $4	# build/lib.ml#83:57->83:63
	SIP	# build/lib.ml#83:57->83:63
	J	$min_caml_four.641	# build/lib.ml#83:57->83:63
	ADDI	%r31, %r31, $-80	# build/lib.ml#83:57->83:63
	MV	%r9, %r0	# build/lib.ml#83:57->83:63
	LDR	%r1, %r31, $76	# build/lib.ml#83:57->83:63
	SUB	%r9, %r1, %r9	# build/lib.ml#83:52->83:64
	SUB	%r0, %r9, %r2	# build/lib.ml#83:52->83:68
min_caml_if_lt_cont.1449:
	J	$min_caml_if_lt_cont.1447	# build/lib.ml#82:8->87:54
min_caml_if_lt.1446:
	MVI	%r9, $52	# build/lib.ml#82:45->82:47
	PRINT	%r9	# build/lib.ml#82:34->82:47
	SDR	%r1, %r31, $80	# build/lib.ml#82:53->82:59
	MV	%r1, %r2	# build/lib.ml#82:53->82:59
	ADDI	%r31, %r31, $84	# build/lib.ml#82:53->82:59
	ADDI	%r31, %r31, $4	# build/lib.ml#82:53->82:59
	SIP	# build/lib.ml#82:53->82:59
	J	$min_caml_four.641	# build/lib.ml#82:53->82:59
	ADDI	%r31, %r31, $-84	# build/lib.ml#82:53->82:59
	MV	%r9, %r0	# build/lib.ml#82:53->82:59
	LDR	%r1, %r31, $80	# build/lib.ml#82:53->82:59
	SUB	%r0, %r1, %r9	# build/lib.ml#82:48->82:60
min_caml_if_lt_cont.1447:
	J	$min_caml_if_lt_cont.1445	# build/lib.ml#81:8->87:54
min_caml_if_lt.1444:
	MVI	%r9, $51	# build/lib.ml#81:39->81:41
	PRINT	%r9	# build/lib.ml#81:28->81:41
	SUB	%r9, %r1, %r2	# build/lib.ml#81:42->81:47
	SUB	%r9, %r9, %r2	# build/lib.ml#81:42->81:51
	SUB	%r0, %r9, %r2	# build/lib.ml#81:42->81:55
min_caml_if_lt_cont.1445:
	J	$min_caml_if_lt_cont.1443	# build/lib.ml#80:8->87:54
min_caml_if_lt.1442:
	MVI	%r9, $50	# build/lib.ml#80:42->80:44
	PRINT	%r9	# build/lib.ml#80:31->80:44
	SUB	%r9, %r1, %r2	# build/lib.ml#80:45->80:50
	SUB	%r0, %r9, %r2	# build/lib.ml#80:45->80:54
min_caml_if_lt_cont.1443:
	J	$min_caml_if_lt_cont.1441	# build/lib.ml#79:8->87:54
min_caml_if_lt.1440:
	MVI	%r9, $49	# build/lib.ml#79:38->79:40
	PRINT	%r9	# build/lib.ml#79:27->79:40
	SUB	%r0, %r1, %r2	# build/lib.ml#79:41->79:46
min_caml_if_lt_cont.1441:
	J	$min_caml_if_lt_cont.1439	# build/lib.ml#78:3->87:54
min_caml_if_lt.1438:
	MVI	%r9, $48	# build/lib.ml#78:29->78:31
	PRINT	%r9	# build/lib.ml#78:18->78:31
	MV	%r0, %r1	# build/lib.ml#78:32->78:33
min_caml_if_lt_cont.1439:
	LDR	%r9, %r31, $0	# build/lib.ml#78:3->87:54
	LINK	# build/lib.ml#78:3->87:54
min_caml_z.645:
	LINK	# build/lib.ml#76:16->76:18
min_caml_half.643:
	SDR	%r10, %r31, $0	# build/lib.ml#75:21->75:22
	MVI	%r10, $2	# build/lib.ml#75:21->75:22
	DIV	%r0, %r1, %r10	# build/lib.ml#75:19->75:22
	LDR	%r10, %r31, $0	# build/lib.ml#75:21->75:22
	LINK	# build/lib.ml#75:21->75:22
min_caml_four.641:
	SDR	%r10, %r31, $0	# build/lib.ml#74:21->74:22
	MVI	%r10, $4	# build/lib.ml#74:21->74:22
	MUL	%r0, %r1, %r10	# build/lib.ml#74:19->74:22
	LDR	%r10, %r31, $0	# build/lib.ml#74:21->74:22
	LINK	# build/lib.ml#74:21->74:22
min_caml_sin:
	SDR	%r9, %r31, $0	# build/lib.ml#60:38->60:62
	FSDR	%fr9, %r31, $4	# build/lib.ml#60:38->60:62
	FSDR	%fr8, %r31, $8	# build/lib.ml#60:38->60:62
	FLDA	%fr9, $min_caml_l.1212	# build/lib.ml#60:38->60:62
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#60:32->60:63
	FMV	%fr0, %fr9	# build/lib.ml#60:25->60:64
	ADDI	%r31, %r31, $12	# build/lib.ml#60:25->60:64
	ADDI	%r31, %r31, $4	# build/lib.ml#60:25->60:64
	SIP	# build/lib.ml#60:25->60:64
	J	$min_caml_floor	# build/lib.ml#60:25->60:64
	ADDI	%r31, %r31, $-12	# build/lib.ml#60:25->60:64
	MV	%r9, %r0	# build/lib.ml#60:25->60:64
	MV	%r1, %r9	# build/lib.ml#60:11->60:65
	ADDI	%r31, %r31, $12	# build/lib.ml#60:11->60:65
	ADDI	%r31, %r31, $4	# build/lib.ml#60:11->60:65
	SIP	# build/lib.ml#60:11->60:65
	J	$min_caml_float_of_int	# build/lib.ml#60:11->60:65
	ADDI	%r31, %r31, $-12	# build/lib.ml#60:11->60:65
	FMV	%fr9, %fr0	# build/lib.ml#60:11->60:65
	FLDA	%fr8, $min_caml_l.1213	# build/lib.ml#61:20->61:37
	FMUL	%fr8, %fr9, %fr8	# build/lib.ml#61:15->61:37
	FLDA	%fr9, $min_caml_l.1214	# build/lib.ml#61:41->61:44
	FMUL	%fr9, %fr8, %fr9	# build/lib.ml#61:15->61:44
	FSUB	%fr9, %fr0, %fr9	# build/lib.ml#61:10->61:44
	FLDA	%fr8, $min_caml_l.1213	# build/lib.ml#64:9->64:26
	FCMP	%fr9, %fr8	# build/lib.ml#64:2->71:40
	FJLT	$min_caml_if_flt.1456	# build/lib.ml#64:2->71:40
	FLDA	%fr8, $min_caml_l.1215	# build/lib.ml#65:9->65:31
	FCMP	%fr9, %fr8	# build/lib.ml#65:2->71:40
	FJLT	$min_caml_if_flt.1458	# build/lib.ml#65:2->71:40
	FLDA	%fr8, $min_caml_l.1216	# build/lib.ml#66:9->66:31
	FCMP	%fr9, %fr8	# build/lib.ml#66:2->71:40
	FJLT	$min_caml_if_flt.1460	# build/lib.ml#66:2->71:40
	FLDA	%fr8, $min_caml_l.1217	# build/lib.ml#67:9->67:31
	FCMP	%fr9, %fr8	# build/lib.ml#67:2->71:40
	FJLT	$min_caml_if_flt.1462	# build/lib.ml#67:2->71:40
	FLDA	%fr8, $min_caml_l.1218	# build/lib.ml#68:9->68:31
	FCMP	%fr9, %fr8	# build/lib.ml#68:2->71:40
	FJLT	$min_caml_if_flt.1464	# build/lib.ml#68:2->71:40
	FLDA	%fr8, $min_caml_l.1219	# build/lib.ml#69:9->69:31
	FCMP	%fr9, %fr8	# build/lib.ml#69:2->71:40
	FJLT	$min_caml_if_flt.1466	# build/lib.ml#69:2->71:40
	FLDA	%fr8, $min_caml_l.1220	# build/lib.ml#70:9->70:31
	FCMP	%fr9, %fr8	# build/lib.ml#70:2->71:40
	FJLT	$min_caml_if_flt.1468	# build/lib.ml#70:2->71:40
	FLDA	%fr8, $min_caml_l.1212	# build/lib.ml#71:13->71:35
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#71:13->71:38
	FMV	%fr0, %fr9	# build/lib.ml#71:5->71:39
	ADDI	%r31, %r31, $12	# build/lib.ml#71:5->71:39
	ADDI	%r31, %r31, $4	# build/lib.ml#71:5->71:39
	SIP	# build/lib.ml#71:5->71:39
	J	$min_caml_sinsub.734	# build/lib.ml#71:5->71:39
	ADDI	%r31, %r31, $-12	# build/lib.ml#71:5->71:39
	FMV	%fr9, %fr0	# build/lib.ml#71:5->71:39
	FNEG2	%fr0, %fr9	# build/lib.ml#71:2->71:40
	J	$min_caml_if_flt_cont.1469	# build/lib.ml#70:2->71:40
min_caml_if_flt.1468:
	FLDA	%fr8, $min_caml_l.1219	# build/lib.ml#70:53->70:75
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#70:48->70:75
	FMV	%fr0, %fr9	# build/lib.ml#70:40->70:76
	ADDI	%r31, %r31, $12	# build/lib.ml#70:40->70:76
	ADDI	%r31, %r31, $4	# build/lib.ml#70:40->70:76
	SIP	# build/lib.ml#70:40->70:76
	J	$min_caml_cossub.736	# build/lib.ml#70:40->70:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#70:40->70:76
	FMV	%fr9, %fr0	# build/lib.ml#70:40->70:76
	FNEG2	%fr0, %fr9	# build/lib.ml#70:37->70:77
min_caml_if_flt_cont.1469:
	J	$min_caml_if_flt_cont.1467	# build/lib.ml#69:2->71:40
min_caml_if_flt.1466:
	FLDA	%fr8, $min_caml_l.1219	# build/lib.ml#69:48->69:70
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#69:48->69:73
	FMV	%fr0, %fr9	# build/lib.ml#69:40->69:74
	ADDI	%r31, %r31, $12	# build/lib.ml#69:40->69:74
	ADDI	%r31, %r31, $4	# build/lib.ml#69:40->69:74
	SIP	# build/lib.ml#69:40->69:74
	J	$min_caml_cossub.736	# build/lib.ml#69:40->69:74
	ADDI	%r31, %r31, $-12	# build/lib.ml#69:40->69:74
	FMV	%fr9, %fr0	# build/lib.ml#69:40->69:74
	FNEG2	%fr0, %fr9	# build/lib.ml#69:37->69:75
min_caml_if_flt_cont.1467:
	J	$min_caml_if_flt_cont.1465	# build/lib.ml#68:2->71:40
min_caml_if_flt.1464:
	FLDA	%fr8, $min_caml_l.1217	# build/lib.ml#68:53->68:75
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#68:48->68:75
	FMV	%fr0, %fr9	# build/lib.ml#68:40->68:76
	ADDI	%r31, %r31, $12	# build/lib.ml#68:40->68:76
	ADDI	%r31, %r31, $4	# build/lib.ml#68:40->68:76
	SIP	# build/lib.ml#68:40->68:76
	J	$min_caml_sinsub.734	# build/lib.ml#68:40->68:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#68:40->68:76
	FMV	%fr9, %fr0	# build/lib.ml#68:40->68:76
	FNEG2	%fr0, %fr9	# build/lib.ml#68:37->68:77
min_caml_if_flt_cont.1465:
	J	$min_caml_if_flt_cont.1463	# build/lib.ml#67:2->71:40
min_caml_if_flt.1462:
	FLDA	%fr8, $min_caml_l.1217	# build/lib.ml#67:45->67:67
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#67:45->67:70
	FMV	%fr0, %fr9	# build/lib.ml#67:37->67:71
	ADDI	%r31, %r31, $12	# build/lib.ml#67:37->67:71
	ADDI	%r31, %r31, $4	# build/lib.ml#67:37->67:71
	SIP	# build/lib.ml#67:37->67:71
	J	$min_caml_sinsub.734	# build/lib.ml#67:37->67:71
	ADDI	%r31, %r31, $-12	# build/lib.ml#67:37->67:71
min_caml_if_flt_cont.1463:
	J	$min_caml_if_flt_cont.1461	# build/lib.ml#66:2->71:40
min_caml_if_flt.1460:
	FLDA	%fr8, $min_caml_l.1215	# build/lib.ml#66:48->66:70
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#66:45->66:70
	FMV	%fr0, %fr9	# build/lib.ml#66:37->66:71
	ADDI	%r31, %r31, $12	# build/lib.ml#66:37->66:71
	ADDI	%r31, %r31, $4	# build/lib.ml#66:37->66:71
	SIP	# build/lib.ml#66:37->66:71
	J	$min_caml_cossub.736	# build/lib.ml#66:37->66:71
	ADDI	%r31, %r31, $-12	# build/lib.ml#66:37->66:71
min_caml_if_flt_cont.1461:
	J	$min_caml_if_flt_cont.1459	# build/lib.ml#65:2->71:40
min_caml_if_flt.1458:
	FLDA	%fr8, $min_caml_l.1215	# build/lib.ml#65:45->65:67
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#65:45->65:70
	FMV	%fr0, %fr9	# build/lib.ml#65:37->65:71
	ADDI	%r31, %r31, $12	# build/lib.ml#65:37->65:71
	ADDI	%r31, %r31, $4	# build/lib.ml#65:37->65:71
	SIP	# build/lib.ml#65:37->65:71
	J	$min_caml_cossub.736	# build/lib.ml#65:37->65:71
	ADDI	%r31, %r31, $-12	# build/lib.ml#65:37->65:71
min_caml_if_flt_cont.1459:
	J	$min_caml_if_flt_cont.1457	# build/lib.ml#64:2->71:40
min_caml_if_flt.1456:
	FMV	%fr0, %fr9	# build/lib.ml#64:32->64:40
	ADDI	%r31, %r31, $12	# build/lib.ml#64:32->64:40
	ADDI	%r31, %r31, $4	# build/lib.ml#64:32->64:40
	SIP	# build/lib.ml#64:32->64:40
	J	$min_caml_sinsub.734	# build/lib.ml#64:32->64:40
	ADDI	%r31, %r31, $-12	# build/lib.ml#64:32->64:40
min_caml_if_flt_cont.1457:
	LDR	%r9, %r31, $0	# build/lib.ml#60:38->60:62
	FLDR	%fr9, %r31, $4	# build/lib.ml#60:38->60:62
	FLDR	%fr8, %r31, $8	# build/lib.ml#60:38->60:62
	LINK	# build/lib.ml#60:38->60:62
min_caml_cossub.736:
	FSDR	%fr13, %r31, $0	# build/lib.ml#63:22->63:26
	FSDR	%fr12, %r31, $4	# build/lib.ml#63:22->63:26
	FSDR	%fr11, %r31, $8	# build/lib.ml#63:22->63:26
	FSDR	%fr10, %r31, $12	# build/lib.ml#63:22->63:26
	FMUL	%fr13, %fr0, %fr0	# build/lib.ml#63:22->63:26
	FMUL	%fr1, %fr13, %fr0	# build/lib.ml#63:22->63:29
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#63:22->63:32
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#63:22->63:35
	FMUL	%fr11, %fr1, %fr0	# build/lib.ml#63:22->63:38
	FLDA	%fr1, $min_caml_l.1221	# build/lib.ml#63:40->63:47
	FDIV	%fr10, %fr11, %fr1	# build/lib.ml#63:22->63:47
	FLDA	%fr1, $min_caml_l.1222	# build/lib.ml#63:71->63:76
	FDIV	%fr1, %fr11, %fr1	# build/lib.ml#63:53->63:76
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#63:21->63:77
	FLDA	%fr1, $min_caml_l.1223	# build/lib.ml#63:94->63:98
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#63:82->63:98
	FADD	%fr10, %fr10, %fr1	# build/lib.ml#63:21->63:99
	FLDA	%fr1, $min_caml_l.1210	# build/lib.ml#63:110->63:113
	FDIV	%fr1, %fr13, %fr1	# build/lib.ml#63:104->63:113
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#63:21->63:114
	FLDA	%fr1, $min_caml_l.1224	# build/lib.ml#63:118->63:121
	FADD	%fr0, %fr10, %fr1	# build/lib.ml#63:21->63:121
	FLDR	%fr13, %r31, $0	# build/lib.ml#63:22->63:26
	FLDR	%fr12, %r31, $4	# build/lib.ml#63:22->63:26
	FLDR	%fr11, %r31, $8	# build/lib.ml#63:22->63:26
	FLDR	%fr10, %r31, $12	# build/lib.ml#63:22->63:26
	LINK	# build/lib.ml#63:22->63:26
min_caml_sinsub.734:
	FSDR	%fr12, %r31, $0	# build/lib.ml#62:22->62:26
	FSDR	%fr11, %r31, $4	# build/lib.ml#62:22->62:26
	FSDR	%fr10, %r31, $8	# build/lib.ml#62:22->62:26
	FMUL	%fr1, %fr0, %fr0	# build/lib.ml#62:22->62:26
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#62:22->62:29
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#62:22->62:32
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#62:22->62:35
	FLDA	%fr10, $min_caml_l.1225	# build/lib.ml#62:37->62:42
	FDIV	%fr11, %fr1, %fr10	# build/lib.ml#62:22->62:42
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#62:48->62:64
	FMUL	%fr10, %fr1, %fr0	# build/lib.ml#62:48->62:67
	FLDA	%fr1, $min_caml_l.1226	# build/lib.ml#62:69->62:75
	FDIV	%fr1, %fr10, %fr1	# build/lib.ml#62:48->62:75
	FSUB	%fr10, %fr11, %fr1	# build/lib.ml#62:21->62:76
	FLDA	%fr1, $min_caml_l.1227	# build/lib.ml#62:90->62:93
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#62:81->62:93
	FSUB	%fr1, %fr10, %fr1	# build/lib.ml#62:21->62:94
	FADD	%fr0, %fr1, %fr0	# build/lib.ml#62:21->62:99
	FLDR	%fr12, %r31, $0	# build/lib.ml#62:22->62:26
	FLDR	%fr11, %r31, $4	# build/lib.ml#62:22->62:26
	FLDR	%fr10, %r31, $8	# build/lib.ml#62:22->62:26
	LINK	# build/lib.ml#62:22->62:26
min_caml_cos:
	SDR	%r9, %r31, $0	# build/lib.ml#47:38->47:60
	FSDR	%fr9, %r31, $4	# build/lib.ml#47:38->47:60
	FSDR	%fr8, %r31, $8	# build/lib.ml#47:38->47:60
	FLDA	%fr9, $min_caml_l.1212	# build/lib.ml#47:38->47:60
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#47:32->47:61
	FMV	%fr0, %fr9	# build/lib.ml#47:25->47:62
	ADDI	%r31, %r31, $12	# build/lib.ml#47:25->47:62
	ADDI	%r31, %r31, $4	# build/lib.ml#47:25->47:62
	SIP	# build/lib.ml#47:25->47:62
	J	$min_caml_floor	# build/lib.ml#47:25->47:62
	ADDI	%r31, %r31, $-12	# build/lib.ml#47:25->47:62
	MV	%r9, %r0	# build/lib.ml#47:25->47:62
	MV	%r1, %r9	# build/lib.ml#47:11->47:63
	ADDI	%r31, %r31, $12	# build/lib.ml#47:11->47:63
	ADDI	%r31, %r31, $4	# build/lib.ml#47:11->47:63
	SIP	# build/lib.ml#47:11->47:63
	J	$min_caml_float_of_int	# build/lib.ml#47:11->47:63
	ADDI	%r31, %r31, $-12	# build/lib.ml#47:11->47:63
	FMV	%fr9, %fr0	# build/lib.ml#47:11->47:63
	FLDA	%fr8, $min_caml_l.1213	# build/lib.ml#48:20->48:37
	FMUL	%fr8, %fr9, %fr8	# build/lib.ml#48:15->48:37
	FLDA	%fr9, $min_caml_l.1214	# build/lib.ml#48:41->48:44
	FMUL	%fr9, %fr8, %fr9	# build/lib.ml#48:15->48:44
	FSUB	%fr9, %fr0, %fr9	# build/lib.ml#48:10->48:44
	FLDA	%fr8, $min_caml_l.1213	# build/lib.ml#51:9->51:26
	FCMP	%fr9, %fr8	# build/lib.ml#51:2->58:41
	FJLT	$min_caml_if_flt.1470	# build/lib.ml#51:2->58:41
	FLDA	%fr8, $min_caml_l.1215	# build/lib.ml#52:14->52:36
	FCMP	%fr9, %fr8	# build/lib.ml#52:7->58:41
	FJLT	$min_caml_if_flt.1472	# build/lib.ml#52:7->58:41
	FLDA	%fr8, $min_caml_l.1216	# build/lib.ml#53:14->53:36
	FCMP	%fr9, %fr8	# build/lib.ml#53:7->58:41
	FJLT	$min_caml_if_flt.1474	# build/lib.ml#53:7->58:41
	FLDA	%fr8, $min_caml_l.1217	# build/lib.ml#54:14->54:36
	FCMP	%fr9, %fr8	# build/lib.ml#54:7->58:41
	FJLT	$min_caml_if_flt.1476	# build/lib.ml#54:7->58:41
	FLDA	%fr8, $min_caml_l.1218	# build/lib.ml#55:14->55:36
	FCMP	%fr9, %fr8	# build/lib.ml#55:7->58:41
	FJLT	$min_caml_if_flt.1478	# build/lib.ml#55:7->58:41
	FLDA	%fr8, $min_caml_l.1219	# build/lib.ml#56:14->56:36
	FCMP	%fr9, %fr8	# build/lib.ml#56:7->58:41
	FJLT	$min_caml_if_flt.1480	# build/lib.ml#56:7->58:41
	FLDA	%fr8, $min_caml_l.1220	# build/lib.ml#57:14->57:36
	FCMP	%fr9, %fr8	# build/lib.ml#57:7->58:41
	FJLT	$min_caml_if_flt.1482	# build/lib.ml#57:7->58:41
	FLDA	%fr8, $min_caml_l.1212	# build/lib.ml#58:15->58:37
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#58:15->58:40
	FMV	%fr0, %fr9	# build/lib.ml#58:7->58:41
	ADDI	%r31, %r31, $12	# build/lib.ml#58:7->58:41
	ADDI	%r31, %r31, $4	# build/lib.ml#58:7->58:41
	SIP	# build/lib.ml#58:7->58:41
	J	$min_caml_cossub.849	# build/lib.ml#58:7->58:41
	ADDI	%r31, %r31, $-12	# build/lib.ml#58:7->58:41
	J	$min_caml_if_flt_cont.1483	# build/lib.ml#57:7->58:41
min_caml_if_flt.1482:
	FLDA	%fr8, $min_caml_l.1219	# build/lib.ml#57:53->57:75
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#57:50->57:75
	FMV	%fr0, %fr9	# build/lib.ml#57:42->57:76
	ADDI	%r31, %r31, $12	# build/lib.ml#57:42->57:76
	ADDI	%r31, %r31, $4	# build/lib.ml#57:42->57:76
	SIP	# build/lib.ml#57:42->57:76
	J	$min_caml_sinsub.847	# build/lib.ml#57:42->57:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#57:42->57:76
min_caml_if_flt_cont.1483:
	J	$min_caml_if_flt_cont.1481	# build/lib.ml#56:7->58:41
min_caml_if_flt.1480:
	FLDA	%fr8, $min_caml_l.1219	# build/lib.ml#56:53->56:75
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#56:53->56:78
	FMV	%fr0, %fr9	# build/lib.ml#56:45->56:79
	ADDI	%r31, %r31, $12	# build/lib.ml#56:45->56:79
	ADDI	%r31, %r31, $4	# build/lib.ml#56:45->56:79
	SIP	# build/lib.ml#56:45->56:79
	J	$min_caml_sinsub.847	# build/lib.ml#56:45->56:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#56:45->56:79
	FMV	%fr9, %fr0	# build/lib.ml#56:45->56:79
	FNEG2	%fr0, %fr9	# build/lib.ml#56:42->56:80
min_caml_if_flt_cont.1481:
	J	$min_caml_if_flt_cont.1479	# build/lib.ml#55:7->58:41
min_caml_if_flt.1478:
	FLDA	%fr8, $min_caml_l.1217	# build/lib.ml#55:56->55:78
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#55:53->55:78
	FMV	%fr0, %fr9	# build/lib.ml#55:45->55:79
	ADDI	%r31, %r31, $12	# build/lib.ml#55:45->55:79
	ADDI	%r31, %r31, $4	# build/lib.ml#55:45->55:79
	SIP	# build/lib.ml#55:45->55:79
	J	$min_caml_cossub.849	# build/lib.ml#55:45->55:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#55:45->55:79
	FMV	%fr9, %fr0	# build/lib.ml#55:45->55:79
	FNEG2	%fr0, %fr9	# build/lib.ml#55:42->55:80
min_caml_if_flt_cont.1479:
	J	$min_caml_if_flt_cont.1477	# build/lib.ml#54:7->58:41
min_caml_if_flt.1476:
	FLDA	%fr8, $min_caml_l.1217	# build/lib.ml#54:53->54:75
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#54:53->54:78
	FMV	%fr0, %fr9	# build/lib.ml#54:45->54:79
	ADDI	%r31, %r31, $12	# build/lib.ml#54:45->54:79
	ADDI	%r31, %r31, $4	# build/lib.ml#54:45->54:79
	SIP	# build/lib.ml#54:45->54:79
	J	$min_caml_cossub.849	# build/lib.ml#54:45->54:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#54:45->54:79
	FMV	%fr9, %fr0	# build/lib.ml#54:45->54:79
	FNEG2	%fr0, %fr9	# build/lib.ml#54:42->54:80
min_caml_if_flt_cont.1477:
	J	$min_caml_if_flt_cont.1475	# build/lib.ml#53:7->58:41
min_caml_if_flt.1474:
	FLDA	%fr8, $min_caml_l.1215	# build/lib.ml#53:56->53:78
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#53:53->53:78
	FMV	%fr0, %fr9	# build/lib.ml#53:45->53:79
	ADDI	%r31, %r31, $12	# build/lib.ml#53:45->53:79
	ADDI	%r31, %r31, $4	# build/lib.ml#53:45->53:79
	SIP	# build/lib.ml#53:45->53:79
	J	$min_caml_sinsub.847	# build/lib.ml#53:45->53:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#53:45->53:79
	FMV	%fr9, %fr0	# build/lib.ml#53:45->53:79
	FNEG2	%fr0, %fr9	# build/lib.ml#53:42->53:80
min_caml_if_flt_cont.1475:
	J	$min_caml_if_flt_cont.1473	# build/lib.ml#52:7->58:41
min_caml_if_flt.1472:
	FLDA	%fr8, $min_caml_l.1215	# build/lib.ml#52:50->52:72
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#52:50->52:75
	FMV	%fr0, %fr9	# build/lib.ml#52:42->52:76
	ADDI	%r31, %r31, $12	# build/lib.ml#52:42->52:76
	ADDI	%r31, %r31, $4	# build/lib.ml#52:42->52:76
	SIP	# build/lib.ml#52:42->52:76
	J	$min_caml_sinsub.847	# build/lib.ml#52:42->52:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#52:42->52:76
min_caml_if_flt_cont.1473:
	J	$min_caml_if_flt_cont.1471	# build/lib.ml#51:2->58:41
min_caml_if_flt.1470:
	FMV	%fr0, %fr9	# build/lib.ml#51:32->51:40
	ADDI	%r31, %r31, $12	# build/lib.ml#51:32->51:40
	ADDI	%r31, %r31, $4	# build/lib.ml#51:32->51:40
	SIP	# build/lib.ml#51:32->51:40
	J	$min_caml_cossub.849	# build/lib.ml#51:32->51:40
	ADDI	%r31, %r31, $-12	# build/lib.ml#51:32->51:40
min_caml_if_flt_cont.1471:
	LDR	%r9, %r31, $0	# build/lib.ml#47:38->47:60
	FLDR	%fr9, %r31, $4	# build/lib.ml#47:38->47:60
	FLDR	%fr8, %r31, $8	# build/lib.ml#47:38->47:60
	LINK	# build/lib.ml#47:38->47:60
min_caml_cossub.849:
	FSDR	%fr13, %r31, $0	# build/lib.ml#50:22->50:26
	FSDR	%fr12, %r31, $4	# build/lib.ml#50:22->50:26
	FSDR	%fr11, %r31, $8	# build/lib.ml#50:22->50:26
	FSDR	%fr10, %r31, $12	# build/lib.ml#50:22->50:26
	FMUL	%fr13, %fr0, %fr0	# build/lib.ml#50:22->50:26
	FMUL	%fr1, %fr13, %fr0	# build/lib.ml#50:22->50:29
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#50:22->50:32
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#50:22->50:35
	FMUL	%fr11, %fr1, %fr0	# build/lib.ml#50:22->50:38
	FLDA	%fr1, $min_caml_l.1221	# build/lib.ml#50:40->50:47
	FDIV	%fr10, %fr11, %fr1	# build/lib.ml#50:22->50:47
	FLDA	%fr1, $min_caml_l.1222	# build/lib.ml#50:71->50:76
	FDIV	%fr1, %fr11, %fr1	# build/lib.ml#50:53->50:76
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#50:21->50:77
	FLDA	%fr1, $min_caml_l.1223	# build/lib.ml#50:94->50:98
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#50:82->50:98
	FADD	%fr10, %fr10, %fr1	# build/lib.ml#50:21->50:99
	FLDA	%fr1, $min_caml_l.1210	# build/lib.ml#50:110->50:113
	FDIV	%fr1, %fr13, %fr1	# build/lib.ml#50:104->50:113
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#50:21->50:114
	FLDA	%fr1, $min_caml_l.1224	# build/lib.ml#50:118->50:121
	FADD	%fr0, %fr10, %fr1	# build/lib.ml#50:21->50:121
	FLDR	%fr13, %r31, $0	# build/lib.ml#50:22->50:26
	FLDR	%fr12, %r31, $4	# build/lib.ml#50:22->50:26
	FLDR	%fr11, %r31, $8	# build/lib.ml#50:22->50:26
	FLDR	%fr10, %r31, $12	# build/lib.ml#50:22->50:26
	LINK	# build/lib.ml#50:22->50:26
min_caml_sinsub.847:
	FSDR	%fr12, %r31, $0	# build/lib.ml#49:22->49:26
	FSDR	%fr11, %r31, $4	# build/lib.ml#49:22->49:26
	FSDR	%fr10, %r31, $8	# build/lib.ml#49:22->49:26
	FMUL	%fr1, %fr0, %fr0	# build/lib.ml#49:22->49:26
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#49:22->49:29
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#49:22->49:32
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#49:22->49:35
	FLDA	%fr10, $min_caml_l.1225	# build/lib.ml#49:37->49:42
	FDIV	%fr11, %fr1, %fr10	# build/lib.ml#49:22->49:42
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#49:48->49:64
	FMUL	%fr10, %fr1, %fr0	# build/lib.ml#49:48->49:67
	FLDA	%fr1, $min_caml_l.1226	# build/lib.ml#49:69->49:75
	FDIV	%fr1, %fr10, %fr1	# build/lib.ml#49:48->49:75
	FSUB	%fr10, %fr11, %fr1	# build/lib.ml#49:21->49:76
	FLDA	%fr1, $min_caml_l.1227	# build/lib.ml#49:90->49:93
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#49:81->49:93
	FSUB	%fr1, %fr10, %fr1	# build/lib.ml#49:21->49:94
	FADD	%fr0, %fr1, %fr0	# build/lib.ml#49:21->49:99
	FLDR	%fr12, %r31, $0	# build/lib.ml#49:22->49:26
	FLDR	%fr11, %r31, $4	# build/lib.ml#49:22->49:26
	FLDR	%fr10, %r31, $8	# build/lib.ml#49:22->49:26
	LINK	# build/lib.ml#49:22->49:26
min_caml_atan:
	SDR	%r9, %r31, $0	# build/lib.ml#39:12->39:14
	FSDR	%fr9, %r31, $4	# build/lib.ml#39:12->39:14
	FSDR	%fr8, %r31, $8	# build/lib.ml#39:12->39:14
	FSDR	%fr7, %r31, $12	# build/lib.ml#39:12->39:14
	FLDA	%fr9, $min_caml_l.1211	# build/lib.ml#39:12->39:14
	FCMP	%fr0, %fr9	# build/lib.ml#39:5->45:48
	FJLT	$min_caml_if_flt.1484	# build/lib.ml#39:5->45:48
	FLDA	%fr9, $min_caml_l.1210	# build/lib.ml#42:20->42:23
	FMV	%fr0, %fr9	# build/lib.ml#42:15->42:23
	ADDI	%r31, %r31, $16	# build/lib.ml#42:15->42:23
	ADDI	%r31, %r31, $4	# build/lib.ml#42:15->42:23
	SIP	# build/lib.ml#42:15->42:23
	J	$min_caml_sqrt	# build/lib.ml#42:15->42:23
	ADDI	%r31, %r31, $-16	# build/lib.ml#42:15->42:23
	FMV	%fr8, %fr0	# build/lib.ml#42:15->42:23
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#42:28->42:31
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#42:14->42:31
	FCMP	%fr9, %fr0	# build/lib.ml#42:5->45:48
	FJLT	$min_caml_if_flt.1486	# build/lib.ml#42:5->45:48
	MVI	%r9, $100	# build/lib.ml#42:48->42:51
	MV	%r1, %r9	# build/lib.ml#42:38->42:51
	ADDI	%r31, %r31, $16	# build/lib.ml#42:38->42:51
	ADDI	%r31, %r31, $4	# build/lib.ml#42:38->42:51
	SIP	# build/lib.ml#42:38->42:51
	J	$min_caml_atansub.962	# build/lib.ml#42:38->42:51
	ADDI	%r31, %r31, $-16	# build/lib.ml#42:38->42:51
	J	$min_caml_if_flt_cont.1487	# build/lib.ml#42:5->45:48
min_caml_if_flt.1486:
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#43:13->43:16
	FCMP	%fr9, %fr0	# build/lib.ml#43:5->45:48
	FJLT	$min_caml_if_flt.1488	# build/lib.ml#43:5->45:48
	FLDA	%fr7, $min_caml_l.1213	# build/lib.ml#43:22->43:39
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#43:54->43:57
	FSUB	%fr8, %fr9, %fr0	# build/lib.ml#43:54->43:60
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#43:64->43:67
	FADD	%fr9, %fr9, %fr0	# build/lib.ml#43:64->43:70
	FDIV	%fr9, %fr8, %fr9	# build/lib.ml#43:53->43:71
	MVI	%r9, $100	# build/lib.ml#43:73->43:76
	MV	%r1, %r9	# build/lib.ml#43:44->43:76
	FMV	%fr0, %fr9	# build/lib.ml#43:44->43:76
	ADDI	%r31, %r31, $16	# build/lib.ml#43:44->43:76
	ADDI	%r31, %r31, $4	# build/lib.ml#43:44->43:76
	SIP	# build/lib.ml#43:44->43:76
	J	$min_caml_atansub.962	# build/lib.ml#43:44->43:76
	ADDI	%r31, %r31, $-16	# build/lib.ml#43:44->43:76
	FMV	%fr9, %fr0	# build/lib.ml#43:44->43:76
	FSUB	%fr0, %fr7, %fr9	# build/lib.ml#43:22->43:77
	J	$min_caml_if_flt_cont.1489	# build/lib.ml#43:5->45:48
min_caml_if_flt.1488:
	FLDA	%fr9, $min_caml_l.1210	# build/lib.ml#44:20->44:23
	FMV	%fr0, %fr9	# build/lib.ml#44:15->44:23
	ADDI	%r31, %r31, $16	# build/lib.ml#44:15->44:23
	ADDI	%r31, %r31, $4	# build/lib.ml#44:15->44:23
	SIP	# build/lib.ml#44:15->44:23
	J	$min_caml_sqrt	# build/lib.ml#44:15->44:23
	ADDI	%r31, %r31, $-16	# build/lib.ml#44:15->44:23
	FMV	%fr8, %fr0	# build/lib.ml#44:15->44:23
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#44:28->44:31
	FADD	%fr9, %fr8, %fr9	# build/lib.ml#44:14->44:31
	FCMP	%fr9, %fr0	# build/lib.ml#44:5->45:48
	FJLT	$min_caml_if_flt.1490	# build/lib.ml#44:5->45:48
	FLDA	%fr7, $min_caml_l.1213	# build/lib.ml#44:38->44:55
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#44:73->44:76
	FSUB	%fr8, %fr0, %fr9	# build/lib.ml#44:70->44:76
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#44:83->44:86
	FADD	%fr9, %fr0, %fr9	# build/lib.ml#44:80->44:86
	FDIV	%fr9, %fr8, %fr9	# build/lib.ml#44:69->44:87
	MVI	%r9, $100	# build/lib.ml#44:89->44:92
	MV	%r1, %r9	# build/lib.ml#44:60->44:92
	FMV	%fr0, %fr9	# build/lib.ml#44:60->44:92
	ADDI	%r31, %r31, $16	# build/lib.ml#44:60->44:92
	ADDI	%r31, %r31, $4	# build/lib.ml#44:60->44:92
	SIP	# build/lib.ml#44:60->44:92
	J	$min_caml_atansub.962	# build/lib.ml#44:60->44:92
	ADDI	%r31, %r31, $-16	# build/lib.ml#44:60->44:92
	FMV	%fr9, %fr0	# build/lib.ml#44:60->44:92
	FADD	%fr0, %fr7, %fr9	# build/lib.ml#44:38->44:93
	J	$min_caml_if_flt_cont.1491	# build/lib.ml#44:5->45:48
min_caml_if_flt.1490:
	FLDA	%fr8, $min_caml_l.1228	# build/lib.ml#45:5->45:22
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#45:36->45:39
	FDIV	%fr9, %fr9, %fr0	# build/lib.ml#45:36->45:42
	MVI	%r9, $100	# build/lib.ml#45:44->45:47
	MV	%r1, %r9	# build/lib.ml#45:27->45:47
	FMV	%fr0, %fr9	# build/lib.ml#45:27->45:47
	ADDI	%r31, %r31, $16	# build/lib.ml#45:27->45:47
	ADDI	%r31, %r31, $4	# build/lib.ml#45:27->45:47
	SIP	# build/lib.ml#45:27->45:47
	J	$min_caml_atansub.962	# build/lib.ml#45:27->45:47
	ADDI	%r31, %r31, $-16	# build/lib.ml#45:27->45:47
	FMV	%fr9, %fr0	# build/lib.ml#45:27->45:47
	FSUB	%fr0, %fr8, %fr9	# build/lib.ml#45:5->45:48
min_caml_if_flt_cont.1491:
min_caml_if_flt_cont.1489:
min_caml_if_flt_cont.1487:
	J	$min_caml_if_flt_cont.1485	# build/lib.ml#39:5->45:48
min_caml_if_flt.1484:
	FNEG2	%fr9, %fr0	# build/lib.ml#39:29->39:32
	FMV	%fr0, %fr9	# build/lib.ml#39:23->39:33
	ADDI	%r31, %r31, $16	# build/lib.ml#39:23->39:33
	ADDI	%r31, %r31, $4	# build/lib.ml#39:23->39:33
	SIP	# build/lib.ml#39:23->39:33
	J	$min_caml_atan	# build/lib.ml#39:23->39:33
	ADDI	%r31, %r31, $-16	# build/lib.ml#39:23->39:33
	FMV	%fr9, %fr0	# build/lib.ml#39:23->39:33
	FNEG2	%fr0, %fr9	# build/lib.ml#39:20->39:34
min_caml_if_flt_cont.1485:
	LDR	%r9, %r31, $0	# build/lib.ml#39:12->39:14
	FLDR	%fr9, %r31, $4	# build/lib.ml#39:12->39:14
	FLDR	%fr8, %r31, $8	# build/lib.ml#39:12->39:14
	FLDR	%fr7, %r31, $12	# build/lib.ml#39:12->39:14
	LINK	# build/lib.ml#39:12->39:14
min_caml_atansub.962:
	SDR	%r9, %r31, $0	# build/lib.ml#41:34->41:35
	SDR	%r8, %r31, $4	# build/lib.ml#41:34->41:35
	FSDR	%fr9, %r31, $8	# build/lib.ml#41:34->41:35
	FSDR	%fr8, %r31, $12	# build/lib.ml#41:34->41:35
	FSDR	%fr7, %r31, $16	# build/lib.ml#41:34->41:35
	MVI	%r9, $0	# build/lib.ml#41:34->41:35
	CEQ	%r1, %r9	# build/lib.ml#41:27->41:122
	JZ	$min_caml_if_eq.1492	# build/lib.ml#41:27->41:122
	MVI	%r9, $1	# build/lib.ml#41:62->41:63
	SUB	%r9, %r1, %r9	# build/lib.ml#41:60->41:63
	SDR	%r1, %r31, $20	# build/lib.ml#41:49->41:64
	MV	%r1, %r9	# build/lib.ml#41:49->41:64
	ADDI	%r31, %r31, $24	# build/lib.ml#41:49->41:64
	ADDI	%r31, %r31, $4	# build/lib.ml#41:49->41:64
	SIP	# build/lib.ml#41:49->41:64
	J	$min_caml_atansub.962	# build/lib.ml#41:49->41:64
	ADDI	%r31, %r31, $-24	# build/lib.ml#41:49->41:64
	FMV	%fr7, %fr0	# build/lib.ml#41:49->41:64
	LDR	%r1, %r31, $20	# build/lib.ml#41:49->41:64
	FNEG2	%fr9, %fr0	# build/lib.ml#41:78->41:81
	MVI	%r9, $2	# build/lib.ml#41:84->41:85
	MUL	%r8, %r9, %r1	# build/lib.ml#41:84->41:87
	MVI	%r9, $1	# build/lib.ml#41:90->41:91
	ADD	%r9, %r8, %r9	# build/lib.ml#41:84->41:91
	SDR	%r1, %r31, $24	# build/lib.ml#41:71->41:92
	MV	%r1, %r9	# build/lib.ml#41:71->41:92
	FMV	%fr0, %fr9	# build/lib.ml#41:71->41:92
	ADDI	%r31, %r31, $28	# build/lib.ml#41:71->41:92
	ADDI	%r31, %r31, $4	# build/lib.ml#41:71->41:92
	SIP	# build/lib.ml#41:71->41:92
	J	$min_caml_power.959	# build/lib.ml#41:71->41:92
	ADDI	%r31, %r31, $-28	# build/lib.ml#41:71->41:92
	FMV	%fr8, %fr0	# build/lib.ml#41:71->41:92
	LDR	%r1, %r31, $24	# build/lib.ml#41:71->41:92
	MVI	%r9, $2	# build/lib.ml#41:112->41:113
	MUL	%r8, %r9, %r1	# build/lib.ml#41:112->41:115
	MVI	%r9, $1	# build/lib.ml#41:118->41:119
	ADD	%r9, %r8, %r9	# build/lib.ml#41:112->41:119
	SDR	%r1, %r31, $28	# build/lib.ml#41:98->41:120
	MV	%r1, %r9	# build/lib.ml#41:98->41:120
	ADDI	%r31, %r31, $32	# build/lib.ml#41:98->41:120
	ADDI	%r31, %r31, $4	# build/lib.ml#41:98->41:120
	SIP	# build/lib.ml#41:98->41:120
	J	$min_caml_float_of_int	# build/lib.ml#41:98->41:120
	ADDI	%r31, %r31, $-32	# build/lib.ml#41:98->41:120
	FMV	%fr9, %fr0	# build/lib.ml#41:98->41:120
	LDR	%r1, %r31, $28	# build/lib.ml#41:98->41:120
	FDIV	%fr9, %fr8, %fr9	# build/lib.ml#41:70->41:121
	FADD	%fr0, %fr7, %fr9	# build/lib.ml#41:48->41:122
	J	$min_caml_if_eq_cont.1493	# build/lib.ml#41:27->41:122
min_caml_if_eq.1492:
min_caml_if_eq_cont.1493:
	LDR	%r9, %r31, $0	# build/lib.ml#41:34->41:35
	LDR	%r8, %r31, $4	# build/lib.ml#41:34->41:35
	FLDR	%fr9, %r31, $8	# build/lib.ml#41:34->41:35
	FLDR	%fr8, %r31, $12	# build/lib.ml#41:34->41:35
	FLDR	%fr7, %r31, $16	# build/lib.ml#41:34->41:35
	LINK	# build/lib.ml#41:34->41:35
min_caml_power.959:
	SDR	%r9, %r31, $0	# build/lib.ml#40:32->40:33
	FSDR	%fr9, %r31, $4	# build/lib.ml#40:32->40:33
	MVI	%r9, $0	# build/lib.ml#40:32->40:33
	CEQ	%r1, %r9	# build/lib.ml#40:25->40:68
	JZ	$min_caml_if_eq.1494	# build/lib.ml#40:25->40:68
	MVI	%r9, $1	# build/lib.ml#40:65->40:66
	SUB	%r9, %r1, %r9	# build/lib.ml#40:63->40:66
	SDR	%r1, %r31, $8	# build/lib.ml#40:54->40:67
	MV	%r1, %r9	# build/lib.ml#40:54->40:67
	ADDI	%r31, %r31, $12	# build/lib.ml#40:54->40:67
	ADDI	%r31, %r31, $4	# build/lib.ml#40:54->40:67
	SIP	# build/lib.ml#40:54->40:67
	J	$min_caml_power.959	# build/lib.ml#40:54->40:67
	ADDI	%r31, %r31, $-12	# build/lib.ml#40:54->40:67
	FMV	%fr9, %fr0	# build/lib.ml#40:54->40:67
	LDR	%r1, %r31, $8	# build/lib.ml#40:54->40:67
	FMUL	%fr0, %fr0, %fr9	# build/lib.ml#40:48->40:68
	J	$min_caml_if_eq_cont.1495	# build/lib.ml#40:25->40:68
min_caml_if_eq.1494:
	FLDA	%fr0, $min_caml_l.1224	# build/lib.ml#40:39->40:42
min_caml_if_eq_cont.1495:
	LDR	%r9, %r31, $0	# build/lib.ml#40:32->40:33
	FLDR	%fr9, %r31, $4	# build/lib.ml#40:32->40:33
	LINK	# build/lib.ml#40:32->40:33
min_caml_sqrt:
	SDR	%r9, %r31, $0	# build/lib.ml#35:2->37:13
	SDR	%r8, %r31, $4	# build/lib.ml#35:2->37:13
	SDR	%r7, %r31, $8	# build/lib.ml#35:2->37:13
	MV	%r8, %r30	# build/lib.ml#35:2->37:13
	ADDI	%r30, %r30, $8	# build/lib.ml#35:2->37:13
	MVI	%r9, $min_caml_f.1019	# build/lib.ml#35:2->37:13
	SDR	%r9, %r8, $0	# build/lib.ml#35:2->37:13
	FSDR	%fr0, %r8, $4	# build/lib.ml#35:2->37:13
	MV	%r9, %r30	# build/lib.ml#36:2->37:13
	ADDI	%r30, %r30, $8	# build/lib.ml#36:2->37:13
	MVI	%r7, $min_caml_g.1021	# build/lib.ml#36:2->37:13
	SDR	%r7, %r9, $0	# build/lib.ml#36:2->37:13
	SDR	%r8, %r9, $4	# build/lib.ml#36:2->37:13
	MV	%r29, %r9	# build/lib.ml#37:9->37:12
	ADDI	%r31, %r31, $12	# build/lib.ml#37:9->37:12
	ADDI	%r31, %r31, $4	# build/lib.ml#37:9->37:12
	SIP	# build/lib.ml#37:9->37:12
	JC	# build/lib.ml#37:9->37:12
	ADDI	%r31, %r31, $-12	# build/lib.ml#37:9->37:12
	LDR	%r9, %r31, $0	# build/lib.ml#35:2->37:13
	LDR	%r8, %r31, $4	# build/lib.ml#35:2->37:13
	LDR	%r7, %r31, $8	# build/lib.ml#35:2->37:13
	LINK	# build/lib.ml#35:2->37:13
min_caml_g.1021:
	SDR	%r9, %r31, $0	# build/lib.ml#36:20->36:28
	FSDR	%fr9, %r31, $4	# build/lib.ml#36:20->36:28
	FSDR	%fr8, %r31, $8	# build/lib.ml#36:20->36:28
	LDR	%r9, %r29, $4	# build/lib.ml#36:20->36:28
	MV	%r29, %r9	# build/lib.ml#36:21->36:24
	ADDI	%r31, %r31, $12	# build/lib.ml#36:21->36:24
	ADDI	%r31, %r31, $4	# build/lib.ml#36:21->36:24
	SIP	# build/lib.ml#36:21->36:24
	JC	# build/lib.ml#36:21->36:24
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:21->36:24
	FMV	%fr9, %fr0	# build/lib.ml#36:21->36:24
	FSUB	%fr8, %fr9, %fr0	# build/lib.ml#36:20->36:28
	FLDA	%fr9, $min_caml_l.1229	# build/lib.ml#36:31->36:40
	FCMP	%fr8, %fr9	# build/lib.ml#36:16->36:110
	FJLT	$min_caml_if_flt.1496	# build/lib.ml#36:16->36:110
	MV	%r29, %r9	# build/lib.ml#36:49->36:52
	ADDI	%r31, %r31, $12	# build/lib.ml#36:49->36:52
	ADDI	%r31, %r31, $4	# build/lib.ml#36:49->36:52
	SIP	# build/lib.ml#36:49->36:52
	JC	# build/lib.ml#36:49->36:52
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:49->36:52
	FMV	%fr9, %fr0	# build/lib.ml#36:49->36:52
	FMV	%fr0, %fr9	# build/lib.ml#36:46->36:53
	ADDI	%r31, %r31, $12	# build/lib.ml#36:46->36:53
	ADDI	%r31, %r31, $4	# build/lib.ml#36:46->36:53
	SIP	# build/lib.ml#36:46->36:53
	JC	# build/lib.ml#36:46->36:53
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:46->36:53
	J	$min_caml_if_flt_cont.1497	# build/lib.ml#36:16->36:110
min_caml_if_flt.1496:
	FLDA	%fr8, $min_caml_l.1230	# build/lib.ml#36:75->36:86
	MV	%r29, %r9	# build/lib.ml#36:65->36:68
	ADDI	%r31, %r31, $12	# build/lib.ml#36:65->36:68
	ADDI	%r31, %r31, $4	# build/lib.ml#36:65->36:68
	SIP	# build/lib.ml#36:65->36:68
	JC	# build/lib.ml#36:65->36:68
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:65->36:68
	FMV	%fr9, %fr0	# build/lib.ml#36:65->36:68
	FSUB	%fr9, %fr9, %fr0	# build/lib.ml#36:64->36:72
	FCMP	%fr8, %fr9	# build/lib.ml#36:60->36:109
	FJLT	$min_caml_if_flt.1498	# build/lib.ml#36:60->36:109
	MV	%r29, %r9	# build/lib.ml#36:105->36:108
	ADDI	%r31, %r31, $12	# build/lib.ml#36:105->36:108
	ADDI	%r31, %r31, $4	# build/lib.ml#36:105->36:108
	SIP	# build/lib.ml#36:105->36:108
	JC	# build/lib.ml#36:105->36:108
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:105->36:108
	FMV	%fr9, %fr0	# build/lib.ml#36:105->36:108
	FMV	%fr0, %fr9	# build/lib.ml#36:102->36:109
	ADDI	%r31, %r31, $12	# build/lib.ml#36:102->36:109
	ADDI	%r31, %r31, $4	# build/lib.ml#36:102->36:109
	SIP	# build/lib.ml#36:102->36:109
	JC	# build/lib.ml#36:102->36:109
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:102->36:109
	J	$min_caml_if_flt_cont.1499	# build/lib.ml#36:60->36:109
min_caml_if_flt.1498:
	MV	%r29, %r9	# build/lib.ml#36:93->36:96
	ADDI	%r31, %r31, $12	# build/lib.ml#36:93->36:96
	ADDI	%r31, %r31, $4	# build/lib.ml#36:93->36:96
	SIP	# build/lib.ml#36:93->36:96
	JC	# build/lib.ml#36:93->36:96
	ADDI	%r31, %r31, $-12	# build/lib.ml#36:93->36:96
min_caml_if_flt_cont.1499:
min_caml_if_flt_cont.1497:
	LDR	%r9, %r31, $0	# build/lib.ml#36:20->36:28
	FLDR	%fr9, %r31, $4	# build/lib.ml#36:20->36:28
	FLDR	%fr8, %r31, $8	# build/lib.ml#36:20->36:28
	LINK	# build/lib.ml#36:20->36:28
min_caml_f.1019:
	FSDR	%fr10, %r31, $0	# build/lib.ml#35:21->35:28
	FLDR	%fr1, %r29, $4	# build/lib.ml#35:21->35:28
	FMUL	%fr10, %fr0, %fr0	# build/lib.ml#35:21->35:25
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#35:21->35:28
	FLDA	%fr1, $min_caml_l.1210	# build/lib.ml#35:32->35:35
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#35:32->35:38
	FDIV	%fr1, %fr10, %fr1	# build/lib.ml#35:20->35:39
	FSUB	%fr0, %fr0, %fr1	# build/lib.ml#35:16->35:40
	FLDR	%fr10, %r31, $0	# build/lib.ml#35:21->35:28
	LINK	# build/lib.ml#35:21->35:28
min_caml_floor:
	SDR	%r9, %r31, $0	# build/lib.ml#18:27->18:29
	SDR	%r8, %r31, $4	# build/lib.ml#18:27->18:29
	SDR	%r7, %r31, $8	# build/lib.ml#18:27->18:29
	FSDR	%fr9, %r31, $12	# build/lib.ml#18:27->18:29
	FLDA	%fr9, $min_caml_l.1211	# build/lib.ml#18:27->18:29
	FCMP	%fr0, %fr9	# build/lib.ml#18:19->32:52
	FJLT	$min_caml_if_flt.1500	# build/lib.ml#18:19->32:52
	MV	%r8, %r30	# build/lib.ml#19:2->25:22
	ADDI	%r30, %r30, $8	# build/lib.ml#19:2->25:22
	MVI	%r9, $min_caml_searchsub.1038	# build/lib.ml#19:2->25:22
	SDR	%r9, %r8, $0	# build/lib.ml#19:2->25:22
	FSDR	%fr0, %r8, $4	# build/lib.ml#19:2->25:22
	MV	%r9, %r30	# build/lib.ml#21:2->25:22
	ADDI	%r30, %r30, $8	# build/lib.ml#21:2->25:22
	MVI	%r7, $min_caml_search.1040	# build/lib.ml#21:2->25:22
	SDR	%r7, %r9, $0	# build/lib.ml#21:2->25:22
	FSDR	%fr0, %r9, $4	# build/lib.ml#21:2->25:22
	MVI	%r7, $1	# build/lib.ml#24:20->24:21
	SDR	%r6, %r31, $16	# build/lib.ml#24:10->24:21
	SDR	%r5, %r31, $20	# build/lib.ml#24:10->24:21
	MV	%r1, %r7	# build/lib.ml#24:10->24:21
	MV	%r29, %r8	# build/lib.ml#24:10->24:21
	ADDI	%r31, %r31, $24	# build/lib.ml#24:10->24:21
	ADDI	%r31, %r31, $4	# build/lib.ml#24:10->24:21
	SIP	# build/lib.ml#24:10->24:21
	JC	# build/lib.ml#24:10->24:21
	ADDI	%r31, %r31, $-24	# build/lib.ml#24:10->24:21
	MV	%r8, %r0	# build/lib.ml#24:10->24:21
	LDR	%r6, %r31, $16	# build/lib.ml#24:10->24:21
	LDR	%r5, %r31, $20	# build/lib.ml#24:10->24:21
	MVI	%r7, $2	# build/lib.ml#25:12->25:13
	DIV	%r6, %r8, %r7	# build/lib.ml#25:10->25:13
	MVI	%r7, $4	# build/lib.ml#25:18->25:19
	MUL	%r7, %r8, %r7	# build/lib.ml#25:16->25:19
	MVI	%r8, $2	# build/lib.ml#25:20->25:21
	DIV	%r8, %r7, %r8	# build/lib.ml#25:16->25:21
	SDR	%r6, %r31, $24	# build/lib.ml#25:2->25:22
	SDR	%r5, %r31, $28	# build/lib.ml#25:2->25:22
	MV	%r2, %r8	# build/lib.ml#25:2->25:22
	MV	%r1, %r6	# build/lib.ml#25:2->25:22
	MV	%r29, %r9	# build/lib.ml#25:2->25:22
	ADDI	%r31, %r31, $32	# build/lib.ml#25:2->25:22
	ADDI	%r31, %r31, $4	# build/lib.ml#25:2->25:22
	SIP	# build/lib.ml#25:2->25:22
	JC	# build/lib.ml#25:2->25:22
	ADDI	%r31, %r31, $-32	# build/lib.ml#25:2->25:22
	LDR	%r6, %r31, $24	# build/lib.ml#25:2->25:22
	LDR	%r5, %r31, $28	# build/lib.ml#25:2->25:22
	J	$min_caml_if_flt_cont.1501	# build/lib.ml#18:19->32:52
min_caml_if_flt.1500:
	MV	%r8, %r30	# build/lib.ml#27:2->32:52
	ADDI	%r30, %r30, $8	# build/lib.ml#27:2->32:52
	MVI	%r9, $min_caml_searchsub.1068	# build/lib.ml#27:2->32:52
	SDR	%r9, %r8, $0	# build/lib.ml#27:2->32:52
	FSDR	%fr0, %r8, $4	# build/lib.ml#27:2->32:52
	MV	%r9, %r30	# build/lib.ml#29:2->32:52
	ADDI	%r30, %r30, $8	# build/lib.ml#29:2->32:52
	MVI	%r7, $min_caml_search.1070	# build/lib.ml#29:2->32:52
	SDR	%r7, %r9, $0	# build/lib.ml#29:2->32:52
	FSDR	%fr0, %r9, $4	# build/lib.ml#29:2->32:52
	MVI	%r7, $1	# build/lib.ml#32:20->32:21
	SDR	%r6, %r31, $32	# build/lib.ml#32:10->32:21
	SDR	%r5, %r31, $36	# build/lib.ml#32:10->32:21
	MV	%r1, %r7	# build/lib.ml#32:10->32:21
	MV	%r29, %r8	# build/lib.ml#32:10->32:21
	ADDI	%r31, %r31, $40	# build/lib.ml#32:10->32:21
	ADDI	%r31, %r31, $4	# build/lib.ml#32:10->32:21
	SIP	# build/lib.ml#32:10->32:21
	JC	# build/lib.ml#32:10->32:21
	ADDI	%r31, %r31, $-40	# build/lib.ml#32:10->32:21
	MV	%r8, %r0	# build/lib.ml#32:10->32:21
	LDR	%r6, %r31, $32	# build/lib.ml#32:10->32:21
	LDR	%r5, %r31, $36	# build/lib.ml#32:10->32:21
	MVI	%r5, $-1	# build/lib.ml#32:26->32:28
	MVI	%r7, $2	# build/lib.ml#32:40->32:41
	DIV	%r6, %r8, %r7	# build/lib.ml#32:38->32:41
	MVI	%r7, $4	# build/lib.ml#32:46->32:47
	MUL	%r7, %r8, %r7	# build/lib.ml#32:44->32:47
	MVI	%r8, $2	# build/lib.ml#32:48->32:49
	DIV	%r8, %r7, %r8	# build/lib.ml#32:44->32:49
	SDR	%r6, %r31, $40	# build/lib.ml#32:30->32:50
	SDR	%r5, %r31, $44	# build/lib.ml#32:30->32:50
	MV	%r2, %r8	# build/lib.ml#32:30->32:50
	MV	%r1, %r6	# build/lib.ml#32:30->32:50
	MV	%r29, %r9	# build/lib.ml#32:30->32:50
	ADDI	%r31, %r31, $48	# build/lib.ml#32:30->32:50
	ADDI	%r31, %r31, $4	# build/lib.ml#32:30->32:50
	SIP	# build/lib.ml#32:30->32:50
	JC	# build/lib.ml#32:30->32:50
	ADDI	%r31, %r31, $-48	# build/lib.ml#32:30->32:50
	MV	%r9, %r0	# build/lib.ml#32:30->32:50
	LDR	%r6, %r31, $40	# build/lib.ml#32:30->32:50
	LDR	%r5, %r31, $44	# build/lib.ml#32:30->32:50
	SUB	%r0, %r5, %r9	# build/lib.ml#32:26->32:51
min_caml_if_flt_cont.1501:
	LDR	%r9, %r31, $0	# build/lib.ml#18:27->18:29
	LDR	%r8, %r31, $4	# build/lib.ml#18:27->18:29
	LDR	%r7, %r31, $8	# build/lib.ml#18:27->18:29
	FLDR	%fr9, %r31, $12	# build/lib.ml#18:27->18:29
	LINK	# build/lib.ml#18:27->18:29
min_caml_search.1070:
	SDR	%r9, %r31, $0	# build/lib.ml#30:4->31:97
	SDR	%r8, %r31, $4	# build/lib.ml#30:4->31:97
	FSDR	%fr9, %r31, $8	# build/lib.ml#30:4->31:97
	FSDR	%fr8, %r31, $12	# build/lib.ml#30:4->31:97
	FLDR	%fr9, %r29, $4	# build/lib.ml#30:4->31:97
	SUB	%r8, %r2, %r1	# build/lib.ml#30:8->30:11
	MVI	%r9, $1	# build/lib.ml#30:14->30:15
	CEQ	%r8, %r9	# build/lib.ml#30:4->31:97
	JZ	$min_caml_if_eq.1502	# build/lib.ml#30:4->31:97
	ADD	%r8, %r1, %r2	# build/lib.ml#31:32->31:35
	MVI	%r9, $2	# build/lib.ml#31:37->31:38
	DIV	%r9, %r8, %r9	# build/lib.ml#31:31->31:38
	SDR	%r2, %r31, $16	# build/lib.ml#31:17->31:39
	SDR	%r1, %r31, $20	# build/lib.ml#31:17->31:39
	MV	%r1, %r9	# build/lib.ml#31:17->31:39
	ADDI	%r31, %r31, $24	# build/lib.ml#31:17->31:39
	ADDI	%r31, %r31, $4	# build/lib.ml#31:17->31:39
	SIP	# build/lib.ml#31:17->31:39
	J	$min_caml_float_of_int	# build/lib.ml#31:17->31:39
	ADDI	%r31, %r31, $-24	# build/lib.ml#31:17->31:39
	FMV	%fr8, %fr0	# build/lib.ml#31:17->31:39
	LDR	%r2, %r31, $16	# build/lib.ml#31:17->31:39
	LDR	%r1, %r31, $20	# build/lib.ml#31:17->31:39
	FNEG1	%fr9	# build/lib.ml#31:44->31:47
	FCMP	%fr8, %fr9	# build/lib.ml#31:13->31:96
	FJLT	$min_caml_if_flt.1504	# build/lib.ml#31:13->31:96
	MVI	%r9, $2	# build/lib.ml#31:94->31:95
	DIV	%r9, %r8, %r9	# build/lib.ml#31:88->31:95
	SDR	%r2, %r31, $24	# build/lib.ml#31:78->31:96
	SDR	%r1, %r31, $28	# build/lib.ml#31:78->31:96
	MV	%r2, %r9	# build/lib.ml#31:78->31:96
	ADDI	%r31, %r31, $32	# build/lib.ml#31:78->31:96
	ADDI	%r31, %r31, $4	# build/lib.ml#31:78->31:96
	SIP	# build/lib.ml#31:78->31:96
	JC	# build/lib.ml#31:78->31:96
	ADDI	%r31, %r31, $-32	# build/lib.ml#31:78->31:96
	LDR	%r2, %r31, $24	# build/lib.ml#31:78->31:96
	LDR	%r1, %r31, $28	# build/lib.ml#31:78->31:96
	J	$min_caml_if_flt_cont.1505	# build/lib.ml#31:13->31:96
min_caml_if_flt.1504:
	MVI	%r9, $2	# build/lib.ml#31:68->31:69
	DIV	%r9, %r8, %r9	# build/lib.ml#31:62->31:69
	SDR	%r2, %r31, $32	# build/lib.ml#31:54->31:72
	SDR	%r1, %r31, $36	# build/lib.ml#31:54->31:72
	MV	%r1, %r9	# build/lib.ml#31:54->31:72
	ADDI	%r31, %r31, $40	# build/lib.ml#31:54->31:72
	ADDI	%r31, %r31, $4	# build/lib.ml#31:54->31:72
	SIP	# build/lib.ml#31:54->31:72
	JC	# build/lib.ml#31:54->31:72
	ADDI	%r31, %r31, $-40	# build/lib.ml#31:54->31:72
	LDR	%r2, %r31, $32	# build/lib.ml#31:54->31:72
	LDR	%r1, %r31, $36	# build/lib.ml#31:54->31:72
min_caml_if_flt_cont.1505:
	J	$min_caml_if_eq_cont.1503	# build/lib.ml#30:4->31:97
min_caml_if_eq.1502:
	MV	%r0, %r1	# build/lib.ml#31:3->31:4
min_caml_if_eq_cont.1503:
	LDR	%r9, %r31, $0	# build/lib.ml#30:4->31:97
	LDR	%r8, %r31, $4	# build/lib.ml#30:4->31:97
	FLDR	%fr9, %r31, $8	# build/lib.ml#30:4->31:97
	FLDR	%fr8, %r31, $12	# build/lib.ml#30:4->31:97
	LINK	# build/lib.ml#30:4->31:97
min_caml_searchsub.1068:
	SDR	%r9, %r31, $0	# build/lib.ml#28:3->28:64
	SDR	%r8, %r31, $4	# build/lib.ml#28:3->28:64
	FSDR	%fr9, %r31, $8	# build/lib.ml#28:3->28:64
	FSDR	%fr8, %r31, $12	# build/lib.ml#28:3->28:64
	FLDR	%fr9, %r29, $4	# build/lib.ml#28:3->28:64
	SDR	%r1, %r31, $16	# build/lib.ml#28:8->28:22
	ADDI	%r31, %r31, $20	# build/lib.ml#28:8->28:22
	ADDI	%r31, %r31, $4	# build/lib.ml#28:8->28:22
	SIP	# build/lib.ml#28:8->28:22
	J	$min_caml_float_of_int	# build/lib.ml#28:8->28:22
	ADDI	%r31, %r31, $-20	# build/lib.ml#28:8->28:22
	FMV	%fr8, %fr0	# build/lib.ml#28:8->28:22
	LDR	%r1, %r31, $16	# build/lib.ml#28:8->28:22
	FNEG1	%fr9	# build/lib.ml#28:27->28:30
	FCMP	%fr8, %fr9	# build/lib.ml#28:3->28:64
	FJLT	$min_caml_if_flt.1506	# build/lib.ml#28:3->28:64
	MV	%r0, %r1	# build/lib.ml#28:63->28:64
	J	$min_caml_if_flt_cont.1507	# build/lib.ml#28:3->28:64
min_caml_if_flt.1506:
	MVI	%r9, $4	# build/lib.ml#28:52->28:53
	MUL	%r8, %r1, %r9	# build/lib.ml#28:50->28:53
	MVI	%r9, $2	# build/lib.ml#28:54->28:55
	DIV	%r9, %r8, %r9	# build/lib.ml#28:50->28:55
	SDR	%r1, %r31, $20	# build/lib.ml#28:39->28:56
	MV	%r1, %r9	# build/lib.ml#28:39->28:56
	ADDI	%r31, %r31, $24	# build/lib.ml#28:39->28:56
	ADDI	%r31, %r31, $4	# build/lib.ml#28:39->28:56
	SIP	# build/lib.ml#28:39->28:56
	JC	# build/lib.ml#28:39->28:56
	ADDI	%r31, %r31, $-24	# build/lib.ml#28:39->28:56
	LDR	%r1, %r31, $20	# build/lib.ml#28:39->28:56
min_caml_if_flt_cont.1507:
	LDR	%r9, %r31, $0	# build/lib.ml#28:3->28:64
	LDR	%r8, %r31, $4	# build/lib.ml#28:3->28:64
	FLDR	%fr9, %r31, $8	# build/lib.ml#28:3->28:64
	FLDR	%fr8, %r31, $12	# build/lib.ml#28:3->28:64
	LINK	# build/lib.ml#28:3->28:64
min_caml_search.1040:
	SDR	%r9, %r31, $0	# build/lib.ml#22:4->23:94
	SDR	%r8, %r31, $4	# build/lib.ml#22:4->23:94
	FSDR	%fr9, %r31, $8	# build/lib.ml#22:4->23:94
	FSDR	%fr8, %r31, $12	# build/lib.ml#22:4->23:94
	FLDR	%fr9, %r29, $4	# build/lib.ml#22:4->23:94
	SUB	%r8, %r2, %r1	# build/lib.ml#22:8->22:11
	MVI	%r9, $1	# build/lib.ml#22:14->22:15
	CEQ	%r8, %r9	# build/lib.ml#22:4->23:94
	JZ	$min_caml_if_eq.1508	# build/lib.ml#22:4->23:94
	ADD	%r8, %r1, %r2	# build/lib.ml#23:32->23:35
	MVI	%r9, $2	# build/lib.ml#23:37->23:38
	DIV	%r9, %r8, %r9	# build/lib.ml#23:31->23:38
	SDR	%r2, %r31, $16	# build/lib.ml#23:17->23:39
	SDR	%r1, %r31, $20	# build/lib.ml#23:17->23:39
	MV	%r1, %r9	# build/lib.ml#23:17->23:39
	ADDI	%r31, %r31, $24	# build/lib.ml#23:17->23:39
	ADDI	%r31, %r31, $4	# build/lib.ml#23:17->23:39
	SIP	# build/lib.ml#23:17->23:39
	J	$min_caml_float_of_int	# build/lib.ml#23:17->23:39
	ADDI	%r31, %r31, $-24	# build/lib.ml#23:17->23:39
	FMV	%fr8, %fr0	# build/lib.ml#23:17->23:39
	LDR	%r2, %r31, $16	# build/lib.ml#23:17->23:39
	LDR	%r1, %r31, $20	# build/lib.ml#23:17->23:39
	FCMP	%fr9, %fr8	# build/lib.ml#23:13->23:93
	FJLT	$min_caml_if_flt.1510	# build/lib.ml#23:13->23:93
	MVI	%r9, $2	# build/lib.ml#23:65->23:66
	DIV	%r9, %r8, %r9	# build/lib.ml#23:59->23:66
	SDR	%r2, %r31, $24	# build/lib.ml#23:51->23:69
	SDR	%r1, %r31, $28	# build/lib.ml#23:51->23:69
	MV	%r1, %r9	# build/lib.ml#23:51->23:69
	ADDI	%r31, %r31, $32	# build/lib.ml#23:51->23:69
	ADDI	%r31, %r31, $4	# build/lib.ml#23:51->23:69
	SIP	# build/lib.ml#23:51->23:69
	JC	# build/lib.ml#23:51->23:69
	ADDI	%r31, %r31, $-32	# build/lib.ml#23:51->23:69
	LDR	%r2, %r31, $24	# build/lib.ml#23:51->23:69
	LDR	%r1, %r31, $28	# build/lib.ml#23:51->23:69
	J	$min_caml_if_flt_cont.1511	# build/lib.ml#23:13->23:93
min_caml_if_flt.1510:
	MVI	%r9, $2	# build/lib.ml#23:91->23:92
	DIV	%r9, %r8, %r9	# build/lib.ml#23:85->23:92
	SDR	%r2, %r31, $32	# build/lib.ml#23:75->23:93
	SDR	%r1, %r31, $36	# build/lib.ml#23:75->23:93
	MV	%r2, %r9	# build/lib.ml#23:75->23:93
	ADDI	%r31, %r31, $40	# build/lib.ml#23:75->23:93
	ADDI	%r31, %r31, $4	# build/lib.ml#23:75->23:93
	SIP	# build/lib.ml#23:75->23:93
	JC	# build/lib.ml#23:75->23:93
	ADDI	%r31, %r31, $-40	# build/lib.ml#23:75->23:93
	LDR	%r2, %r31, $32	# build/lib.ml#23:75->23:93
	LDR	%r1, %r31, $36	# build/lib.ml#23:75->23:93
min_caml_if_flt_cont.1511:
	J	$min_caml_if_eq_cont.1509	# build/lib.ml#22:4->23:94
min_caml_if_eq.1508:
	MV	%r0, %r1	# build/lib.ml#23:3->23:4
min_caml_if_eq_cont.1509:
	LDR	%r9, %r31, $0	# build/lib.ml#22:4->23:94
	LDR	%r8, %r31, $4	# build/lib.ml#22:4->23:94
	FLDR	%fr9, %r31, $8	# build/lib.ml#22:4->23:94
	FLDR	%fr8, %r31, $12	# build/lib.ml#22:4->23:94
	LINK	# build/lib.ml#22:4->23:94
min_caml_searchsub.1038:
	SDR	%r9, %r31, $0	# build/lib.ml#20:3->20:60
	SDR	%r8, %r31, $4	# build/lib.ml#20:3->20:60
	FSDR	%fr9, %r31, $8	# build/lib.ml#20:3->20:60
	FSDR	%fr8, %r31, $12	# build/lib.ml#20:3->20:60
	FLDR	%fr9, %r29, $4	# build/lib.ml#20:3->20:60
	SDR	%r1, %r31, $16	# build/lib.ml#20:8->20:22
	ADDI	%r31, %r31, $20	# build/lib.ml#20:8->20:22
	ADDI	%r31, %r31, $4	# build/lib.ml#20:8->20:22
	SIP	# build/lib.ml#20:8->20:22
	J	$min_caml_float_of_int	# build/lib.ml#20:8->20:22
	ADDI	%r31, %r31, $-20	# build/lib.ml#20:8->20:22
	FMV	%fr8, %fr0	# build/lib.ml#20:8->20:22
	LDR	%r1, %r31, $16	# build/lib.ml#20:8->20:22
	FCMP	%fr8, %fr9	# build/lib.ml#20:3->20:60
	FJLT	$min_caml_if_flt.1512	# build/lib.ml#20:3->20:60
	MV	%r0, %r1	# build/lib.ml#20:59->20:60
	J	$min_caml_if_flt_cont.1513	# build/lib.ml#20:3->20:60
min_caml_if_flt.1512:
	MVI	%r9, $4	# build/lib.ml#20:48->20:49
	MUL	%r8, %r1, %r9	# build/lib.ml#20:46->20:49
	MVI	%r9, $2	# build/lib.ml#20:50->20:51
	DIV	%r9, %r8, %r9	# build/lib.ml#20:46->20:51
	SDR	%r1, %r31, $20	# build/lib.ml#20:35->20:52
	MV	%r1, %r9	# build/lib.ml#20:35->20:52
	ADDI	%r31, %r31, $24	# build/lib.ml#20:35->20:52
	ADDI	%r31, %r31, $4	# build/lib.ml#20:35->20:52
	SIP	# build/lib.ml#20:35->20:52
	JC	# build/lib.ml#20:35->20:52
	ADDI	%r31, %r31, $-24	# build/lib.ml#20:35->20:52
	LDR	%r1, %r31, $20	# build/lib.ml#20:35->20:52
min_caml_if_flt_cont.1513:
	LDR	%r9, %r31, $0	# build/lib.ml#20:3->20:60
	LDR	%r8, %r31, $4	# build/lib.ml#20:3->20:60
	FLDR	%fr9, %r31, $8	# build/lib.ml#20:3->20:60
	FLDR	%fr8, %r31, $12	# build/lib.ml#20:3->20:60
	LINK	# build/lib.ml#20:3->20:60
min_caml_int_of_float:
	SDR	%r9, %r31, $0	# build/lib.ml#10:33->10:35
	SDR	%r8, %r31, $4	# build/lib.ml#10:33->10:35
	SDR	%r7, %r31, $8	# build/lib.ml#10:33->10:35
	FSDR	%fr9, %r31, $12	# build/lib.ml#10:33->10:35
	FLDA	%fr9, $min_caml_l.1211	# build/lib.ml#10:33->10:35
	FCMP	%fr0, %fr9	# build/lib.ml#10:26->17:16
	FJLT	$min_caml_if_flt.1514	# build/lib.ml#10:26->17:16
	MV	%r9, %r30	# build/lib.ml#11:2->17:16
	ADDI	%r30, %r30, $8	# build/lib.ml#11:2->17:16
	MVI	%r8, $min_caml_searchsub.1104	# build/lib.ml#11:2->17:16
	SDR	%r8, %r9, $0	# build/lib.ml#11:2->17:16
	FSDR	%fr0, %r9, $4	# build/lib.ml#11:2->17:16
	MV	%r8, %r30	# build/lib.ml#13:2->17:16
	ADDI	%r30, %r30, $8	# build/lib.ml#13:2->17:16
	MVI	%r7, $min_caml_search.1106	# build/lib.ml#13:2->17:16
	SDR	%r7, %r8, $0	# build/lib.ml#13:2->17:16
	FSDR	%fr0, %r8, $4	# build/lib.ml#13:2->17:16
	MVI	%r7, $1	# build/lib.ml#16:20->16:21
	MV	%r1, %r7	# build/lib.ml#16:10->16:21
	MV	%r29, %r9	# build/lib.ml#16:10->16:21
	ADDI	%r31, %r31, $16	# build/lib.ml#16:10->16:21
	ADDI	%r31, %r31, $4	# build/lib.ml#16:10->16:21
	SIP	# build/lib.ml#16:10->16:21
	JC	# build/lib.ml#16:10->16:21
	ADDI	%r31, %r31, $-16	# build/lib.ml#16:10->16:21
	MV	%r9, %r0	# build/lib.ml#16:10->16:21
	MVI	%r7, $2	# build/lib.ml#17:12->17:13
	DIV	%r7, %r9, %r7	# build/lib.ml#17:10->17:13
	MV	%r2, %r9	# build/lib.ml#17:2->17:16
	MV	%r1, %r7	# build/lib.ml#17:2->17:16
	MV	%r29, %r8	# build/lib.ml#17:2->17:16
	ADDI	%r31, %r31, $16	# build/lib.ml#17:2->17:16
	ADDI	%r31, %r31, $4	# build/lib.ml#17:2->17:16
	SIP	# build/lib.ml#17:2->17:16
	JC	# build/lib.ml#17:2->17:16
	ADDI	%r31, %r31, $-16	# build/lib.ml#17:2->17:16
	J	$min_caml_if_flt_cont.1515	# build/lib.ml#10:26->17:16
min_caml_if_flt.1514:
	FNEG2	%fr9, %fr0	# build/lib.ml#10:57->10:60
	FMV	%fr0, %fr9	# build/lib.ml#10:43->10:61
	ADDI	%r31, %r31, $16	# build/lib.ml#10:43->10:61
	ADDI	%r31, %r31, $4	# build/lib.ml#10:43->10:61
	SIP	# build/lib.ml#10:43->10:61
	J	$min_caml_int_of_float	# build/lib.ml#10:43->10:61
	ADDI	%r31, %r31, $-16	# build/lib.ml#10:43->10:61
	MV	%r9, %r0	# build/lib.ml#10:43->10:61
	NEG2	%r0, %r9	# build/lib.ml#10:41->10:62
min_caml_if_flt_cont.1515:
	LDR	%r9, %r31, $0	# build/lib.ml#10:33->10:35
	LDR	%r8, %r31, $4	# build/lib.ml#10:33->10:35
	LDR	%r7, %r31, $8	# build/lib.ml#10:33->10:35
	FLDR	%fr9, %r31, $12	# build/lib.ml#10:33->10:35
	LINK	# build/lib.ml#10:33->10:35
min_caml_search.1106:
	SDR	%r9, %r31, $0	# build/lib.ml#14:4->15:155
	SDR	%r8, %r31, $4	# build/lib.ml#14:4->15:155
	FSDR	%fr9, %r31, $8	# build/lib.ml#14:4->15:155
	FSDR	%fr8, %r31, $12	# build/lib.ml#14:4->15:155
	FSDR	%fr7, %r31, $16	# build/lib.ml#14:4->15:155
	FLDR	%fr9, %r29, $4	# build/lib.ml#14:4->15:155
	SUB	%r8, %r2, %r1	# build/lib.ml#14:8->14:11
	MVI	%r9, $1	# build/lib.ml#14:14->14:15
	CEQ	%r8, %r9	# build/lib.ml#14:4->15:155
	JZ	$min_caml_if_eq.1516	# build/lib.ml#14:4->15:155
	ADD	%r8, %r1, %r2	# build/lib.ml#15:94->15:97
	MVI	%r9, $2	# build/lib.ml#15:99->15:100
	DIV	%r9, %r8, %r9	# build/lib.ml#15:93->15:100
	SDR	%r2, %r31, $20	# build/lib.ml#15:79->15:101
	SDR	%r1, %r31, $24	# build/lib.ml#15:79->15:101
	MV	%r1, %r9	# build/lib.ml#15:79->15:101
	ADDI	%r31, %r31, $28	# build/lib.ml#15:79->15:101
	ADDI	%r31, %r31, $4	# build/lib.ml#15:79->15:101
	SIP	# build/lib.ml#15:79->15:101
	J	$min_caml_float_of_int	# build/lib.ml#15:79->15:101
	ADDI	%r31, %r31, $-28	# build/lib.ml#15:79->15:101
	FMV	%fr8, %fr0	# build/lib.ml#15:79->15:101
	LDR	%r2, %r31, $20	# build/lib.ml#15:79->15:101
	LDR	%r1, %r31, $24	# build/lib.ml#15:79->15:101
	FCMP	%fr8, %fr9	# build/lib.ml#15:75->15:154
	FJLT	$min_caml_if_flt.1518	# build/lib.ml#15:75->15:154
	MVI	%r9, $2	# build/lib.ml#15:152->15:153
	DIV	%r9, %r8, %r9	# build/lib.ml#15:146->15:153
	SDR	%r2, %r31, $28	# build/lib.ml#15:136->15:154
	SDR	%r1, %r31, $32	# build/lib.ml#15:136->15:154
	MV	%r2, %r9	# build/lib.ml#15:136->15:154
	ADDI	%r31, %r31, $36	# build/lib.ml#15:136->15:154
	ADDI	%r31, %r31, $4	# build/lib.ml#15:136->15:154
	SIP	# build/lib.ml#15:136->15:154
	JC	# build/lib.ml#15:136->15:154
	ADDI	%r31, %r31, $-36	# build/lib.ml#15:136->15:154
	LDR	%r2, %r31, $28	# build/lib.ml#15:136->15:154
	LDR	%r1, %r31, $32	# build/lib.ml#15:136->15:154
	J	$min_caml_if_flt_cont.1519	# build/lib.ml#15:75->15:154
min_caml_if_flt.1518:
	MVI	%r9, $2	# build/lib.ml#15:126->15:127
	DIV	%r9, %r8, %r9	# build/lib.ml#15:120->15:127
	SDR	%r2, %r31, $36	# build/lib.ml#15:112->15:130
	SDR	%r1, %r31, $40	# build/lib.ml#15:112->15:130
	MV	%r1, %r9	# build/lib.ml#15:112->15:130
	ADDI	%r31, %r31, $44	# build/lib.ml#15:112->15:130
	ADDI	%r31, %r31, $4	# build/lib.ml#15:112->15:130
	SIP	# build/lib.ml#15:112->15:130
	JC	# build/lib.ml#15:112->15:130
	ADDI	%r31, %r31, $-44	# build/lib.ml#15:112->15:130
	LDR	%r2, %r31, $36	# build/lib.ml#15:112->15:130
	LDR	%r1, %r31, $40	# build/lib.ml#15:112->15:130
min_caml_if_flt_cont.1519:
	J	$min_caml_if_eq_cont.1517	# build/lib.ml#14:4->15:155
min_caml_if_eq.1516:
	SDR	%r2, %r31, $44	# build/lib.ml#15:34->15:48
	SDR	%r1, %r31, $48	# build/lib.ml#15:34->15:48
	ADDI	%r31, %r31, $52	# build/lib.ml#15:34->15:48
	ADDI	%r31, %r31, $4	# build/lib.ml#15:34->15:48
	SIP	# build/lib.ml#15:34->15:48
	J	$min_caml_float_of_int	# build/lib.ml#15:34->15:48
	ADDI	%r31, %r31, $-52	# build/lib.ml#15:34->15:48
	FMV	%fr8, %fr0	# build/lib.ml#15:34->15:48
	LDR	%r2, %r31, $44	# build/lib.ml#15:34->15:48
	LDR	%r1, %r31, $48	# build/lib.ml#15:34->15:48
	FSUB	%fr7, %fr9, %fr8	# build/lib.ml#15:30->15:49
	SDR	%r2, %r31, $52	# build/lib.ml#15:9->15:23
	SDR	%r1, %r31, $56	# build/lib.ml#15:9->15:23
	MV	%r1, %r2	# build/lib.ml#15:9->15:23
	ADDI	%r31, %r31, $60	# build/lib.ml#15:9->15:23
	ADDI	%r31, %r31, $4	# build/lib.ml#15:9->15:23
	SIP	# build/lib.ml#15:9->15:23
	J	$min_caml_float_of_int	# build/lib.ml#15:9->15:23
	ADDI	%r31, %r31, $-60	# build/lib.ml#15:9->15:23
	FMV	%fr8, %fr0	# build/lib.ml#15:9->15:23
	LDR	%r2, %r31, $52	# build/lib.ml#15:9->15:23
	LDR	%r1, %r31, $56	# build/lib.ml#15:9->15:23
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#15:8->15:27
	FCMP	%fr7, %fr9	# build/lib.ml#15:4->15:64
	FJLT	$min_caml_if_flt.1520	# build/lib.ml#15:4->15:64
	MV	%r0, %r2	# build/lib.ml#15:63->15:64
	J	$min_caml_if_flt_cont.1521	# build/lib.ml#15:4->15:64
min_caml_if_flt.1520:
	MV	%r0, %r1	# build/lib.ml#15:56->15:57
min_caml_if_flt_cont.1521:
min_caml_if_eq_cont.1517:
	LDR	%r9, %r31, $0	# build/lib.ml#14:4->15:155
	LDR	%r8, %r31, $4	# build/lib.ml#14:4->15:155
	FLDR	%fr9, %r31, $8	# build/lib.ml#14:4->15:155
	FLDR	%fr8, %r31, $12	# build/lib.ml#14:4->15:155
	FLDR	%fr7, %r31, $16	# build/lib.ml#14:4->15:155
	LINK	# build/lib.ml#14:4->15:155
min_caml_searchsub.1104:
	SDR	%r9, %r31, $0	# build/lib.ml#12:3->12:60
	SDR	%r8, %r31, $4	# build/lib.ml#12:3->12:60
	FSDR	%fr9, %r31, $8	# build/lib.ml#12:3->12:60
	FSDR	%fr8, %r31, $12	# build/lib.ml#12:3->12:60
	FLDR	%fr9, %r29, $4	# build/lib.ml#12:3->12:60
	SDR	%r1, %r31, $16	# build/lib.ml#12:8->12:22
	ADDI	%r31, %r31, $20	# build/lib.ml#12:8->12:22
	ADDI	%r31, %r31, $4	# build/lib.ml#12:8->12:22
	SIP	# build/lib.ml#12:8->12:22
	J	$min_caml_float_of_int	# build/lib.ml#12:8->12:22
	ADDI	%r31, %r31, $-20	# build/lib.ml#12:8->12:22
	FMV	%fr8, %fr0	# build/lib.ml#12:8->12:22
	LDR	%r1, %r31, $16	# build/lib.ml#12:8->12:22
	FCMP	%fr8, %fr9	# build/lib.ml#12:3->12:60
	FJLT	$min_caml_if_flt.1522	# build/lib.ml#12:3->12:60
	MV	%r0, %r1	# build/lib.ml#12:59->12:60
	J	$min_caml_if_flt_cont.1523	# build/lib.ml#12:3->12:60
min_caml_if_flt.1522:
	MVI	%r9, $4	# build/lib.ml#12:48->12:49
	MUL	%r8, %r1, %r9	# build/lib.ml#12:46->12:49
	MVI	%r9, $2	# build/lib.ml#12:50->12:51
	DIV	%r9, %r8, %r9	# build/lib.ml#12:46->12:51
	SDR	%r1, %r31, $20	# build/lib.ml#12:35->12:52
	MV	%r1, %r9	# build/lib.ml#12:35->12:52
	ADDI	%r31, %r31, $24	# build/lib.ml#12:35->12:52
	ADDI	%r31, %r31, $4	# build/lib.ml#12:35->12:52
	SIP	# build/lib.ml#12:35->12:52
	JC	# build/lib.ml#12:35->12:52
	ADDI	%r31, %r31, $-24	# build/lib.ml#12:35->12:52
	LDR	%r1, %r31, $20	# build/lib.ml#12:35->12:52
min_caml_if_flt_cont.1523:
	LDR	%r9, %r31, $0	# build/lib.ml#12:3->12:60
	LDR	%r8, %r31, $4	# build/lib.ml#12:3->12:60
	FLDR	%fr9, %r31, $8	# build/lib.ml#12:3->12:60
	FLDR	%fr8, %r31, $12	# build/lib.ml#12:3->12:60
	LINK	# build/lib.ml#12:3->12:60
min_caml_float_of_int:
	SDR	%r9, %r31, $0	# build/lib.ml#1:33->1:34
	FSDR	%fr9, %r31, $4	# build/lib.ml#1:33->1:34
	MVI	%r9, $0	# build/lib.ml#1:33->1:34
	CMP	%r1, %r9	# build/lib.ml#1:26->9:46
	JZ	$min_caml_if_lt.1524	# build/lib.ml#1:26->9:46
	FLDA	%fr9, $min_caml_l.1224	# build/lib.ml#9:29->9:31
	MVI	%r9, $1	# build/lib.ml#9:32->9:33
	SDR	%r1, %r31, $8	# build/lib.ml#9:21->9:33
	MV	%r2, %r9	# build/lib.ml#9:21->9:33
	FMV	%fr0, %fr9	# build/lib.ml#9:21->9:33
	ADDI	%r31, %r31, $12	# build/lib.ml#9:21->9:33
	ADDI	%r31, %r31, $4	# build/lib.ml#9:21->9:33
	SIP	# build/lib.ml#9:21->9:33
	J	$min_caml_loopa.1138	# build/lib.ml#9:21->9:33
	ADDI	%r31, %r31, $-12	# build/lib.ml#9:21->9:33
	FMV	%fr9, %fr0	# build/lib.ml#9:21->9:33
	LDR	%r1, %r31, $8	# build/lib.ml#9:21->9:33
	MVI	%r9, $1	# build/lib.ml#9:44->9:45
	SDR	%r1, %r31, $12	# build/lib.ml#9:36->9:45
	MV	%r2, %r9	# build/lib.ml#9:36->9:45
	ADDI	%r31, %r31, $16	# build/lib.ml#9:36->9:45
	ADDI	%r31, %r31, $4	# build/lib.ml#9:36->9:45
	SIP	# build/lib.ml#9:36->9:45
	J	$min_caml_loopb.1142	# build/lib.ml#9:36->9:45
	ADDI	%r31, %r31, $-16	# build/lib.ml#9:36->9:45
	MV	%r9, %r0	# build/lib.ml#9:36->9:45
	LDR	%r1, %r31, $12	# build/lib.ml#9:36->9:45
	SDR	%r1, %r31, $16	# build/lib.ml#9:2->9:46
	MV	%r2, %r9	# build/lib.ml#9:2->9:46
	FMV	%fr0, %fr9	# build/lib.ml#9:2->9:46
	ADDI	%r31, %r31, $20	# build/lib.ml#9:2->9:46
	ADDI	%r31, %r31, $4	# build/lib.ml#9:2->9:46
	SIP	# build/lib.ml#9:2->9:46
	J	$min_caml_float_of_intsub.1145	# build/lib.ml#9:2->9:46
	ADDI	%r31, %r31, $-20	# build/lib.ml#9:2->9:46
	LDR	%r1, %r31, $16	# build/lib.ml#9:2->9:46
	J	$min_caml_if_lt_cont.1525	# build/lib.ml#1:26->9:46
min_caml_if_lt.1524:
	NEG2	%r9, %r1	# build/lib.ml#1:57->1:59
	SDR	%r1, %r31, $20	# build/lib.ml#1:43->1:60
	MV	%r1, %r9	# build/lib.ml#1:43->1:60
	ADDI	%r31, %r31, $24	# build/lib.ml#1:43->1:60
	ADDI	%r31, %r31, $4	# build/lib.ml#1:43->1:60
	SIP	# build/lib.ml#1:43->1:60
	J	$min_caml_float_of_int	# build/lib.ml#1:43->1:60
	ADDI	%r31, %r31, $-24	# build/lib.ml#1:43->1:60
	FMV	%fr9, %fr0	# build/lib.ml#1:43->1:60
	LDR	%r1, %r31, $20	# build/lib.ml#1:43->1:60
	FNEG2	%fr0, %fr9	# build/lib.ml#1:40->1:61
min_caml_if_lt_cont.1525:
	LDR	%r9, %r31, $0	# build/lib.ml#1:33->1:34
	FLDR	%fr9, %r31, $4	# build/lib.ml#1:33->1:34
	LINK	# build/lib.ml#1:33->1:34
min_caml_float_of_intsub.1145:
	SDR	%r9, %r31, $0	# build/lib.ml#7:3->8:66
	SDR	%r8, %r31, $4	# build/lib.ml#7:3->8:66
	FSDR	%fr9, %r31, $8	# build/lib.ml#7:3->8:66
	CMP	%r1, %r2	# build/lib.ml#7:3->8:66
	JZ	$min_caml_if_lt.1526	# build/lib.ml#7:3->8:66
	MVI	%r9, $1	# build/lib.ml#7:31->7:32
	CEQ	%r2, %r9	# build/lib.ml#7:24->7:84
	JZ	$min_caml_if_eq.1528	# build/lib.ml#7:24->7:84
	SUB	%r8, %r1, %r2	# build/lib.ml#7:65->7:68
	FLDA	%fr9, $min_caml_l.1210	# build/lib.ml#7:74->7:76
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#7:71->7:76
	MVI	%r9, $2	# build/lib.ml#7:81->7:82
	DIV	%r9, %r2, %r9	# build/lib.ml#7:79->7:82
	SDR	%r2, %r31, $12	# build/lib.ml#7:48->7:83
	SDR	%r1, %r31, $16	# build/lib.ml#7:48->7:83
	MV	%r2, %r9	# build/lib.ml#7:48->7:83
	MV	%r1, %r8	# build/lib.ml#7:48->7:83
	FMV	%fr0, %fr9	# build/lib.ml#7:48->7:83
	ADDI	%r31, %r31, $20	# build/lib.ml#7:48->7:83
	ADDI	%r31, %r31, $4	# build/lib.ml#7:48->7:83
	SIP	# build/lib.ml#7:48->7:83
	J	$min_caml_float_of_intsub.1145	# build/lib.ml#7:48->7:83
	ADDI	%r31, %r31, $-20	# build/lib.ml#7:48->7:83
	LDR	%r2, %r31, $12	# build/lib.ml#7:48->7:83
	LDR	%r1, %r31, $16	# build/lib.ml#7:48->7:83
	MV	%fr9, %fr0	# build/lib.ml#7:48->7:83
	J	$min_caml_if_eq_cont.1529	# build/lib.ml#7:24->7:84
min_caml_if_eq.1528:
	FLDA	%fr0, $min_caml_l.1211	# build/lib.ml#7:38->7:41
	MV	%fr9, %fr0	# build/lib.ml#7:38->7:41
min_caml_if_eq_cont.1529:
	FADD	%fr0, %fr0, %fr9	# build/lib.ml#7:18->7:85
	J	$min_caml_if_lt_cont.1527	# build/lib.ml#7:3->8:66
min_caml_if_lt.1526:
	MVI	%r9, $1	# build/lib.ml#8:16->8:17
	CEQ	%r2, %r9	# build/lib.ml#8:9->8:65
	JZ	$min_caml_if_eq.1530	# build/lib.ml#8:9->8:65
	FLDA	%fr9, $min_caml_l.1210	# build/lib.ml#8:55->8:57
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#8:52->8:57
	MVI	%r9, $2	# build/lib.ml#8:62->8:63
	DIV	%r9, %r2, %r9	# build/lib.ml#8:60->8:63
	SDR	%r2, %r31, $20	# build/lib.ml#8:33->8:64
	SDR	%r1, %r31, $24	# build/lib.ml#8:33->8:64
	MV	%r2, %r9	# build/lib.ml#8:33->8:64
	FMV	%fr0, %fr9	# build/lib.ml#8:33->8:64
	ADDI	%r31, %r31, $28	# build/lib.ml#8:33->8:64
	ADDI	%r31, %r31, $4	# build/lib.ml#8:33->8:64
	SIP	# build/lib.ml#8:33->8:64
	J	$min_caml_float_of_intsub.1145	# build/lib.ml#8:33->8:64
	ADDI	%r31, %r31, $-28	# build/lib.ml#8:33->8:64
	LDR	%r2, %r31, $20	# build/lib.ml#8:33->8:64
	LDR	%r1, %r31, $24	# build/lib.ml#8:33->8:64
	J	$min_caml_if_eq_cont.1531	# build/lib.ml#8:9->8:65
min_caml_if_eq.1530:
	FLDA	%fr0, $min_caml_l.1211	# build/lib.ml#8:23->8:26
min_caml_if_eq_cont.1531:
min_caml_if_lt_cont.1527:
	LDR	%r9, %r31, $0	# build/lib.ml#7:3->8:66
	LDR	%r8, %r31, $4	# build/lib.ml#7:3->8:66
	FLDR	%fr9, %r31, $8	# build/lib.ml#7:3->8:66
	LINK	# build/lib.ml#7:3->8:66
min_caml_loopb.1142:
	SDR	%r9, %r31, $0	# build/lib.ml#5:8->5:9
	SDR	%r8, %r31, $4	# build/lib.ml#5:8->5:9
	MVI	%r9, $4	# build/lib.ml#5:8->5:9
	MUL	%r8, %r2, %r9	# build/lib.ml#5:6->5:9
	MVI	%r9, $2	# build/lib.ml#5:10->5:11
	DIV	%r9, %r8, %r9	# build/lib.ml#5:6->5:11
	CMP	%r1, %r9	# build/lib.ml#5:3->5:43
	JZ	$min_caml_if_lt.1532	# build/lib.ml#5:3->5:43
	MVI	%r9, $4	# build/lib.ml#5:39->5:40
	MUL	%r8, %r2, %r9	# build/lib.ml#5:37->5:40
	MVI	%r9, $2	# build/lib.ml#5:41->5:42
	DIV	%r9, %r8, %r9	# build/lib.ml#5:37->5:42
	SDR	%r2, %r31, $8	# build/lib.ml#5:28->5:43
	SDR	%r1, %r31, $12	# build/lib.ml#5:28->5:43
	MV	%r2, %r9	# build/lib.ml#5:28->5:43
	ADDI	%r31, %r31, $16	# build/lib.ml#5:28->5:43
	ADDI	%r31, %r31, $4	# build/lib.ml#5:28->5:43
	SIP	# build/lib.ml#5:28->5:43
	J	$min_caml_loopb.1142	# build/lib.ml#5:28->5:43
	ADDI	%r31, %r31, $-16	# build/lib.ml#5:28->5:43
	LDR	%r2, %r31, $8	# build/lib.ml#5:28->5:43
	LDR	%r1, %r31, $12	# build/lib.ml#5:28->5:43
	J	$min_caml_if_lt_cont.1533	# build/lib.ml#5:3->5:43
min_caml_if_lt.1532:
	MV	%r0, %r2	# build/lib.ml#5:21->5:22
min_caml_if_lt_cont.1533:
	LDR	%r9, %r31, $0	# build/lib.ml#5:8->5:9
	LDR	%r8, %r31, $4	# build/lib.ml#5:8->5:9
	LINK	# build/lib.ml#5:8->5:9
min_caml_loopa.1138:
	SDR	%r9, %r31, $0	# build/lib.ml#3:8->3:9
	SDR	%r8, %r31, $4	# build/lib.ml#3:8->3:9
	FSDR	%fr9, %r31, $8	# build/lib.ml#3:8->3:9
	MVI	%r9, $4	# build/lib.ml#3:8->3:9
	MUL	%r8, %r2, %r9	# build/lib.ml#3:6->3:9
	MVI	%r9, $2	# build/lib.ml#3:10->3:11
	DIV	%r9, %r8, %r9	# build/lib.ml#3:6->3:11
	CMP	%r1, %r9	# build/lib.ml#3:3->3:50
	JZ	$min_caml_if_lt.1534	# build/lib.ml#3:3->3:50
	FADD	%fr9, %fr0, %fr0	# build/lib.ml#3:37->3:41
	MVI	%r9, $4	# build/lib.ml#3:46->3:47
	MUL	%r8, %r2, %r9	# build/lib.ml#3:44->3:47
	MVI	%r9, $2	# build/lib.ml#3:48->3:49
	DIV	%r9, %r8, %r9	# build/lib.ml#3:44->3:49
	SDR	%r2, %r31, $12	# build/lib.ml#3:28->3:50
	SDR	%r1, %r31, $16	# build/lib.ml#3:28->3:50
	MV	%r2, %r9	# build/lib.ml#3:28->3:50
	FMV	%fr0, %fr9	# build/lib.ml#3:28->3:50
	ADDI	%r31, %r31, $20	# build/lib.ml#3:28->3:50
	ADDI	%r31, %r31, $4	# build/lib.ml#3:28->3:50
	SIP	# build/lib.ml#3:28->3:50
	J	$min_caml_loopa.1138	# build/lib.ml#3:28->3:50
	ADDI	%r31, %r31, $-20	# build/lib.ml#3:28->3:50
	LDR	%r2, %r31, $12	# build/lib.ml#3:28->3:50
	LDR	%r1, %r31, $16	# build/lib.ml#3:28->3:50
	J	$min_caml_if_lt_cont.1535	# build/lib.ml#3:3->3:50
min_caml_if_lt.1534:
min_caml_if_lt_cont.1535:
	LDR	%r9, %r31, $0	# build/lib.ml#3:8->3:9
	LDR	%r8, %r31, $4	# build/lib.ml#3:8->3:9
	FLDR	%fr9, %r31, $8	# build/lib.ml#3:8->3:9
	LINK	# build/lib.ml#3:8->3:9
