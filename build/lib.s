.data
.align	4
min_caml_l.1207:	#0.100000 build/lib.ml#135:26->135:29
	.long	3dcccccd
min_caml_l.1206:	#-0.000000 build/lib.ml#43:75->43:86
	.long	b3d6bf95
min_caml_l.1205:	#0.000000 build/lib.ml#43:31->43:40
	.long	33d6bf95
min_caml_l.1204:	#1.570796 build/lib.ml#52:5->52:22
	.long	3fc90fdb
min_caml_l.1203:	#6.000000 build/lib.ml#69:90->69:93
	.long	40c00000
min_caml_l.1202:	#5040.000000 build/lib.ml#69:69->69:75
	.long	459d8000
min_caml_l.1201:	#120.000000 build/lib.ml#69:37->69:42
	.long	42f00000
min_caml_l.1200:	#1.000000 build/lib.ml#70:118->70:121
	.long	3f800000
min_caml_l.1199:	#24.000000 build/lib.ml#70:94->70:98
	.long	41c00000
min_caml_l.1198:	#720.000000 build/lib.ml#70:71->70:76
	.long	44340000
min_caml_l.1197:	#40320.000000 build/lib.ml#70:40->70:47
	.long	471d8000
min_caml_l.1196:	#5.497787 build/lib.ml#77:9->77:31
	.long	40afeddf
min_caml_l.1195:	#4.712389 build/lib.ml#76:9->76:31
	.long	4096cbe4
min_caml_l.1194:	#3.926991 build/lib.ml#75:9->75:31
	.long	407b53d1
min_caml_l.1193:	#3.141593 build/lib.ml#74:9->74:31
	.long	40490fdb
min_caml_l.1192:	#2.356194 build/lib.ml#73:9->73:31
	.long	4016cbe4
min_caml_l.1191:	#1.570796 build/lib.ml#72:9->72:31
	.long	3fc90fdb
min_caml_l.1190:	#8.000000 build/lib.ml#68:41->68:44
	.long	41000000
min_caml_l.1189:	#0.785398 build/lib.ml#68:20->68:37
	.long	3f490fdb
min_caml_l.1188:	#6.283185 build/lib.ml#67:38->67:62
	.long	40c90fdb
min_caml_l.1187:	#0.000000 build/lib.ml#105:24->105:27
	.long	00000000
min_caml_l.1186:	#2.000000 build/lib.ml#107:24->107:27
	.long	40000000
min_caml_l.1394:	#33554432 build/lib.ml#16:63->16:64
	.long	02000000
min_caml_l.1393:	#1048576 build/lib.ml#16:63->16:64
	.long	00100000
.align	4
.text
min_caml_create_float_array:
	SDR	%r9, %r31, $0	# build/lib.ml#131:14->131:19
	FOUR	%r9, %r1	# build/lib.ml#131:14->131:19
	ADD	%r30, %r30, %r9	# build/lib.ml#131:14->131:19
	MV	%r9, %r30	# build/lib.ml#131:14->131:19
	SDR	%r1, %r31, $4	# build/lib.ml#133:8->133:31
	MV	%r2, %r1	# build/lib.ml#133:8->133:31
	MV	%r1, %r9	# build/lib.ml#133:8->133:31
	ADDI	%r31, %r31, $8	# build/lib.ml#133:8->133:31
	ADDI	%r31, %r31, $4	# build/lib.ml#133:8->133:31
	SIP	# build/lib.ml#133:8->133:31
	J	$min_caml_copy_loop.588	# build/lib.ml#133:8->133:31
	ADDI	%r31, %r31, $-8	# build/lib.ml#133:8->133:31
	LDR	%r1, %r31, $4	# build/lib.ml#133:8->133:31
	LDR	%r9, %r31, $0	# build/lib.ml#131:14->131:19
	LINK	# build/lib.ml#131:14->131:19
min_caml_copy_loop.588:
	SDR	%r9, %r31, $0	# build/lib.ml#124:17->124:18
	MVI	%r9, $0	# build/lib.ml#124:17->124:18
	CMP	%r2, %r9	# build/lib.ml#124:8->129:13
	JZ	$min_caml_if_lt.1395	# build/lib.ml#124:8->129:13
	FSDD	%fr0, %r1, $4, %r2	# build/lib.ml#127:12->127:30
	MVI	%r9, $1	# build/lib.ml#128:33->128:34
	SUB	%r9, %r2, %r9	# build/lib.ml#128:27->128:34
	SDR	%r2, %r31, $4	# build/lib.ml#128:12->128:41
	SDR	%r1, %r31, $8	# build/lib.ml#128:12->128:41
	MV	%r2, %r9	# build/lib.ml#128:12->128:41
	ADDI	%r31, %r31, $12	# build/lib.ml#128:12->128:41
	ADDI	%r31, %r31, $4	# build/lib.ml#128:12->128:41
	SIP	# build/lib.ml#128:12->128:41
	J	$min_caml_copy_loop.588	# build/lib.ml#128:12->128:41
	ADDI	%r31, %r31, $-12	# build/lib.ml#128:12->128:41
	LDR	%r2, %r31, $4	# build/lib.ml#128:12->128:41
	LDR	%r1, %r31, $8	# build/lib.ml#128:12->128:41
	J	$min_caml_if_lt_cont.1396	# build/lib.ml#124:8->129:13
min_caml_if_lt.1395:
	MV	%r0, %r1	# build/lib.ml#124:24->124:27
min_caml_if_lt_cont.1396:
	LDR	%r9, %r31, $0	# build/lib.ml#124:17->124:18
	LINK	# build/lib.ml#124:17->124:18
min_caml_create_int_array:
	SDR	%r9, %r31, $0	# build/lib.ml#118:14->118:19
	FOUR	%r9, %r1	# build/lib.ml#118:14->118:19
	ADD	%r30, %r30, %r9	# build/lib.ml#118:14->118:19
	MV	%r9, %r30	# build/lib.ml#118:14->118:19
	SDR	%r2, %r31, $4	# build/lib.ml#120:8->120:31
	SDR	%r1, %r31, $8	# build/lib.ml#120:8->120:31
	MV	%r3, %r2	# build/lib.ml#120:8->120:31
	MV	%r2, %r1	# build/lib.ml#120:8->120:31
	MV	%r1, %r9	# build/lib.ml#120:8->120:31
	ADDI	%r31, %r31, $12	# build/lib.ml#120:8->120:31
	ADDI	%r31, %r31, $4	# build/lib.ml#120:8->120:31
	SIP	# build/lib.ml#120:8->120:31
	J	$min_caml_copy_loop.600	# build/lib.ml#120:8->120:31
	ADDI	%r31, %r31, $-12	# build/lib.ml#120:8->120:31
	LDR	%r2, %r31, $4	# build/lib.ml#120:8->120:31
	LDR	%r1, %r31, $8	# build/lib.ml#120:8->120:31
	LDR	%r9, %r31, $0	# build/lib.ml#118:14->118:19
	LINK	# build/lib.ml#118:14->118:19
min_caml_copy_loop.600:
	SDR	%r9, %r31, $0	# build/lib.ml#111:17->111:18
	MVI	%r9, $0	# build/lib.ml#111:17->111:18
	CMP	%r2, %r9	# build/lib.ml#111:8->116:13
	JZ	$min_caml_if_lt.1397	# build/lib.ml#111:8->116:13
	SDD	%r3, %r1, $4, %r2	# build/lib.ml#114:12->114:30
	MVI	%r9, $1	# build/lib.ml#115:33->115:34
	SUB	%r9, %r2, %r9	# build/lib.ml#115:27->115:34
	SDR	%r3, %r31, $4	# build/lib.ml#115:12->115:41
	SDR	%r2, %r31, $8	# build/lib.ml#115:12->115:41
	SDR	%r1, %r31, $12	# build/lib.ml#115:12->115:41
	MV	%r2, %r9	# build/lib.ml#115:12->115:41
	ADDI	%r31, %r31, $16	# build/lib.ml#115:12->115:41
	ADDI	%r31, %r31, $4	# build/lib.ml#115:12->115:41
	SIP	# build/lib.ml#115:12->115:41
	J	$min_caml_copy_loop.600	# build/lib.ml#115:12->115:41
	ADDI	%r31, %r31, $-16	# build/lib.ml#115:12->115:41
	LDR	%r3, %r31, $4	# build/lib.ml#115:12->115:41
	LDR	%r2, %r31, $8	# build/lib.ml#115:12->115:41
	LDR	%r1, %r31, $12	# build/lib.ml#115:12->115:41
	J	$min_caml_if_lt_cont.1398	# build/lib.ml#111:8->116:13
min_caml_if_lt.1397:
	MV	%r0, %r1	# build/lib.ml#111:24->111:27
min_caml_if_lt_cont.1398:
	LDR	%r9, %r31, $0	# build/lib.ml#111:17->111:18
	LINK	# build/lib.ml#111:17->111:18
min_caml_fless:
	FCMP	%fr0, %fr1	# build/lib.ml#108:21->108:26
	FJLT	$min_caml_if_flt.1399	# build/lib.ml#108:21->108:26
	MVI	%r0, $0	# build/lib.ml#108:21->108:26
	J	$min_caml_if_flt_cont.1400	# build/lib.ml#108:21->108:26
min_caml_if_flt.1399:
	MVI	%r0, $1	# build/lib.ml#108:21->108:26
min_caml_if_flt_cont.1400:
	LINK	# build/lib.ml#108:21->108:26
min_caml_fhalf:
	FLDA	%fr1, $min_caml_l.1186	# build/lib.ml#107:24->107:27
	FDIV	%fr0, %fr0, %fr1	# build/lib.ml#107:19->107:27
	LINK	# build/lib.ml#107:24->107:27
min_caml_fsqr:
	FMUL	%fr0, %fr0, %fr0	# build/lib.ml#106:18->106:24
	LINK	# build/lib.ml#106:18->106:24
min_caml_fisneg:
	FLDA	%fr1, $min_caml_l.1187	# build/lib.ml#105:24->105:27
	FCMP	%fr0, %fr1	# build/lib.ml#105:20->105:27
	FJLT	$min_caml_if_flt.1401	# build/lib.ml#105:20->105:27
	MVI	%r0, $0	# build/lib.ml#105:20->105:27
	J	$min_caml_if_flt_cont.1402	# build/lib.ml#105:20->105:27
min_caml_if_flt.1401:
	MVI	%r0, $1	# build/lib.ml#105:20->105:27
min_caml_if_flt_cont.1402:
	LINK	# build/lib.ml#105:24->105:27
min_caml_fneg:
	FNEG1	%fr0	# build/lib.ml#104:18->104:22
	LINK	# build/lib.ml#104:18->104:22
min_caml_fispos:
	FLDA	%fr1, $min_caml_l.1187	# build/lib.ml#103:24->103:27
	FCMP	%fr1, %fr0	# build/lib.ml#103:20->103:27
	FJLT	$min_caml_if_flt.1403	# build/lib.ml#103:20->103:27
	MVI	%r0, $0	# build/lib.ml#103:20->103:27
	J	$min_caml_if_flt_cont.1404	# build/lib.ml#103:20->103:27
min_caml_if_flt.1403:
	MVI	%r0, $1	# build/lib.ml#103:20->103:27
min_caml_if_flt_cont.1404:
	LINK	# build/lib.ml#103:24->103:27
min_caml_fiszero:
	FLDA	%fr1, $min_caml_l.1187	# build/lib.ml#102:25->102:28
	FCMP	%fr0, %fr1	# build/lib.ml#102:21->102:28
	FJEQ	$min_caml_if_feq.1405	# build/lib.ml#102:21->102:28
	MVI	%r0, $0	# build/lib.ml#102:21->102:28
	J	$min_caml_if_feq_cont.1406	# build/lib.ml#102:21->102:28
min_caml_if_feq.1405:
	MVI	%r0, $1	# build/lib.ml#102:21->102:28
min_caml_if_feq_cont.1406:
	LINK	# build/lib.ml#102:25->102:28
min_caml_print_char:
	PRINT	%r1	# build/lib.ml#101:24->101:36
	LINK	# build/lib.ml#101:24->101:36
min_caml_print_space:
	MVI	%r1, $32	# build/lib.ml#100:36->100:38
	PRINT	%r1	# build/lib.ml#100:25->100:38
	LINK	# build/lib.ml#100:36->100:38
min_caml_print_newline:
	MVI	%r1, $10	# build/lib.ml#99:38->99:40
	PRINT	%r1	# build/lib.ml#99:27->99:40
	LINK	# build/lib.ml#99:38->99:40
min_caml_print_int:
	SDR	%r9, %r31, $0	# build/lib.ml#80:9->80:10
	MVI	%r9, $0	# build/lib.ml#80:9->80:10
	CMP	%r1, %r9	# build/lib.ml#80:2->97:93
	JZ	$min_caml_if_lt.1407	# build/lib.ml#80:2->97:93
	MVI	%r9, $1	# build/lib.ml#97:91->97:92
	SDR	%r1, %r31, $4	# build/lib.ml#97:78->97:92
	MV	%r2, %r9	# build/lib.ml#97:78->97:92
	ADDI	%r31, %r31, $8	# build/lib.ml#97:78->97:92
	ADDI	%r31, %r31, $4	# build/lib.ml#97:78->97:92
	SIP	# build/lib.ml#97:78->97:92
	J	$min_caml_print_loop.638	# build/lib.ml#97:78->97:92
	ADDI	%r31, %r31, $-8	# build/lib.ml#97:78->97:92
	MV	%r9, %r0	# build/lib.ml#97:78->97:92
	LDR	%r1, %r31, $4	# build/lib.ml#97:78->97:92
	J	$min_caml_if_lt_cont.1408	# build/lib.ml#80:2->97:93
min_caml_if_lt.1407:
	MVI	%r9, $45	# build/lib.ml#80:28->80:30
	PRINT	%r9	# build/lib.ml#80:17->80:30
	NEG2	%r9, %r1	# build/lib.ml#80:42->80:45
	SDR	%r1, %r31, $8	# build/lib.ml#80:31->80:46
	MV	%r1, %r9	# build/lib.ml#80:31->80:46
	ADDI	%r31, %r31, $12	# build/lib.ml#80:31->80:46
	ADDI	%r31, %r31, $4	# build/lib.ml#80:31->80:46
	SIP	# build/lib.ml#80:31->80:46
	J	$min_caml_print_int	# build/lib.ml#80:31->80:46
	ADDI	%r31, %r31, $-12	# build/lib.ml#80:31->80:46
	LDR	%r1, %r31, $8	# build/lib.ml#80:31->80:46
min_caml_if_lt_cont.1408:
	LDR	%r9, %r31, $0	# build/lib.ml#80:9->80:10
	LINK	# build/lib.ml#80:9->80:10
min_caml_print_loop.638:
	SDR	%r9, %r31, $0	# build/lib.ml#96:19->96:25
	SDR	%r1, %r31, $4	# build/lib.ml#96:19->96:25
	MV	%r1, %r2	# build/lib.ml#96:19->96:25
	ADDI	%r31, %r31, $8	# build/lib.ml#96:19->96:25
	ADDI	%r31, %r31, $4	# build/lib.ml#96:19->96:25
	SIP	# build/lib.ml#96:19->96:25
	J	$min_caml_four.629	# build/lib.ml#96:19->96:25
	ADDI	%r31, %r31, $-8	# build/lib.ml#96:19->96:25
	MV	%r9, %r0	# build/lib.ml#96:19->96:25
	LDR	%r1, %r31, $4	# build/lib.ml#96:19->96:25
	SDR	%r1, %r31, $8	# build/lib.ml#96:13->96:26
	MV	%r1, %r9	# build/lib.ml#96:13->96:26
	ADDI	%r31, %r31, $12	# build/lib.ml#96:13->96:26
	ADDI	%r31, %r31, $4	# build/lib.ml#96:13->96:26
	SIP	# build/lib.ml#96:13->96:26
	J	$min_caml_four.629	# build/lib.ml#96:13->96:26
	ADDI	%r31, %r31, $-12	# build/lib.ml#96:13->96:26
	MV	%r9, %r0	# build/lib.ml#96:13->96:26
	LDR	%r1, %r31, $8	# build/lib.ml#96:13->96:26
	SDR	%r1, %r31, $12	# build/lib.ml#96:7->96:27
	MV	%r1, %r9	# build/lib.ml#96:7->96:27
	ADDI	%r31, %r31, $16	# build/lib.ml#96:7->96:27
	ADDI	%r31, %r31, $4	# build/lib.ml#96:7->96:27
	SIP	# build/lib.ml#96:7->96:27
	J	$min_caml_half.631	# build/lib.ml#96:7->96:27
	ADDI	%r31, %r31, $-16	# build/lib.ml#96:7->96:27
	MV	%r9, %r0	# build/lib.ml#96:7->96:27
	LDR	%r1, %r31, $12	# build/lib.ml#96:7->96:27
	ADD	%r9, %r9, %r2	# build/lib.ml#96:6->96:32
	ADD	%r9, %r9, %r2	# build/lib.ml#96:6->96:36
	CMP	%r1, %r9	# build/lib.ml#96:3->97:71
	JZ	$min_caml_if_lt.1409	# build/lib.ml#96:3->97:71
	SDR	%r1, %r31, $16	# build/lib.ml#97:50->97:56
	MV	%r1, %r2	# build/lib.ml#97:50->97:56
	ADDI	%r31, %r31, $20	# build/lib.ml#97:50->97:56
	ADDI	%r31, %r31, $4	# build/lib.ml#97:50->97:56
	SIP	# build/lib.ml#97:50->97:56
	J	$min_caml_four.629	# build/lib.ml#97:50->97:56
	ADDI	%r31, %r31, $-20	# build/lib.ml#97:50->97:56
	MV	%r9, %r0	# build/lib.ml#97:50->97:56
	LDR	%r1, %r31, $16	# build/lib.ml#97:50->97:56
	SDR	%r1, %r31, $20	# build/lib.ml#97:44->97:57
	MV	%r1, %r9	# build/lib.ml#97:44->97:57
	ADDI	%r31, %r31, $24	# build/lib.ml#97:44->97:57
	ADDI	%r31, %r31, $4	# build/lib.ml#97:44->97:57
	SIP	# build/lib.ml#97:44->97:57
	J	$min_caml_four.629	# build/lib.ml#97:44->97:57
	ADDI	%r31, %r31, $-24	# build/lib.ml#97:44->97:57
	MV	%r9, %r0	# build/lib.ml#97:44->97:57
	LDR	%r1, %r31, $20	# build/lib.ml#97:44->97:57
	SDR	%r1, %r31, $24	# build/lib.ml#97:38->97:58
	MV	%r1, %r9	# build/lib.ml#97:38->97:58
	ADDI	%r31, %r31, $28	# build/lib.ml#97:38->97:58
	ADDI	%r31, %r31, $4	# build/lib.ml#97:38->97:58
	SIP	# build/lib.ml#97:38->97:58
	J	$min_caml_half.631	# build/lib.ml#97:38->97:58
	ADDI	%r31, %r31, $-28	# build/lib.ml#97:38->97:58
	MV	%r9, %r0	# build/lib.ml#97:38->97:58
	LDR	%r1, %r31, $24	# build/lib.ml#97:38->97:58
	ADD	%r9, %r9, %r2	# build/lib.ml#97:37->97:63
	ADD	%r9, %r9, %r2	# build/lib.ml#97:37->97:67
	SDR	%r2, %r31, $28	# build/lib.ml#97:23->97:68
	SDR	%r1, %r31, $32	# build/lib.ml#97:23->97:68
	MV	%r2, %r9	# build/lib.ml#97:23->97:68
	ADDI	%r31, %r31, $36	# build/lib.ml#97:23->97:68
	ADDI	%r31, %r31, $4	# build/lib.ml#97:23->97:68
	SIP	# build/lib.ml#97:23->97:68
	J	$min_caml_print_loop.638	# build/lib.ml#97:23->97:68
	ADDI	%r31, %r31, $-36	# build/lib.ml#97:23->97:68
	MV	%r9, %r0	# build/lib.ml#97:23->97:68
	LDR	%r2, %r31, $28	# build/lib.ml#97:23->97:68
	LDR	%r1, %r31, $32	# build/lib.ml#97:23->97:68
	SDR	%r2, %r31, $36	# build/lib.ml#97:8->97:71
	SDR	%r1, %r31, $40	# build/lib.ml#97:8->97:71
	MV	%r1, %r9	# build/lib.ml#97:8->97:71
	ADDI	%r31, %r31, $44	# build/lib.ml#97:8->97:71
	ADDI	%r31, %r31, $4	# build/lib.ml#97:8->97:71
	SIP	# build/lib.ml#97:8->97:71
	J	$min_caml_print_int_sub.635	# build/lib.ml#97:8->97:71
	ADDI	%r31, %r31, $-44	# build/lib.ml#97:8->97:71
	LDR	%r2, %r31, $36	# build/lib.ml#97:8->97:71
	LDR	%r1, %r31, $40	# build/lib.ml#97:8->97:71
	J	$min_caml_if_lt_cont.1410	# build/lib.ml#96:3->97:71
min_caml_if_lt.1409:
	SDR	%r2, %r31, $44	# build/lib.ml#96:46->96:63
	SDR	%r1, %r31, $48	# build/lib.ml#96:46->96:63
	ADDI	%r31, %r31, $52	# build/lib.ml#96:46->96:63
	ADDI	%r31, %r31, $4	# build/lib.ml#96:46->96:63
	SIP	# build/lib.ml#96:46->96:63
	J	$min_caml_print_int_sub.635	# build/lib.ml#96:46->96:63
	ADDI	%r31, %r31, $-52	# build/lib.ml#96:46->96:63
	LDR	%r2, %r31, $44	# build/lib.ml#96:46->96:63
	LDR	%r1, %r31, $48	# build/lib.ml#96:46->96:63
min_caml_if_lt_cont.1410:
	LDR	%r9, %r31, $0	# build/lib.ml#96:19->96:25
	LINK	# build/lib.ml#96:19->96:25
min_caml_print_int_sub.635:
	SDR	%r9, %r31, $0	# build/lib.ml#85:3->94:54
	CMP	%r1, %r2	# build/lib.ml#85:3->94:54
	JZ	$min_caml_if_lt.1411	# build/lib.ml#85:3->94:54
	ADD	%r9, %r2, %r2	# build/lib.ml#86:11->86:16
	CMP	%r1, %r9	# build/lib.ml#86:8->94:54
	JZ	$min_caml_if_lt.1413	# build/lib.ml#86:8->94:54
	ADD	%r9, %r9, %r2	# build/lib.ml#87:11->87:20
	CMP	%r1, %r9	# build/lib.ml#87:8->94:54
	JZ	$min_caml_if_lt.1415	# build/lib.ml#87:8->94:54
	SDR	%r1, %r31, $4	# build/lib.ml#88:11->88:17
	MV	%r1, %r2	# build/lib.ml#88:11->88:17
	ADDI	%r31, %r31, $8	# build/lib.ml#88:11->88:17
	ADDI	%r31, %r31, $4	# build/lib.ml#88:11->88:17
	SIP	# build/lib.ml#88:11->88:17
	J	$min_caml_four.629	# build/lib.ml#88:11->88:17
	ADDI	%r31, %r31, $-8	# build/lib.ml#88:11->88:17
	MV	%r9, %r0	# build/lib.ml#88:11->88:17
	LDR	%r1, %r31, $4	# build/lib.ml#88:11->88:17
	CMP	%r1, %r9	# build/lib.ml#88:8->94:54
	JZ	$min_caml_if_lt.1417	# build/lib.ml#88:8->94:54
	SDR	%r1, %r31, $8	# build/lib.ml#89:12->89:18
	MV	%r1, %r2	# build/lib.ml#89:12->89:18
	ADDI	%r31, %r31, $12	# build/lib.ml#89:12->89:18
	ADDI	%r31, %r31, $4	# build/lib.ml#89:12->89:18
	SIP	# build/lib.ml#89:12->89:18
	J	$min_caml_four.629	# build/lib.ml#89:12->89:18
	ADDI	%r31, %r31, $-12	# build/lib.ml#89:12->89:18
	MV	%r9, %r0	# build/lib.ml#89:12->89:18
	LDR	%r1, %r31, $8	# build/lib.ml#89:12->89:18
	ADD	%r9, %r9, %r2	# build/lib.ml#89:11->89:23
	CMP	%r1, %r9	# build/lib.ml#89:8->94:54
	JZ	$min_caml_if_lt.1419	# build/lib.ml#89:8->94:54
	SDR	%r1, %r31, $12	# build/lib.ml#90:12->90:18
	MV	%r1, %r2	# build/lib.ml#90:12->90:18
	ADDI	%r31, %r31, $16	# build/lib.ml#90:12->90:18
	ADDI	%r31, %r31, $4	# build/lib.ml#90:12->90:18
	SIP	# build/lib.ml#90:12->90:18
	J	$min_caml_four.629	# build/lib.ml#90:12->90:18
	ADDI	%r31, %r31, $-16	# build/lib.ml#90:12->90:18
	MV	%r9, %r0	# build/lib.ml#90:12->90:18
	LDR	%r1, %r31, $12	# build/lib.ml#90:12->90:18
	ADD	%r9, %r9, %r2	# build/lib.ml#90:11->90:23
	ADD	%r9, %r9, %r2	# build/lib.ml#90:11->90:27
	CMP	%r1, %r9	# build/lib.ml#90:8->94:54
	JZ	$min_caml_if_lt.1421	# build/lib.ml#90:8->94:54
	SDR	%r1, %r31, $16	# build/lib.ml#91:12->91:18
	MV	%r1, %r2	# build/lib.ml#91:12->91:18
	ADDI	%r31, %r31, $20	# build/lib.ml#91:12->91:18
	ADDI	%r31, %r31, $4	# build/lib.ml#91:12->91:18
	SIP	# build/lib.ml#91:12->91:18
	J	$min_caml_four.629	# build/lib.ml#91:12->91:18
	ADDI	%r31, %r31, $-20	# build/lib.ml#91:12->91:18
	MV	%r9, %r0	# build/lib.ml#91:12->91:18
	LDR	%r1, %r31, $16	# build/lib.ml#91:12->91:18
	ADD	%r9, %r9, %r2	# build/lib.ml#91:11->91:23
	ADD	%r9, %r9, %r2	# build/lib.ml#91:11->91:27
	ADD	%r9, %r9, %r2	# build/lib.ml#91:11->91:31
	CMP	%r1, %r9	# build/lib.ml#91:8->94:54
	JZ	$min_caml_if_lt.1423	# build/lib.ml#91:8->94:54
	SDR	%r1, %r31, $20	# build/lib.ml#92:24->92:30
	MV	%r1, %r2	# build/lib.ml#92:24->92:30
	ADDI	%r31, %r31, $24	# build/lib.ml#92:24->92:30
	ADDI	%r31, %r31, $4	# build/lib.ml#92:24->92:30
	SIP	# build/lib.ml#92:24->92:30
	J	$min_caml_four.629	# build/lib.ml#92:24->92:30
	ADDI	%r31, %r31, $-24	# build/lib.ml#92:24->92:30
	MV	%r9, %r0	# build/lib.ml#92:24->92:30
	LDR	%r1, %r31, $20	# build/lib.ml#92:24->92:30
	SDR	%r1, %r31, $24	# build/lib.ml#92:18->92:31
	MV	%r1, %r9	# build/lib.ml#92:18->92:31
	ADDI	%r31, %r31, $28	# build/lib.ml#92:18->92:31
	ADDI	%r31, %r31, $4	# build/lib.ml#92:18->92:31
	SIP	# build/lib.ml#92:18->92:31
	J	$min_caml_four.629	# build/lib.ml#92:18->92:31
	ADDI	%r31, %r31, $-28	# build/lib.ml#92:18->92:31
	MV	%r9, %r0	# build/lib.ml#92:18->92:31
	LDR	%r1, %r31, $24	# build/lib.ml#92:18->92:31
	SDR	%r1, %r31, $28	# build/lib.ml#92:12->92:32
	MV	%r1, %r9	# build/lib.ml#92:12->92:32
	ADDI	%r31, %r31, $32	# build/lib.ml#92:12->92:32
	ADDI	%r31, %r31, $4	# build/lib.ml#92:12->92:32
	SIP	# build/lib.ml#92:12->92:32
	J	$min_caml_half.631	# build/lib.ml#92:12->92:32
	ADDI	%r31, %r31, $-32	# build/lib.ml#92:12->92:32
	MV	%r9, %r0	# build/lib.ml#92:12->92:32
	LDR	%r1, %r31, $28	# build/lib.ml#92:12->92:32
	CMP	%r1, %r9	# build/lib.ml#92:8->94:54
	JZ	$min_caml_if_lt.1425	# build/lib.ml#92:8->94:54
	SDR	%r1, %r31, $32	# build/lib.ml#93:24->93:30
	MV	%r1, %r2	# build/lib.ml#93:24->93:30
	ADDI	%r31, %r31, $36	# build/lib.ml#93:24->93:30
	ADDI	%r31, %r31, $4	# build/lib.ml#93:24->93:30
	SIP	# build/lib.ml#93:24->93:30
	J	$min_caml_four.629	# build/lib.ml#93:24->93:30
	ADDI	%r31, %r31, $-36	# build/lib.ml#93:24->93:30
	MV	%r9, %r0	# build/lib.ml#93:24->93:30
	LDR	%r1, %r31, $32	# build/lib.ml#93:24->93:30
	SDR	%r1, %r31, $36	# build/lib.ml#93:18->93:31
	MV	%r1, %r9	# build/lib.ml#93:18->93:31
	ADDI	%r31, %r31, $40	# build/lib.ml#93:18->93:31
	ADDI	%r31, %r31, $4	# build/lib.ml#93:18->93:31
	SIP	# build/lib.ml#93:18->93:31
	J	$min_caml_four.629	# build/lib.ml#93:18->93:31
	ADDI	%r31, %r31, $-40	# build/lib.ml#93:18->93:31
	MV	%r9, %r0	# build/lib.ml#93:18->93:31
	LDR	%r1, %r31, $36	# build/lib.ml#93:18->93:31
	SDR	%r1, %r31, $40	# build/lib.ml#93:12->93:32
	MV	%r1, %r9	# build/lib.ml#93:12->93:32
	ADDI	%r31, %r31, $44	# build/lib.ml#93:12->93:32
	ADDI	%r31, %r31, $4	# build/lib.ml#93:12->93:32
	SIP	# build/lib.ml#93:12->93:32
	J	$min_caml_half.631	# build/lib.ml#93:12->93:32
	ADDI	%r31, %r31, $-44	# build/lib.ml#93:12->93:32
	MV	%r9, %r0	# build/lib.ml#93:12->93:32
	LDR	%r1, %r31, $40	# build/lib.ml#93:12->93:32
	ADD	%r9, %r9, %r2	# build/lib.ml#93:11->93:37
	CMP	%r1, %r9	# build/lib.ml#93:8->94:54
	JZ	$min_caml_if_lt.1427	# build/lib.ml#93:8->94:54
	MVI	%r9, $57	# build/lib.ml#94:20->94:22
	PRINT	%r9	# build/lib.ml#94:9->94:22
	SDR	%r1, %r31, $44	# build/lib.ml#94:40->94:46
	MV	%r1, %r2	# build/lib.ml#94:40->94:46
	ADDI	%r31, %r31, $48	# build/lib.ml#94:40->94:46
	ADDI	%r31, %r31, $4	# build/lib.ml#94:40->94:46
	SIP	# build/lib.ml#94:40->94:46
	J	$min_caml_four.629	# build/lib.ml#94:40->94:46
	ADDI	%r31, %r31, $-48	# build/lib.ml#94:40->94:46
	MV	%r9, %r0	# build/lib.ml#94:40->94:46
	LDR	%r1, %r31, $44	# build/lib.ml#94:40->94:46
	SDR	%r1, %r31, $48	# build/lib.ml#94:34->94:47
	MV	%r1, %r9	# build/lib.ml#94:34->94:47
	ADDI	%r31, %r31, $52	# build/lib.ml#94:34->94:47
	ADDI	%r31, %r31, $4	# build/lib.ml#94:34->94:47
	SIP	# build/lib.ml#94:34->94:47
	J	$min_caml_four.629	# build/lib.ml#94:34->94:47
	ADDI	%r31, %r31, $-52	# build/lib.ml#94:34->94:47
	MV	%r9, %r0	# build/lib.ml#94:34->94:47
	LDR	%r1, %r31, $48	# build/lib.ml#94:34->94:47
	SDR	%r1, %r31, $52	# build/lib.ml#94:28->94:48
	MV	%r1, %r9	# build/lib.ml#94:28->94:48
	ADDI	%r31, %r31, $56	# build/lib.ml#94:28->94:48
	ADDI	%r31, %r31, $4	# build/lib.ml#94:28->94:48
	SIP	# build/lib.ml#94:28->94:48
	J	$min_caml_half.631	# build/lib.ml#94:28->94:48
	ADDI	%r31, %r31, $-56	# build/lib.ml#94:28->94:48
	MV	%r9, %r0	# build/lib.ml#94:28->94:48
	LDR	%r1, %r31, $52	# build/lib.ml#94:28->94:48
	SUB	%r9, %r1, %r9	# build/lib.ml#94:23->94:49
	SUB	%r0, %r9, %r2	# build/lib.ml#94:23->94:53
	J	$min_caml_if_lt_cont.1428	# build/lib.ml#93:8->94:54
min_caml_if_lt.1427:
	MVI	%r9, $56	# build/lib.ml#93:59->93:61
	PRINT	%r9	# build/lib.ml#93:48->93:61
	SDR	%r1, %r31, $56	# build/lib.ml#93:79->93:85
	MV	%r1, %r2	# build/lib.ml#93:79->93:85
	ADDI	%r31, %r31, $60	# build/lib.ml#93:79->93:85
	ADDI	%r31, %r31, $4	# build/lib.ml#93:79->93:85
	SIP	# build/lib.ml#93:79->93:85
	J	$min_caml_four.629	# build/lib.ml#93:79->93:85
	ADDI	%r31, %r31, $-60	# build/lib.ml#93:79->93:85
	MV	%r9, %r0	# build/lib.ml#93:79->93:85
	LDR	%r1, %r31, $56	# build/lib.ml#93:79->93:85
	SDR	%r1, %r31, $60	# build/lib.ml#93:73->93:86
	MV	%r1, %r9	# build/lib.ml#93:73->93:86
	ADDI	%r31, %r31, $64	# build/lib.ml#93:73->93:86
	ADDI	%r31, %r31, $4	# build/lib.ml#93:73->93:86
	SIP	# build/lib.ml#93:73->93:86
	J	$min_caml_four.629	# build/lib.ml#93:73->93:86
	ADDI	%r31, %r31, $-64	# build/lib.ml#93:73->93:86
	MV	%r9, %r0	# build/lib.ml#93:73->93:86
	LDR	%r1, %r31, $60	# build/lib.ml#93:73->93:86
	SDR	%r1, %r31, $64	# build/lib.ml#93:67->93:87
	MV	%r1, %r9	# build/lib.ml#93:67->93:87
	ADDI	%r31, %r31, $68	# build/lib.ml#93:67->93:87
	ADDI	%r31, %r31, $4	# build/lib.ml#93:67->93:87
	SIP	# build/lib.ml#93:67->93:87
	J	$min_caml_half.631	# build/lib.ml#93:67->93:87
	ADDI	%r31, %r31, $-68	# build/lib.ml#93:67->93:87
	MV	%r9, %r0	# build/lib.ml#93:67->93:87
	LDR	%r1, %r31, $64	# build/lib.ml#93:67->93:87
	SUB	%r0, %r1, %r9	# build/lib.ml#93:62->93:88
min_caml_if_lt_cont.1428:
	J	$min_caml_if_lt_cont.1426	# build/lib.ml#92:8->94:54
min_caml_if_lt.1425:
	MVI	%r9, $55	# build/lib.ml#92:55->92:57
	PRINT	%r9	# build/lib.ml#92:44->92:57
	SDR	%r1, %r31, $68	# build/lib.ml#92:63->92:69
	MV	%r1, %r2	# build/lib.ml#92:63->92:69
	ADDI	%r31, %r31, $72	# build/lib.ml#92:63->92:69
	ADDI	%r31, %r31, $4	# build/lib.ml#92:63->92:69
	SIP	# build/lib.ml#92:63->92:69
	J	$min_caml_four.629	# build/lib.ml#92:63->92:69
	ADDI	%r31, %r31, $-72	# build/lib.ml#92:63->92:69
	MV	%r9, %r0	# build/lib.ml#92:63->92:69
	LDR	%r1, %r31, $68	# build/lib.ml#92:63->92:69
	SUB	%r9, %r1, %r9	# build/lib.ml#92:58->92:70
	SUB	%r9, %r9, %r2	# build/lib.ml#92:58->92:74
	SUB	%r9, %r9, %r2	# build/lib.ml#92:58->92:78
	SUB	%r0, %r9, %r2	# build/lib.ml#92:58->92:82
min_caml_if_lt_cont.1426:
	J	$min_caml_if_lt_cont.1424	# build/lib.ml#91:8->94:54
min_caml_if_lt.1423:
	MVI	%r9, $54	# build/lib.ml#91:53->91:55
	PRINT	%r9	# build/lib.ml#91:42->91:55
	SDR	%r1, %r31, $72	# build/lib.ml#91:61->91:67
	MV	%r1, %r2	# build/lib.ml#91:61->91:67
	ADDI	%r31, %r31, $76	# build/lib.ml#91:61->91:67
	ADDI	%r31, %r31, $4	# build/lib.ml#91:61->91:67
	SIP	# build/lib.ml#91:61->91:67
	J	$min_caml_four.629	# build/lib.ml#91:61->91:67
	ADDI	%r31, %r31, $-76	# build/lib.ml#91:61->91:67
	MV	%r9, %r0	# build/lib.ml#91:61->91:67
	LDR	%r1, %r31, $72	# build/lib.ml#91:61->91:67
	SUB	%r9, %r1, %r9	# build/lib.ml#91:56->91:68
	SUB	%r9, %r9, %r2	# build/lib.ml#91:56->91:72
	SUB	%r0, %r9, %r2	# build/lib.ml#91:56->91:76
min_caml_if_lt_cont.1424:
	J	$min_caml_if_lt_cont.1422	# build/lib.ml#90:8->94:54
min_caml_if_lt.1421:
	MVI	%r9, $53	# build/lib.ml#90:49->90:51
	PRINT	%r9	# build/lib.ml#90:38->90:51
	SDR	%r1, %r31, $76	# build/lib.ml#90:57->90:63
	MV	%r1, %r2	# build/lib.ml#90:57->90:63
	ADDI	%r31, %r31, $80	# build/lib.ml#90:57->90:63
	ADDI	%r31, %r31, $4	# build/lib.ml#90:57->90:63
	SIP	# build/lib.ml#90:57->90:63
	J	$min_caml_four.629	# build/lib.ml#90:57->90:63
	ADDI	%r31, %r31, $-80	# build/lib.ml#90:57->90:63
	MV	%r9, %r0	# build/lib.ml#90:57->90:63
	LDR	%r1, %r31, $76	# build/lib.ml#90:57->90:63
	SUB	%r9, %r1, %r9	# build/lib.ml#90:52->90:64
	SUB	%r0, %r9, %r2	# build/lib.ml#90:52->90:68
min_caml_if_lt_cont.1422:
	J	$min_caml_if_lt_cont.1420	# build/lib.ml#89:8->94:54
min_caml_if_lt.1419:
	MVI	%r9, $52	# build/lib.ml#89:45->89:47
	PRINT	%r9	# build/lib.ml#89:34->89:47
	SDR	%r1, %r31, $80	# build/lib.ml#89:53->89:59
	MV	%r1, %r2	# build/lib.ml#89:53->89:59
	ADDI	%r31, %r31, $84	# build/lib.ml#89:53->89:59
	ADDI	%r31, %r31, $4	# build/lib.ml#89:53->89:59
	SIP	# build/lib.ml#89:53->89:59
	J	$min_caml_four.629	# build/lib.ml#89:53->89:59
	ADDI	%r31, %r31, $-84	# build/lib.ml#89:53->89:59
	MV	%r9, %r0	# build/lib.ml#89:53->89:59
	LDR	%r1, %r31, $80	# build/lib.ml#89:53->89:59
	SUB	%r0, %r1, %r9	# build/lib.ml#89:48->89:60
min_caml_if_lt_cont.1420:
	J	$min_caml_if_lt_cont.1418	# build/lib.ml#88:8->94:54
min_caml_if_lt.1417:
	MVI	%r9, $51	# build/lib.ml#88:39->88:41
	PRINT	%r9	# build/lib.ml#88:28->88:41
	SUB	%r9, %r1, %r2	# build/lib.ml#88:42->88:47
	SUB	%r9, %r9, %r2	# build/lib.ml#88:42->88:51
	SUB	%r0, %r9, %r2	# build/lib.ml#88:42->88:55
min_caml_if_lt_cont.1418:
	J	$min_caml_if_lt_cont.1416	# build/lib.ml#87:8->94:54
min_caml_if_lt.1415:
	MVI	%r9, $50	# build/lib.ml#87:42->87:44
	PRINT	%r9	# build/lib.ml#87:31->87:44
	SUB	%r9, %r1, %r2	# build/lib.ml#87:45->87:50
	SUB	%r0, %r9, %r2	# build/lib.ml#87:45->87:54
min_caml_if_lt_cont.1416:
	J	$min_caml_if_lt_cont.1414	# build/lib.ml#86:8->94:54
min_caml_if_lt.1413:
	MVI	%r9, $49	# build/lib.ml#86:38->86:40
	PRINT	%r9	# build/lib.ml#86:27->86:40
	SUB	%r0, %r1, %r2	# build/lib.ml#86:41->86:46
min_caml_if_lt_cont.1414:
	J	$min_caml_if_lt_cont.1412	# build/lib.ml#85:3->94:54
min_caml_if_lt.1411:
	MVI	%r9, $48	# build/lib.ml#85:29->85:31
	PRINT	%r9	# build/lib.ml#85:18->85:31
	MV	%r0, %r1	# build/lib.ml#85:32->85:33
min_caml_if_lt_cont.1412:
	LDR	%r9, %r31, $0	# build/lib.ml#85:3->94:54
	LINK	# build/lib.ml#85:3->94:54
min_caml_z.633:
	LINK	# build/lib.ml#83:16->83:18
min_caml_half.631:
	SDR	%r10, %r31, $0	# build/lib.ml#82:21->82:22
	MVI	%r10, $2	# build/lib.ml#82:21->82:22
	DIV	%r0, %r1, %r10	# build/lib.ml#82:19->82:22
	LDR	%r10, %r31, $0	# build/lib.ml#82:21->82:22
	LINK	# build/lib.ml#82:21->82:22
min_caml_four.629:
	SDR	%r10, %r31, $0	# build/lib.ml#81:21->81:22
	MVI	%r10, $4	# build/lib.ml#81:21->81:22
	MUL	%r0, %r1, %r10	# build/lib.ml#81:19->81:22
	LDR	%r10, %r31, $0	# build/lib.ml#81:21->81:22
	LINK	# build/lib.ml#81:21->81:22
min_caml_sin:
	SDR	%r9, %r31, $0	# build/lib.ml#67:38->67:62
	FSDR	%fr9, %r31, $4	# build/lib.ml#67:38->67:62
	FSDR	%fr8, %r31, $8	# build/lib.ml#67:38->67:62
	FLDA	%fr9, $min_caml_l.1188	# build/lib.ml#67:38->67:62
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#67:32->67:63
	FMV	%fr0, %fr9	# build/lib.ml#67:25->67:64
	ADDI	%r31, %r31, $12	# build/lib.ml#67:25->67:64
	ADDI	%r31, %r31, $4	# build/lib.ml#67:25->67:64
	SIP	# build/lib.ml#67:25->67:64
	J	$min_caml_floor	# build/lib.ml#67:25->67:64
	ADDI	%r31, %r31, $-12	# build/lib.ml#67:25->67:64
	MV	%r9, %r0	# build/lib.ml#67:25->67:64
	MV	%r1, %r9	# build/lib.ml#67:11->67:65
	ADDI	%r31, %r31, $12	# build/lib.ml#67:11->67:65
	ADDI	%r31, %r31, $4	# build/lib.ml#67:11->67:65
	SIP	# build/lib.ml#67:11->67:65
	J	$min_caml_float_of_int	# build/lib.ml#67:11->67:65
	ADDI	%r31, %r31, $-12	# build/lib.ml#67:11->67:65
	FMV	%fr9, %fr0	# build/lib.ml#67:11->67:65
	FLDA	%fr8, $min_caml_l.1189	# build/lib.ml#68:20->68:37
	FMUL	%fr8, %fr9, %fr8	# build/lib.ml#68:15->68:37
	FLDA	%fr9, $min_caml_l.1190	# build/lib.ml#68:41->68:44
	FMUL	%fr9, %fr8, %fr9	# build/lib.ml#68:15->68:44
	FSUB	%fr9, %fr0, %fr9	# build/lib.ml#68:10->68:44
	FLDA	%fr8, $min_caml_l.1189	# build/lib.ml#71:9->71:26
	FCMP	%fr9, %fr8	# build/lib.ml#71:2->78:40
	FJLT	$min_caml_if_flt.1429	# build/lib.ml#71:2->78:40
	FLDA	%fr8, $min_caml_l.1191	# build/lib.ml#72:9->72:31
	FCMP	%fr9, %fr8	# build/lib.ml#72:2->78:40
	FJLT	$min_caml_if_flt.1431	# build/lib.ml#72:2->78:40
	FLDA	%fr8, $min_caml_l.1192	# build/lib.ml#73:9->73:31
	FCMP	%fr9, %fr8	# build/lib.ml#73:2->78:40
	FJLT	$min_caml_if_flt.1433	# build/lib.ml#73:2->78:40
	FLDA	%fr8, $min_caml_l.1193	# build/lib.ml#74:9->74:31
	FCMP	%fr9, %fr8	# build/lib.ml#74:2->78:40
	FJLT	$min_caml_if_flt.1435	# build/lib.ml#74:2->78:40
	FLDA	%fr8, $min_caml_l.1194	# build/lib.ml#75:9->75:31
	FCMP	%fr9, %fr8	# build/lib.ml#75:2->78:40
	FJLT	$min_caml_if_flt.1437	# build/lib.ml#75:2->78:40
	FLDA	%fr8, $min_caml_l.1195	# build/lib.ml#76:9->76:31
	FCMP	%fr9, %fr8	# build/lib.ml#76:2->78:40
	FJLT	$min_caml_if_flt.1439	# build/lib.ml#76:2->78:40
	FLDA	%fr8, $min_caml_l.1196	# build/lib.ml#77:9->77:31
	FCMP	%fr9, %fr8	# build/lib.ml#77:2->78:40
	FJLT	$min_caml_if_flt.1441	# build/lib.ml#77:2->78:40
	FLDA	%fr8, $min_caml_l.1188	# build/lib.ml#78:13->78:35
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#78:13->78:38
	FMV	%fr0, %fr9	# build/lib.ml#78:5->78:39
	ADDI	%r31, %r31, $12	# build/lib.ml#78:5->78:39
	ADDI	%r31, %r31, $4	# build/lib.ml#78:5->78:39
	SIP	# build/lib.ml#78:5->78:39
	J	$min_caml_sinsub.722	# build/lib.ml#78:5->78:39
	ADDI	%r31, %r31, $-12	# build/lib.ml#78:5->78:39
	FMV	%fr9, %fr0	# build/lib.ml#78:5->78:39
	FNEG2	%fr0, %fr9	# build/lib.ml#78:2->78:40
	J	$min_caml_if_flt_cont.1442	# build/lib.ml#77:2->78:40
min_caml_if_flt.1441:
	FLDA	%fr8, $min_caml_l.1195	# build/lib.ml#77:53->77:75
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#77:48->77:75
	FMV	%fr0, %fr9	# build/lib.ml#77:40->77:76
	ADDI	%r31, %r31, $12	# build/lib.ml#77:40->77:76
	ADDI	%r31, %r31, $4	# build/lib.ml#77:40->77:76
	SIP	# build/lib.ml#77:40->77:76
	J	$min_caml_cossub.724	# build/lib.ml#77:40->77:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#77:40->77:76
	FMV	%fr9, %fr0	# build/lib.ml#77:40->77:76
	FNEG2	%fr0, %fr9	# build/lib.ml#77:37->77:77
min_caml_if_flt_cont.1442:
	J	$min_caml_if_flt_cont.1440	# build/lib.ml#76:2->78:40
min_caml_if_flt.1439:
	FLDA	%fr8, $min_caml_l.1195	# build/lib.ml#76:48->76:70
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#76:48->76:73
	FMV	%fr0, %fr9	# build/lib.ml#76:40->76:74
	ADDI	%r31, %r31, $12	# build/lib.ml#76:40->76:74
	ADDI	%r31, %r31, $4	# build/lib.ml#76:40->76:74
	SIP	# build/lib.ml#76:40->76:74
	J	$min_caml_cossub.724	# build/lib.ml#76:40->76:74
	ADDI	%r31, %r31, $-12	# build/lib.ml#76:40->76:74
	FMV	%fr9, %fr0	# build/lib.ml#76:40->76:74
	FNEG2	%fr0, %fr9	# build/lib.ml#76:37->76:75
min_caml_if_flt_cont.1440:
	J	$min_caml_if_flt_cont.1438	# build/lib.ml#75:2->78:40
min_caml_if_flt.1437:
	FLDA	%fr8, $min_caml_l.1193	# build/lib.ml#75:53->75:75
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#75:48->75:75
	FMV	%fr0, %fr9	# build/lib.ml#75:40->75:76
	ADDI	%r31, %r31, $12	# build/lib.ml#75:40->75:76
	ADDI	%r31, %r31, $4	# build/lib.ml#75:40->75:76
	SIP	# build/lib.ml#75:40->75:76
	J	$min_caml_sinsub.722	# build/lib.ml#75:40->75:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#75:40->75:76
	FMV	%fr9, %fr0	# build/lib.ml#75:40->75:76
	FNEG2	%fr0, %fr9	# build/lib.ml#75:37->75:77
min_caml_if_flt_cont.1438:
	J	$min_caml_if_flt_cont.1436	# build/lib.ml#74:2->78:40
min_caml_if_flt.1435:
	FLDA	%fr8, $min_caml_l.1193	# build/lib.ml#74:45->74:67
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#74:45->74:70
	FMV	%fr0, %fr9	# build/lib.ml#74:37->74:71
	ADDI	%r31, %r31, $12	# build/lib.ml#74:37->74:71
	ADDI	%r31, %r31, $4	# build/lib.ml#74:37->74:71
	SIP	# build/lib.ml#74:37->74:71
	J	$min_caml_sinsub.722	# build/lib.ml#74:37->74:71
	ADDI	%r31, %r31, $-12	# build/lib.ml#74:37->74:71
min_caml_if_flt_cont.1436:
	J	$min_caml_if_flt_cont.1434	# build/lib.ml#73:2->78:40
min_caml_if_flt.1433:
	FLDA	%fr8, $min_caml_l.1191	# build/lib.ml#73:48->73:70
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#73:45->73:70
	FMV	%fr0, %fr9	# build/lib.ml#73:37->73:71
	ADDI	%r31, %r31, $12	# build/lib.ml#73:37->73:71
	ADDI	%r31, %r31, $4	# build/lib.ml#73:37->73:71
	SIP	# build/lib.ml#73:37->73:71
	J	$min_caml_cossub.724	# build/lib.ml#73:37->73:71
	ADDI	%r31, %r31, $-12	# build/lib.ml#73:37->73:71
min_caml_if_flt_cont.1434:
	J	$min_caml_if_flt_cont.1432	# build/lib.ml#72:2->78:40
min_caml_if_flt.1431:
	FLDA	%fr8, $min_caml_l.1191	# build/lib.ml#72:45->72:67
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#72:45->72:70
	FMV	%fr0, %fr9	# build/lib.ml#72:37->72:71
	ADDI	%r31, %r31, $12	# build/lib.ml#72:37->72:71
	ADDI	%r31, %r31, $4	# build/lib.ml#72:37->72:71
	SIP	# build/lib.ml#72:37->72:71
	J	$min_caml_cossub.724	# build/lib.ml#72:37->72:71
	ADDI	%r31, %r31, $-12	# build/lib.ml#72:37->72:71
min_caml_if_flt_cont.1432:
	J	$min_caml_if_flt_cont.1430	# build/lib.ml#71:2->78:40
min_caml_if_flt.1429:
	FMV	%fr0, %fr9	# build/lib.ml#71:32->71:40
	ADDI	%r31, %r31, $12	# build/lib.ml#71:32->71:40
	ADDI	%r31, %r31, $4	# build/lib.ml#71:32->71:40
	SIP	# build/lib.ml#71:32->71:40
	J	$min_caml_sinsub.722	# build/lib.ml#71:32->71:40
	ADDI	%r31, %r31, $-12	# build/lib.ml#71:32->71:40
min_caml_if_flt_cont.1430:
	LDR	%r9, %r31, $0	# build/lib.ml#67:38->67:62
	FLDR	%fr9, %r31, $4	# build/lib.ml#67:38->67:62
	FLDR	%fr8, %r31, $8	# build/lib.ml#67:38->67:62
	LINK	# build/lib.ml#67:38->67:62
min_caml_cossub.724:
	FSDR	%fr13, %r31, $0	# build/lib.ml#70:22->70:26
	FSDR	%fr12, %r31, $4	# build/lib.ml#70:22->70:26
	FSDR	%fr11, %r31, $8	# build/lib.ml#70:22->70:26
	FSDR	%fr10, %r31, $12	# build/lib.ml#70:22->70:26
	FMUL	%fr13, %fr0, %fr0	# build/lib.ml#70:22->70:26
	FMUL	%fr1, %fr13, %fr0	# build/lib.ml#70:22->70:29
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#70:22->70:32
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#70:22->70:35
	FMUL	%fr11, %fr1, %fr0	# build/lib.ml#70:22->70:38
	FLDA	%fr1, $min_caml_l.1197	# build/lib.ml#70:40->70:47
	FDIV	%fr10, %fr11, %fr1	# build/lib.ml#70:22->70:47
	FLDA	%fr1, $min_caml_l.1198	# build/lib.ml#70:71->70:76
	FDIV	%fr1, %fr11, %fr1	# build/lib.ml#70:53->70:76
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#70:21->70:77
	FLDA	%fr1, $min_caml_l.1199	# build/lib.ml#70:94->70:98
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#70:82->70:98
	FADD	%fr10, %fr10, %fr1	# build/lib.ml#70:21->70:99
	FLDA	%fr1, $min_caml_l.1186	# build/lib.ml#70:110->70:113
	FDIV	%fr1, %fr13, %fr1	# build/lib.ml#70:104->70:113
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#70:21->70:114
	FLDA	%fr1, $min_caml_l.1200	# build/lib.ml#70:118->70:121
	FADD	%fr0, %fr10, %fr1	# build/lib.ml#70:21->70:121
	FLDR	%fr13, %r31, $0	# build/lib.ml#70:22->70:26
	FLDR	%fr12, %r31, $4	# build/lib.ml#70:22->70:26
	FLDR	%fr11, %r31, $8	# build/lib.ml#70:22->70:26
	FLDR	%fr10, %r31, $12	# build/lib.ml#70:22->70:26
	LINK	# build/lib.ml#70:22->70:26
min_caml_sinsub.722:
	FSDR	%fr12, %r31, $0	# build/lib.ml#69:22->69:26
	FSDR	%fr11, %r31, $4	# build/lib.ml#69:22->69:26
	FSDR	%fr10, %r31, $8	# build/lib.ml#69:22->69:26
	FMUL	%fr1, %fr0, %fr0	# build/lib.ml#69:22->69:26
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#69:22->69:29
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#69:22->69:32
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#69:22->69:35
	FLDA	%fr10, $min_caml_l.1201	# build/lib.ml#69:37->69:42
	FDIV	%fr11, %fr1, %fr10	# build/lib.ml#69:22->69:42
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#69:48->69:64
	FMUL	%fr10, %fr1, %fr0	# build/lib.ml#69:48->69:67
	FLDA	%fr1, $min_caml_l.1202	# build/lib.ml#69:69->69:75
	FDIV	%fr1, %fr10, %fr1	# build/lib.ml#69:48->69:75
	FSUB	%fr10, %fr11, %fr1	# build/lib.ml#69:21->69:76
	FLDA	%fr1, $min_caml_l.1203	# build/lib.ml#69:90->69:93
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#69:81->69:93
	FSUB	%fr1, %fr10, %fr1	# build/lib.ml#69:21->69:94
	FADD	%fr0, %fr1, %fr0	# build/lib.ml#69:21->69:99
	FLDR	%fr12, %r31, $0	# build/lib.ml#69:22->69:26
	FLDR	%fr11, %r31, $4	# build/lib.ml#69:22->69:26
	FLDR	%fr10, %r31, $8	# build/lib.ml#69:22->69:26
	LINK	# build/lib.ml#69:22->69:26
min_caml_cos:
	SDR	%r9, %r31, $0	# build/lib.ml#54:38->54:60
	FSDR	%fr9, %r31, $4	# build/lib.ml#54:38->54:60
	FSDR	%fr8, %r31, $8	# build/lib.ml#54:38->54:60
	FLDA	%fr9, $min_caml_l.1188	# build/lib.ml#54:38->54:60
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#54:32->54:61
	FMV	%fr0, %fr9	# build/lib.ml#54:25->54:62
	ADDI	%r31, %r31, $12	# build/lib.ml#54:25->54:62
	ADDI	%r31, %r31, $4	# build/lib.ml#54:25->54:62
	SIP	# build/lib.ml#54:25->54:62
	J	$min_caml_floor	# build/lib.ml#54:25->54:62
	ADDI	%r31, %r31, $-12	# build/lib.ml#54:25->54:62
	MV	%r9, %r0	# build/lib.ml#54:25->54:62
	MV	%r1, %r9	# build/lib.ml#54:11->54:63
	ADDI	%r31, %r31, $12	# build/lib.ml#54:11->54:63
	ADDI	%r31, %r31, $4	# build/lib.ml#54:11->54:63
	SIP	# build/lib.ml#54:11->54:63
	J	$min_caml_float_of_int	# build/lib.ml#54:11->54:63
	ADDI	%r31, %r31, $-12	# build/lib.ml#54:11->54:63
	FMV	%fr9, %fr0	# build/lib.ml#54:11->54:63
	FLDA	%fr8, $min_caml_l.1189	# build/lib.ml#55:20->55:37
	FMUL	%fr8, %fr9, %fr8	# build/lib.ml#55:15->55:37
	FLDA	%fr9, $min_caml_l.1190	# build/lib.ml#55:41->55:44
	FMUL	%fr9, %fr8, %fr9	# build/lib.ml#55:15->55:44
	FSUB	%fr9, %fr0, %fr9	# build/lib.ml#55:10->55:44
	FLDA	%fr8, $min_caml_l.1189	# build/lib.ml#58:9->58:26
	FCMP	%fr9, %fr8	# build/lib.ml#58:2->65:41
	FJLT	$min_caml_if_flt.1443	# build/lib.ml#58:2->65:41
	FLDA	%fr8, $min_caml_l.1191	# build/lib.ml#59:14->59:36
	FCMP	%fr9, %fr8	# build/lib.ml#59:7->65:41
	FJLT	$min_caml_if_flt.1445	# build/lib.ml#59:7->65:41
	FLDA	%fr8, $min_caml_l.1192	# build/lib.ml#60:14->60:36
	FCMP	%fr9, %fr8	# build/lib.ml#60:7->65:41
	FJLT	$min_caml_if_flt.1447	# build/lib.ml#60:7->65:41
	FLDA	%fr8, $min_caml_l.1193	# build/lib.ml#61:14->61:36
	FCMP	%fr9, %fr8	# build/lib.ml#61:7->65:41
	FJLT	$min_caml_if_flt.1449	# build/lib.ml#61:7->65:41
	FLDA	%fr8, $min_caml_l.1194	# build/lib.ml#62:14->62:36
	FCMP	%fr9, %fr8	# build/lib.ml#62:7->65:41
	FJLT	$min_caml_if_flt.1451	# build/lib.ml#62:7->65:41
	FLDA	%fr8, $min_caml_l.1195	# build/lib.ml#63:14->63:36
	FCMP	%fr9, %fr8	# build/lib.ml#63:7->65:41
	FJLT	$min_caml_if_flt.1453	# build/lib.ml#63:7->65:41
	FLDA	%fr8, $min_caml_l.1196	# build/lib.ml#64:14->64:36
	FCMP	%fr9, %fr8	# build/lib.ml#64:7->65:41
	FJLT	$min_caml_if_flt.1455	# build/lib.ml#64:7->65:41
	FLDA	%fr8, $min_caml_l.1188	# build/lib.ml#65:15->65:37
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#65:15->65:40
	FMV	%fr0, %fr9	# build/lib.ml#65:7->65:41
	ADDI	%r31, %r31, $12	# build/lib.ml#65:7->65:41
	ADDI	%r31, %r31, $4	# build/lib.ml#65:7->65:41
	SIP	# build/lib.ml#65:7->65:41
	J	$min_caml_cossub.837	# build/lib.ml#65:7->65:41
	ADDI	%r31, %r31, $-12	# build/lib.ml#65:7->65:41
	J	$min_caml_if_flt_cont.1456	# build/lib.ml#64:7->65:41
min_caml_if_flt.1455:
	FLDA	%fr8, $min_caml_l.1195	# build/lib.ml#64:53->64:75
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#64:50->64:75
	FMV	%fr0, %fr9	# build/lib.ml#64:42->64:76
	ADDI	%r31, %r31, $12	# build/lib.ml#64:42->64:76
	ADDI	%r31, %r31, $4	# build/lib.ml#64:42->64:76
	SIP	# build/lib.ml#64:42->64:76
	J	$min_caml_sinsub.835	# build/lib.ml#64:42->64:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#64:42->64:76
min_caml_if_flt_cont.1456:
	J	$min_caml_if_flt_cont.1454	# build/lib.ml#63:7->65:41
min_caml_if_flt.1453:
	FLDA	%fr8, $min_caml_l.1195	# build/lib.ml#63:53->63:75
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#63:53->63:78
	FMV	%fr0, %fr9	# build/lib.ml#63:45->63:79
	ADDI	%r31, %r31, $12	# build/lib.ml#63:45->63:79
	ADDI	%r31, %r31, $4	# build/lib.ml#63:45->63:79
	SIP	# build/lib.ml#63:45->63:79
	J	$min_caml_sinsub.835	# build/lib.ml#63:45->63:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#63:45->63:79
	FMV	%fr9, %fr0	# build/lib.ml#63:45->63:79
	FNEG2	%fr0, %fr9	# build/lib.ml#63:42->63:80
min_caml_if_flt_cont.1454:
	J	$min_caml_if_flt_cont.1452	# build/lib.ml#62:7->65:41
min_caml_if_flt.1451:
	FLDA	%fr8, $min_caml_l.1193	# build/lib.ml#62:56->62:78
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#62:53->62:78
	FMV	%fr0, %fr9	# build/lib.ml#62:45->62:79
	ADDI	%r31, %r31, $12	# build/lib.ml#62:45->62:79
	ADDI	%r31, %r31, $4	# build/lib.ml#62:45->62:79
	SIP	# build/lib.ml#62:45->62:79
	J	$min_caml_cossub.837	# build/lib.ml#62:45->62:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#62:45->62:79
	FMV	%fr9, %fr0	# build/lib.ml#62:45->62:79
	FNEG2	%fr0, %fr9	# build/lib.ml#62:42->62:80
min_caml_if_flt_cont.1452:
	J	$min_caml_if_flt_cont.1450	# build/lib.ml#61:7->65:41
min_caml_if_flt.1449:
	FLDA	%fr8, $min_caml_l.1193	# build/lib.ml#61:53->61:75
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#61:53->61:78
	FMV	%fr0, %fr9	# build/lib.ml#61:45->61:79
	ADDI	%r31, %r31, $12	# build/lib.ml#61:45->61:79
	ADDI	%r31, %r31, $4	# build/lib.ml#61:45->61:79
	SIP	# build/lib.ml#61:45->61:79
	J	$min_caml_cossub.837	# build/lib.ml#61:45->61:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#61:45->61:79
	FMV	%fr9, %fr0	# build/lib.ml#61:45->61:79
	FNEG2	%fr0, %fr9	# build/lib.ml#61:42->61:80
min_caml_if_flt_cont.1450:
	J	$min_caml_if_flt_cont.1448	# build/lib.ml#60:7->65:41
min_caml_if_flt.1447:
	FLDA	%fr8, $min_caml_l.1191	# build/lib.ml#60:56->60:78
	FSUB	%fr9, %fr9, %fr8	# build/lib.ml#60:53->60:78
	FMV	%fr0, %fr9	# build/lib.ml#60:45->60:79
	ADDI	%r31, %r31, $12	# build/lib.ml#60:45->60:79
	ADDI	%r31, %r31, $4	# build/lib.ml#60:45->60:79
	SIP	# build/lib.ml#60:45->60:79
	J	$min_caml_sinsub.835	# build/lib.ml#60:45->60:79
	ADDI	%r31, %r31, $-12	# build/lib.ml#60:45->60:79
	FMV	%fr9, %fr0	# build/lib.ml#60:45->60:79
	FNEG2	%fr0, %fr9	# build/lib.ml#60:42->60:80
min_caml_if_flt_cont.1448:
	J	$min_caml_if_flt_cont.1446	# build/lib.ml#59:7->65:41
min_caml_if_flt.1445:
	FLDA	%fr8, $min_caml_l.1191	# build/lib.ml#59:50->59:72
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#59:50->59:75
	FMV	%fr0, %fr9	# build/lib.ml#59:42->59:76
	ADDI	%r31, %r31, $12	# build/lib.ml#59:42->59:76
	ADDI	%r31, %r31, $4	# build/lib.ml#59:42->59:76
	SIP	# build/lib.ml#59:42->59:76
	J	$min_caml_sinsub.835	# build/lib.ml#59:42->59:76
	ADDI	%r31, %r31, $-12	# build/lib.ml#59:42->59:76
min_caml_if_flt_cont.1446:
	J	$min_caml_if_flt_cont.1444	# build/lib.ml#58:2->65:41
min_caml_if_flt.1443:
	FMV	%fr0, %fr9	# build/lib.ml#58:32->58:40
	ADDI	%r31, %r31, $12	# build/lib.ml#58:32->58:40
	ADDI	%r31, %r31, $4	# build/lib.ml#58:32->58:40
	SIP	# build/lib.ml#58:32->58:40
	J	$min_caml_cossub.837	# build/lib.ml#58:32->58:40
	ADDI	%r31, %r31, $-12	# build/lib.ml#58:32->58:40
min_caml_if_flt_cont.1444:
	LDR	%r9, %r31, $0	# build/lib.ml#54:38->54:60
	FLDR	%fr9, %r31, $4	# build/lib.ml#54:38->54:60
	FLDR	%fr8, %r31, $8	# build/lib.ml#54:38->54:60
	LINK	# build/lib.ml#54:38->54:60
min_caml_cossub.837:
	FSDR	%fr13, %r31, $0	# build/lib.ml#57:22->57:26
	FSDR	%fr12, %r31, $4	# build/lib.ml#57:22->57:26
	FSDR	%fr11, %r31, $8	# build/lib.ml#57:22->57:26
	FSDR	%fr10, %r31, $12	# build/lib.ml#57:22->57:26
	FMUL	%fr13, %fr0, %fr0	# build/lib.ml#57:22->57:26
	FMUL	%fr1, %fr13, %fr0	# build/lib.ml#57:22->57:29
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#57:22->57:32
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#57:22->57:35
	FMUL	%fr11, %fr1, %fr0	# build/lib.ml#57:22->57:38
	FLDA	%fr1, $min_caml_l.1197	# build/lib.ml#57:40->57:47
	FDIV	%fr10, %fr11, %fr1	# build/lib.ml#57:22->57:47
	FLDA	%fr1, $min_caml_l.1198	# build/lib.ml#57:71->57:76
	FDIV	%fr1, %fr11, %fr1	# build/lib.ml#57:53->57:76
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#57:21->57:77
	FLDA	%fr1, $min_caml_l.1199	# build/lib.ml#57:94->57:98
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#57:82->57:98
	FADD	%fr10, %fr10, %fr1	# build/lib.ml#57:21->57:99
	FLDA	%fr1, $min_caml_l.1186	# build/lib.ml#57:110->57:113
	FDIV	%fr1, %fr13, %fr1	# build/lib.ml#57:104->57:113
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#57:21->57:114
	FLDA	%fr1, $min_caml_l.1200	# build/lib.ml#57:118->57:121
	FADD	%fr0, %fr10, %fr1	# build/lib.ml#57:21->57:121
	FLDR	%fr13, %r31, $0	# build/lib.ml#57:22->57:26
	FLDR	%fr12, %r31, $4	# build/lib.ml#57:22->57:26
	FLDR	%fr11, %r31, $8	# build/lib.ml#57:22->57:26
	FLDR	%fr10, %r31, $12	# build/lib.ml#57:22->57:26
	LINK	# build/lib.ml#57:22->57:26
min_caml_sinsub.835:
	FSDR	%fr12, %r31, $0	# build/lib.ml#56:22->56:26
	FSDR	%fr11, %r31, $4	# build/lib.ml#56:22->56:26
	FSDR	%fr10, %r31, $8	# build/lib.ml#56:22->56:26
	FMUL	%fr1, %fr0, %fr0	# build/lib.ml#56:22->56:26
	FMUL	%fr12, %fr1, %fr0	# build/lib.ml#56:22->56:29
	FMUL	%fr1, %fr12, %fr0	# build/lib.ml#56:22->56:32
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#56:22->56:35
	FLDA	%fr10, $min_caml_l.1201	# build/lib.ml#56:37->56:42
	FDIV	%fr11, %fr1, %fr10	# build/lib.ml#56:22->56:42
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#56:48->56:64
	FMUL	%fr10, %fr1, %fr0	# build/lib.ml#56:48->56:67
	FLDA	%fr1, $min_caml_l.1202	# build/lib.ml#56:69->56:75
	FDIV	%fr1, %fr10, %fr1	# build/lib.ml#56:48->56:75
	FSUB	%fr10, %fr11, %fr1	# build/lib.ml#56:21->56:76
	FLDA	%fr1, $min_caml_l.1203	# build/lib.ml#56:90->56:93
	FDIV	%fr1, %fr12, %fr1	# build/lib.ml#56:81->56:93
	FSUB	%fr1, %fr10, %fr1	# build/lib.ml#56:21->56:94
	FADD	%fr0, %fr1, %fr0	# build/lib.ml#56:21->56:99
	FLDR	%fr12, %r31, $0	# build/lib.ml#56:22->56:26
	FLDR	%fr11, %r31, $4	# build/lib.ml#56:22->56:26
	FLDR	%fr10, %r31, $8	# build/lib.ml#56:22->56:26
	LINK	# build/lib.ml#56:22->56:26
min_caml_atan:
	SDR	%r9, %r31, $0	# build/lib.ml#46:12->46:14
	FSDR	%fr9, %r31, $4	# build/lib.ml#46:12->46:14
	FSDR	%fr8, %r31, $8	# build/lib.ml#46:12->46:14
	FSDR	%fr7, %r31, $12	# build/lib.ml#46:12->46:14
	FLDA	%fr9, $min_caml_l.1187	# build/lib.ml#46:12->46:14
	FCMP	%fr0, %fr9	# build/lib.ml#46:5->52:48
	FJLT	$min_caml_if_flt.1457	# build/lib.ml#46:5->52:48
	FLDA	%fr9, $min_caml_l.1186	# build/lib.ml#49:20->49:23
	FMV	%fr0, %fr9	# build/lib.ml#49:15->49:23
	ADDI	%r31, %r31, $16	# build/lib.ml#49:15->49:23
	ADDI	%r31, %r31, $4	# build/lib.ml#49:15->49:23
	SIP	# build/lib.ml#49:15->49:23
	J	$min_caml_sqrt	# build/lib.ml#49:15->49:23
	ADDI	%r31, %r31, $-16	# build/lib.ml#49:15->49:23
	FMV	%fr8, %fr0	# build/lib.ml#49:15->49:23
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#49:28->49:31
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#49:14->49:31
	FCMP	%fr9, %fr0	# build/lib.ml#49:5->52:48
	FJLT	$min_caml_if_flt.1459	# build/lib.ml#49:5->52:48
	MVI	%r9, $100	# build/lib.ml#49:48->49:51
	MV	%r1, %r9	# build/lib.ml#49:38->49:51
	ADDI	%r31, %r31, $16	# build/lib.ml#49:38->49:51
	ADDI	%r31, %r31, $4	# build/lib.ml#49:38->49:51
	SIP	# build/lib.ml#49:38->49:51
	J	$min_caml_atansub.950	# build/lib.ml#49:38->49:51
	ADDI	%r31, %r31, $-16	# build/lib.ml#49:38->49:51
	J	$min_caml_if_flt_cont.1460	# build/lib.ml#49:5->52:48
min_caml_if_flt.1459:
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#50:13->50:16
	FCMP	%fr9, %fr0	# build/lib.ml#50:5->52:48
	FJLT	$min_caml_if_flt.1461	# build/lib.ml#50:5->52:48
	FLDA	%fr7, $min_caml_l.1189	# build/lib.ml#50:22->50:39
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#50:54->50:57
	FSUB	%fr8, %fr9, %fr0	# build/lib.ml#50:54->50:60
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#50:64->50:67
	FADD	%fr9, %fr9, %fr0	# build/lib.ml#50:64->50:70
	FDIV	%fr9, %fr8, %fr9	# build/lib.ml#50:53->50:71
	MVI	%r9, $100	# build/lib.ml#50:73->50:76
	MV	%r1, %r9	# build/lib.ml#50:44->50:76
	FMV	%fr0, %fr9	# build/lib.ml#50:44->50:76
	ADDI	%r31, %r31, $16	# build/lib.ml#50:44->50:76
	ADDI	%r31, %r31, $4	# build/lib.ml#50:44->50:76
	SIP	# build/lib.ml#50:44->50:76
	J	$min_caml_atansub.950	# build/lib.ml#50:44->50:76
	ADDI	%r31, %r31, $-16	# build/lib.ml#50:44->50:76
	FMV	%fr9, %fr0	# build/lib.ml#50:44->50:76
	FSUB	%fr0, %fr7, %fr9	# build/lib.ml#50:22->50:77
	J	$min_caml_if_flt_cont.1462	# build/lib.ml#50:5->52:48
min_caml_if_flt.1461:
	FLDA	%fr9, $min_caml_l.1186	# build/lib.ml#51:20->51:23
	FMV	%fr0, %fr9	# build/lib.ml#51:15->51:23
	ADDI	%r31, %r31, $16	# build/lib.ml#51:15->51:23
	ADDI	%r31, %r31, $4	# build/lib.ml#51:15->51:23
	SIP	# build/lib.ml#51:15->51:23
	J	$min_caml_sqrt	# build/lib.ml#51:15->51:23
	ADDI	%r31, %r31, $-16	# build/lib.ml#51:15->51:23
	FMV	%fr8, %fr0	# build/lib.ml#51:15->51:23
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#51:28->51:31
	FADD	%fr9, %fr8, %fr9	# build/lib.ml#51:14->51:31
	FCMP	%fr9, %fr0	# build/lib.ml#51:5->52:48
	FJLT	$min_caml_if_flt.1463	# build/lib.ml#51:5->52:48
	FLDA	%fr7, $min_caml_l.1189	# build/lib.ml#51:38->51:55
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#51:73->51:76
	FSUB	%fr8, %fr0, %fr9	# build/lib.ml#51:70->51:76
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#51:83->51:86
	FADD	%fr9, %fr0, %fr9	# build/lib.ml#51:80->51:86
	FDIV	%fr9, %fr8, %fr9	# build/lib.ml#51:69->51:87
	MVI	%r9, $100	# build/lib.ml#51:89->51:92
	MV	%r1, %r9	# build/lib.ml#51:60->51:92
	FMV	%fr0, %fr9	# build/lib.ml#51:60->51:92
	ADDI	%r31, %r31, $16	# build/lib.ml#51:60->51:92
	ADDI	%r31, %r31, $4	# build/lib.ml#51:60->51:92
	SIP	# build/lib.ml#51:60->51:92
	J	$min_caml_atansub.950	# build/lib.ml#51:60->51:92
	ADDI	%r31, %r31, $-16	# build/lib.ml#51:60->51:92
	FMV	%fr9, %fr0	# build/lib.ml#51:60->51:92
	FADD	%fr0, %fr7, %fr9	# build/lib.ml#51:38->51:93
	J	$min_caml_if_flt_cont.1464	# build/lib.ml#51:5->52:48
min_caml_if_flt.1463:
	FLDA	%fr8, $min_caml_l.1204	# build/lib.ml#52:5->52:22
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#52:36->52:39
	FDIV	%fr9, %fr9, %fr0	# build/lib.ml#52:36->52:42
	MVI	%r9, $100	# build/lib.ml#52:44->52:47
	MV	%r1, %r9	# build/lib.ml#52:27->52:47
	FMV	%fr0, %fr9	# build/lib.ml#52:27->52:47
	ADDI	%r31, %r31, $16	# build/lib.ml#52:27->52:47
	ADDI	%r31, %r31, $4	# build/lib.ml#52:27->52:47
	SIP	# build/lib.ml#52:27->52:47
	J	$min_caml_atansub.950	# build/lib.ml#52:27->52:47
	ADDI	%r31, %r31, $-16	# build/lib.ml#52:27->52:47
	FMV	%fr9, %fr0	# build/lib.ml#52:27->52:47
	FSUB	%fr0, %fr8, %fr9	# build/lib.ml#52:5->52:48
min_caml_if_flt_cont.1464:
min_caml_if_flt_cont.1462:
min_caml_if_flt_cont.1460:
	J	$min_caml_if_flt_cont.1458	# build/lib.ml#46:5->52:48
min_caml_if_flt.1457:
	FNEG2	%fr9, %fr0	# build/lib.ml#46:29->46:32
	FMV	%fr0, %fr9	# build/lib.ml#46:23->46:33
	ADDI	%r31, %r31, $16	# build/lib.ml#46:23->46:33
	ADDI	%r31, %r31, $4	# build/lib.ml#46:23->46:33
	SIP	# build/lib.ml#46:23->46:33
	J	$min_caml_atan	# build/lib.ml#46:23->46:33
	ADDI	%r31, %r31, $-16	# build/lib.ml#46:23->46:33
	FMV	%fr9, %fr0	# build/lib.ml#46:23->46:33
	FNEG2	%fr0, %fr9	# build/lib.ml#46:20->46:34
min_caml_if_flt_cont.1458:
	LDR	%r9, %r31, $0	# build/lib.ml#46:12->46:14
	FLDR	%fr9, %r31, $4	# build/lib.ml#46:12->46:14
	FLDR	%fr8, %r31, $8	# build/lib.ml#46:12->46:14
	FLDR	%fr7, %r31, $12	# build/lib.ml#46:12->46:14
	LINK	# build/lib.ml#46:12->46:14
min_caml_atansub.950:
	SDR	%r9, %r31, $0	# build/lib.ml#48:34->48:35
	SDR	%r8, %r31, $4	# build/lib.ml#48:34->48:35
	FSDR	%fr9, %r31, $8	# build/lib.ml#48:34->48:35
	FSDR	%fr8, %r31, $12	# build/lib.ml#48:34->48:35
	FSDR	%fr7, %r31, $16	# build/lib.ml#48:34->48:35
	MVI	%r9, $0	# build/lib.ml#48:34->48:35
	CEQ	%r1, %r9	# build/lib.ml#48:27->48:122
	JZ	$min_caml_if_eq.1465	# build/lib.ml#48:27->48:122
	MVI	%r9, $1	# build/lib.ml#48:62->48:63
	SUB	%r9, %r1, %r9	# build/lib.ml#48:60->48:63
	SDR	%r1, %r31, $20	# build/lib.ml#48:49->48:64
	MV	%r1, %r9	# build/lib.ml#48:49->48:64
	ADDI	%r31, %r31, $24	# build/lib.ml#48:49->48:64
	ADDI	%r31, %r31, $4	# build/lib.ml#48:49->48:64
	SIP	# build/lib.ml#48:49->48:64
	J	$min_caml_atansub.950	# build/lib.ml#48:49->48:64
	ADDI	%r31, %r31, $-24	# build/lib.ml#48:49->48:64
	FMV	%fr7, %fr0	# build/lib.ml#48:49->48:64
	LDR	%r1, %r31, $20	# build/lib.ml#48:49->48:64
	FNEG2	%fr9, %fr0	# build/lib.ml#48:78->48:81
	MVI	%r9, $2	# build/lib.ml#48:84->48:85
	MUL	%r8, %r9, %r1	# build/lib.ml#48:84->48:87
	MVI	%r9, $1	# build/lib.ml#48:90->48:91
	ADD	%r9, %r8, %r9	# build/lib.ml#48:84->48:91
	SDR	%r1, %r31, $24	# build/lib.ml#48:71->48:92
	MV	%r1, %r9	# build/lib.ml#48:71->48:92
	FMV	%fr0, %fr9	# build/lib.ml#48:71->48:92
	ADDI	%r31, %r31, $28	# build/lib.ml#48:71->48:92
	ADDI	%r31, %r31, $4	# build/lib.ml#48:71->48:92
	SIP	# build/lib.ml#48:71->48:92
	J	$min_caml_power.947	# build/lib.ml#48:71->48:92
	ADDI	%r31, %r31, $-28	# build/lib.ml#48:71->48:92
	FMV	%fr8, %fr0	# build/lib.ml#48:71->48:92
	LDR	%r1, %r31, $24	# build/lib.ml#48:71->48:92
	MVI	%r9, $2	# build/lib.ml#48:112->48:113
	MUL	%r8, %r9, %r1	# build/lib.ml#48:112->48:115
	MVI	%r9, $1	# build/lib.ml#48:118->48:119
	ADD	%r9, %r8, %r9	# build/lib.ml#48:112->48:119
	SDR	%r1, %r31, $28	# build/lib.ml#48:98->48:120
	MV	%r1, %r9	# build/lib.ml#48:98->48:120
	ADDI	%r31, %r31, $32	# build/lib.ml#48:98->48:120
	ADDI	%r31, %r31, $4	# build/lib.ml#48:98->48:120
	SIP	# build/lib.ml#48:98->48:120
	J	$min_caml_float_of_int	# build/lib.ml#48:98->48:120
	ADDI	%r31, %r31, $-32	# build/lib.ml#48:98->48:120
	FMV	%fr9, %fr0	# build/lib.ml#48:98->48:120
	LDR	%r1, %r31, $28	# build/lib.ml#48:98->48:120
	FDIV	%fr9, %fr8, %fr9	# build/lib.ml#48:70->48:121
	FADD	%fr0, %fr7, %fr9	# build/lib.ml#48:48->48:122
	J	$min_caml_if_eq_cont.1466	# build/lib.ml#48:27->48:122
min_caml_if_eq.1465:
min_caml_if_eq_cont.1466:
	LDR	%r9, %r31, $0	# build/lib.ml#48:34->48:35
	LDR	%r8, %r31, $4	# build/lib.ml#48:34->48:35
	FLDR	%fr9, %r31, $8	# build/lib.ml#48:34->48:35
	FLDR	%fr8, %r31, $12	# build/lib.ml#48:34->48:35
	FLDR	%fr7, %r31, $16	# build/lib.ml#48:34->48:35
	LINK	# build/lib.ml#48:34->48:35
min_caml_power.947:
	SDR	%r9, %r31, $0	# build/lib.ml#47:32->47:33
	FSDR	%fr9, %r31, $4	# build/lib.ml#47:32->47:33
	MVI	%r9, $0	# build/lib.ml#47:32->47:33
	CEQ	%r1, %r9	# build/lib.ml#47:25->47:68
	JZ	$min_caml_if_eq.1467	# build/lib.ml#47:25->47:68
	MVI	%r9, $1	# build/lib.ml#47:65->47:66
	SUB	%r9, %r1, %r9	# build/lib.ml#47:63->47:66
	SDR	%r1, %r31, $8	# build/lib.ml#47:54->47:67
	MV	%r1, %r9	# build/lib.ml#47:54->47:67
	ADDI	%r31, %r31, $12	# build/lib.ml#47:54->47:67
	ADDI	%r31, %r31, $4	# build/lib.ml#47:54->47:67
	SIP	# build/lib.ml#47:54->47:67
	J	$min_caml_power.947	# build/lib.ml#47:54->47:67
	ADDI	%r31, %r31, $-12	# build/lib.ml#47:54->47:67
	FMV	%fr9, %fr0	# build/lib.ml#47:54->47:67
	LDR	%r1, %r31, $8	# build/lib.ml#47:54->47:67
	FMUL	%fr0, %fr0, %fr9	# build/lib.ml#47:48->47:68
	J	$min_caml_if_eq_cont.1468	# build/lib.ml#47:25->47:68
min_caml_if_eq.1467:
	FLDA	%fr0, $min_caml_l.1200	# build/lib.ml#47:39->47:42
min_caml_if_eq_cont.1468:
	LDR	%r9, %r31, $0	# build/lib.ml#47:32->47:33
	FLDR	%fr9, %r31, $4	# build/lib.ml#47:32->47:33
	LINK	# build/lib.ml#47:32->47:33
min_caml_sqrt:
	SDR	%r9, %r31, $0	# build/lib.ml#42:2->44:13
	SDR	%r8, %r31, $4	# build/lib.ml#42:2->44:13
	SDR	%r7, %r31, $8	# build/lib.ml#42:2->44:13
	MV	%r8, %r30	# build/lib.ml#42:2->44:13
	ADDI	%r30, %r30, $8	# build/lib.ml#42:2->44:13
	MVI	%r9, $min_caml_f.1007	# build/lib.ml#42:2->44:13
	SDR	%r9, %r8, $0	# build/lib.ml#42:2->44:13
	FSDR	%fr0, %r8, $4	# build/lib.ml#42:2->44:13
	MV	%r9, %r30	# build/lib.ml#43:2->44:13
	ADDI	%r30, %r30, $8	# build/lib.ml#43:2->44:13
	MVI	%r7, $min_caml_g.1009	# build/lib.ml#43:2->44:13
	SDR	%r7, %r9, $0	# build/lib.ml#43:2->44:13
	SDR	%r8, %r9, $4	# build/lib.ml#43:2->44:13
	MV	%r29, %r9	# build/lib.ml#44:9->44:12
	ADDI	%r31, %r31, $12	# build/lib.ml#44:9->44:12
	ADDI	%r31, %r31, $4	# build/lib.ml#44:9->44:12
	SIP	# build/lib.ml#44:9->44:12
	JC	# build/lib.ml#44:9->44:12
	ADDI	%r31, %r31, $-12	# build/lib.ml#44:9->44:12
	LDR	%r9, %r31, $0	# build/lib.ml#42:2->44:13
	LDR	%r8, %r31, $4	# build/lib.ml#42:2->44:13
	LDR	%r7, %r31, $8	# build/lib.ml#42:2->44:13
	LINK	# build/lib.ml#42:2->44:13
min_caml_g.1009:
	SDR	%r9, %r31, $0	# build/lib.ml#43:20->43:28
	FSDR	%fr9, %r31, $4	# build/lib.ml#43:20->43:28
	FSDR	%fr8, %r31, $8	# build/lib.ml#43:20->43:28
	LDR	%r9, %r29, $4	# build/lib.ml#43:20->43:28
	MV	%r29, %r9	# build/lib.ml#43:21->43:24
	ADDI	%r31, %r31, $12	# build/lib.ml#43:21->43:24
	ADDI	%r31, %r31, $4	# build/lib.ml#43:21->43:24
	SIP	# build/lib.ml#43:21->43:24
	JC	# build/lib.ml#43:21->43:24
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:21->43:24
	FMV	%fr9, %fr0	# build/lib.ml#43:21->43:24
	FSUB	%fr8, %fr9, %fr0	# build/lib.ml#43:20->43:28
	FLDA	%fr9, $min_caml_l.1205	# build/lib.ml#43:31->43:40
	FCMP	%fr8, %fr9	# build/lib.ml#43:16->43:110
	FJLT	$min_caml_if_flt.1469	# build/lib.ml#43:16->43:110
	MV	%r29, %r9	# build/lib.ml#43:49->43:52
	ADDI	%r31, %r31, $12	# build/lib.ml#43:49->43:52
	ADDI	%r31, %r31, $4	# build/lib.ml#43:49->43:52
	SIP	# build/lib.ml#43:49->43:52
	JC	# build/lib.ml#43:49->43:52
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:49->43:52
	FMV	%fr9, %fr0	# build/lib.ml#43:49->43:52
	FMV	%fr0, %fr9	# build/lib.ml#43:46->43:53
	ADDI	%r31, %r31, $12	# build/lib.ml#43:46->43:53
	ADDI	%r31, %r31, $4	# build/lib.ml#43:46->43:53
	SIP	# build/lib.ml#43:46->43:53
	JC	# build/lib.ml#43:46->43:53
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:46->43:53
	J	$min_caml_if_flt_cont.1470	# build/lib.ml#43:16->43:110
min_caml_if_flt.1469:
	FLDA	%fr8, $min_caml_l.1206	# build/lib.ml#43:75->43:86
	MV	%r29, %r9	# build/lib.ml#43:65->43:68
	ADDI	%r31, %r31, $12	# build/lib.ml#43:65->43:68
	ADDI	%r31, %r31, $4	# build/lib.ml#43:65->43:68
	SIP	# build/lib.ml#43:65->43:68
	JC	# build/lib.ml#43:65->43:68
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:65->43:68
	FMV	%fr9, %fr0	# build/lib.ml#43:65->43:68
	FSUB	%fr9, %fr9, %fr0	# build/lib.ml#43:64->43:72
	FCMP	%fr8, %fr9	# build/lib.ml#43:60->43:109
	FJLT	$min_caml_if_flt.1471	# build/lib.ml#43:60->43:109
	MV	%r29, %r9	# build/lib.ml#43:105->43:108
	ADDI	%r31, %r31, $12	# build/lib.ml#43:105->43:108
	ADDI	%r31, %r31, $4	# build/lib.ml#43:105->43:108
	SIP	# build/lib.ml#43:105->43:108
	JC	# build/lib.ml#43:105->43:108
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:105->43:108
	FMV	%fr9, %fr0	# build/lib.ml#43:105->43:108
	FMV	%fr0, %fr9	# build/lib.ml#43:102->43:109
	ADDI	%r31, %r31, $12	# build/lib.ml#43:102->43:109
	ADDI	%r31, %r31, $4	# build/lib.ml#43:102->43:109
	SIP	# build/lib.ml#43:102->43:109
	JC	# build/lib.ml#43:102->43:109
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:102->43:109
	J	$min_caml_if_flt_cont.1472	# build/lib.ml#43:60->43:109
min_caml_if_flt.1471:
	MV	%r29, %r9	# build/lib.ml#43:93->43:96
	ADDI	%r31, %r31, $12	# build/lib.ml#43:93->43:96
	ADDI	%r31, %r31, $4	# build/lib.ml#43:93->43:96
	SIP	# build/lib.ml#43:93->43:96
	JC	# build/lib.ml#43:93->43:96
	ADDI	%r31, %r31, $-12	# build/lib.ml#43:93->43:96
min_caml_if_flt_cont.1472:
min_caml_if_flt_cont.1470:
	LDR	%r9, %r31, $0	# build/lib.ml#43:20->43:28
	FLDR	%fr9, %r31, $4	# build/lib.ml#43:20->43:28
	FLDR	%fr8, %r31, $8	# build/lib.ml#43:20->43:28
	LINK	# build/lib.ml#43:20->43:28
min_caml_f.1007:
	FSDR	%fr10, %r31, $0	# build/lib.ml#42:21->42:28
	FLDR	%fr1, %r29, $4	# build/lib.ml#42:21->42:28
	FMUL	%fr10, %fr0, %fr0	# build/lib.ml#42:21->42:25
	FSUB	%fr10, %fr10, %fr1	# build/lib.ml#42:21->42:28
	FLDA	%fr1, $min_caml_l.1186	# build/lib.ml#42:32->42:35
	FMUL	%fr1, %fr1, %fr0	# build/lib.ml#42:32->42:38
	FDIV	%fr1, %fr10, %fr1	# build/lib.ml#42:20->42:39
	FSUB	%fr0, %fr0, %fr1	# build/lib.ml#42:16->42:40
	FLDR	%fr10, %r31, $0	# build/lib.ml#42:21->42:28
	LINK	# build/lib.ml#42:21->42:28
min_caml_floor:
	SDR	%r9, %r31, $0	# build/lib.ml#25:27->25:29
	SDR	%r8, %r31, $4	# build/lib.ml#25:27->25:29
	SDR	%r7, %r31, $8	# build/lib.ml#25:27->25:29
	FSDR	%fr9, %r31, $12	# build/lib.ml#25:27->25:29
	FLDA	%fr9, $min_caml_l.1187	# build/lib.ml#25:27->25:29
	FCMP	%fr0, %fr9	# build/lib.ml#25:19->39:52
	FJLT	$min_caml_if_flt.1473	# build/lib.ml#25:19->39:52
	MV	%r8, %r30	# build/lib.ml#26:2->32:22
	ADDI	%r30, %r30, $8	# build/lib.ml#26:2->32:22
	MVI	%r9, $min_caml_searchsub.1026	# build/lib.ml#26:2->32:22
	SDR	%r9, %r8, $0	# build/lib.ml#26:2->32:22
	FSDR	%fr0, %r8, $4	# build/lib.ml#26:2->32:22
	MV	%r9, %r30	# build/lib.ml#28:2->32:22
	ADDI	%r30, %r30, $8	# build/lib.ml#28:2->32:22
	MVI	%r7, $min_caml_search.1028	# build/lib.ml#28:2->32:22
	SDR	%r7, %r9, $0	# build/lib.ml#28:2->32:22
	FSDR	%fr0, %r9, $4	# build/lib.ml#28:2->32:22
	MVI	%r7, $1	# build/lib.ml#31:20->31:21
	SDR	%r6, %r31, $16	# build/lib.ml#31:10->31:21
	SDR	%r5, %r31, $20	# build/lib.ml#31:10->31:21
	MV	%r1, %r7	# build/lib.ml#31:10->31:21
	MV	%r29, %r8	# build/lib.ml#31:10->31:21
	ADDI	%r31, %r31, $24	# build/lib.ml#31:10->31:21
	ADDI	%r31, %r31, $4	# build/lib.ml#31:10->31:21
	SIP	# build/lib.ml#31:10->31:21
	JC	# build/lib.ml#31:10->31:21
	ADDI	%r31, %r31, $-24	# build/lib.ml#31:10->31:21
	MV	%r8, %r0	# build/lib.ml#31:10->31:21
	LDR	%r6, %r31, $16	# build/lib.ml#31:10->31:21
	LDR	%r5, %r31, $20	# build/lib.ml#31:10->31:21
	MVI	%r7, $2	# build/lib.ml#32:12->32:13
	DIV	%r6, %r8, %r7	# build/lib.ml#32:10->32:13
	MVI	%r7, $4	# build/lib.ml#32:18->32:19
	MUL	%r7, %r8, %r7	# build/lib.ml#32:16->32:19
	MVI	%r8, $2	# build/lib.ml#32:20->32:21
	DIV	%r8, %r7, %r8	# build/lib.ml#32:16->32:21
	SDR	%r6, %r31, $24	# build/lib.ml#32:2->32:22
	SDR	%r5, %r31, $28	# build/lib.ml#32:2->32:22
	MV	%r2, %r8	# build/lib.ml#32:2->32:22
	MV	%r1, %r6	# build/lib.ml#32:2->32:22
	MV	%r29, %r9	# build/lib.ml#32:2->32:22
	ADDI	%r31, %r31, $32	# build/lib.ml#32:2->32:22
	ADDI	%r31, %r31, $4	# build/lib.ml#32:2->32:22
	SIP	# build/lib.ml#32:2->32:22
	JC	# build/lib.ml#32:2->32:22
	ADDI	%r31, %r31, $-32	# build/lib.ml#32:2->32:22
	LDR	%r6, %r31, $24	# build/lib.ml#32:2->32:22
	LDR	%r5, %r31, $28	# build/lib.ml#32:2->32:22
	J	$min_caml_if_flt_cont.1474	# build/lib.ml#25:19->39:52
min_caml_if_flt.1473:
	MV	%r8, %r30	# build/lib.ml#34:2->39:52
	ADDI	%r30, %r30, $8	# build/lib.ml#34:2->39:52
	MVI	%r9, $min_caml_searchsub.1056	# build/lib.ml#34:2->39:52
	SDR	%r9, %r8, $0	# build/lib.ml#34:2->39:52
	FSDR	%fr0, %r8, $4	# build/lib.ml#34:2->39:52
	MV	%r9, %r30	# build/lib.ml#36:2->39:52
	ADDI	%r30, %r30, $8	# build/lib.ml#36:2->39:52
	MVI	%r7, $min_caml_search.1058	# build/lib.ml#36:2->39:52
	SDR	%r7, %r9, $0	# build/lib.ml#36:2->39:52
	FSDR	%fr0, %r9, $4	# build/lib.ml#36:2->39:52
	MVI	%r7, $1	# build/lib.ml#39:20->39:21
	SDR	%r6, %r31, $32	# build/lib.ml#39:10->39:21
	SDR	%r5, %r31, $36	# build/lib.ml#39:10->39:21
	MV	%r1, %r7	# build/lib.ml#39:10->39:21
	MV	%r29, %r8	# build/lib.ml#39:10->39:21
	ADDI	%r31, %r31, $40	# build/lib.ml#39:10->39:21
	ADDI	%r31, %r31, $4	# build/lib.ml#39:10->39:21
	SIP	# build/lib.ml#39:10->39:21
	JC	# build/lib.ml#39:10->39:21
	ADDI	%r31, %r31, $-40	# build/lib.ml#39:10->39:21
	MV	%r8, %r0	# build/lib.ml#39:10->39:21
	LDR	%r6, %r31, $32	# build/lib.ml#39:10->39:21
	LDR	%r5, %r31, $36	# build/lib.ml#39:10->39:21
	MVI	%r5, $-1	# build/lib.ml#39:26->39:28
	MVI	%r7, $2	# build/lib.ml#39:40->39:41
	DIV	%r6, %r8, %r7	# build/lib.ml#39:38->39:41
	MVI	%r7, $4	# build/lib.ml#39:46->39:47
	MUL	%r7, %r8, %r7	# build/lib.ml#39:44->39:47
	MVI	%r8, $2	# build/lib.ml#39:48->39:49
	DIV	%r8, %r7, %r8	# build/lib.ml#39:44->39:49
	SDR	%r6, %r31, $40	# build/lib.ml#39:30->39:50
	SDR	%r5, %r31, $44	# build/lib.ml#39:30->39:50
	MV	%r2, %r8	# build/lib.ml#39:30->39:50
	MV	%r1, %r6	# build/lib.ml#39:30->39:50
	MV	%r29, %r9	# build/lib.ml#39:30->39:50
	ADDI	%r31, %r31, $48	# build/lib.ml#39:30->39:50
	ADDI	%r31, %r31, $4	# build/lib.ml#39:30->39:50
	SIP	# build/lib.ml#39:30->39:50
	JC	# build/lib.ml#39:30->39:50
	ADDI	%r31, %r31, $-48	# build/lib.ml#39:30->39:50
	MV	%r9, %r0	# build/lib.ml#39:30->39:50
	LDR	%r6, %r31, $40	# build/lib.ml#39:30->39:50
	LDR	%r5, %r31, $44	# build/lib.ml#39:30->39:50
	SUB	%r0, %r5, %r9	# build/lib.ml#39:26->39:51
min_caml_if_flt_cont.1474:
	LDR	%r9, %r31, $0	# build/lib.ml#25:27->25:29
	LDR	%r8, %r31, $4	# build/lib.ml#25:27->25:29
	LDR	%r7, %r31, $8	# build/lib.ml#25:27->25:29
	FLDR	%fr9, %r31, $12	# build/lib.ml#25:27->25:29
	LINK	# build/lib.ml#25:27->25:29
min_caml_search.1058:
	SDR	%r9, %r31, $0	# build/lib.ml#37:4->38:97
	SDR	%r8, %r31, $4	# build/lib.ml#37:4->38:97
	FSDR	%fr9, %r31, $8	# build/lib.ml#37:4->38:97
	FSDR	%fr8, %r31, $12	# build/lib.ml#37:4->38:97
	FLDR	%fr9, %r29, $4	# build/lib.ml#37:4->38:97
	SUB	%r8, %r2, %r1	# build/lib.ml#37:8->37:11
	MVI	%r9, $1	# build/lib.ml#37:14->37:15
	CEQ	%r8, %r9	# build/lib.ml#37:4->38:97
	JZ	$min_caml_if_eq.1475	# build/lib.ml#37:4->38:97
	ADD	%r8, %r1, %r2	# build/lib.ml#38:32->38:35
	MVI	%r9, $2	# build/lib.ml#38:37->38:38
	DIV	%r9, %r8, %r9	# build/lib.ml#38:31->38:38
	SDR	%r2, %r31, $16	# build/lib.ml#38:17->38:39
	SDR	%r1, %r31, $20	# build/lib.ml#38:17->38:39
	MV	%r1, %r9	# build/lib.ml#38:17->38:39
	ADDI	%r31, %r31, $24	# build/lib.ml#38:17->38:39
	ADDI	%r31, %r31, $4	# build/lib.ml#38:17->38:39
	SIP	# build/lib.ml#38:17->38:39
	J	$min_caml_float_of_int	# build/lib.ml#38:17->38:39
	ADDI	%r31, %r31, $-24	# build/lib.ml#38:17->38:39
	FMV	%fr8, %fr0	# build/lib.ml#38:17->38:39
	LDR	%r2, %r31, $16	# build/lib.ml#38:17->38:39
	LDR	%r1, %r31, $20	# build/lib.ml#38:17->38:39
	FNEG1	%fr9	# build/lib.ml#38:44->38:47
	FCMP	%fr8, %fr9	# build/lib.ml#38:13->38:96
	FJLT	$min_caml_if_flt.1477	# build/lib.ml#38:13->38:96
	MVI	%r9, $2	# build/lib.ml#38:94->38:95
	DIV	%r9, %r8, %r9	# build/lib.ml#38:88->38:95
	SDR	%r2, %r31, $24	# build/lib.ml#38:78->38:96
	SDR	%r1, %r31, $28	# build/lib.ml#38:78->38:96
	MV	%r2, %r9	# build/lib.ml#38:78->38:96
	ADDI	%r31, %r31, $32	# build/lib.ml#38:78->38:96
	ADDI	%r31, %r31, $4	# build/lib.ml#38:78->38:96
	SIP	# build/lib.ml#38:78->38:96
	JC	# build/lib.ml#38:78->38:96
	ADDI	%r31, %r31, $-32	# build/lib.ml#38:78->38:96
	LDR	%r2, %r31, $24	# build/lib.ml#38:78->38:96
	LDR	%r1, %r31, $28	# build/lib.ml#38:78->38:96
	J	$min_caml_if_flt_cont.1478	# build/lib.ml#38:13->38:96
min_caml_if_flt.1477:
	MVI	%r9, $2	# build/lib.ml#38:68->38:69
	DIV	%r9, %r8, %r9	# build/lib.ml#38:62->38:69
	SDR	%r2, %r31, $32	# build/lib.ml#38:54->38:72
	SDR	%r1, %r31, $36	# build/lib.ml#38:54->38:72
	MV	%r1, %r9	# build/lib.ml#38:54->38:72
	ADDI	%r31, %r31, $40	# build/lib.ml#38:54->38:72
	ADDI	%r31, %r31, $4	# build/lib.ml#38:54->38:72
	SIP	# build/lib.ml#38:54->38:72
	JC	# build/lib.ml#38:54->38:72
	ADDI	%r31, %r31, $-40	# build/lib.ml#38:54->38:72
	LDR	%r2, %r31, $32	# build/lib.ml#38:54->38:72
	LDR	%r1, %r31, $36	# build/lib.ml#38:54->38:72
min_caml_if_flt_cont.1478:
	J	$min_caml_if_eq_cont.1476	# build/lib.ml#37:4->38:97
min_caml_if_eq.1475:
	MV	%r0, %r1	# build/lib.ml#38:3->38:4
min_caml_if_eq_cont.1476:
	LDR	%r9, %r31, $0	# build/lib.ml#37:4->38:97
	LDR	%r8, %r31, $4	# build/lib.ml#37:4->38:97
	FLDR	%fr9, %r31, $8	# build/lib.ml#37:4->38:97
	FLDR	%fr8, %r31, $12	# build/lib.ml#37:4->38:97
	LINK	# build/lib.ml#37:4->38:97
min_caml_searchsub.1056:
	SDR	%r9, %r31, $0	# build/lib.ml#35:3->35:64
	SDR	%r8, %r31, $4	# build/lib.ml#35:3->35:64
	FSDR	%fr9, %r31, $8	# build/lib.ml#35:3->35:64
	FSDR	%fr8, %r31, $12	# build/lib.ml#35:3->35:64
	FLDR	%fr9, %r29, $4	# build/lib.ml#35:3->35:64
	SDR	%r1, %r31, $16	# build/lib.ml#35:8->35:22
	ADDI	%r31, %r31, $20	# build/lib.ml#35:8->35:22
	ADDI	%r31, %r31, $4	# build/lib.ml#35:8->35:22
	SIP	# build/lib.ml#35:8->35:22
	J	$min_caml_float_of_int	# build/lib.ml#35:8->35:22
	ADDI	%r31, %r31, $-20	# build/lib.ml#35:8->35:22
	FMV	%fr8, %fr0	# build/lib.ml#35:8->35:22
	LDR	%r1, %r31, $16	# build/lib.ml#35:8->35:22
	FNEG1	%fr9	# build/lib.ml#35:27->35:30
	FCMP	%fr8, %fr9	# build/lib.ml#35:3->35:64
	FJLT	$min_caml_if_flt.1479	# build/lib.ml#35:3->35:64
	MV	%r0, %r1	# build/lib.ml#35:63->35:64
	J	$min_caml_if_flt_cont.1480	# build/lib.ml#35:3->35:64
min_caml_if_flt.1479:
	MVI	%r9, $4	# build/lib.ml#35:52->35:53
	MUL	%r8, %r1, %r9	# build/lib.ml#35:50->35:53
	MVI	%r9, $2	# build/lib.ml#35:54->35:55
	DIV	%r9, %r8, %r9	# build/lib.ml#35:50->35:55
	SDR	%r1, %r31, $20	# build/lib.ml#35:39->35:56
	MV	%r1, %r9	# build/lib.ml#35:39->35:56
	ADDI	%r31, %r31, $24	# build/lib.ml#35:39->35:56
	ADDI	%r31, %r31, $4	# build/lib.ml#35:39->35:56
	SIP	# build/lib.ml#35:39->35:56
	JC	# build/lib.ml#35:39->35:56
	ADDI	%r31, %r31, $-24	# build/lib.ml#35:39->35:56
	LDR	%r1, %r31, $20	# build/lib.ml#35:39->35:56
min_caml_if_flt_cont.1480:
	LDR	%r9, %r31, $0	# build/lib.ml#35:3->35:64
	LDR	%r8, %r31, $4	# build/lib.ml#35:3->35:64
	FLDR	%fr9, %r31, $8	# build/lib.ml#35:3->35:64
	FLDR	%fr8, %r31, $12	# build/lib.ml#35:3->35:64
	LINK	# build/lib.ml#35:3->35:64
min_caml_search.1028:
	SDR	%r9, %r31, $0	# build/lib.ml#29:4->30:94
	SDR	%r8, %r31, $4	# build/lib.ml#29:4->30:94
	FSDR	%fr9, %r31, $8	# build/lib.ml#29:4->30:94
	FSDR	%fr8, %r31, $12	# build/lib.ml#29:4->30:94
	FLDR	%fr9, %r29, $4	# build/lib.ml#29:4->30:94
	SUB	%r8, %r2, %r1	# build/lib.ml#29:8->29:11
	MVI	%r9, $1	# build/lib.ml#29:14->29:15
	CEQ	%r8, %r9	# build/lib.ml#29:4->30:94
	JZ	$min_caml_if_eq.1481	# build/lib.ml#29:4->30:94
	ADD	%r8, %r1, %r2	# build/lib.ml#30:32->30:35
	MVI	%r9, $2	# build/lib.ml#30:37->30:38
	DIV	%r9, %r8, %r9	# build/lib.ml#30:31->30:38
	SDR	%r2, %r31, $16	# build/lib.ml#30:17->30:39
	SDR	%r1, %r31, $20	# build/lib.ml#30:17->30:39
	MV	%r1, %r9	# build/lib.ml#30:17->30:39
	ADDI	%r31, %r31, $24	# build/lib.ml#30:17->30:39
	ADDI	%r31, %r31, $4	# build/lib.ml#30:17->30:39
	SIP	# build/lib.ml#30:17->30:39
	J	$min_caml_float_of_int	# build/lib.ml#30:17->30:39
	ADDI	%r31, %r31, $-24	# build/lib.ml#30:17->30:39
	FMV	%fr8, %fr0	# build/lib.ml#30:17->30:39
	LDR	%r2, %r31, $16	# build/lib.ml#30:17->30:39
	LDR	%r1, %r31, $20	# build/lib.ml#30:17->30:39
	FCMP	%fr9, %fr8	# build/lib.ml#30:13->30:93
	FJLT	$min_caml_if_flt.1483	# build/lib.ml#30:13->30:93
	MVI	%r9, $2	# build/lib.ml#30:65->30:66
	DIV	%r9, %r8, %r9	# build/lib.ml#30:59->30:66
	SDR	%r2, %r31, $24	# build/lib.ml#30:51->30:69
	SDR	%r1, %r31, $28	# build/lib.ml#30:51->30:69
	MV	%r1, %r9	# build/lib.ml#30:51->30:69
	ADDI	%r31, %r31, $32	# build/lib.ml#30:51->30:69
	ADDI	%r31, %r31, $4	# build/lib.ml#30:51->30:69
	SIP	# build/lib.ml#30:51->30:69
	JC	# build/lib.ml#30:51->30:69
	ADDI	%r31, %r31, $-32	# build/lib.ml#30:51->30:69
	LDR	%r2, %r31, $24	# build/lib.ml#30:51->30:69
	LDR	%r1, %r31, $28	# build/lib.ml#30:51->30:69
	J	$min_caml_if_flt_cont.1484	# build/lib.ml#30:13->30:93
min_caml_if_flt.1483:
	MVI	%r9, $2	# build/lib.ml#30:91->30:92
	DIV	%r9, %r8, %r9	# build/lib.ml#30:85->30:92
	SDR	%r2, %r31, $32	# build/lib.ml#30:75->30:93
	SDR	%r1, %r31, $36	# build/lib.ml#30:75->30:93
	MV	%r2, %r9	# build/lib.ml#30:75->30:93
	ADDI	%r31, %r31, $40	# build/lib.ml#30:75->30:93
	ADDI	%r31, %r31, $4	# build/lib.ml#30:75->30:93
	SIP	# build/lib.ml#30:75->30:93
	JC	# build/lib.ml#30:75->30:93
	ADDI	%r31, %r31, $-40	# build/lib.ml#30:75->30:93
	LDR	%r2, %r31, $32	# build/lib.ml#30:75->30:93
	LDR	%r1, %r31, $36	# build/lib.ml#30:75->30:93
min_caml_if_flt_cont.1484:
	J	$min_caml_if_eq_cont.1482	# build/lib.ml#29:4->30:94
min_caml_if_eq.1481:
	MV	%r0, %r1	# build/lib.ml#30:3->30:4
min_caml_if_eq_cont.1482:
	LDR	%r9, %r31, $0	# build/lib.ml#29:4->30:94
	LDR	%r8, %r31, $4	# build/lib.ml#29:4->30:94
	FLDR	%fr9, %r31, $8	# build/lib.ml#29:4->30:94
	FLDR	%fr8, %r31, $12	# build/lib.ml#29:4->30:94
	LINK	# build/lib.ml#29:4->30:94
min_caml_searchsub.1026:
	SDR	%r9, %r31, $0	# build/lib.ml#27:3->27:60
	SDR	%r8, %r31, $4	# build/lib.ml#27:3->27:60
	FSDR	%fr9, %r31, $8	# build/lib.ml#27:3->27:60
	FSDR	%fr8, %r31, $12	# build/lib.ml#27:3->27:60
	FLDR	%fr9, %r29, $4	# build/lib.ml#27:3->27:60
	SDR	%r1, %r31, $16	# build/lib.ml#27:8->27:22
	ADDI	%r31, %r31, $20	# build/lib.ml#27:8->27:22
	ADDI	%r31, %r31, $4	# build/lib.ml#27:8->27:22
	SIP	# build/lib.ml#27:8->27:22
	J	$min_caml_float_of_int	# build/lib.ml#27:8->27:22
	ADDI	%r31, %r31, $-20	# build/lib.ml#27:8->27:22
	FMV	%fr8, %fr0	# build/lib.ml#27:8->27:22
	LDR	%r1, %r31, $16	# build/lib.ml#27:8->27:22
	FCMP	%fr8, %fr9	# build/lib.ml#27:3->27:60
	FJLT	$min_caml_if_flt.1485	# build/lib.ml#27:3->27:60
	MV	%r0, %r1	# build/lib.ml#27:59->27:60
	J	$min_caml_if_flt_cont.1486	# build/lib.ml#27:3->27:60
min_caml_if_flt.1485:
	MVI	%r9, $4	# build/lib.ml#27:48->27:49
	MUL	%r8, %r1, %r9	# build/lib.ml#27:46->27:49
	MVI	%r9, $2	# build/lib.ml#27:50->27:51
	DIV	%r9, %r8, %r9	# build/lib.ml#27:46->27:51
	SDR	%r1, %r31, $20	# build/lib.ml#27:35->27:52
	MV	%r1, %r9	# build/lib.ml#27:35->27:52
	ADDI	%r31, %r31, $24	# build/lib.ml#27:35->27:52
	ADDI	%r31, %r31, $4	# build/lib.ml#27:35->27:52
	SIP	# build/lib.ml#27:35->27:52
	JC	# build/lib.ml#27:35->27:52
	ADDI	%r31, %r31, $-24	# build/lib.ml#27:35->27:52
	LDR	%r1, %r31, $20	# build/lib.ml#27:35->27:52
min_caml_if_flt_cont.1486:
	LDR	%r9, %r31, $0	# build/lib.ml#27:3->27:60
	LDR	%r8, %r31, $4	# build/lib.ml#27:3->27:60
	FLDR	%fr9, %r31, $8	# build/lib.ml#27:3->27:60
	FLDR	%fr8, %r31, $12	# build/lib.ml#27:3->27:60
	LINK	# build/lib.ml#27:3->27:60
min_caml_int_of_float:
	SDR	%r9, %r31, $0	# build/lib.ml#17:33->17:35
	SDR	%r8, %r31, $4	# build/lib.ml#17:33->17:35
	SDR	%r7, %r31, $8	# build/lib.ml#17:33->17:35
	FSDR	%fr9, %r31, $12	# build/lib.ml#17:33->17:35
	FLDA	%fr9, $min_caml_l.1187	# build/lib.ml#17:33->17:35
	FCMP	%fr0, %fr9	# build/lib.ml#17:26->24:16
	FJLT	$min_caml_if_flt.1487	# build/lib.ml#17:26->24:16
	MV	%r9, %r30	# build/lib.ml#18:2->24:16
	ADDI	%r30, %r30, $8	# build/lib.ml#18:2->24:16
	MVI	%r8, $min_caml_searchsub.1092	# build/lib.ml#18:2->24:16
	SDR	%r8, %r9, $0	# build/lib.ml#18:2->24:16
	FSDR	%fr0, %r9, $4	# build/lib.ml#18:2->24:16
	MV	%r8, %r30	# build/lib.ml#20:2->24:16
	ADDI	%r30, %r30, $8	# build/lib.ml#20:2->24:16
	MVI	%r7, $min_caml_search.1094	# build/lib.ml#20:2->24:16
	SDR	%r7, %r8, $0	# build/lib.ml#20:2->24:16
	FSDR	%fr0, %r8, $4	# build/lib.ml#20:2->24:16
	MVI	%r7, $1	# build/lib.ml#23:20->23:21
	MV	%r1, %r7	# build/lib.ml#23:10->23:21
	MV	%r29, %r9	# build/lib.ml#23:10->23:21
	ADDI	%r31, %r31, $16	# build/lib.ml#23:10->23:21
	ADDI	%r31, %r31, $4	# build/lib.ml#23:10->23:21
	SIP	# build/lib.ml#23:10->23:21
	JC	# build/lib.ml#23:10->23:21
	ADDI	%r31, %r31, $-16	# build/lib.ml#23:10->23:21
	MV	%r9, %r0	# build/lib.ml#23:10->23:21
	MVI	%r7, $2	# build/lib.ml#24:12->24:13
	DIV	%r7, %r9, %r7	# build/lib.ml#24:10->24:13
	MV	%r2, %r9	# build/lib.ml#24:2->24:16
	MV	%r1, %r7	# build/lib.ml#24:2->24:16
	MV	%r29, %r8	# build/lib.ml#24:2->24:16
	ADDI	%r31, %r31, $16	# build/lib.ml#24:2->24:16
	ADDI	%r31, %r31, $4	# build/lib.ml#24:2->24:16
	SIP	# build/lib.ml#24:2->24:16
	JC	# build/lib.ml#24:2->24:16
	ADDI	%r31, %r31, $-16	# build/lib.ml#24:2->24:16
	J	$min_caml_if_flt_cont.1488	# build/lib.ml#17:26->24:16
min_caml_if_flt.1487:
	FNEG2	%fr9, %fr0	# build/lib.ml#17:57->17:60
	FMV	%fr0, %fr9	# build/lib.ml#17:43->17:61
	ADDI	%r31, %r31, $16	# build/lib.ml#17:43->17:61
	ADDI	%r31, %r31, $4	# build/lib.ml#17:43->17:61
	SIP	# build/lib.ml#17:43->17:61
	J	$min_caml_int_of_float	# build/lib.ml#17:43->17:61
	ADDI	%r31, %r31, $-16	# build/lib.ml#17:43->17:61
	MV	%r9, %r0	# build/lib.ml#17:43->17:61
	NEG2	%r0, %r9	# build/lib.ml#17:41->17:62
min_caml_if_flt_cont.1488:
	LDR	%r9, %r31, $0	# build/lib.ml#17:33->17:35
	LDR	%r8, %r31, $4	# build/lib.ml#17:33->17:35
	LDR	%r7, %r31, $8	# build/lib.ml#17:33->17:35
	FLDR	%fr9, %r31, $12	# build/lib.ml#17:33->17:35
	LINK	# build/lib.ml#17:33->17:35
min_caml_search.1094:
	SDR	%r9, %r31, $0	# build/lib.ml#21:4->22:155
	SDR	%r8, %r31, $4	# build/lib.ml#21:4->22:155
	FSDR	%fr9, %r31, $8	# build/lib.ml#21:4->22:155
	FSDR	%fr8, %r31, $12	# build/lib.ml#21:4->22:155
	FSDR	%fr7, %r31, $16	# build/lib.ml#21:4->22:155
	FLDR	%fr9, %r29, $4	# build/lib.ml#21:4->22:155
	SUB	%r8, %r2, %r1	# build/lib.ml#21:8->21:11
	MVI	%r9, $1	# build/lib.ml#21:14->21:15
	CEQ	%r8, %r9	# build/lib.ml#21:4->22:155
	JZ	$min_caml_if_eq.1489	# build/lib.ml#21:4->22:155
	ADD	%r8, %r1, %r2	# build/lib.ml#22:94->22:97
	MVI	%r9, $2	# build/lib.ml#22:99->22:100
	DIV	%r9, %r8, %r9	# build/lib.ml#22:93->22:100
	SDR	%r2, %r31, $20	# build/lib.ml#22:79->22:101
	SDR	%r1, %r31, $24	# build/lib.ml#22:79->22:101
	MV	%r1, %r9	# build/lib.ml#22:79->22:101
	ADDI	%r31, %r31, $28	# build/lib.ml#22:79->22:101
	ADDI	%r31, %r31, $4	# build/lib.ml#22:79->22:101
	SIP	# build/lib.ml#22:79->22:101
	J	$min_caml_float_of_int	# build/lib.ml#22:79->22:101
	ADDI	%r31, %r31, $-28	# build/lib.ml#22:79->22:101
	FMV	%fr8, %fr0	# build/lib.ml#22:79->22:101
	LDR	%r2, %r31, $20	# build/lib.ml#22:79->22:101
	LDR	%r1, %r31, $24	# build/lib.ml#22:79->22:101
	FCMP	%fr8, %fr9	# build/lib.ml#22:75->22:154
	FJLT	$min_caml_if_flt.1491	# build/lib.ml#22:75->22:154
	MVI	%r9, $2	# build/lib.ml#22:152->22:153
	DIV	%r9, %r8, %r9	# build/lib.ml#22:146->22:153
	SDR	%r2, %r31, $28	# build/lib.ml#22:136->22:154
	SDR	%r1, %r31, $32	# build/lib.ml#22:136->22:154
	MV	%r2, %r9	# build/lib.ml#22:136->22:154
	ADDI	%r31, %r31, $36	# build/lib.ml#22:136->22:154
	ADDI	%r31, %r31, $4	# build/lib.ml#22:136->22:154
	SIP	# build/lib.ml#22:136->22:154
	JC	# build/lib.ml#22:136->22:154
	ADDI	%r31, %r31, $-36	# build/lib.ml#22:136->22:154
	LDR	%r2, %r31, $28	# build/lib.ml#22:136->22:154
	LDR	%r1, %r31, $32	# build/lib.ml#22:136->22:154
	J	$min_caml_if_flt_cont.1492	# build/lib.ml#22:75->22:154
min_caml_if_flt.1491:
	MVI	%r9, $2	# build/lib.ml#22:126->22:127
	DIV	%r9, %r8, %r9	# build/lib.ml#22:120->22:127
	SDR	%r2, %r31, $36	# build/lib.ml#22:112->22:130
	SDR	%r1, %r31, $40	# build/lib.ml#22:112->22:130
	MV	%r1, %r9	# build/lib.ml#22:112->22:130
	ADDI	%r31, %r31, $44	# build/lib.ml#22:112->22:130
	ADDI	%r31, %r31, $4	# build/lib.ml#22:112->22:130
	SIP	# build/lib.ml#22:112->22:130
	JC	# build/lib.ml#22:112->22:130
	ADDI	%r31, %r31, $-44	# build/lib.ml#22:112->22:130
	LDR	%r2, %r31, $36	# build/lib.ml#22:112->22:130
	LDR	%r1, %r31, $40	# build/lib.ml#22:112->22:130
min_caml_if_flt_cont.1492:
	J	$min_caml_if_eq_cont.1490	# build/lib.ml#21:4->22:155
min_caml_if_eq.1489:
	SDR	%r2, %r31, $44	# build/lib.ml#22:34->22:48
	SDR	%r1, %r31, $48	# build/lib.ml#22:34->22:48
	ADDI	%r31, %r31, $52	# build/lib.ml#22:34->22:48
	ADDI	%r31, %r31, $4	# build/lib.ml#22:34->22:48
	SIP	# build/lib.ml#22:34->22:48
	J	$min_caml_float_of_int	# build/lib.ml#22:34->22:48
	ADDI	%r31, %r31, $-52	# build/lib.ml#22:34->22:48
	FMV	%fr8, %fr0	# build/lib.ml#22:34->22:48
	LDR	%r2, %r31, $44	# build/lib.ml#22:34->22:48
	LDR	%r1, %r31, $48	# build/lib.ml#22:34->22:48
	FSUB	%fr7, %fr9, %fr8	# build/lib.ml#22:30->22:49
	SDR	%r2, %r31, $52	# build/lib.ml#22:9->22:23
	SDR	%r1, %r31, $56	# build/lib.ml#22:9->22:23
	MV	%r1, %r2	# build/lib.ml#22:9->22:23
	ADDI	%r31, %r31, $60	# build/lib.ml#22:9->22:23
	ADDI	%r31, %r31, $4	# build/lib.ml#22:9->22:23
	SIP	# build/lib.ml#22:9->22:23
	J	$min_caml_float_of_int	# build/lib.ml#22:9->22:23
	ADDI	%r31, %r31, $-60	# build/lib.ml#22:9->22:23
	FMV	%fr8, %fr0	# build/lib.ml#22:9->22:23
	LDR	%r2, %r31, $52	# build/lib.ml#22:9->22:23
	LDR	%r1, %r31, $56	# build/lib.ml#22:9->22:23
	FSUB	%fr9, %fr8, %fr9	# build/lib.ml#22:8->22:27
	FCMP	%fr7, %fr9	# build/lib.ml#22:4->22:64
	FJLT	$min_caml_if_flt.1493	# build/lib.ml#22:4->22:64
	MV	%r0, %r2	# build/lib.ml#22:63->22:64
	J	$min_caml_if_flt_cont.1494	# build/lib.ml#22:4->22:64
min_caml_if_flt.1493:
	MV	%r0, %r1	# build/lib.ml#22:56->22:57
min_caml_if_flt_cont.1494:
min_caml_if_eq_cont.1490:
	LDR	%r9, %r31, $0	# build/lib.ml#21:4->22:155
	LDR	%r8, %r31, $4	# build/lib.ml#21:4->22:155
	FLDR	%fr9, %r31, $8	# build/lib.ml#21:4->22:155
	FLDR	%fr8, %r31, $12	# build/lib.ml#21:4->22:155
	FLDR	%fr7, %r31, $16	# build/lib.ml#21:4->22:155
	LINK	# build/lib.ml#21:4->22:155
min_caml_searchsub.1092:
	SDR	%r9, %r31, $0	# build/lib.ml#19:3->19:60
	SDR	%r8, %r31, $4	# build/lib.ml#19:3->19:60
	FSDR	%fr9, %r31, $8	# build/lib.ml#19:3->19:60
	FSDR	%fr8, %r31, $12	# build/lib.ml#19:3->19:60
	FLDR	%fr9, %r29, $4	# build/lib.ml#19:3->19:60
	SDR	%r1, %r31, $16	# build/lib.ml#19:8->19:22
	ADDI	%r31, %r31, $20	# build/lib.ml#19:8->19:22
	ADDI	%r31, %r31, $4	# build/lib.ml#19:8->19:22
	SIP	# build/lib.ml#19:8->19:22
	J	$min_caml_float_of_int	# build/lib.ml#19:8->19:22
	ADDI	%r31, %r31, $-20	# build/lib.ml#19:8->19:22
	FMV	%fr8, %fr0	# build/lib.ml#19:8->19:22
	LDR	%r1, %r31, $16	# build/lib.ml#19:8->19:22
	FCMP	%fr8, %fr9	# build/lib.ml#19:3->19:60
	FJLT	$min_caml_if_flt.1495	# build/lib.ml#19:3->19:60
	MV	%r0, %r1	# build/lib.ml#19:59->19:60
	J	$min_caml_if_flt_cont.1496	# build/lib.ml#19:3->19:60
min_caml_if_flt.1495:
	MVI	%r9, $4	# build/lib.ml#19:48->19:49
	MUL	%r8, %r1, %r9	# build/lib.ml#19:46->19:49
	MVI	%r9, $2	# build/lib.ml#19:50->19:51
	DIV	%r9, %r8, %r9	# build/lib.ml#19:46->19:51
	SDR	%r1, %r31, $20	# build/lib.ml#19:35->19:52
	MV	%r1, %r9	# build/lib.ml#19:35->19:52
	ADDI	%r31, %r31, $24	# build/lib.ml#19:35->19:52
	ADDI	%r31, %r31, $4	# build/lib.ml#19:35->19:52
	SIP	# build/lib.ml#19:35->19:52
	JC	# build/lib.ml#19:35->19:52
	ADDI	%r31, %r31, $-24	# build/lib.ml#19:35->19:52
	LDR	%r1, %r31, $20	# build/lib.ml#19:35->19:52
min_caml_if_flt_cont.1496:
	LDR	%r9, %r31, $0	# build/lib.ml#19:3->19:60
	LDR	%r8, %r31, $4	# build/lib.ml#19:3->19:60
	FLDR	%fr9, %r31, $8	# build/lib.ml#19:3->19:60
	FLDR	%fr8, %r31, $12	# build/lib.ml#19:3->19:60
	LINK	# build/lib.ml#19:3->19:60
min_caml_float_of_int:
	SDR	%r9, %r31, $0	# build/lib.ml#1:33->1:34
	FSDR	%fr9, %r31, $4	# build/lib.ml#1:33->1:34
	MVI	%r9, $0	# build/lib.ml#1:33->1:34
	CMP	%r1, %r9	# build/lib.ml#1:26->16:46
	JZ	$min_caml_if_lt.1497	# build/lib.ml#1:26->16:46
	FLDA	%fr9, $min_caml_l.1200	# build/lib.ml#16:29->16:31
	MVI	%r9, $1	# build/lib.ml#16:32->16:33
	SDR	%r1, %r31, $8	# build/lib.ml#16:21->16:33
	MV	%r2, %r9	# build/lib.ml#16:21->16:33
	FMV	%fr0, %fr9	# build/lib.ml#16:21->16:33
	ADDI	%r31, %r31, $12	# build/lib.ml#16:21->16:33
	ADDI	%r31, %r31, $4	# build/lib.ml#16:21->16:33
	SIP	# build/lib.ml#16:21->16:33
	J	$min_caml_loopa.1126	# build/lib.ml#16:21->16:33
	ADDI	%r31, %r31, $-12	# build/lib.ml#16:21->16:33
	FMV	%fr9, %fr0	# build/lib.ml#16:21->16:33
	LDR	%r1, %r31, $8	# build/lib.ml#16:21->16:33
	MVI	%r9, $1	# build/lib.ml#16:44->16:45
	SDR	%r1, %r31, $12	# build/lib.ml#16:36->16:45
	MV	%r2, %r9	# build/lib.ml#16:36->16:45
	ADDI	%r31, %r31, $16	# build/lib.ml#16:36->16:45
	ADDI	%r31, %r31, $4	# build/lib.ml#16:36->16:45
	SIP	# build/lib.ml#16:36->16:45
	J	$min_caml_loopb.1130	# build/lib.ml#16:36->16:45
	ADDI	%r31, %r31, $-16	# build/lib.ml#16:36->16:45
	MV	%r9, %r0	# build/lib.ml#16:36->16:45
	LDR	%r1, %r31, $12	# build/lib.ml#16:36->16:45
	SDR	%r1, %r31, $16	# build/lib.ml#16:2->16:46
	MV	%r2, %r9	# build/lib.ml#16:2->16:46
	FMV	%fr0, %fr9	# build/lib.ml#16:2->16:46
	ADDI	%r31, %r31, $20	# build/lib.ml#16:2->16:46
	ADDI	%r31, %r31, $4	# build/lib.ml#16:2->16:46
	SIP	# build/lib.ml#16:2->16:46
	J	$min_caml_float_of_intsub.1133	# build/lib.ml#16:2->16:46
	ADDI	%r31, %r31, $-20	# build/lib.ml#16:2->16:46
	LDR	%r1, %r31, $16	# build/lib.ml#16:2->16:46
	J	$min_caml_if_lt_cont.1498	# build/lib.ml#1:26->16:46
min_caml_if_lt.1497:
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
min_caml_if_lt_cont.1498:
	LDR	%r9, %r31, $0	# build/lib.ml#1:33->1:34
	FLDR	%fr9, %r31, $4	# build/lib.ml#1:33->1:34
	LINK	# build/lib.ml#1:33->1:34
min_caml_float_of_intsub.1133:
	SDR	%r9, %r31, $0	# build/lib.ml#8:13->9:20
	SDR	%r8, %r31, $4	# build/lib.ml#8:13->9:20
	FSDR	%fr9, %r31, $8	# build/lib.ml#8:13->9:20
	FSDR	%fr8, %r31, $12	# build/lib.ml#8:13->9:20
	CMP	%r1, %r2	# build/lib.ml#8:13->9:20
	JZ	$min_caml_if_lt.1499	# build/lib.ml#8:13->9:20
	MV	%fr8, %fr0	# build/lib.ml#8:28->8:29
	J	$min_caml_if_lt_cont.1500	# build/lib.ml#8:13->9:20
min_caml_if_lt.1499:
	FLDA	%fr0, $min_caml_l.1187	# build/lib.ml#9:18->9:20
	MV	%fr8, %fr0	# build/lib.ml#9:18->9:20
min_caml_if_lt_cont.1500:
	MVI	%r9, $1	# build/lib.ml#12:17->12:18
	CEQ	%r2, %r9	# build/lib.ml#12:10->13:78
	JZ	$min_caml_if_eq.1501	# build/lib.ml#12:10->13:78
	CMP	%r1, %r2	# build/lib.ml#13:31->13:58
	JZ	$min_caml_if_lt.1503	# build/lib.ml#13:31->13:58
	SUB	%fr0, %r1, %r2	# build/lib.ml#13:46->13:51
	MV	%r8, %fr0	# build/lib.ml#13:46->13:51
	J	$min_caml_if_lt_cont.1504	# build/lib.ml#13:31->13:58
min_caml_if_lt.1503:
	MV	%fr0, %r1	# build/lib.ml#13:57->13:58
	MV	%r8, %fr0	# build/lib.ml#13:57->13:58
min_caml_if_lt_cont.1504:
	FLDA	%fr9, $min_caml_l.1186	# build/lib.ml#13:66->13:68
	FDIV	%fr9, %fr0, %fr9	# build/lib.ml#13:61->13:68
	MVI	%r9, $2	# build/lib.ml#13:75->13:76
	DIV	%r9, %r2, %r9	# build/lib.ml#13:71->13:76
	SDR	%r2, %r31, $16	# build/lib.ml#13:14->13:77
	SDR	%r1, %r31, $20	# build/lib.ml#13:14->13:77
	MV	%r2, %r9	# build/lib.ml#13:14->13:77
	MV	%r1, %r8	# build/lib.ml#13:14->13:77
	FMV	%fr0, %fr9	# build/lib.ml#13:14->13:77
	ADDI	%r31, %r31, $24	# build/lib.ml#13:14->13:77
	ADDI	%r31, %r31, $4	# build/lib.ml#13:14->13:77
	SIP	# build/lib.ml#13:14->13:77
	J	$min_caml_float_of_intsub.1133	# build/lib.ml#13:14->13:77
	ADDI	%r31, %r31, $-24	# build/lib.ml#13:14->13:77
	LDR	%r2, %r31, $16	# build/lib.ml#13:14->13:77
	LDR	%r1, %r31, $20	# build/lib.ml#13:14->13:77
	MV	%fr9, %fr0	# build/lib.ml#13:14->13:77
	J	$min_caml_if_eq_cont.1502	# build/lib.ml#12:10->13:78
min_caml_if_eq.1501:
	FLDA	%fr0, $min_caml_l.1187	# build/lib.ml#12:24->12:26
	MV	%fr9, %fr0	# build/lib.ml#12:24->12:26
min_caml_if_eq_cont.1502:
	FADD	%fr0, %fr8, %fr9	# build/lib.ml#7:9->14:10
	LDR	%r9, %r31, $0	# build/lib.ml#8:13->9:20
	LDR	%r8, %r31, $4	# build/lib.ml#8:13->9:20
	FLDR	%fr9, %r31, $8	# build/lib.ml#8:13->9:20
	FLDR	%fr8, %r31, $12	# build/lib.ml#8:13->9:20
	LINK	# build/lib.ml#8:13->9:20
min_caml_loopb.1130:
	SDR	%r9, %r31, $0	# build/lib.ml#5:8->5:9
	MVI	%r9, $2	# build/lib.ml#5:8->5:9
	MUL	%r9, %r2, %r9	# build/lib.ml#5:6->5:9
	CMP	%r1, %r9	# build/lib.ml#5:3->5:39
	JZ	$min_caml_if_lt.1505	# build/lib.ml#5:3->5:39
	MVI	%r9, $2	# build/lib.ml#5:37->5:38
	MUL	%r9, %r2, %r9	# build/lib.ml#5:35->5:38
	SDR	%r2, %r31, $4	# build/lib.ml#5:26->5:39
	SDR	%r1, %r31, $8	# build/lib.ml#5:26->5:39
	MV	%r2, %r9	# build/lib.ml#5:26->5:39
	ADDI	%r31, %r31, $12	# build/lib.ml#5:26->5:39
	ADDI	%r31, %r31, $4	# build/lib.ml#5:26->5:39
	SIP	# build/lib.ml#5:26->5:39
	J	$min_caml_loopb.1130	# build/lib.ml#5:26->5:39
	ADDI	%r31, %r31, $-12	# build/lib.ml#5:26->5:39
	LDR	%r2, %r31, $4	# build/lib.ml#5:26->5:39
	LDR	%r1, %r31, $8	# build/lib.ml#5:26->5:39
	J	$min_caml_if_lt_cont.1506	# build/lib.ml#5:3->5:39
min_caml_if_lt.1505:
	MV	%r0, %r2	# build/lib.ml#5:19->5:20
min_caml_if_lt_cont.1506:
	LDR	%r9, %r31, $0	# build/lib.ml#5:8->5:9
	LINK	# build/lib.ml#5:8->5:9
min_caml_loopa.1126:
	SDR	%r9, %r31, $0	# build/lib.ml#3:8->3:9
	FSDR	%fr9, %r31, $4	# build/lib.ml#3:8->3:9
	MVI	%r9, $2	# build/lib.ml#3:8->3:9
	MUL	%r9, %r2, %r9	# build/lib.ml#3:6->3:9
	CMP	%r1, %r9	# build/lib.ml#3:3->3:46
	JZ	$min_caml_if_lt.1507	# build/lib.ml#3:3->3:46
	FADD	%fr9, %fr0, %fr0	# build/lib.ml#3:35->3:39
	MVI	%r9, $2	# build/lib.ml#3:44->3:45
	MUL	%r9, %r2, %r9	# build/lib.ml#3:42->3:45
	SDR	%r2, %r31, $8	# build/lib.ml#3:26->3:46
	SDR	%r1, %r31, $12	# build/lib.ml#3:26->3:46
	MV	%r2, %r9	# build/lib.ml#3:26->3:46
	FMV	%fr0, %fr9	# build/lib.ml#3:26->3:46
	ADDI	%r31, %r31, $16	# build/lib.ml#3:26->3:46
	ADDI	%r31, %r31, $4	# build/lib.ml#3:26->3:46
	SIP	# build/lib.ml#3:26->3:46
	J	$min_caml_loopa.1126	# build/lib.ml#3:26->3:46
	ADDI	%r31, %r31, $-16	# build/lib.ml#3:26->3:46
	LDR	%r2, %r31, $8	# build/lib.ml#3:26->3:46
	LDR	%r1, %r31, $12	# build/lib.ml#3:26->3:46
	J	$min_caml_if_lt_cont.1508	# build/lib.ml#3:3->3:46
min_caml_if_lt.1507:
min_caml_if_lt_cont.1508:
	LDR	%r9, %r31, $0	# build/lib.ml#3:8->3:9
	FLDR	%fr9, %r31, $4	# build/lib.ml#3:8->3:9
	LINK	# build/lib.ml#3:8->3:9
