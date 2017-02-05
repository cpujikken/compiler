.start	min_caml_start
.data
.align	4
l.7815:	#-200.000000 build/example.ml#502:32->502:38
	.long	c3480000
l.7814:	#200.000000 build/example.ml#501:42->501:47
	.long	43480000
l.7813:	#0.017453 build/example.ml#483:8->483:19
	.long	3c8efa35
l.7812:	#-1.000000 build/example.ml#1036:18->1036:22
	.long	bf800000
l.7811:	#-0.200000 build/example.ml#1198:36->1198:40
	.long	be4ccccd
l.7810:	#0.010000 build/example.ml#1380:21->1380:25
	.long	3c23d70a
l.7809:	#100000000.000000 build/example.ml#1447:14->1447:25
	.long	4cbebc20
l.7808:	#-0.100000 build/example.ml#1446:14->1446:18
	.long	bdcccccd
l.7807:	#1000000000.000000 build/example.ml#1442:16->1442:28
	.long	4e6e6b28
l.7806:	#0.300000 build/example.ml#1583:44->1583:47
	.long	3e99999a
l.7805:	#0.150000 build/example.ml#1581:15->1581:19
	.long	3e19999a
l.7804:	#15.000000 build/example.ml#1564:2->1564:6
	.long	41700000
l.7803:	#30.000000 build/example.ml#1568:16->1568:20
	.long	41f00000
l.7802:	#0.000100 build/example.ml#1563:26->1563:32
	.long	38d1b717
l.7801:	#3.141593 build/example.ml#1552:37->1552:46
	.long	40490fdb
l.7800:	#0.250000 build/example.ml#1542:36->1542:40
	.long	3e800000
l.7799:	#255.000000 build/example.ml#1537:37->1537:42
	.long	437f0000
l.7798:	#10.000000 build/example.ml#1527:24->1527:28
	.long	41200000
l.7797:	#20.000000 build/example.ml#1526:41->1526:45
	.long	41a00000
l.7796:	#0.050000 build/example.ml#1526:31->1526:35
	.long	3d4ccccd
l.7795:	#-2.000000 build/example.ml#1671:16->1671:20
	.long	c0000000
l.7794:	#0.003906 build/example.ml#1666:28->1666:40
	.long	3b800000
l.7793:	#0.500000 build/example.ml#1660:32->1660:35
	.long	3f000000
l.7792:	#-150.000000 build/example.ml#1758:56->1758:62
	.long	c3160000
l.7791:	#150.000000 build/example.ml#1760:52->1760:57
	.long	43160000
l.7790:	#0.100000 build/example.ml#2156:44->2156:47
	.long	3dcccccd
l.7789:	#0.900000 build/example.ml#2166:43->2166:46
	.long	3f666666
l.7788:	#0.200000 build/example.ml#2166:36->2166:39
	.long	3e4ccccd
l.7787:	#0.000000 build/example.ml#2178:27->2178:30
	.long	00000000
l.7786:	#2.000000 build/example.ml#2257:6->2257:9
	.long	40000000
l.7785:	#1.000000 build/example.ml#2269:32->2269:35
	.long	3f800000
l.7784:	#128.000000 build/example.ml#2293:20->2293:25
	.long	43000000
l.11468:	#33554432 build/example.ml#2308:12->2308:15
	.long	02000000
l.11467:	#1048576 build/example.ml#2308:12->2308:15
	.long	00100000
.align	4
.text
rt.3046:
	SDR	%r9, %r31, $0	# build/example.ml#2289:2->2289:12
	SDR	%r8, %r31, $4	# build/example.ml#2289:2->2289:12
	SDR	%r7, %r31, $8	# build/example.ml#2289:2->2289:12
	FSDR	%fr9, %r31, $12	# build/example.ml#2289:2->2289:12
	FSDR	%fr8, %r31, $16	# build/example.ml#2289:2->2289:12
	MVI	%r8, $min_caml_image_size	# build/example.ml#2289:2->2289:12
	MVI	%r9, $0	# build/example.ml#2289:14->2289:15
	SDD	%r1, %r8, $4, %r9	# build/example.ml#2289:2->2289:26
	MVI	%r9, $1	# build/example.ml#2290:14->2290:15
	SDD	%r2, %r8, $4, %r9	# build/example.ml#2290:2->2290:26
	MVI	%r7, $min_caml_image_center	# build/example.ml#2291:2->2291:14
	MVI	%r8, $0	# build/example.ml#2291:16->2291:17
	MVI	%r9, $2	# build/example.ml#2291:31->2291:32
	DIV	%r9, %r1, %r9	# build/example.ml#2291:22->2291:32
	SDD	%r9, %r7, $4, %r8	# build/example.ml#2291:2->2291:32
	MVI	%r8, $1	# build/example.ml#2292:16->2292:17
	MVI	%r9, $2	# build/example.ml#2292:31->2292:32
	DIV	%r9, %r2, %r9	# build/example.ml#2292:22->2292:32
	SDD	%r9, %r7, $4, %r8	# build/example.ml#2292:2->2292:32
	MVI	%r8, $min_caml_scan_pitch	# build/example.ml#2293:2->2293:12
	MVI	%r9, $0	# build/example.ml#2293:14->2293:15
	FLDA	%fr8, $l.7784	# build/example.ml#2293:20->2293:25
	SDR	%r6, %r31, $20	# build/example.ml#2293:29->2293:48
	SDR	%r5, %r31, $24	# build/example.ml#2293:29->2293:48
	SDR	%r4, %r31, $28	# build/example.ml#2293:29->2293:48
	SDR	%r3, %r31, $32	# build/example.ml#2293:29->2293:48
	SDR	%r2, %r31, $36	# build/example.ml#2293:29->2293:48
	SDR	%r1, %r31, $40	# build/example.ml#2293:29->2293:48
	ADDI	%r31, %r31, $44	# build/example.ml#2293:29->2293:48
	ADDI	%r31, %r31, $4	# build/example.ml#2293:29->2293:48
	SIP	# build/example.ml#2293:29->2293:48
	J	$min_caml_float_of_int	# build/example.ml#2293:29->2293:48
	ADDI	%r31, %r31, $-44	# build/example.ml#2293:29->2293:48
	FMV	%fr9, %fr0	# build/example.ml#2293:29->2293:48
	LDR	%r6, %r31, $20	# build/example.ml#2293:29->2293:48
	LDR	%r5, %r31, $24	# build/example.ml#2293:29->2293:48
	LDR	%r4, %r31, $28	# build/example.ml#2293:29->2293:48
	LDR	%r3, %r31, $32	# build/example.ml#2293:29->2293:48
	LDR	%r2, %r31, $36	# build/example.ml#2293:29->2293:48
	LDR	%r1, %r31, $40	# build/example.ml#2293:29->2293:48
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#2293:20->2293:48
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#2293:2->2293:48
	SDR	%r6, %r31, $44	# build/example.ml#2294:13->2294:32
	SDR	%r5, %r31, $48	# build/example.ml#2294:13->2294:32
	SDR	%r4, %r31, $52	# build/example.ml#2294:13->2294:32
	SDR	%r3, %r31, $56	# build/example.ml#2294:13->2294:32
	SDR	%r2, %r31, $60	# build/example.ml#2294:13->2294:32
	SDR	%r1, %r31, $64	# build/example.ml#2294:13->2294:32
	ADDI	%r31, %r31, $68	# build/example.ml#2294:13->2294:32
	ADDI	%r31, %r31, $4	# build/example.ml#2294:13->2294:32
	SIP	# build/example.ml#2294:13->2294:32
	J	$create_pixelline.2993	# build/example.ml#2294:13->2294:32
	ADDI	%r31, %r31, $-68	# build/example.ml#2294:13->2294:32
	MV	%r9, %r0	# build/example.ml#2294:13->2294:32
	LDR	%r6, %r31, $44	# build/example.ml#2294:13->2294:32
	LDR	%r5, %r31, $48	# build/example.ml#2294:13->2294:32
	LDR	%r4, %r31, $52	# build/example.ml#2294:13->2294:32
	LDR	%r3, %r31, $56	# build/example.ml#2294:13->2294:32
	LDR	%r2, %r31, $60	# build/example.ml#2294:13->2294:32
	LDR	%r1, %r31, $64	# build/example.ml#2294:13->2294:32
	SDR	%r6, %r31, $68	# build/example.ml#2295:13->2295:32
	SDR	%r5, %r31, $72	# build/example.ml#2295:13->2295:32
	SDR	%r4, %r31, $76	# build/example.ml#2295:13->2295:32
	SDR	%r3, %r31, $80	# build/example.ml#2295:13->2295:32
	SDR	%r2, %r31, $84	# build/example.ml#2295:13->2295:32
	SDR	%r1, %r31, $88	# build/example.ml#2295:13->2295:32
	ADDI	%r31, %r31, $92	# build/example.ml#2295:13->2295:32
	ADDI	%r31, %r31, $4	# build/example.ml#2295:13->2295:32
	SIP	# build/example.ml#2295:13->2295:32
	J	$create_pixelline.2993	# build/example.ml#2295:13->2295:32
	ADDI	%r31, %r31, $-92	# build/example.ml#2295:13->2295:32
	MV	%r6, %r0	# build/example.ml#2295:13->2295:32
	LDR	%r6, %r31, $68	# build/example.ml#2295:13->2295:32
	LDR	%r5, %r31, $72	# build/example.ml#2295:13->2295:32
	LDR	%r4, %r31, $76	# build/example.ml#2295:13->2295:32
	LDR	%r3, %r31, $80	# build/example.ml#2295:13->2295:32
	LDR	%r2, %r31, $84	# build/example.ml#2295:13->2295:32
	LDR	%r1, %r31, $88	# build/example.ml#2295:13->2295:32
	SDR	%r6, %r31, $92	# build/example.ml#2296:13->2296:32
	SDR	%r5, %r31, $96	# build/example.ml#2296:13->2296:32
	SDR	%r4, %r31, $100	# build/example.ml#2296:13->2296:32
	SDR	%r3, %r31, $104	# build/example.ml#2296:13->2296:32
	SDR	%r2, %r31, $108	# build/example.ml#2296:13->2296:32
	SDR	%r1, %r31, $112	# build/example.ml#2296:13->2296:32
	ADDI	%r31, %r31, $116	# build/example.ml#2296:13->2296:32
	ADDI	%r31, %r31, $4	# build/example.ml#2296:13->2296:32
	SIP	# build/example.ml#2296:13->2296:32
	J	$create_pixelline.2993	# build/example.ml#2296:13->2296:32
	ADDI	%r31, %r31, $-116	# build/example.ml#2296:13->2296:32
	MV	%r8, %r0	# build/example.ml#2296:13->2296:32
	LDR	%r6, %r31, $92	# build/example.ml#2296:13->2296:32
	LDR	%r5, %r31, $96	# build/example.ml#2296:13->2296:32
	LDR	%r4, %r31, $100	# build/example.ml#2296:13->2296:32
	LDR	%r3, %r31, $104	# build/example.ml#2296:13->2296:32
	LDR	%r2, %r31, $108	# build/example.ml#2296:13->2296:32
	LDR	%r1, %r31, $112	# build/example.ml#2296:13->2296:32
	SDR	%r6, %r31, $116	# build/example.ml#2297:2->2297:18
	SDR	%r5, %r31, $120	# build/example.ml#2297:2->2297:18
	SDR	%r4, %r31, $124	# build/example.ml#2297:2->2297:18
	SDR	%r3, %r31, $128	# build/example.ml#2297:2->2297:18
	SDR	%r2, %r31, $132	# build/example.ml#2297:2->2297:18
	SDR	%r1, %r31, $136	# build/example.ml#2297:2->2297:18
	ADDI	%r31, %r31, $140	# build/example.ml#2297:2->2297:18
	ADDI	%r31, %r31, $4	# build/example.ml#2297:2->2297:18
	SIP	# build/example.ml#2297:2->2297:18
	J	$read_parameter.2711	# build/example.ml#2297:2->2297:18
	ADDI	%r31, %r31, $-140	# build/example.ml#2297:2->2297:18
	LDR	%r6, %r31, $116	# build/example.ml#2297:2->2297:18
	LDR	%r5, %r31, $120	# build/example.ml#2297:2->2297:18
	LDR	%r4, %r31, $124	# build/example.ml#2297:2->2297:18
	LDR	%r3, %r31, $128	# build/example.ml#2297:2->2297:18
	LDR	%r2, %r31, $132	# build/example.ml#2297:2->2297:18
	LDR	%r1, %r31, $136	# build/example.ml#2297:2->2297:18
	SDR	%r6, %r31, $140	# build/example.ml#2298:2->2298:21
	SDR	%r5, %r31, $144	# build/example.ml#2298:2->2298:21
	SDR	%r4, %r31, $148	# build/example.ml#2298:2->2298:21
	SDR	%r3, %r31, $152	# build/example.ml#2298:2->2298:21
	SDR	%r2, %r31, $156	# build/example.ml#2298:2->2298:21
	SDR	%r1, %r31, $160	# build/example.ml#2298:2->2298:21
	ADDI	%r31, %r31, $164	# build/example.ml#2298:2->2298:21
	ADDI	%r31, %r31, $4	# build/example.ml#2298:2->2298:21
	SIP	# build/example.ml#2298:2->2298:21
	J	$write_ppm_header.2954	# build/example.ml#2298:2->2298:21
	ADDI	%r31, %r31, $-164	# build/example.ml#2298:2->2298:21
	LDR	%r6, %r31, $140	# build/example.ml#2298:2->2298:21
	LDR	%r5, %r31, $144	# build/example.ml#2298:2->2298:21
	LDR	%r4, %r31, $148	# build/example.ml#2298:2->2298:21
	LDR	%r3, %r31, $152	# build/example.ml#2298:2->2298:21
	LDR	%r2, %r31, $156	# build/example.ml#2298:2->2298:21
	LDR	%r1, %r31, $160	# build/example.ml#2298:2->2298:21
	SDR	%r6, %r31, $164	# build/example.ml#2299:2->2299:16
	SDR	%r5, %r31, $168	# build/example.ml#2299:2->2299:16
	SDR	%r4, %r31, $172	# build/example.ml#2299:2->2299:16
	SDR	%r3, %r31, $176	# build/example.ml#2299:2->2299:16
	SDR	%r2, %r31, $180	# build/example.ml#2299:2->2299:16
	SDR	%r1, %r31, $184	# build/example.ml#2299:2->2299:16
	ADDI	%r31, %r31, $188	# build/example.ml#2299:2->2299:16
	ADDI	%r31, %r31, $4	# build/example.ml#2299:2->2299:16
	SIP	# build/example.ml#2299:2->2299:16
	J	$init_dirvecs.3029	# build/example.ml#2299:2->2299:16
	ADDI	%r31, %r31, $-188	# build/example.ml#2299:2->2299:16
	LDR	%r6, %r31, $164	# build/example.ml#2299:2->2299:16
	LDR	%r5, %r31, $168	# build/example.ml#2299:2->2299:16
	LDR	%r4, %r31, $172	# build/example.ml#2299:2->2299:16
	LDR	%r3, %r31, $176	# build/example.ml#2299:2->2299:16
	LDR	%r2, %r31, $180	# build/example.ml#2299:2->2299:16
	LDR	%r1, %r31, $184	# build/example.ml#2299:2->2299:16
	MVI	%r7, $min_caml_light_dirvec	# build/example.ml#2300:16->2300:28
	LDR	%r5, %r7, $4	# build/example.ml#2300:10->2300:28
	LDR	%r4, %r7, $0	# build/example.ml#2300:10->2300:28
	MV	%r7, %r4	# build/example.ml#445:3->446:8
	MVI	%r3, $min_caml_light	# build/example.ml#2300:30->2300:35
	SDR	%r2, %r31, $188	# build/example.ml#2300:2->2300:35
	SDR	%r1, %r31, $192	# build/example.ml#2300:2->2300:35
	MV	%r2, %r3	# build/example.ml#2300:2->2300:35
	MV	%r1, %r7	# build/example.ml#2300:2->2300:35
	ADDI	%r31, %r31, $196	# build/example.ml#2300:2->2300:35
	ADDI	%r31, %r31, $4	# build/example.ml#2300:2->2300:35
	SIP	# build/example.ml#2300:2->2300:35
	J	$veccpy.2583	# build/example.ml#2300:2->2300:35
	ADDI	%r31, %r31, $-196	# build/example.ml#2300:2->2300:35
	LDR	%r2, %r31, $188	# build/example.ml#2300:2->2300:35
	LDR	%r1, %r31, $192	# build/example.ml#2300:2->2300:35
	SDR	%r6, %r31, $196	# build/example.ml#2301:2->2301:37
	SDR	%r5, %r31, $200	# build/example.ml#2301:2->2301:37
	SDR	%r4, %r31, $204	# build/example.ml#2301:2->2301:37
	SDR	%r3, %r31, $208	# build/example.ml#2301:2->2301:37
	SDR	%r2, %r31, $212	# build/example.ml#2301:2->2301:37
	SDR	%r1, %r31, $216	# build/example.ml#2301:2->2301:37
	MV	%r2, %r5	# build/example.ml#2301:2->2301:37
	MV	%r1, %r4	# build/example.ml#2301:2->2301:37
	ADDI	%r31, %r31, $220	# build/example.ml#2301:2->2301:37
	ADDI	%r31, %r31, $4	# build/example.ml#2301:2->2301:37
	SIP	# build/example.ml#2301:2->2301:37
	J	$setup_dirvec_constants.2809	# build/example.ml#2301:2->2301:37
	ADDI	%r31, %r31, $-220	# build/example.ml#2301:2->2301:37
	LDR	%r6, %r31, $196	# build/example.ml#2301:2->2301:37
	LDR	%r5, %r31, $200	# build/example.ml#2301:2->2301:37
	LDR	%r4, %r31, $204	# build/example.ml#2301:2->2301:37
	LDR	%r3, %r31, $208	# build/example.ml#2301:2->2301:37
	LDR	%r2, %r31, $212	# build/example.ml#2301:2->2301:37
	LDR	%r1, %r31, $216	# build/example.ml#2301:2->2301:37
	MVI	%r5, $min_caml_n_objects	# build/example.ml#2302:21->2302:30
	MVI	%r7, $0	# build/example.ml#2302:32->2302:33
	LDD	%r5, %r5, $4, %r7	# build/example.ml#671:7->671:25
	MVI	%r7, $1	# build/example.ml#2302:37->2302:38
	SUB	%r7, %r5, %r7	# build/example.ml#2302:21->2302:38
	SDR	%r6, %r31, $220	# build/example.ml#2302:2->2302:39
	SDR	%r5, %r31, $224	# build/example.ml#2302:2->2302:39
	SDR	%r4, %r31, $228	# build/example.ml#2302:2->2302:39
	SDR	%r3, %r31, $232	# build/example.ml#2302:2->2302:39
	SDR	%r2, %r31, $236	# build/example.ml#2302:2->2302:39
	SDR	%r1, %r31, $240	# build/example.ml#2302:2->2302:39
	MV	%r1, %r7	# build/example.ml#2302:2->2302:39
	ADDI	%r31, %r31, $244	# build/example.ml#2302:2->2302:39
	ADDI	%r31, %r31, $4	# build/example.ml#2302:2->2302:39
	SIP	# build/example.ml#2302:2->2302:39
	J	$setup_reflections.3044	# build/example.ml#2302:2->2302:39
	ADDI	%r31, %r31, $-244	# build/example.ml#2302:2->2302:39
	LDR	%r6, %r31, $220	# build/example.ml#2302:2->2302:39
	LDR	%r5, %r31, $224	# build/example.ml#2302:2->2302:39
	LDR	%r4, %r31, $228	# build/example.ml#2302:2->2302:39
	LDR	%r3, %r31, $232	# build/example.ml#2302:2->2302:39
	LDR	%r2, %r31, $236	# build/example.ml#2302:2->2302:39
	LDR	%r1, %r31, $240	# build/example.ml#2302:2->2302:39
	MVI	%r5, $0	# build/example.ml#2303:20->2303:21
	MVI	%r7, $0	# build/example.ml#2303:22->2303:23
	SDR	%r6, %r31, $244	# build/example.ml#2303:2->2303:23
	SDR	%r5, %r31, $248	# build/example.ml#2303:2->2303:23
	SDR	%r4, %r31, $252	# build/example.ml#2303:2->2303:23
	SDR	%r3, %r31, $256	# build/example.ml#2303:2->2303:23
	SDR	%r2, %r31, $260	# build/example.ml#2303:2->2303:23
	SDR	%r1, %r31, $264	# build/example.ml#2303:2->2303:23
	MV	%r3, %r7	# build/example.ml#2303:2->2303:23
	MV	%r2, %r5	# build/example.ml#2303:2->2303:23
	MV	%r1, %r6	# build/example.ml#2303:2->2303:23
	ADDI	%r31, %r31, $268	# build/example.ml#2303:2->2303:23
	ADDI	%r31, %r31, $4	# build/example.ml#2303:2->2303:23
	SIP	# build/example.ml#2303:2->2303:23
	J	$pretrace_line.2970	# build/example.ml#2303:2->2303:23
	ADDI	%r31, %r31, $-268	# build/example.ml#2303:2->2303:23
	LDR	%r6, %r31, $244	# build/example.ml#2303:2->2303:23
	LDR	%r5, %r31, $248	# build/example.ml#2303:2->2303:23
	LDR	%r4, %r31, $252	# build/example.ml#2303:2->2303:23
	LDR	%r3, %r31, $256	# build/example.ml#2303:2->2303:23
	LDR	%r2, %r31, $260	# build/example.ml#2303:2->2303:23
	LDR	%r1, %r31, $264	# build/example.ml#2303:2->2303:23
	MVI	%r5, $0	# build/example.ml#2304:12->2304:13
	MVI	%r7, $2	# build/example.ml#2304:28->2304:29
	SDR	%r6, %r31, $268	# build/example.ml#2304:2->2304:29
	SDR	%r5, %r31, $272	# build/example.ml#2304:2->2304:29
	SDR	%r4, %r31, $276	# build/example.ml#2304:2->2304:29
	SDR	%r3, %r31, $280	# build/example.ml#2304:2->2304:29
	SDR	%r2, %r31, $284	# build/example.ml#2304:2->2304:29
	SDR	%r1, %r31, $288	# build/example.ml#2304:2->2304:29
	MV	%r4, %r8	# build/example.ml#2304:2->2304:29
	MV	%r3, %r6	# build/example.ml#2304:2->2304:29
	MV	%r2, %r9	# build/example.ml#2304:2->2304:29
	MV	%r1, %r5	# build/example.ml#2304:2->2304:29
	MV	%r5, %r7	# build/example.ml#2304:2->2304:29
	ADDI	%r31, %r31, $292	# build/example.ml#2304:2->2304:29
	ADDI	%r31, %r31, $4	# build/example.ml#2304:2->2304:29
	SIP	# build/example.ml#2304:2->2304:29
	J	$scan_line.2980	# build/example.ml#2304:2->2304:29
	ADDI	%r31, %r31, $-292	# build/example.ml#2304:2->2304:29
	LDR	%r6, %r31, $268	# build/example.ml#2304:2->2304:29
	LDR	%r5, %r31, $272	# build/example.ml#2304:2->2304:29
	LDR	%r4, %r31, $276	# build/example.ml#2304:2->2304:29
	LDR	%r3, %r31, $280	# build/example.ml#2304:2->2304:29
	LDR	%r2, %r31, $284	# build/example.ml#2304:2->2304:29
	LDR	%r1, %r31, $288	# build/example.ml#2304:2->2304:29
	LDR	%r9, %r31, $0	# build/example.ml#2289:2->2289:12
	LDR	%r8, %r31, $4	# build/example.ml#2289:2->2289:12
	LDR	%r7, %r31, $8	# build/example.ml#2289:2->2289:12
	FLDR	%fr9, %r31, $12	# build/example.ml#2289:2->2289:12
	FLDR	%fr8, %r31, $16	# build/example.ml#2289:2->2289:12
	LINK	# build/example.ml#2289:2->2289:12
setup_reflections.3044:
	SDR	%r9, %r31, $0	# build/example.ml#2266:16->2266:17
	SDR	%r8, %r31, $4	# build/example.ml#2266:16->2266:17
	SDR	%r7, %r31, $8	# build/example.ml#2266:16->2266:17
	SDR	%r28, %r31, $12	# build/example.ml#2266:16->2266:17
	SDR	%r27, %r31, $16	# build/example.ml#2266:16->2266:17
	SDR	%r26, %r31, $20	# build/example.ml#2266:16->2266:17
	SDR	%r25, %r31, $24	# build/example.ml#2266:16->2266:17
	SDR	%r24, %r31, $28	# build/example.ml#2266:16->2266:17
	SDR	%r23, %r31, $32	# build/example.ml#2266:16->2266:17
	FSDR	%fr9, %r31, $36	# build/example.ml#2266:16->2266:17
	FSDR	%fr8, %r31, $40	# build/example.ml#2266:16->2266:17
	MVI	%r9, $0	# build/example.ml#2266:16->2266:17
	CMP	%r1, %r9	# build/example.ml#2266:3->2279:10
	JZ	$if_lt.11469	# build/example.ml#2266:3->2279:10
	MVI	%r9, $min_caml_objects	# build/example.ml#2267:15->2267:22
	LDD	%r25, %r9, $4, %r1	# build/example.ml#637:7->637:25
	LDR	%r9, %r25, $40	# build/example.ml#2267:5->2278:12
	LDR	%r8, %r25, $36	# build/example.ml#2267:5->2278:12
	LDR	%r7, %r25, $32	# build/example.ml#2267:5->2278:12
	LDR	%r6, %r25, $28	# build/example.ml#2267:5->2278:12
	LDR	%r5, %r25, $24	# build/example.ml#2267:5->2278:12
	LDR	%r4, %r25, $20	# build/example.ml#2267:5->2278:12
	LDR	%r3, %r25, $16	# build/example.ml#2267:5->2278:12
	LDR	%r28, %r25, $12	# build/example.ml#2267:5->2278:12
	LDR	%r27, %r25, $8	# build/example.ml#2267:5->2278:12
	LDR	%r26, %r25, $4	# build/example.ml#2267:5->2278:12
	LDR	%r25, %r25, $0	# build/example.ml#2267:5->2278:12
	MV	%r24, %r27	# build/example.ml#169:3->174:12
	MVI	%r23, $2	# build/example.ml#2268:31->2268:32
	CEQ	%r24, %r23	# build/example.ml#2268:5->2278:12
	JZ	$if_eq.11471	# build/example.ml#2268:5->2278:12
	J	$if_eq_cont.11472	# build/example.ml#2268:5->2278:12
if_eq.11471:
	SDR	%r6, %r31, $44	# build/example.ml#2269:17->2269:30
	SDR	%r5, %r31, $48	# build/example.ml#2269:17->2269:30
	SDR	%r4, %r31, $52	# build/example.ml#2269:17->2269:30
	SDR	%r3, %r31, $56	# build/example.ml#2269:17->2269:30
	SDR	%r1, %r31, $60	# build/example.ml#2269:17->2269:30
	MV	%r11, %r9	# build/example.ml#2269:17->2269:30
	MV	%r10, %r8	# build/example.ml#2269:17->2269:30
	MV	%r2, %r26	# build/example.ml#2269:17->2269:30
	MV	%r1, %r25	# build/example.ml#2269:17->2269:30
	MV	%r9, %r7	# build/example.ml#2269:17->2269:30
	MV	%r8, %r6	# build/example.ml#2269:17->2269:30
	MV	%r7, %r5	# build/example.ml#2269:17->2269:30
	MV	%r6, %r4	# build/example.ml#2269:17->2269:30
	MV	%r5, %r3	# build/example.ml#2269:17->2269:30
	MV	%r4, %r28	# build/example.ml#2269:17->2269:30
	MV	%r3, %r27	# build/example.ml#2269:17->2269:30
	ADDI	%r31, %r31, $64	# build/example.ml#2269:17->2269:30
	ADDI	%r31, %r31, $4	# build/example.ml#2269:17->2269:30
	SIP	# build/example.ml#2269:17->2269:30
	J	$o_diffuse.2643	# build/example.ml#2269:17->2269:30
	ADDI	%r31, %r31, $-64	# build/example.ml#2269:17->2269:30
	FMV	%fr8, %fr0	# build/example.ml#2269:17->2269:30
	LDR	%r6, %r31, $44	# build/example.ml#2269:17->2269:30
	LDR	%r5, %r31, $48	# build/example.ml#2269:17->2269:30
	LDR	%r4, %r31, $52	# build/example.ml#2269:17->2269:30
	LDR	%r3, %r31, $56	# build/example.ml#2269:17->2269:30
	LDR	%r1, %r31, $60	# build/example.ml#2269:17->2269:30
	FLDA	%fr9, $l.7785	# build/example.ml#2269:32->2269:35
	SDR	%r6, %r31, $64	# build/example.ml#2269:10->2269:35
	SDR	%r5, %r31, $68	# build/example.ml#2269:10->2269:35
	SDR	%r4, %r31, $72	# build/example.ml#2269:10->2269:35
	SDR	%r3, %r31, $76	# build/example.ml#2269:10->2269:35
	SDR	%r1, %r31, $80	# build/example.ml#2269:10->2269:35
	FMV	%fr1, %fr9	# build/example.ml#2269:10->2269:35
	FMV	%fr0, %fr8	# build/example.ml#2269:10->2269:35
	ADDI	%r31, %r31, $84	# build/example.ml#2269:10->2269:35
	ADDI	%r31, %r31, $4	# build/example.ml#2269:10->2269:35
	SIP	# build/example.ml#2269:10->2269:35
	J	$min_caml_fless	# build/example.ml#2269:10->2269:35
	ADDI	%r31, %r31, $-84	# build/example.ml#2269:10->2269:35
	MV	%r23, %r0	# build/example.ml#2269:10->2269:35
	LDR	%r6, %r31, $64	# build/example.ml#2269:10->2269:35
	LDR	%r5, %r31, $68	# build/example.ml#2269:10->2269:35
	LDR	%r4, %r31, $72	# build/example.ml#2269:10->2269:35
	LDR	%r3, %r31, $76	# build/example.ml#2269:10->2269:35
	LDR	%r1, %r31, $80	# build/example.ml#2269:10->2269:35
	MVI	%r24, $0	# build/example.ml#2269:7->2277:14
	CEQ	%r23, %r24	# build/example.ml#2269:7->2277:14
	JZ	$if_eq.11473	# build/example.ml#2269:7->2277:14
	MV	%r24, %r26	# build/example.ml#159:3->164:10
	MVI	%r23, $1	# build/example.ml#2272:15->2272:16
	CEQ	%r24, %r23	# build/example.ml#2272:2->2276:9
	JZ	$if_eq.11475	# build/example.ml#2272:2->2276:9
	MVI	%r23, $2	# build/example.ml#2274:20->2274:21
	CEQ	%r24, %r23	# build/example.ml#2274:7->2276:9
	JZ	$if_eq.11477	# build/example.ml#2274:7->2276:9
	J	$if_eq_cont.11478	# build/example.ml#2274:7->2276:9
if_eq.11477:
	SDR	%r6, %r31, $84	# build/example.ml#2275:4->2275:39
	SDR	%r5, %r31, $88	# build/example.ml#2275:4->2275:39
	SDR	%r4, %r31, $92	# build/example.ml#2275:4->2275:39
	SDR	%r3, %r31, $96	# build/example.ml#2275:4->2275:39
	SDR	%r1, %r31, $100	# build/example.ml#2275:4->2275:39
	MV	%r12, %r9	# build/example.ml#2275:4->2275:39
	MV	%r11, %r8	# build/example.ml#2275:4->2275:39
	MV	%r10, %r7	# build/example.ml#2275:4->2275:39
	MV	%r2, %r25	# build/example.ml#2275:4->2275:39
	MV	%r9, %r6	# build/example.ml#2275:4->2275:39
	MV	%r8, %r5	# build/example.ml#2275:4->2275:39
	MV	%r7, %r4	# build/example.ml#2275:4->2275:39
	MV	%r6, %r3	# build/example.ml#2275:4->2275:39
	MV	%r5, %r28	# build/example.ml#2275:4->2275:39
	MV	%r4, %r27	# build/example.ml#2275:4->2275:39
	MV	%r3, %r26	# build/example.ml#2275:4->2275:39
	ADDI	%r31, %r31, $104	# build/example.ml#2275:4->2275:39
	ADDI	%r31, %r31, $4	# build/example.ml#2275:4->2275:39
	SIP	# build/example.ml#2275:4->2275:39
	J	$setup_surface_reflection.3041	# build/example.ml#2275:4->2275:39
	ADDI	%r31, %r31, $-104	# build/example.ml#2275:4->2275:39
	LDR	%r6, %r31, $84	# build/example.ml#2275:4->2275:39
	LDR	%r5, %r31, $88	# build/example.ml#2275:4->2275:39
	LDR	%r4, %r31, $92	# build/example.ml#2275:4->2275:39
	LDR	%r3, %r31, $96	# build/example.ml#2275:4->2275:39
	LDR	%r1, %r31, $100	# build/example.ml#2275:4->2275:39
if_eq_cont.11478:
	J	$if_eq_cont.11476	# build/example.ml#2272:2->2276:9
if_eq.11475:
	SDR	%r6, %r31, $104	# build/example.ml#2273:4->2273:36
	SDR	%r5, %r31, $108	# build/example.ml#2273:4->2273:36
	SDR	%r4, %r31, $112	# build/example.ml#2273:4->2273:36
	SDR	%r3, %r31, $116	# build/example.ml#2273:4->2273:36
	SDR	%r1, %r31, $120	# build/example.ml#2273:4->2273:36
	MV	%r12, %r9	# build/example.ml#2273:4->2273:36
	MV	%r11, %r8	# build/example.ml#2273:4->2273:36
	MV	%r10, %r7	# build/example.ml#2273:4->2273:36
	MV	%r2, %r25	# build/example.ml#2273:4->2273:36
	MV	%r9, %r6	# build/example.ml#2273:4->2273:36
	MV	%r8, %r5	# build/example.ml#2273:4->2273:36
	MV	%r7, %r4	# build/example.ml#2273:4->2273:36
	MV	%r6, %r3	# build/example.ml#2273:4->2273:36
	MV	%r5, %r28	# build/example.ml#2273:4->2273:36
	MV	%r4, %r27	# build/example.ml#2273:4->2273:36
	MV	%r3, %r26	# build/example.ml#2273:4->2273:36
	ADDI	%r31, %r31, $124	# build/example.ml#2273:4->2273:36
	ADDI	%r31, %r31, $4	# build/example.ml#2273:4->2273:36
	SIP	# build/example.ml#2273:4->2273:36
	J	$setup_rect_reflection.3038	# build/example.ml#2273:4->2273:36
	ADDI	%r31, %r31, $-124	# build/example.ml#2273:4->2273:36
	LDR	%r6, %r31, $104	# build/example.ml#2273:4->2273:36
	LDR	%r5, %r31, $108	# build/example.ml#2273:4->2273:36
	LDR	%r4, %r31, $112	# build/example.ml#2273:4->2273:36
	LDR	%r3, %r31, $116	# build/example.ml#2273:4->2273:36
	LDR	%r1, %r31, $120	# build/example.ml#2273:4->2273:36
if_eq_cont.11476:
	J	$if_eq_cont.11474	# build/example.ml#2269:7->2277:14
if_eq.11473:
if_eq_cont.11474:
if_eq_cont.11472:
	J	$if_lt_cont.11470	# build/example.ml#2266:3->2279:10
if_lt.11469:
if_lt_cont.11470:
	LDR	%r9, %r31, $0	# build/example.ml#2266:16->2266:17
	LDR	%r8, %r31, $4	# build/example.ml#2266:16->2266:17
	LDR	%r7, %r31, $8	# build/example.ml#2266:16->2266:17
	LDR	%r28, %r31, $12	# build/example.ml#2266:16->2266:17
	LDR	%r27, %r31, $16	# build/example.ml#2266:16->2266:17
	LDR	%r26, %r31, $20	# build/example.ml#2266:16->2266:17
	LDR	%r25, %r31, $24	# build/example.ml#2266:16->2266:17
	LDR	%r24, %r31, $28	# build/example.ml#2266:16->2266:17
	LDR	%r23, %r31, $32	# build/example.ml#2266:16->2266:17
	FLDR	%fr9, %r31, $36	# build/example.ml#2266:16->2266:17
	FLDR	%fr8, %r31, $40	# build/example.ml#2266:16->2266:17
	LINK	# build/example.ml#2266:16->2266:17
setup_surface_reflection.3041:
	SDR	%r9, %r31, $0	# build/example.ml#2251:22->2251:23
	SDR	%r8, %r31, $4	# build/example.ml#2251:22->2251:23
	SDR	%r7, %r31, $8	# build/example.ml#2251:22->2251:23
	SDR	%r28, %r31, $12	# build/example.ml#2251:22->2251:23
	SDR	%r27, %r31, $16	# build/example.ml#2251:22->2251:23
	SDR	%r26, %r31, $20	# build/example.ml#2251:22->2251:23
	SDR	%r25, %r31, $24	# build/example.ml#2251:22->2251:23
	SDR	%r24, %r31, $28	# build/example.ml#2251:22->2251:23
	SDR	%r12, %r31, $32	# build/example.ml#2251:22->2251:23
	SDR	%r11, %r31, $36	# build/example.ml#2251:22->2251:23
	SDR	%r10, %r31, $40	# build/example.ml#2251:22->2251:23
	FSDR	%fr9, %r31, $44	# build/example.ml#2251:22->2251:23
	FSDR	%fr8, %r31, $48	# build/example.ml#2251:22->2251:23
	FSDR	%fr7, %r31, $52	# build/example.ml#2251:22->2251:23
	MVI	%r28, $4	# build/example.ml#2251:22->2251:23
	MUL	%r27, %r1, %r28	# build/example.ml#2251:13->2251:23
	MVI	%r28, $1	# build/example.ml#2251:26->2251:27
	ADD	%r28, %r27, %r28	# build/example.ml#2251:13->2251:27
	MVI	%r24, $min_caml_n_reflections	# build/example.ml#2252:12->2252:25
	MVI	%r27, $0	# build/example.ml#2252:27->2252:28
	LDD	%r27, %r24, $4, %r27	# build/example.ml#1686:26->1686:43
	FLDA	%fr8, $l.7785	# build/example.ml#2253:12->2253:15
	SDR	%r6, %r31, $56	# build/example.ml#2253:19->2253:32
	SDR	%r5, %r31, $60	# build/example.ml#2253:19->2253:32
	SDR	%r4, %r31, $64	# build/example.ml#2253:19->2253:32
	SDR	%r3, %r31, $68	# build/example.ml#2253:19->2253:32
	SDR	%r2, %r31, $72	# build/example.ml#2253:19->2253:32
	SDR	%r1, %r31, $76	# build/example.ml#2253:19->2253:32
	MV	%r1, %r2	# build/example.ml#2253:19->2253:32
	MV	%r2, %r3	# build/example.ml#2253:19->2253:32
	MV	%r3, %r4	# build/example.ml#2253:19->2253:32
	MV	%r4, %r5	# build/example.ml#2253:19->2253:32
	MV	%r5, %r6	# build/example.ml#2253:19->2253:32
	MV	%r6, %r7	# build/example.ml#2253:19->2253:32
	MV	%r7, %r8	# build/example.ml#2253:19->2253:32
	MV	%r8, %r9	# build/example.ml#2253:19->2253:32
	MV	%r9, %r10	# build/example.ml#2253:19->2253:32
	MV	%r10, %r11	# build/example.ml#2253:19->2253:32
	MV	%r11, %r12	# build/example.ml#2253:19->2253:32
	ADDI	%r31, %r31, $80	# build/example.ml#2253:19->2253:32
	ADDI	%r31, %r31, $4	# build/example.ml#2253:19->2253:32
	SIP	# build/example.ml#2253:19->2253:32
	J	$o_diffuse.2643	# build/example.ml#2253:19->2253:32
	ADDI	%r31, %r31, $-80	# build/example.ml#2253:19->2253:32
	FMV	%fr9, %fr0	# build/example.ml#2253:19->2253:32
	LDR	%r6, %r31, $56	# build/example.ml#2253:19->2253:32
	LDR	%r5, %r31, $60	# build/example.ml#2253:19->2253:32
	LDR	%r4, %r31, $64	# build/example.ml#2253:19->2253:32
	LDR	%r3, %r31, $68	# build/example.ml#2253:19->2253:32
	LDR	%r2, %r31, $72	# build/example.ml#2253:19->2253:32
	LDR	%r1, %r31, $76	# build/example.ml#2253:19->2253:32
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#2253:12->2253:32
	MVI	%r25, $min_caml_light	# build/example.ml#2254:20->2254:25
	MV	%r26, %r6	# build/example.ml#227:3->232:8
	SDR	%r2, %r31, $80	# build/example.ml#2254:11->2254:43
	SDR	%r1, %r31, $84	# build/example.ml#2254:11->2254:43
	MV	%r2, %r26	# build/example.ml#2254:11->2254:43
	MV	%r1, %r25	# build/example.ml#2254:11->2254:43
	ADDI	%r31, %r31, $88	# build/example.ml#2254:11->2254:43
	ADDI	%r31, %r31, $4	# build/example.ml#2254:11->2254:43
	SIP	# build/example.ml#2254:11->2254:43
	J	$veciprod.2594	# build/example.ml#2254:11->2254:43
	ADDI	%r31, %r31, $-88	# build/example.ml#2254:11->2254:43
	FMV	%fr9, %fr0	# build/example.ml#2254:11->2254:43
	LDR	%r2, %r31, $80	# build/example.ml#2254:11->2254:43
	LDR	%r1, %r31, $84	# build/example.ml#2254:11->2254:43
	FLDA	%fr6, $l.7786	# build/example.ml#2257:6->2257:9
	SDR	%r6, %r31, $88	# build/example.ml#2257:13->2257:26
	SDR	%r5, %r31, $92	# build/example.ml#2257:13->2257:26
	SDR	%r4, %r31, $96	# build/example.ml#2257:13->2257:26
	SDR	%r3, %r31, $100	# build/example.ml#2257:13->2257:26
	SDR	%r2, %r31, $104	# build/example.ml#2257:13->2257:26
	SDR	%r1, %r31, $108	# build/example.ml#2257:13->2257:26
	MV	%r1, %r2	# build/example.ml#2257:13->2257:26
	MV	%r2, %r3	# build/example.ml#2257:13->2257:26
	MV	%r3, %r4	# build/example.ml#2257:13->2257:26
	MV	%r4, %r5	# build/example.ml#2257:13->2257:26
	MV	%r5, %r6	# build/example.ml#2257:13->2257:26
	MV	%r6, %r7	# build/example.ml#2257:13->2257:26
	MV	%r7, %r8	# build/example.ml#2257:13->2257:26
	MV	%r8, %r9	# build/example.ml#2257:13->2257:26
	MV	%r9, %r10	# build/example.ml#2257:13->2257:26
	MV	%r10, %r11	# build/example.ml#2257:13->2257:26
	MV	%r11, %r12	# build/example.ml#2257:13->2257:26
	ADDI	%r31, %r31, $112	# build/example.ml#2257:13->2257:26
	ADDI	%r31, %r31, $4	# build/example.ml#2257:13->2257:26
	SIP	# build/example.ml#2257:13->2257:26
	J	$o_param_a.2629	# build/example.ml#2257:13->2257:26
	ADDI	%r31, %r31, $-112	# build/example.ml#2257:13->2257:26
	FMV	%fr7, %fr0	# build/example.ml#2257:13->2257:26
	LDR	%r6, %r31, $88	# build/example.ml#2257:13->2257:26
	LDR	%r5, %r31, $92	# build/example.ml#2257:13->2257:26
	LDR	%r4, %r31, $96	# build/example.ml#2257:13->2257:26
	LDR	%r3, %r31, $100	# build/example.ml#2257:13->2257:26
	LDR	%r2, %r31, $104	# build/example.ml#2257:13->2257:26
	LDR	%r1, %r31, $108	# build/example.ml#2257:13->2257:26
	FMUL	%fr7, %fr6, %fr7	# build/example.ml#2257:6->2257:26
	FMUL	%fr6, %fr7, %fr9	# build/example.ml#2257:6->2257:31
	MVI	%r26, $0	# build/example.ml#2257:42->2257:43
	FLDD	%fr7, %r25, $4, %r26	# build/example.ml#527:3->527:24
	FSUB	%fr4, %fr6, %fr7	# build/example.ml#2257:6->2257:44
	FLDA	%fr6, $l.7786	# build/example.ml#2258:6->2258:9
	SDR	%r6, %r31, $112	# build/example.ml#2258:13->2258:26
	SDR	%r5, %r31, $116	# build/example.ml#2258:13->2258:26
	SDR	%r4, %r31, $120	# build/example.ml#2258:13->2258:26
	SDR	%r3, %r31, $124	# build/example.ml#2258:13->2258:26
	SDR	%r2, %r31, $128	# build/example.ml#2258:13->2258:26
	SDR	%r1, %r31, $132	# build/example.ml#2258:13->2258:26
	MV	%r1, %r2	# build/example.ml#2258:13->2258:26
	MV	%r2, %r3	# build/example.ml#2258:13->2258:26
	MV	%r3, %r4	# build/example.ml#2258:13->2258:26
	MV	%r4, %r5	# build/example.ml#2258:13->2258:26
	MV	%r5, %r6	# build/example.ml#2258:13->2258:26
	MV	%r6, %r7	# build/example.ml#2258:13->2258:26
	MV	%r7, %r8	# build/example.ml#2258:13->2258:26
	MV	%r8, %r9	# build/example.ml#2258:13->2258:26
	MV	%r9, %r10	# build/example.ml#2258:13->2258:26
	MV	%r10, %r11	# build/example.ml#2258:13->2258:26
	MV	%r11, %r12	# build/example.ml#2258:13->2258:26
	ADDI	%r31, %r31, $136	# build/example.ml#2258:13->2258:26
	ADDI	%r31, %r31, $4	# build/example.ml#2258:13->2258:26
	SIP	# build/example.ml#2258:13->2258:26
	J	$o_param_b.2631	# build/example.ml#2258:13->2258:26
	ADDI	%r31, %r31, $-136	# build/example.ml#2258:13->2258:26
	FMV	%fr7, %fr0	# build/example.ml#2258:13->2258:26
	LDR	%r6, %r31, $112	# build/example.ml#2258:13->2258:26
	LDR	%r5, %r31, $116	# build/example.ml#2258:13->2258:26
	LDR	%r4, %r31, $120	# build/example.ml#2258:13->2258:26
	LDR	%r3, %r31, $124	# build/example.ml#2258:13->2258:26
	LDR	%r2, %r31, $128	# build/example.ml#2258:13->2258:26
	LDR	%r1, %r31, $132	# build/example.ml#2258:13->2258:26
	FMUL	%fr7, %fr6, %fr7	# build/example.ml#2258:6->2258:26
	FMUL	%fr6, %fr7, %fr9	# build/example.ml#2258:6->2258:31
	MVI	%r26, $1	# build/example.ml#2258:42->2258:43
	FLDD	%fr7, %r25, $4, %r26	# build/example.ml#527:3->527:24
	FSUB	%fr5, %fr6, %fr7	# build/example.ml#2258:6->2258:44
	FLDA	%fr6, $l.7786	# build/example.ml#2259:6->2259:9
	SDR	%r6, %r31, $136	# build/example.ml#2259:13->2259:26
	SDR	%r5, %r31, $140	# build/example.ml#2259:13->2259:26
	SDR	%r4, %r31, $144	# build/example.ml#2259:13->2259:26
	SDR	%r3, %r31, $148	# build/example.ml#2259:13->2259:26
	SDR	%r2, %r31, $152	# build/example.ml#2259:13->2259:26
	SDR	%r1, %r31, $156	# build/example.ml#2259:13->2259:26
	MV	%r1, %r2	# build/example.ml#2259:13->2259:26
	MV	%r2, %r3	# build/example.ml#2259:13->2259:26
	MV	%r3, %r4	# build/example.ml#2259:13->2259:26
	MV	%r4, %r5	# build/example.ml#2259:13->2259:26
	MV	%r5, %r6	# build/example.ml#2259:13->2259:26
	MV	%r6, %r7	# build/example.ml#2259:13->2259:26
	MV	%r7, %r8	# build/example.ml#2259:13->2259:26
	MV	%r8, %r9	# build/example.ml#2259:13->2259:26
	MV	%r9, %r10	# build/example.ml#2259:13->2259:26
	MV	%r10, %r11	# build/example.ml#2259:13->2259:26
	MV	%r11, %r12	# build/example.ml#2259:13->2259:26
	ADDI	%r31, %r31, $160	# build/example.ml#2259:13->2259:26
	ADDI	%r31, %r31, $4	# build/example.ml#2259:13->2259:26
	SIP	# build/example.ml#2259:13->2259:26
	J	$o_param_c.2633	# build/example.ml#2259:13->2259:26
	ADDI	%r31, %r31, $-160	# build/example.ml#2259:13->2259:26
	FMV	%fr7, %fr0	# build/example.ml#2259:13->2259:26
	LDR	%r6, %r31, $136	# build/example.ml#2259:13->2259:26
	LDR	%r5, %r31, $140	# build/example.ml#2259:13->2259:26
	LDR	%r4, %r31, $144	# build/example.ml#2259:13->2259:26
	LDR	%r3, %r31, $148	# build/example.ml#2259:13->2259:26
	LDR	%r2, %r31, $152	# build/example.ml#2259:13->2259:26
	LDR	%r1, %r31, $156	# build/example.ml#2259:13->2259:26
	FMUL	%fr7, %fr6, %fr7	# build/example.ml#2259:6->2259:26
	FMUL	%fr7, %fr7, %fr9	# build/example.ml#2259:6->2259:31
	MVI	%r9, $2	# build/example.ml#2259:42->2259:43
	FLDD	%fr9, %r25, $4, %r9	# build/example.ml#527:3->527:24
	FSUB	%fr9, %fr7, %fr9	# build/example.ml#2259:6->2259:44
	SDR	%r6, %r31, $160	# build/example.ml#2256:3->2259:45
	SDR	%r5, %r31, $164	# build/example.ml#2256:3->2259:45
	SDR	%r4, %r31, $168	# build/example.ml#2256:3->2259:45
	SDR	%r3, %r31, $172	# build/example.ml#2256:3->2259:45
	SDR	%r2, %r31, $176	# build/example.ml#2256:3->2259:45
	SDR	%r1, %r31, $180	# build/example.ml#2256:3->2259:45
	FSDR	%fr6, %r31, $184	# build/example.ml#2256:3->2259:45
	FSDR	%fr5, %r31, $188	# build/example.ml#2256:3->2259:45
	FSDR	%fr4, %r31, $192	# build/example.ml#2256:3->2259:45
	MV	%r2, %r28	# build/example.ml#2256:3->2259:45
	MV	%r1, %r27	# build/example.ml#2256:3->2259:45
	FMV	%fr3, %fr9	# build/example.ml#2256:3->2259:45
	FMV	%fr2, %fr5	# build/example.ml#2256:3->2259:45
	FMV	%fr1, %fr4	# build/example.ml#2256:3->2259:45
	FMV	%fr0, %fr8	# build/example.ml#2256:3->2259:45
	ADDI	%r31, %r31, $196	# build/example.ml#2256:3->2259:45
	ADDI	%r31, %r31, $4	# build/example.ml#2256:3->2259:45
	SIP	# build/example.ml#2256:3->2259:45
	J	$add_reflection.3031	# build/example.ml#2256:3->2259:45
	ADDI	%r31, %r31, $-196	# build/example.ml#2256:3->2259:45
	LDR	%r6, %r31, $160	# build/example.ml#2256:3->2259:45
	LDR	%r5, %r31, $164	# build/example.ml#2256:3->2259:45
	LDR	%r4, %r31, $168	# build/example.ml#2256:3->2259:45
	LDR	%r3, %r31, $172	# build/example.ml#2256:3->2259:45
	LDR	%r2, %r31, $176	# build/example.ml#2256:3->2259:45
	LDR	%r1, %r31, $180	# build/example.ml#2256:3->2259:45
	FLDR	%fr6, %r31, $184	# build/example.ml#2256:3->2259:45
	FLDR	%fr5, %r31, $188	# build/example.ml#2256:3->2259:45
	FLDR	%fr4, %r31, $192	# build/example.ml#2256:3->2259:45
	MVI	%r8, $0	# build/example.ml#2260:18->2260:19
	MVI	%r9, $1	# build/example.ml#2260:29->2260:30
	ADD	%r9, %r27, %r9	# build/example.ml#2260:24->2260:30
	SDD	%r9, %r24, $4, %r8	# build/example.ml#2260:3->2260:30
	LDR	%r9, %r31, $0	# build/example.ml#2251:22->2251:23
	LDR	%r8, %r31, $4	# build/example.ml#2251:22->2251:23
	LDR	%r7, %r31, $8	# build/example.ml#2251:22->2251:23
	LDR	%r28, %r31, $12	# build/example.ml#2251:22->2251:23
	LDR	%r27, %r31, $16	# build/example.ml#2251:22->2251:23
	LDR	%r26, %r31, $20	# build/example.ml#2251:22->2251:23
	LDR	%r25, %r31, $24	# build/example.ml#2251:22->2251:23
	LDR	%r24, %r31, $28	# build/example.ml#2251:22->2251:23
	LDR	%r12, %r31, $32	# build/example.ml#2251:22->2251:23
	LDR	%r11, %r31, $36	# build/example.ml#2251:22->2251:23
	LDR	%r10, %r31, $40	# build/example.ml#2251:22->2251:23
	FLDR	%fr9, %r31, $44	# build/example.ml#2251:22->2251:23
	FLDR	%fr8, %r31, $48	# build/example.ml#2251:22->2251:23
	FLDR	%fr7, %r31, $52	# build/example.ml#2251:22->2251:23
	LINK	# build/example.ml#2251:22->2251:23
setup_rect_reflection.3038:
	SDR	%r9, %r31, $0	# build/example.ml#2237:22->2237:23
	SDR	%r8, %r31, $4	# build/example.ml#2237:22->2237:23
	SDR	%r7, %r31, $8	# build/example.ml#2237:22->2237:23
	SDR	%r28, %r31, $12	# build/example.ml#2237:22->2237:23
	SDR	%r27, %r31, $16	# build/example.ml#2237:22->2237:23
	SDR	%r26, %r31, $20	# build/example.ml#2237:22->2237:23
	SDR	%r12, %r31, $24	# build/example.ml#2237:22->2237:23
	SDR	%r11, %r31, $28	# build/example.ml#2237:22->2237:23
	SDR	%r10, %r31, $32	# build/example.ml#2237:22->2237:23
	FSDR	%fr9, %r31, $36	# build/example.ml#2237:22->2237:23
	FSDR	%fr8, %r31, $40	# build/example.ml#2237:22->2237:23
	FSDR	%fr7, %r31, $44	# build/example.ml#2237:22->2237:23
	MVI	%r28, $4	# build/example.ml#2237:22->2237:23
	MUL	%r28, %r1, %r28	# build/example.ml#2237:13->2237:23
	MVI	%r26, $min_caml_n_reflections	# build/example.ml#2238:12->2238:25
	MVI	%r27, $0	# build/example.ml#2238:27->2238:28
	LDD	%r27, %r26, $4, %r27	# build/example.ml#1686:26->1686:43
	FLDA	%fr8, $l.7785	# build/example.ml#2239:12->2239:15
	SDR	%r6, %r31, $48	# build/example.ml#2239:19->2239:32
	SDR	%r5, %r31, $52	# build/example.ml#2239:19->2239:32
	SDR	%r4, %r31, $56	# build/example.ml#2239:19->2239:32
	SDR	%r3, %r31, $60	# build/example.ml#2239:19->2239:32
	SDR	%r2, %r31, $64	# build/example.ml#2239:19->2239:32
	SDR	%r1, %r31, $68	# build/example.ml#2239:19->2239:32
	MV	%r1, %r2	# build/example.ml#2239:19->2239:32
	MV	%r2, %r3	# build/example.ml#2239:19->2239:32
	MV	%r3, %r4	# build/example.ml#2239:19->2239:32
	MV	%r4, %r5	# build/example.ml#2239:19->2239:32
	MV	%r5, %r6	# build/example.ml#2239:19->2239:32
	MV	%r6, %r7	# build/example.ml#2239:19->2239:32
	MV	%r7, %r8	# build/example.ml#2239:19->2239:32
	MV	%r8, %r9	# build/example.ml#2239:19->2239:32
	MV	%r9, %r10	# build/example.ml#2239:19->2239:32
	MV	%r10, %r11	# build/example.ml#2239:19->2239:32
	MV	%r11, %r12	# build/example.ml#2239:19->2239:32
	ADDI	%r31, %r31, $72	# build/example.ml#2239:19->2239:32
	ADDI	%r31, %r31, $4	# build/example.ml#2239:19->2239:32
	SIP	# build/example.ml#2239:19->2239:32
	J	$o_diffuse.2643	# build/example.ml#2239:19->2239:32
	ADDI	%r31, %r31, $-72	# build/example.ml#2239:19->2239:32
	FMV	%fr9, %fr0	# build/example.ml#2239:19->2239:32
	LDR	%r6, %r31, $48	# build/example.ml#2239:19->2239:32
	LDR	%r5, %r31, $52	# build/example.ml#2239:19->2239:32
	LDR	%r4, %r31, $56	# build/example.ml#2239:19->2239:32
	LDR	%r3, %r31, $60	# build/example.ml#2239:19->2239:32
	LDR	%r2, %r31, $64	# build/example.ml#2239:19->2239:32
	LDR	%r1, %r31, $68	# build/example.ml#2239:19->2239:32
	FSUB	%fr6, %fr8, %fr9	# build/example.ml#2239:12->2239:32
	MVI	%r6, $min_caml_light	# build/example.ml#2240:17->2240:22
	MVI	%r9, $0	# build/example.ml#2240:24->2240:25
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#527:3->527:24
	SDR	%r6, %r31, $72	# build/example.ml#2240:12->2240:26
	SDR	%r5, %r31, $76	# build/example.ml#2240:12->2240:26
	SDR	%r4, %r31, $80	# build/example.ml#2240:12->2240:26
	SDR	%r3, %r31, $84	# build/example.ml#2240:12->2240:26
	SDR	%r2, %r31, $88	# build/example.ml#2240:12->2240:26
	SDR	%r1, %r31, $92	# build/example.ml#2240:12->2240:26
	FSDR	%fr6, %r31, $96	# build/example.ml#2240:12->2240:26
	FSDR	%fr5, %r31, $100	# build/example.ml#2240:12->2240:26
	FMV	%fr0, %fr9	# build/example.ml#2240:12->2240:26
	ADDI	%r31, %r31, $104	# build/example.ml#2240:12->2240:26
	ADDI	%r31, %r31, $4	# build/example.ml#2240:12->2240:26
	SIP	# build/example.ml#2240:12->2240:26
	J	$min_caml_fneg	# build/example.ml#2240:12->2240:26
	ADDI	%r31, %r31, $-104	# build/example.ml#2240:12->2240:26
	FMV	%fr7, %fr0	# build/example.ml#2240:12->2240:26
	LDR	%r6, %r31, $72	# build/example.ml#2240:12->2240:26
	LDR	%r5, %r31, $76	# build/example.ml#2240:12->2240:26
	LDR	%r4, %r31, $80	# build/example.ml#2240:12->2240:26
	LDR	%r3, %r31, $84	# build/example.ml#2240:12->2240:26
	LDR	%r2, %r31, $88	# build/example.ml#2240:12->2240:26
	LDR	%r1, %r31, $92	# build/example.ml#2240:12->2240:26
	FLDR	%fr6, %r31, $96	# build/example.ml#2240:12->2240:26
	FLDR	%fr5, %r31, $100	# build/example.ml#2240:12->2240:26
	MVI	%r9, $1	# build/example.ml#2241:24->2241:25
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#527:3->527:24
	SDR	%r6, %r31, $104	# build/example.ml#2241:12->2241:26
	SDR	%r5, %r31, $108	# build/example.ml#2241:12->2241:26
	SDR	%r4, %r31, $112	# build/example.ml#2241:12->2241:26
	SDR	%r3, %r31, $116	# build/example.ml#2241:12->2241:26
	SDR	%r2, %r31, $120	# build/example.ml#2241:12->2241:26
	SDR	%r1, %r31, $124	# build/example.ml#2241:12->2241:26
	FSDR	%fr6, %r31, $128	# build/example.ml#2241:12->2241:26
	FSDR	%fr5, %r31, $132	# build/example.ml#2241:12->2241:26
	FMV	%fr0, %fr9	# build/example.ml#2241:12->2241:26
	ADDI	%r31, %r31, $136	# build/example.ml#2241:12->2241:26
	ADDI	%r31, %r31, $4	# build/example.ml#2241:12->2241:26
	SIP	# build/example.ml#2241:12->2241:26
	J	$min_caml_fneg	# build/example.ml#2241:12->2241:26
	ADDI	%r31, %r31, $-136	# build/example.ml#2241:12->2241:26
	FMV	%fr8, %fr0	# build/example.ml#2241:12->2241:26
	LDR	%r6, %r31, $104	# build/example.ml#2241:12->2241:26
	LDR	%r5, %r31, $108	# build/example.ml#2241:12->2241:26
	LDR	%r4, %r31, $112	# build/example.ml#2241:12->2241:26
	LDR	%r3, %r31, $116	# build/example.ml#2241:12->2241:26
	LDR	%r2, %r31, $120	# build/example.ml#2241:12->2241:26
	LDR	%r1, %r31, $124	# build/example.ml#2241:12->2241:26
	FLDR	%fr6, %r31, $128	# build/example.ml#2241:12->2241:26
	FLDR	%fr5, %r31, $132	# build/example.ml#2241:12->2241:26
	MVI	%r9, $2	# build/example.ml#2242:24->2242:25
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#527:3->527:24
	SDR	%r6, %r31, $136	# build/example.ml#2242:12->2242:26
	SDR	%r5, %r31, $140	# build/example.ml#2242:12->2242:26
	SDR	%r4, %r31, $144	# build/example.ml#2242:12->2242:26
	SDR	%r3, %r31, $148	# build/example.ml#2242:12->2242:26
	SDR	%r2, %r31, $152	# build/example.ml#2242:12->2242:26
	SDR	%r1, %r31, $156	# build/example.ml#2242:12->2242:26
	FSDR	%fr6, %r31, $160	# build/example.ml#2242:12->2242:26
	FSDR	%fr5, %r31, $164	# build/example.ml#2242:12->2242:26
	FMV	%fr0, %fr9	# build/example.ml#2242:12->2242:26
	ADDI	%r31, %r31, $168	# build/example.ml#2242:12->2242:26
	ADDI	%r31, %r31, $4	# build/example.ml#2242:12->2242:26
	SIP	# build/example.ml#2242:12->2242:26
	J	$min_caml_fneg	# build/example.ml#2242:12->2242:26
	ADDI	%r31, %r31, $-168	# build/example.ml#2242:12->2242:26
	FMV	%fr9, %fr0	# build/example.ml#2242:12->2242:26
	LDR	%r6, %r31, $136	# build/example.ml#2242:12->2242:26
	LDR	%r5, %r31, $140	# build/example.ml#2242:12->2242:26
	LDR	%r4, %r31, $144	# build/example.ml#2242:12->2242:26
	LDR	%r3, %r31, $148	# build/example.ml#2242:12->2242:26
	LDR	%r2, %r31, $152	# build/example.ml#2242:12->2242:26
	LDR	%r1, %r31, $156	# build/example.ml#2242:12->2242:26
	FLDR	%fr6, %r31, $160	# build/example.ml#2242:12->2242:26
	FLDR	%fr5, %r31, $164	# build/example.ml#2242:12->2242:26
	MVI	%r9, $1	# build/example.ml#2243:26->2243:27
	ADD	%r8, %r28, %r9	# build/example.ml#2243:22->2243:27
	MVI	%r9, $0	# build/example.ml#2243:39->2243:40
	FLDD	%fr5, %r6, $4, %r9	# build/example.ml#527:3->527:24
	SDR	%r6, %r31, $168	# build/example.ml#2243:3->2243:47
	SDR	%r5, %r31, $172	# build/example.ml#2243:3->2243:47
	SDR	%r4, %r31, $176	# build/example.ml#2243:3->2243:47
	SDR	%r3, %r31, $180	# build/example.ml#2243:3->2243:47
	SDR	%r2, %r31, $184	# build/example.ml#2243:3->2243:47
	SDR	%r1, %r31, $188	# build/example.ml#2243:3->2243:47
	FSDR	%fr6, %r31, $192	# build/example.ml#2243:3->2243:47
	FSDR	%fr5, %r31, $196	# build/example.ml#2243:3->2243:47
	MV	%r2, %r8	# build/example.ml#2243:3->2243:47
	MV	%r1, %r27	# build/example.ml#2243:3->2243:47
	FMV	%fr3, %fr9	# build/example.ml#2243:3->2243:47
	FMV	%fr2, %fr8	# build/example.ml#2243:3->2243:47
	FMV	%fr1, %fr5	# build/example.ml#2243:3->2243:47
	FMV	%fr0, %fr6	# build/example.ml#2243:3->2243:47
	ADDI	%r31, %r31, $200	# build/example.ml#2243:3->2243:47
	ADDI	%r31, %r31, $4	# build/example.ml#2243:3->2243:47
	SIP	# build/example.ml#2243:3->2243:47
	J	$add_reflection.3031	# build/example.ml#2243:3->2243:47
	ADDI	%r31, %r31, $-200	# build/example.ml#2243:3->2243:47
	LDR	%r6, %r31, $168	# build/example.ml#2243:3->2243:47
	LDR	%r5, %r31, $172	# build/example.ml#2243:3->2243:47
	LDR	%r4, %r31, $176	# build/example.ml#2243:3->2243:47
	LDR	%r3, %r31, $180	# build/example.ml#2243:3->2243:47
	LDR	%r2, %r31, $184	# build/example.ml#2243:3->2243:47
	LDR	%r1, %r31, $188	# build/example.ml#2243:3->2243:47
	FLDR	%fr6, %r31, $192	# build/example.ml#2243:3->2243:47
	FLDR	%fr5, %r31, $196	# build/example.ml#2243:3->2243:47
	MVI	%r9, $1	# build/example.ml#2244:22->2244:23
	ADD	%r7, %r27, %r9	# build/example.ml#2244:19->2244:23
	MVI	%r9, $2	# build/example.ml#2244:30->2244:31
	ADD	%r8, %r28, %r9	# build/example.ml#2244:26->2244:31
	MVI	%r9, $1	# build/example.ml#2244:46->2244:47
	FLDD	%fr5, %r6, $4, %r9	# build/example.ml#527:3->527:24
	SDR	%r6, %r31, $200	# build/example.ml#2244:3->2244:51
	SDR	%r5, %r31, $204	# build/example.ml#2244:3->2244:51
	SDR	%r4, %r31, $208	# build/example.ml#2244:3->2244:51
	SDR	%r3, %r31, $212	# build/example.ml#2244:3->2244:51
	SDR	%r2, %r31, $216	# build/example.ml#2244:3->2244:51
	SDR	%r1, %r31, $220	# build/example.ml#2244:3->2244:51
	FSDR	%fr6, %r31, $224	# build/example.ml#2244:3->2244:51
	FSDR	%fr5, %r31, $228	# build/example.ml#2244:3->2244:51
	MV	%r2, %r8	# build/example.ml#2244:3->2244:51
	MV	%r1, %r7	# build/example.ml#2244:3->2244:51
	FMV	%fr3, %fr9	# build/example.ml#2244:3->2244:51
	FMV	%fr2, %fr5	# build/example.ml#2244:3->2244:51
	FMV	%fr1, %fr7	# build/example.ml#2244:3->2244:51
	FMV	%fr0, %fr6	# build/example.ml#2244:3->2244:51
	ADDI	%r31, %r31, $232	# build/example.ml#2244:3->2244:51
	ADDI	%r31, %r31, $4	# build/example.ml#2244:3->2244:51
	SIP	# build/example.ml#2244:3->2244:51
	J	$add_reflection.3031	# build/example.ml#2244:3->2244:51
	ADDI	%r31, %r31, $-232	# build/example.ml#2244:3->2244:51
	LDR	%r6, %r31, $200	# build/example.ml#2244:3->2244:51
	LDR	%r5, %r31, $204	# build/example.ml#2244:3->2244:51
	LDR	%r4, %r31, $208	# build/example.ml#2244:3->2244:51
	LDR	%r3, %r31, $212	# build/example.ml#2244:3->2244:51
	LDR	%r2, %r31, $216	# build/example.ml#2244:3->2244:51
	LDR	%r1, %r31, $220	# build/example.ml#2244:3->2244:51
	FLDR	%fr6, %r31, $224	# build/example.ml#2244:3->2244:51
	FLDR	%fr5, %r31, $228	# build/example.ml#2244:3->2244:51
	MVI	%r9, $2	# build/example.ml#2245:22->2245:23
	ADD	%r9, %r27, %r9	# build/example.ml#2245:19->2245:23
	MVI	%r8, $3	# build/example.ml#2245:30->2245:31
	ADD	%r7, %r28, %r8	# build/example.ml#2245:26->2245:31
	MVI	%r8, $2	# build/example.ml#2245:49->2245:50
	FLDD	%fr9, %r6, $4, %r8	# build/example.ml#527:3->527:24
	SDR	%r6, %r31, $232	# build/example.ml#2245:3->2245:51
	SDR	%r5, %r31, $236	# build/example.ml#2245:3->2245:51
	SDR	%r4, %r31, $240	# build/example.ml#2245:3->2245:51
	SDR	%r3, %r31, $244	# build/example.ml#2245:3->2245:51
	SDR	%r2, %r31, $248	# build/example.ml#2245:3->2245:51
	SDR	%r1, %r31, $252	# build/example.ml#2245:3->2245:51
	FSDR	%fr6, %r31, $256	# build/example.ml#2245:3->2245:51
	FSDR	%fr5, %r31, $260	# build/example.ml#2245:3->2245:51
	MV	%r2, %r7	# build/example.ml#2245:3->2245:51
	MV	%r1, %r9	# build/example.ml#2245:3->2245:51
	FMV	%fr3, %fr9	# build/example.ml#2245:3->2245:51
	FMV	%fr2, %fr8	# build/example.ml#2245:3->2245:51
	FMV	%fr1, %fr7	# build/example.ml#2245:3->2245:51
	FMV	%fr0, %fr6	# build/example.ml#2245:3->2245:51
	ADDI	%r31, %r31, $264	# build/example.ml#2245:3->2245:51
	ADDI	%r31, %r31, $4	# build/example.ml#2245:3->2245:51
	SIP	# build/example.ml#2245:3->2245:51
	J	$add_reflection.3031	# build/example.ml#2245:3->2245:51
	ADDI	%r31, %r31, $-264	# build/example.ml#2245:3->2245:51
	LDR	%r6, %r31, $232	# build/example.ml#2245:3->2245:51
	LDR	%r5, %r31, $236	# build/example.ml#2245:3->2245:51
	LDR	%r4, %r31, $240	# build/example.ml#2245:3->2245:51
	LDR	%r3, %r31, $244	# build/example.ml#2245:3->2245:51
	LDR	%r2, %r31, $248	# build/example.ml#2245:3->2245:51
	LDR	%r1, %r31, $252	# build/example.ml#2245:3->2245:51
	FLDR	%fr6, %r31, $256	# build/example.ml#2245:3->2245:51
	FLDR	%fr5, %r31, $260	# build/example.ml#2245:3->2245:51
	MVI	%r8, $0	# build/example.ml#2246:18->2246:19
	MVI	%r9, $3	# build/example.ml#2246:29->2246:30
	ADD	%r9, %r27, %r9	# build/example.ml#2246:24->2246:30
	SDD	%r9, %r26, $4, %r8	# build/example.ml#2246:3->2246:30
	LDR	%r9, %r31, $0	# build/example.ml#2237:22->2237:23
	LDR	%r8, %r31, $4	# build/example.ml#2237:22->2237:23
	LDR	%r7, %r31, $8	# build/example.ml#2237:22->2237:23
	LDR	%r28, %r31, $12	# build/example.ml#2237:22->2237:23
	LDR	%r27, %r31, $16	# build/example.ml#2237:22->2237:23
	LDR	%r26, %r31, $20	# build/example.ml#2237:22->2237:23
	LDR	%r12, %r31, $24	# build/example.ml#2237:22->2237:23
	LDR	%r11, %r31, $28	# build/example.ml#2237:22->2237:23
	LDR	%r10, %r31, $32	# build/example.ml#2237:22->2237:23
	FLDR	%fr9, %r31, $36	# build/example.ml#2237:22->2237:23
	FLDR	%fr8, %r31, $40	# build/example.ml#2237:22->2237:23
	FLDR	%fr7, %r31, $44	# build/example.ml#2237:22->2237:23
	LINK	# build/example.ml#2237:22->2237:23
add_reflection.3031:
	SDR	%r9, %r31, $0	# build/example.ml#2228:14->2228:29
	SDR	%r8, %r31, $4	# build/example.ml#2228:14->2228:29
	SDR	%r7, %r31, $8	# build/example.ml#2228:14->2228:29
	SDR	%r6, %r31, $12	# build/example.ml#2228:14->2228:29
	SDR	%r2, %r31, $16	# build/example.ml#2228:14->2228:29
	SDR	%r1, %r31, $20	# build/example.ml#2228:14->2228:29
	FSDR	%fr3, %r31, $24	# build/example.ml#2228:14->2228:29
	FSDR	%fr2, %r31, $28	# build/example.ml#2228:14->2228:29
	FSDR	%fr1, %r31, $32	# build/example.ml#2228:14->2228:29
	ADDI	%r31, %r31, $36	# build/example.ml#2228:14->2228:29
	ADDI	%r31, %r31, $4	# build/example.ml#2228:14->2228:29
	SIP	# build/example.ml#2228:14->2228:29
	J	$create_dirvec.3017	# build/example.ml#2228:14->2228:29
	ADDI	%r31, %r31, $-36	# build/example.ml#2228:14->2228:29
	MV	%r8, %r0	# build/example.ml#2228:14->2228:29
	LDR	%r6, %r31, $12	# build/example.ml#2228:14->2228:29
	LDR	%r2, %r31, $16	# build/example.ml#2228:14->2228:29
	LDR	%r1, %r31, $20	# build/example.ml#2228:14->2228:29
	FLDR	%fr3, %r31, $24	# build/example.ml#2228:14->2228:29
	FLDR	%fr2, %r31, $28	# build/example.ml#2228:14->2228:29
	FLDR	%fr1, %r31, $32	# build/example.ml#2228:14->2228:29
	LDR	%r9, %r8, $4	# build/example.ml#2228:3->2232:52
	LDR	%r8, %r8, $0	# build/example.ml#2228:3->2232:52
	MV	%r7, %r8	# build/example.ml#445:3->446:8
	SDR	%r1, %r31, $36	# build/example.ml#2229:3->2229:31
	FSDR	%fr2, %r31, $40	# build/example.ml#2229:3->2229:31
	FSDR	%fr1, %r31, $44	# build/example.ml#2229:3->2229:31
	MV	%r1, %r7	# build/example.ml#2229:3->2229:31
	FMV	%fr0, %fr1	# build/example.ml#2229:3->2229:31
	FMV	%fr1, %fr2	# build/example.ml#2229:3->2229:31
	FMV	%fr2, %fr3	# build/example.ml#2229:3->2229:31
	ADDI	%r31, %r31, $48	# build/example.ml#2229:3->2229:31
	ADDI	%r31, %r31, $4	# build/example.ml#2229:3->2229:31
	SIP	# build/example.ml#2229:3->2229:31
	J	$vecset.2573	# build/example.ml#2229:3->2229:31
	ADDI	%r31, %r31, $-48	# build/example.ml#2229:3->2229:31
	LDR	%r1, %r31, $36	# build/example.ml#2229:3->2229:31
	FLDR	%fr2, %r31, $40	# build/example.ml#2229:3->2229:31
	FLDR	%fr1, %r31, $44	# build/example.ml#2229:3->2229:31
	SDR	%r6, %r31, $48	# build/example.ml#2230:3->2230:30
	SDR	%r2, %r31, $52	# build/example.ml#2230:3->2230:30
	SDR	%r1, %r31, $56	# build/example.ml#2230:3->2230:30
	FSDR	%fr3, %r31, $60	# build/example.ml#2230:3->2230:30
	FSDR	%fr2, %r31, $64	# build/example.ml#2230:3->2230:30
	FSDR	%fr1, %r31, $68	# build/example.ml#2230:3->2230:30
	MV	%r2, %r9	# build/example.ml#2230:3->2230:30
	MV	%r1, %r8	# build/example.ml#2230:3->2230:30
	ADDI	%r31, %r31, $72	# build/example.ml#2230:3->2230:30
	ADDI	%r31, %r31, $4	# build/example.ml#2230:3->2230:30
	SIP	# build/example.ml#2230:3->2230:30
	J	$setup_dirvec_constants.2809	# build/example.ml#2230:3->2230:30
	ADDI	%r31, %r31, $-72	# build/example.ml#2230:3->2230:30
	LDR	%r6, %r31, $48	# build/example.ml#2230:3->2230:30
	LDR	%r2, %r31, $52	# build/example.ml#2230:3->2230:30
	LDR	%r1, %r31, $56	# build/example.ml#2230:3->2230:30
	FLDR	%fr3, %r31, $60	# build/example.ml#2230:3->2230:30
	FLDR	%fr2, %r31, $64	# build/example.ml#2230:3->2230:30
	FLDR	%fr1, %r31, $68	# build/example.ml#2230:3->2230:30
	MVI	%r6, $min_caml_reflections	# build/example.ml#2232:3->2232:14
	MV	%r7, %r9	# build/example.ml#2232:27->2232:51
	MV	%r9, %r30	# build/example.ml#2232:27->2232:51
	ADDI	%r30, %r30, $16	# build/example.ml#2232:27->2232:51
	FSDR	%fr0, %r9, $12	# build/example.ml#2232:27->2232:51
	SDR	%r7, %r9, $8	# build/example.ml#2232:27->2232:51
	SDR	%r8, %r9, $4	# build/example.ml#2232:27->2232:51
	SDR	%r2, %r9, $0	# build/example.ml#2232:27->2232:51
	SDD	%r9, %r6, $4, %r1	# build/example.ml#2232:3->2232:52
	LDR	%r9, %r31, $0	# build/example.ml#2228:14->2228:29
	LDR	%r8, %r31, $4	# build/example.ml#2228:14->2228:29
	LDR	%r7, %r31, $8	# build/example.ml#2228:14->2228:29
	LINK	# build/example.ml#2228:14->2228:29
init_dirvecs.3029:
	SDR	%r9, %r31, $0	# build/example.ml#2217:18->2217:19
	SDR	%r8, %r31, $4	# build/example.ml#2217:18->2217:19
	SDR	%r7, %r31, $8	# build/example.ml#2217:18->2217:19
	MVI	%r9, $4	# build/example.ml#2217:18->2217:19
	MV	%r1, %r9	# build/example.ml#2217:3->2217:19
	ADDI	%r31, %r31, $12	# build/example.ml#2217:3->2217:19
	ADDI	%r31, %r31, $4	# build/example.ml#2217:3->2217:19
	SIP	# build/example.ml#2217:3->2217:19
	J	$create_dirvecs.3022	# build/example.ml#2217:3->2217:19
	ADDI	%r31, %r31, $-12	# build/example.ml#2217:3->2217:19
	MVI	%r7, $9	# build/example.ml#2218:20->2218:21
	MVI	%r8, $0	# build/example.ml#2218:22->2218:23
	MVI	%r9, $0	# build/example.ml#2218:24->2218:25
	MV	%r3, %r9	# build/example.ml#2218:3->2218:25
	MV	%r2, %r8	# build/example.ml#2218:3->2218:25
	MV	%r1, %r7	# build/example.ml#2218:3->2218:25
	ADDI	%r31, %r31, $12	# build/example.ml#2218:3->2218:25
	ADDI	%r31, %r31, $4	# build/example.ml#2218:3->2218:25
	SIP	# build/example.ml#2218:3->2218:25
	J	$calc_dirvec_rows.3013	# build/example.ml#2218:3->2218:25
	ADDI	%r31, %r31, $-12	# build/example.ml#2218:3->2218:25
	MVI	%r9, $4	# build/example.ml#2219:25->2219:26
	MV	%r1, %r9	# build/example.ml#2219:3->2219:26
	ADDI	%r31, %r31, $12	# build/example.ml#2219:3->2219:26
	ADDI	%r31, %r31, $4	# build/example.ml#2219:3->2219:26
	SIP	# build/example.ml#2219:3->2219:26
	J	$init_vecset_constants.3027	# build/example.ml#2219:3->2219:26
	ADDI	%r31, %r31, $-12	# build/example.ml#2219:3->2219:26
	LDR	%r9, %r31, $0	# build/example.ml#2217:18->2217:19
	LDR	%r8, %r31, $4	# build/example.ml#2217:18->2217:19
	LDR	%r7, %r31, $8	# build/example.ml#2217:18->2217:19
	LINK	# build/example.ml#2217:18->2217:19
init_vecset_constants.3027:
	SDR	%r9, %r31, $0	# build/example.ml#2210:15->2210:16
	SDR	%r8, %r31, $4	# build/example.ml#2210:15->2210:16
	MVI	%r9, $0	# build/example.ml#2210:15->2210:16
	CMP	%r1, %r9	# build/example.ml#2210:3->2213:13
	JZ	$if_lt.11479	# build/example.ml#2210:3->2213:13
	MVI	%r9, $min_caml_dirvecs	# build/example.ml#2211:27->2211:34
	LDD	%r8, %r9, $4, %r1	# build/example.ml#1780:24->1780:35
	MVI	%r9, $119	# build/example.ml#2211:43->2211:46
	SDR	%r1, %r31, $8	# build/example.ml#2211:5->2211:46
	MV	%r2, %r9	# build/example.ml#2211:5->2211:46
	MV	%r1, %r8	# build/example.ml#2211:5->2211:46
	ADDI	%r31, %r31, $12	# build/example.ml#2211:5->2211:46
	ADDI	%r31, %r31, $4	# build/example.ml#2211:5->2211:46
	SIP	# build/example.ml#2211:5->2211:46
	J	$init_dirvec_constants.3024	# build/example.ml#2211:5->2211:46
	ADDI	%r31, %r31, $-12	# build/example.ml#2211:5->2211:46
	LDR	%r1, %r31, $8	# build/example.ml#2211:5->2211:46
	MVI	%r9, $1	# build/example.ml#2212:36->2212:37
	SUB	%r9, %r1, %r9	# build/example.ml#2212:28->2212:37
	SDR	%r1, %r31, $12	# build/example.ml#2212:5->2212:38
	MV	%r1, %r9	# build/example.ml#2212:5->2212:38
	ADDI	%r31, %r31, $16	# build/example.ml#2212:5->2212:38
	ADDI	%r31, %r31, $4	# build/example.ml#2212:5->2212:38
	SIP	# build/example.ml#2212:5->2212:38
	J	$init_vecset_constants.3027	# build/example.ml#2212:5->2212:38
	ADDI	%r31, %r31, $-16	# build/example.ml#2212:5->2212:38
	LDR	%r1, %r31, $12	# build/example.ml#2212:5->2212:38
	J	$if_lt_cont.11480	# build/example.ml#2210:3->2213:13
if_lt.11479:
if_lt_cont.11480:
	LDR	%r9, %r31, $0	# build/example.ml#2210:15->2210:16
	LDR	%r8, %r31, $4	# build/example.ml#2210:15->2210:16
	LINK	# build/example.ml#2210:15->2210:16
init_dirvec_constants.3024:
	SDR	%r9, %r31, $0	# build/example.ml#2203:15->2203:16
	SDR	%r8, %r31, $4	# build/example.ml#2203:15->2203:16
	MVI	%r9, $0	# build/example.ml#2203:15->2203:16
	CMP	%r2, %r9	# build/example.ml#2203:3->2206:13
	JZ	$if_lt.11481	# build/example.ml#2203:3->2206:13
	LDD	%r8, %r1, $4, %r2	# build/example.ml#2204:28->2204:42
	LDR	%r9, %r8, $4	# build/example.ml#2204:5->2204:42
	LDR	%r8, %r8, $0	# build/example.ml#2204:5->2204:42
	SDR	%r2, %r31, $8	# build/example.ml#2204:5->2204:42
	SDR	%r1, %r31, $12	# build/example.ml#2204:5->2204:42
	MV	%r2, %r9	# build/example.ml#2204:5->2204:42
	MV	%r1, %r8	# build/example.ml#2204:5->2204:42
	ADDI	%r31, %r31, $16	# build/example.ml#2204:5->2204:42
	ADDI	%r31, %r31, $4	# build/example.ml#2204:5->2204:42
	SIP	# build/example.ml#2204:5->2204:42
	J	$setup_dirvec_constants.2809	# build/example.ml#2204:5->2204:42
	ADDI	%r31, %r31, $-16	# build/example.ml#2204:5->2204:42
	LDR	%r2, %r31, $8	# build/example.ml#2204:5->2204:42
	LDR	%r1, %r31, $12	# build/example.ml#2204:5->2204:42
	MVI	%r9, $1	# build/example.ml#2205:43->2205:44
	SUB	%r9, %r2, %r9	# build/example.ml#2205:35->2205:44
	SDR	%r2, %r31, $16	# build/example.ml#2205:5->2205:45
	SDR	%r1, %r31, $20	# build/example.ml#2205:5->2205:45
	MV	%r2, %r9	# build/example.ml#2205:5->2205:45
	ADDI	%r31, %r31, $24	# build/example.ml#2205:5->2205:45
	ADDI	%r31, %r31, $4	# build/example.ml#2205:5->2205:45
	SIP	# build/example.ml#2205:5->2205:45
	J	$init_dirvec_constants.3024	# build/example.ml#2205:5->2205:45
	ADDI	%r31, %r31, $-24	# build/example.ml#2205:5->2205:45
	LDR	%r2, %r31, $16	# build/example.ml#2205:5->2205:45
	LDR	%r1, %r31, $20	# build/example.ml#2205:5->2205:45
	J	$if_lt_cont.11482	# build/example.ml#2203:3->2206:13
if_lt.11481:
if_lt_cont.11482:
	LDR	%r9, %r31, $0	# build/example.ml#2203:15->2203:16
	LDR	%r8, %r31, $4	# build/example.ml#2203:15->2203:16
	LINK	# build/example.ml#2203:15->2203:16
create_dirvecs.3022:
	SDR	%r9, %r31, $0	# build/example.ml#2191:15->2191:16
	SDR	%r8, %r31, $4	# build/example.ml#2191:15->2191:16
	SDR	%r7, %r31, $8	# build/example.ml#2191:15->2191:16
	MVI	%r9, $0	# build/example.ml#2191:15->2191:16
	CMP	%r1, %r9	# build/example.ml#2191:3->2195:13
	JZ	$if_lt.11483	# build/example.ml#2191:3->2195:13
	MVI	%r6, $min_caml_dirvecs	# build/example.ml#2192:5->2192:12
	MVI	%r7, $120	# build/example.ml#2192:37->2192:40
	SDR	%r6, %r31, $12	# build/example.ml#2192:42->2192:57
	SDR	%r1, %r31, $16	# build/example.ml#2192:42->2192:57
	ADDI	%r31, %r31, $20	# build/example.ml#2192:42->2192:57
	ADDI	%r31, %r31, $4	# build/example.ml#2192:42->2192:57
	SIP	# build/example.ml#2192:42->2192:57
	J	$create_dirvec.3017	# build/example.ml#2192:42->2192:57
	ADDI	%r31, %r31, $-20	# build/example.ml#2192:42->2192:57
	MV	%r8, %r0	# build/example.ml#2192:42->2192:57
	LDR	%r6, %r31, $12	# build/example.ml#2192:42->2192:57
	LDR	%r1, %r31, $16	# build/example.ml#2192:42->2192:57
	LDR	%r9, %r8, $4	# build/example.ml#2192:24->2192:58
	LDR	%r8, %r8, $0	# build/example.ml#2192:24->2192:58
	SDR	%r6, %r31, $20	# build/example.ml#2192:24->2192:58
	SDR	%r1, %r31, $24	# build/example.ml#2192:24->2192:58
	MV	%r3, %r9	# build/example.ml#2192:24->2192:58
	MV	%r2, %r8	# build/example.ml#2192:24->2192:58
	MV	%r1, %r7	# build/example.ml#2192:24->2192:58
	ADDI	%r31, %r31, $28	# build/example.ml#2192:24->2192:58
	ADDI	%r31, %r31, $4	# build/example.ml#2192:24->2192:58
	SIP	# build/example.ml#2192:24->2192:58
	J	$min_caml_create_int_array	# build/example.ml#2192:24->2192:58
	ADDI	%r31, %r31, $-28	# build/example.ml#2192:24->2192:58
	MV	%r9, %r0	# build/example.ml#2192:24->2192:58
	LDR	%r6, %r31, $20	# build/example.ml#2192:24->2192:58
	LDR	%r1, %r31, $24	# build/example.ml#2192:24->2192:58
	SDD	%r9, %r6, $4, %r1	# build/example.ml#2192:5->2192:58
	LDD	%r8, %r6, $4, %r1	# build/example.ml#1780:24->1780:35
	MVI	%r9, $118	# build/example.ml#2193:44->2193:47
	SDR	%r6, %r31, $28	# build/example.ml#2193:5->2193:47
	SDR	%r1, %r31, $32	# build/example.ml#2193:5->2193:47
	MV	%r2, %r9	# build/example.ml#2193:5->2193:47
	MV	%r1, %r8	# build/example.ml#2193:5->2193:47
	ADDI	%r31, %r31, $36	# build/example.ml#2193:5->2193:47
	ADDI	%r31, %r31, $4	# build/example.ml#2193:5->2193:47
	SIP	# build/example.ml#2193:5->2193:47
	J	$create_dirvec_elements.3019	# build/example.ml#2193:5->2193:47
	ADDI	%r31, %r31, $-36	# build/example.ml#2193:5->2193:47
	LDR	%r6, %r31, $28	# build/example.ml#2193:5->2193:47
	LDR	%r1, %r31, $32	# build/example.ml#2193:5->2193:47
	MVI	%r9, $1	# build/example.ml#2194:27->2194:28
	SUB	%r9, %r1, %r9	# build/example.ml#2194:21->2194:28
	SDR	%r6, %r31, $36	# build/example.ml#2194:5->2194:29
	SDR	%r1, %r31, $40	# build/example.ml#2194:5->2194:29
	MV	%r1, %r9	# build/example.ml#2194:5->2194:29
	ADDI	%r31, %r31, $44	# build/example.ml#2194:5->2194:29
	ADDI	%r31, %r31, $4	# build/example.ml#2194:5->2194:29
	SIP	# build/example.ml#2194:5->2194:29
	J	$create_dirvecs.3022	# build/example.ml#2194:5->2194:29
	ADDI	%r31, %r31, $-44	# build/example.ml#2194:5->2194:29
	LDR	%r6, %r31, $36	# build/example.ml#2194:5->2194:29
	LDR	%r1, %r31, $40	# build/example.ml#2194:5->2194:29
	J	$if_lt_cont.11484	# build/example.ml#2191:3->2195:13
if_lt.11483:
if_lt_cont.11484:
	LDR	%r9, %r31, $0	# build/example.ml#2191:15->2191:16
	LDR	%r8, %r31, $4	# build/example.ml#2191:15->2191:16
	LDR	%r7, %r31, $8	# build/example.ml#2191:15->2191:16
	LINK	# build/example.ml#2191:15->2191:16
create_dirvec_elements.3019:
	SDR	%r9, %r31, $0	# build/example.ml#2184:15->2184:16
	MVI	%r9, $0	# build/example.ml#2184:15->2184:16
	CMP	%r2, %r9	# build/example.ml#2184:3->2187:13
	JZ	$if_lt.11485	# build/example.ml#2184:3->2187:13
	SDR	%r2, %r31, $4	# build/example.ml#2185:18->2185:33
	SDR	%r1, %r31, $8	# build/example.ml#2185:18->2185:33
	ADDI	%r31, %r31, $12	# build/example.ml#2185:18->2185:33
	ADDI	%r31, %r31, $4	# build/example.ml#2185:18->2185:33
	SIP	# build/example.ml#2185:18->2185:33
	J	$create_dirvec.3017	# build/example.ml#2185:18->2185:33
	ADDI	%r31, %r31, $-12	# build/example.ml#2185:18->2185:33
	MV	%r9, %r0	# build/example.ml#2185:18->2185:33
	LDR	%r2, %r31, $4	# build/example.ml#2185:18->2185:33
	LDR	%r1, %r31, $8	# build/example.ml#2185:18->2185:33
	SDD	%r9, %r1, $4, %r2	# build/example.ml#2185:5->2185:33
	MVI	%r9, $1	# build/example.ml#2186:39->2186:40
	SUB	%r9, %r2, %r9	# build/example.ml#2186:31->2186:40
	SDR	%r2, %r31, $12	# build/example.ml#2186:5->2186:41
	SDR	%r1, %r31, $16	# build/example.ml#2186:5->2186:41
	MV	%r2, %r9	# build/example.ml#2186:5->2186:41
	ADDI	%r31, %r31, $20	# build/example.ml#2186:5->2186:41
	ADDI	%r31, %r31, $4	# build/example.ml#2186:5->2186:41
	SIP	# build/example.ml#2186:5->2186:41
	J	$create_dirvec_elements.3019	# build/example.ml#2186:5->2186:41
	ADDI	%r31, %r31, $-20	# build/example.ml#2186:5->2186:41
	LDR	%r2, %r31, $12	# build/example.ml#2186:5->2186:41
	LDR	%r1, %r31, $16	# build/example.ml#2186:5->2186:41
	J	$if_lt_cont.11486	# build/example.ml#2184:3->2187:13
if_lt.11485:
if_lt_cont.11486:
	LDR	%r9, %r31, $0	# build/example.ml#2184:15->2184:16
	LINK	# build/example.ml#2184:15->2184:16
create_dirvec.3017:
	SDR	%r9, %r31, $0	# build/example.ml#2178:25->2178:26
	SDR	%r8, %r31, $4	# build/example.ml#2178:25->2178:26
	SDR	%r7, %r31, $8	# build/example.ml#2178:25->2178:26
	FSDR	%fr9, %r31, $12	# build/example.ml#2178:25->2178:26
	MVI	%r9, $3	# build/example.ml#2178:25->2178:26
	FLDA	%fr9, $l.7787	# build/example.ml#2178:27->2178:30
	MV	%r1, %r9	# build/example.ml#2178:12->2178:30
	FMV	%fr0, %fr9	# build/example.ml#2178:12->2178:30
	ADDI	%r31, %r31, $16	# build/example.ml#2178:12->2178:30
	ADDI	%r31, %r31, $4	# build/example.ml#2178:12->2178:30
	SIP	# build/example.ml#2178:12->2178:30
	J	$min_caml_create_float_array	# build/example.ml#2178:12->2178:30
	ADDI	%r31, %r31, $-16	# build/example.ml#2178:12->2178:30
	MV	%r9, %r0	# build/example.ml#2178:12->2178:30
	MVI	%r7, $min_caml_n_objects	# build/example.ml#2179:29->2179:38
	MVI	%r8, $0	# build/example.ml#2179:40->2179:41
	LDD	%r8, %r7, $4, %r8	# build/example.ml#671:7->671:25
	MV	%r2, %r9	# build/example.ml#2179:16->2179:45
	MV	%r1, %r8	# build/example.ml#2179:16->2179:45
	ADDI	%r31, %r31, $16	# build/example.ml#2179:16->2179:45
	ADDI	%r31, %r31, $4	# build/example.ml#2179:16->2179:45
	SIP	# build/example.ml#2179:16->2179:45
	J	$min_caml_create_int_array	# build/example.ml#2179:16->2179:45
	ADDI	%r31, %r31, $-16	# build/example.ml#2179:16->2179:45
	MV	%r7, %r0	# build/example.ml#2179:16->2179:45
	MV	%r8, %r30	# build/example.ml#2180:4->2180:14
	ADDI	%r30, %r30, $8	# build/example.ml#2180:4->2180:14
	SDR	%r7, %r8, $4	# build/example.ml#2180:4->2180:14
	SDR	%r9, %r8, $0	# build/example.ml#2180:4->2180:14
	MV	%r0, %r8	# build/example.ml#2180:4->2180:14
	LDR	%r9, %r31, $0	# build/example.ml#2178:25->2178:26
	LDR	%r8, %r31, $4	# build/example.ml#2178:25->2178:26
	LDR	%r7, %r31, $8	# build/example.ml#2178:25->2178:26
	FLDR	%fr9, %r31, $12	# build/example.ml#2178:25->2178:26
	LINK	# build/example.ml#2178:25->2178:26
calc_dirvec_rows.3013:
	SDR	%r9, %r31, $0	# build/example.ml#2165:13->2165:14
	SDR	%r8, %r31, $4	# build/example.ml#2165:13->2165:14
	SDR	%r7, %r31, $8	# build/example.ml#2165:13->2165:14
	FSDR	%fr9, %r31, $12	# build/example.ml#2165:13->2165:14
	FSDR	%fr8, %r31, $16	# build/example.ml#2165:13->2165:14
	MVI	%r9, $0	# build/example.ml#2165:13->2165:14
	CMP	%r1, %r9	# build/example.ml#2165:3->2169:13
	JZ	$if_lt.11487	# build/example.ml#2165:3->2169:13
	SDR	%r3, %r31, $20	# build/example.ml#2166:15->2166:31
	SDR	%r2, %r31, $24	# build/example.ml#2166:15->2166:31
	SDR	%r1, %r31, $28	# build/example.ml#2166:15->2166:31
	ADDI	%r31, %r31, $32	# build/example.ml#2166:15->2166:31
	ADDI	%r31, %r31, $4	# build/example.ml#2166:15->2166:31
	SIP	# build/example.ml#2166:15->2166:31
	J	$min_caml_float_of_int	# build/example.ml#2166:15->2166:31
	ADDI	%r31, %r31, $-32	# build/example.ml#2166:15->2166:31
	FMV	%fr8, %fr0	# build/example.ml#2166:15->2166:31
	LDR	%r3, %r31, $20	# build/example.ml#2166:15->2166:31
	LDR	%r2, %r31, $24	# build/example.ml#2166:15->2166:31
	LDR	%r1, %r31, $28	# build/example.ml#2166:15->2166:31
	FLDA	%fr9, $l.7788	# build/example.ml#2166:36->2166:39
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#2166:14->2166:39
	FLDA	%fr9, $l.7789	# build/example.ml#2166:43->2166:46
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#2166:14->2166:46
	MVI	%r9, $4	# build/example.ml#2167:18->2167:19
	SDR	%r3, %r31, $32	# build/example.ml#2167:5->2167:37
	SDR	%r2, %r31, $36	# build/example.ml#2167:5->2167:37
	SDR	%r1, %r31, $40	# build/example.ml#2167:5->2167:37
	MV	%r1, %r9	# build/example.ml#2167:5->2167:37
	FMV	%fr0, %fr9	# build/example.ml#2167:5->2167:37
	ADDI	%r31, %r31, $44	# build/example.ml#2167:5->2167:37
	ADDI	%r31, %r31, $4	# build/example.ml#2167:5->2167:37
	SIP	# build/example.ml#2167:5->2167:37
	J	$calc_dirvecs.3008	# build/example.ml#2167:5->2167:37
	ADDI	%r31, %r31, $-44	# build/example.ml#2167:5->2167:37
	LDR	%r3, %r31, $32	# build/example.ml#2167:5->2167:37
	LDR	%r2, %r31, $36	# build/example.ml#2167:5->2167:37
	LDR	%r1, %r31, $40	# build/example.ml#2167:5->2167:37
	MVI	%r9, $1	# build/example.ml#2168:29->2168:30
	SUB	%r7, %r1, %r9	# build/example.ml#2168:23->2168:30
	MVI	%r9, $2	# build/example.ml#2168:51->2168:52
	SDR	%r2, %r31, $44	# build/example.ml#2168:33->2168:52
	SDR	%r1, %r31, $48	# build/example.ml#2168:33->2168:52
	MV	%r1, %r2	# build/example.ml#2168:33->2168:52
	MV	%r2, %r9	# build/example.ml#2168:33->2168:52
	ADDI	%r31, %r31, $52	# build/example.ml#2168:33->2168:52
	ADDI	%r31, %r31, $4	# build/example.ml#2168:33->2168:52
	SIP	# build/example.ml#2168:33->2168:52
	J	$add_mod5.2570	# build/example.ml#2168:33->2168:52
	ADDI	%r31, %r31, $-52	# build/example.ml#2168:33->2168:52
	MV	%r8, %r0	# build/example.ml#2168:33->2168:52
	LDR	%r2, %r31, $44	# build/example.ml#2168:33->2168:52
	LDR	%r1, %r31, $48	# build/example.ml#2168:33->2168:52
	MVI	%r9, $4	# build/example.ml#2168:63->2168:64
	ADD	%r9, %r3, %r9	# build/example.ml#2168:55->2168:64
	SDR	%r3, %r31, $52	# build/example.ml#2168:5->2168:65
	SDR	%r2, %r31, $56	# build/example.ml#2168:5->2168:65
	SDR	%r1, %r31, $60	# build/example.ml#2168:5->2168:65
	MV	%r3, %r9	# build/example.ml#2168:5->2168:65
	MV	%r2, %r8	# build/example.ml#2168:5->2168:65
	MV	%r1, %r7	# build/example.ml#2168:5->2168:65
	ADDI	%r31, %r31, $64	# build/example.ml#2168:5->2168:65
	ADDI	%r31, %r31, $4	# build/example.ml#2168:5->2168:65
	SIP	# build/example.ml#2168:5->2168:65
	J	$calc_dirvec_rows.3013	# build/example.ml#2168:5->2168:65
	ADDI	%r31, %r31, $-64	# build/example.ml#2168:5->2168:65
	LDR	%r3, %r31, $52	# build/example.ml#2168:5->2168:65
	LDR	%r2, %r31, $56	# build/example.ml#2168:5->2168:65
	LDR	%r1, %r31, $60	# build/example.ml#2168:5->2168:65
	J	$if_lt_cont.11488	# build/example.ml#2165:3->2169:13
if_lt.11487:
if_lt_cont.11488:
	LDR	%r9, %r31, $0	# build/example.ml#2165:13->2165:14
	LDR	%r8, %r31, $4	# build/example.ml#2165:13->2165:14
	LDR	%r7, %r31, $8	# build/example.ml#2165:13->2165:14
	FLDR	%fr9, %r31, $12	# build/example.ml#2165:13->2165:14
	FLDR	%fr8, %r31, $16	# build/example.ml#2165:13->2165:14
	LINK	# build/example.ml#2165:13->2165:14
calc_dirvecs.3008:
	SDR	%r9, %r31, $0	# build/example.ml#2151:13->2151:14
	SDR	%r8, %r31, $4	# build/example.ml#2151:13->2151:14
	FSDR	%fr9, %r31, $8	# build/example.ml#2151:13->2151:14
	FSDR	%fr8, %r31, $12	# build/example.ml#2151:13->2151:14
	FSDR	%fr7, %r31, $16	# build/example.ml#2151:13->2151:14
	MVI	%r9, $0	# build/example.ml#2151:13->2151:14
	CMP	%r1, %r9	# build/example.ml#2151:3->2160:13
	JZ	$if_lt.11489	# build/example.ml#2151:3->2160:13
	SDR	%r3, %r31, $20	# build/example.ml#2153:15->2153:31
	SDR	%r2, %r31, $24	# build/example.ml#2153:15->2153:31
	SDR	%r1, %r31, $28	# build/example.ml#2153:15->2153:31
	ADDI	%r31, %r31, $32	# build/example.ml#2153:15->2153:31
	ADDI	%r31, %r31, $4	# build/example.ml#2153:15->2153:31
	SIP	# build/example.ml#2153:15->2153:31
	J	$min_caml_float_of_int	# build/example.ml#2153:15->2153:31
	ADDI	%r31, %r31, $-32	# build/example.ml#2153:15->2153:31
	FMV	%fr8, %fr0	# build/example.ml#2153:15->2153:31
	LDR	%r3, %r31, $20	# build/example.ml#2153:15->2153:31
	LDR	%r2, %r31, $24	# build/example.ml#2153:15->2153:31
	LDR	%r1, %r31, $28	# build/example.ml#2153:15->2153:31
	FLDA	%fr9, $l.7788	# build/example.ml#2153:36->2153:39
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#2153:14->2153:39
	FLDA	%fr9, $l.7789	# build/example.ml#2153:43->2153:46
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#2153:14->2153:46
	MVI	%r9, $0	# build/example.ml#2154:17->2154:18
	FLDA	%fr7, $l.7787	# build/example.ml#2154:19->2154:22
	FLDA	%fr8, $l.7787	# build/example.ml#2154:23->2154:26
	SDR	%r3, %r31, $32	# build/example.ml#2154:5->2154:47
	SDR	%r2, %r31, $36	# build/example.ml#2154:5->2154:47
	SDR	%r1, %r31, $40	# build/example.ml#2154:5->2154:47
	MV	%r1, %r9	# build/example.ml#2154:5->2154:47
	FMV	%fr3, %fr0	# build/example.ml#2154:5->2154:47
	FMV	%fr2, %fr9	# build/example.ml#2154:5->2154:47
	FMV	%fr1, %fr8	# build/example.ml#2154:5->2154:47
	FMV	%fr0, %fr7	# build/example.ml#2154:5->2154:47
	ADDI	%r31, %r31, $44	# build/example.ml#2154:5->2154:47
	ADDI	%r31, %r31, $4	# build/example.ml#2154:5->2154:47
	SIP	# build/example.ml#2154:5->2154:47
	J	$calc_dirvec.3000	# build/example.ml#2154:5->2154:47
	ADDI	%r31, %r31, $-44	# build/example.ml#2154:5->2154:47
	LDR	%r3, %r31, $32	# build/example.ml#2154:5->2154:47
	LDR	%r2, %r31, $36	# build/example.ml#2154:5->2154:47
	LDR	%r1, %r31, $40	# build/example.ml#2154:5->2154:47
	SDR	%r3, %r31, $44	# build/example.ml#2156:16->2156:32
	SDR	%r2, %r31, $48	# build/example.ml#2156:16->2156:32
	SDR	%r1, %r31, $52	# build/example.ml#2156:16->2156:32
	ADDI	%r31, %r31, $56	# build/example.ml#2156:16->2156:32
	ADDI	%r31, %r31, $4	# build/example.ml#2156:16->2156:32
	SIP	# build/example.ml#2156:16->2156:32
	J	$min_caml_float_of_int	# build/example.ml#2156:16->2156:32
	ADDI	%r31, %r31, $-56	# build/example.ml#2156:16->2156:32
	FMV	%fr8, %fr0	# build/example.ml#2156:16->2156:32
	LDR	%r3, %r31, $44	# build/example.ml#2156:16->2156:32
	LDR	%r2, %r31, $48	# build/example.ml#2156:16->2156:32
	LDR	%r1, %r31, $52	# build/example.ml#2156:16->2156:32
	FLDA	%fr9, $l.7788	# build/example.ml#2156:37->2156:40
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#2156:15->2156:40
	FLDA	%fr9, $l.7790	# build/example.ml#2156:44->2156:47
	FADD	%fr9, %fr8, %fr9	# build/example.ml#2156:15->2156:47
	MVI	%r8, $0	# build/example.ml#2157:17->2157:18
	FLDA	%fr7, $l.7787	# build/example.ml#2157:19->2157:22
	FLDA	%fr8, $l.7787	# build/example.ml#2157:23->2157:26
	MVI	%r9, $2	# build/example.ml#2157:52->2157:53
	ADD	%r9, %r3, %r9	# build/example.ml#2157:44->2157:53
	SDR	%r3, %r31, $56	# build/example.ml#2157:5->2157:54
	SDR	%r2, %r31, $60	# build/example.ml#2157:5->2157:54
	SDR	%r1, %r31, $64	# build/example.ml#2157:5->2157:54
	MV	%r3, %r9	# build/example.ml#2157:5->2157:54
	MV	%r1, %r8	# build/example.ml#2157:5->2157:54
	FMV	%fr3, %fr0	# build/example.ml#2157:5->2157:54
	FMV	%fr2, %fr9	# build/example.ml#2157:5->2157:54
	FMV	%fr1, %fr8	# build/example.ml#2157:5->2157:54
	FMV	%fr0, %fr7	# build/example.ml#2157:5->2157:54
	ADDI	%r31, %r31, $68	# build/example.ml#2157:5->2157:54
	ADDI	%r31, %r31, $4	# build/example.ml#2157:5->2157:54
	SIP	# build/example.ml#2157:5->2157:54
	J	$calc_dirvec.3000	# build/example.ml#2157:5->2157:54
	ADDI	%r31, %r31, $-68	# build/example.ml#2157:5->2157:54
	LDR	%r3, %r31, $56	# build/example.ml#2157:5->2157:54
	LDR	%r2, %r31, $60	# build/example.ml#2157:5->2157:54
	LDR	%r1, %r31, $64	# build/example.ml#2157:5->2157:54
	MVI	%r9, $1	# build/example.ml#2159:25->2159:26
	SUB	%r8, %r1, %r9	# build/example.ml#2159:19->2159:26
	MVI	%r9, $1	# build/example.ml#2159:50->2159:51
	SDR	%r2, %r31, $68	# build/example.ml#2159:32->2159:51
	SDR	%r1, %r31, $72	# build/example.ml#2159:32->2159:51
	MV	%r1, %r2	# build/example.ml#2159:32->2159:51
	MV	%r2, %r9	# build/example.ml#2159:32->2159:51
	ADDI	%r31, %r31, $76	# build/example.ml#2159:32->2159:51
	ADDI	%r31, %r31, $4	# build/example.ml#2159:32->2159:51
	SIP	# build/example.ml#2159:32->2159:51
	J	$add_mod5.2570	# build/example.ml#2159:32->2159:51
	ADDI	%r31, %r31, $-76	# build/example.ml#2159:32->2159:51
	MV	%r9, %r0	# build/example.ml#2159:32->2159:51
	LDR	%r2, %r31, $68	# build/example.ml#2159:32->2159:51
	LDR	%r1, %r31, $72	# build/example.ml#2159:32->2159:51
	SDR	%r3, %r31, $76	# build/example.ml#2159:5->2159:58
	SDR	%r2, %r31, $80	# build/example.ml#2159:5->2159:58
	SDR	%r1, %r31, $84	# build/example.ml#2159:5->2159:58
	MV	%r2, %r9	# build/example.ml#2159:5->2159:58
	MV	%r1, %r8	# build/example.ml#2159:5->2159:58
	ADDI	%r31, %r31, $88	# build/example.ml#2159:5->2159:58
	ADDI	%r31, %r31, $4	# build/example.ml#2159:5->2159:58
	SIP	# build/example.ml#2159:5->2159:58
	J	$calc_dirvecs.3008	# build/example.ml#2159:5->2159:58
	ADDI	%r31, %r31, $-88	# build/example.ml#2159:5->2159:58
	LDR	%r3, %r31, $76	# build/example.ml#2159:5->2159:58
	LDR	%r2, %r31, $80	# build/example.ml#2159:5->2159:58
	LDR	%r1, %r31, $84	# build/example.ml#2159:5->2159:58
	J	$if_lt_cont.11490	# build/example.ml#2151:3->2160:13
if_lt.11489:
if_lt_cont.11490:
	LDR	%r9, %r31, $0	# build/example.ml#2151:13->2151:14
	LDR	%r8, %r31, $4	# build/example.ml#2151:13->2151:14
	FLDR	%fr9, %r31, $8	# build/example.ml#2151:13->2151:14
	FLDR	%fr8, %r31, $12	# build/example.ml#2151:13->2151:14
	FLDR	%fr7, %r31, $16	# build/example.ml#2151:13->2151:14
	LINK	# build/example.ml#2151:13->2151:14
calc_dirvec.3000:
	SDR	%r9, %r31, $0	# build/example.ml#2130:16->2130:17
	SDR	%r8, %r31, $4	# build/example.ml#2130:16->2130:17
	FSDR	%fr9, %r31, $8	# build/example.ml#2130:16->2130:17
	FSDR	%fr8, %r31, $12	# build/example.ml#2130:16->2130:17
	FSDR	%fr7, %r31, $16	# build/example.ml#2130:16->2130:17
	MVI	%r9, $5	# build/example.ml#2130:16->2130:17
	CMP	%r1, %r9	# build/example.ml#2130:3->2146:77
	JZ	$if_lt.11491	# build/example.ml#2130:3->2146:77
	SDR	%r3, %r31, $20	# build/example.ml#2131:18->2131:24
	SDR	%r2, %r31, $24	# build/example.ml#2131:18->2131:24
	SDR	%r1, %r31, $28	# build/example.ml#2131:18->2131:24
	FSDR	%fr6, %r31, $32	# build/example.ml#2131:18->2131:24
	FSDR	%fr5, %r31, $36	# build/example.ml#2131:18->2131:24
	FSDR	%fr4, %r31, $40	# build/example.ml#2131:18->2131:24
	FSDR	%fr3, %r31, $44	# build/example.ml#2131:18->2131:24
	FSDR	%fr2, %r31, $48	# build/example.ml#2131:18->2131:24
	FSDR	%fr1, %r31, $52	# build/example.ml#2131:18->2131:24
	ADDI	%r31, %r31, $56	# build/example.ml#2131:18->2131:24
	ADDI	%r31, %r31, $4	# build/example.ml#2131:18->2131:24
	SIP	# build/example.ml#2131:18->2131:24
	J	$min_caml_fsqr	# build/example.ml#2131:18->2131:24
	ADDI	%r31, %r31, $-56	# build/example.ml#2131:18->2131:24
	FMV	%fr8, %fr0	# build/example.ml#2131:18->2131:24
	LDR	%r3, %r31, $20	# build/example.ml#2131:18->2131:24
	LDR	%r2, %r31, $24	# build/example.ml#2131:18->2131:24
	LDR	%r1, %r31, $28	# build/example.ml#2131:18->2131:24
	FLDR	%fr6, %r31, $32	# build/example.ml#2131:18->2131:24
	FLDR	%fr5, %r31, $36	# build/example.ml#2131:18->2131:24
	FLDR	%fr4, %r31, $40	# build/example.ml#2131:18->2131:24
	FLDR	%fr3, %r31, $44	# build/example.ml#2131:18->2131:24
	FLDR	%fr2, %r31, $48	# build/example.ml#2131:18->2131:24
	FLDR	%fr1, %r31, $52	# build/example.ml#2131:18->2131:24
	SDR	%r3, %r31, $56	# build/example.ml#2131:28->2131:34
	SDR	%r2, %r31, $60	# build/example.ml#2131:28->2131:34
	SDR	%r1, %r31, $64	# build/example.ml#2131:28->2131:34
	FSDR	%fr6, %r31, $68	# build/example.ml#2131:28->2131:34
	FSDR	%fr5, %r31, $72	# build/example.ml#2131:28->2131:34
	FSDR	%fr4, %r31, $76	# build/example.ml#2131:28->2131:34
	FSDR	%fr3, %r31, $80	# build/example.ml#2131:28->2131:34
	FSDR	%fr2, %r31, $84	# build/example.ml#2131:28->2131:34
	FSDR	%fr1, %r31, $88	# build/example.ml#2131:28->2131:34
	FMV	%fr0, %fr1	# build/example.ml#2131:28->2131:34
	ADDI	%r31, %r31, $92	# build/example.ml#2131:28->2131:34
	ADDI	%r31, %r31, $4	# build/example.ml#2131:28->2131:34
	SIP	# build/example.ml#2131:28->2131:34
	J	$min_caml_fsqr	# build/example.ml#2131:28->2131:34
	ADDI	%r31, %r31, $-92	# build/example.ml#2131:28->2131:34
	FMV	%fr9, %fr0	# build/example.ml#2131:28->2131:34
	LDR	%r3, %r31, $56	# build/example.ml#2131:28->2131:34
	LDR	%r2, %r31, $60	# build/example.ml#2131:28->2131:34
	LDR	%r1, %r31, $64	# build/example.ml#2131:28->2131:34
	FLDR	%fr6, %r31, $68	# build/example.ml#2131:28->2131:34
	FLDR	%fr5, %r31, $72	# build/example.ml#2131:28->2131:34
	FLDR	%fr4, %r31, $76	# build/example.ml#2131:28->2131:34
	FLDR	%fr3, %r31, $80	# build/example.ml#2131:28->2131:34
	FLDR	%fr2, %r31, $84	# build/example.ml#2131:28->2131:34
	FLDR	%fr1, %r31, $88	# build/example.ml#2131:28->2131:34
	FADD	%fr8, %fr8, %fr9	# build/example.ml#2131:18->2131:34
	FLDA	%fr9, $l.7785	# build/example.ml#2131:38->2131:41
	FADD	%fr9, %fr8, %fr9	# build/example.ml#2131:18->2131:41
	SDR	%r3, %r31, $92	# build/example.ml#2131:13->2131:42
	SDR	%r2, %r31, $96	# build/example.ml#2131:13->2131:42
	SDR	%r1, %r31, $100	# build/example.ml#2131:13->2131:42
	FSDR	%fr6, %r31, $104	# build/example.ml#2131:13->2131:42
	FSDR	%fr5, %r31, $108	# build/example.ml#2131:13->2131:42
	FSDR	%fr4, %r31, $112	# build/example.ml#2131:13->2131:42
	FSDR	%fr3, %r31, $116	# build/example.ml#2131:13->2131:42
	FSDR	%fr2, %r31, $120	# build/example.ml#2131:13->2131:42
	FSDR	%fr1, %r31, $124	# build/example.ml#2131:13->2131:42
	FMV	%fr0, %fr9	# build/example.ml#2131:13->2131:42
	ADDI	%r31, %r31, $128	# build/example.ml#2131:13->2131:42
	ADDI	%r31, %r31, $4	# build/example.ml#2131:13->2131:42
	SIP	# build/example.ml#2131:13->2131:42
	J	$min_caml_sqrt	# build/example.ml#2131:13->2131:42
	ADDI	%r31, %r31, $-128	# build/example.ml#2131:13->2131:42
	FMV	%fr9, %fr0	# build/example.ml#2131:13->2131:42
	LDR	%r3, %r31, $92	# build/example.ml#2131:13->2131:42
	LDR	%r2, %r31, $96	# build/example.ml#2131:13->2131:42
	LDR	%r1, %r31, $100	# build/example.ml#2131:13->2131:42
	FLDR	%fr6, %r31, $104	# build/example.ml#2131:13->2131:42
	FLDR	%fr5, %r31, $108	# build/example.ml#2131:13->2131:42
	FLDR	%fr4, %r31, $112	# build/example.ml#2131:13->2131:42
	FLDR	%fr3, %r31, $116	# build/example.ml#2131:13->2131:42
	FLDR	%fr2, %r31, $120	# build/example.ml#2131:13->2131:42
	FLDR	%fr1, %r31, $124	# build/example.ml#2131:13->2131:42
	FDIV	%fr7, %fr0, %fr9	# build/example.ml#2132:14->2132:20
	FDIV	%fr8, %fr1, %fr9	# build/example.ml#2133:14->2133:20
	FLDA	%fr6, $l.7785	# build/example.ml#2134:14->2134:17
	FDIV	%fr9, %fr6, %fr9	# build/example.ml#2134:14->2134:22
	MVI	%r9, $min_caml_dirvecs	# build/example.ml#2137:18->2137:25
	LDD	%r8, %r9, $4, %r2	# build/example.ml#1780:24->1780:35
	LDD	%r9, %r8, $4, %r3	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r9, $0	# build/example.ml#2138:13->2138:33
	SDR	%r1, %r31, $128	# build/example.ml#2138:5->2138:46
	FSDR	%fr2, %r31, $132	# build/example.ml#2138:5->2138:46
	FSDR	%fr1, %r31, $136	# build/example.ml#2138:5->2138:46
	MV	%r1, %r9	# build/example.ml#2138:5->2138:46
	FMV	%fr2, %fr9	# build/example.ml#2138:5->2138:46
	FMV	%fr1, %fr8	# build/example.ml#2138:5->2138:46
	FMV	%fr0, %fr7	# build/example.ml#2138:5->2138:46
	ADDI	%r31, %r31, $140	# build/example.ml#2138:5->2138:46
	ADDI	%r31, %r31, $4	# build/example.ml#2138:5->2138:46
	SIP	# build/example.ml#2138:5->2138:46
	J	$vecset.2573	# build/example.ml#2138:5->2138:46
	ADDI	%r31, %r31, $-140	# build/example.ml#2138:5->2138:46
	LDR	%r1, %r31, $128	# build/example.ml#2138:5->2138:46
	FLDR	%fr2, %r31, $132	# build/example.ml#2138:5->2138:46
	FLDR	%fr1, %r31, $136	# build/example.ml#2138:5->2138:46
	MVI	%r9, $40	# build/example.ml#2139:33->2139:35
	ADD	%r9, %r3, %r9	# build/example.ml#2139:27->2139:35
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r9, $0	# build/example.ml#2139:13->2139:36
	SDR	%r3, %r31, $140	# build/example.ml#2139:45->2139:52
	SDR	%r2, %r31, $144	# build/example.ml#2139:45->2139:52
	SDR	%r1, %r31, $148	# build/example.ml#2139:45->2139:52
	FSDR	%fr6, %r31, $152	# build/example.ml#2139:45->2139:52
	FSDR	%fr5, %r31, $156	# build/example.ml#2139:45->2139:52
	FSDR	%fr4, %r31, $160	# build/example.ml#2139:45->2139:52
	FSDR	%fr3, %r31, $164	# build/example.ml#2139:45->2139:52
	FSDR	%fr2, %r31, $168	# build/example.ml#2139:45->2139:52
	FSDR	%fr1, %r31, $172	# build/example.ml#2139:45->2139:52
	FMV	%fr0, %fr8	# build/example.ml#2139:45->2139:52
	ADDI	%r31, %r31, $176	# build/example.ml#2139:45->2139:52
	ADDI	%r31, %r31, $4	# build/example.ml#2139:45->2139:52
	SIP	# build/example.ml#2139:45->2139:52
	J	$min_caml_fneg	# build/example.ml#2139:45->2139:52
	ADDI	%r31, %r31, $-176	# build/example.ml#2139:45->2139:52
	FMV	%fr6, %fr0	# build/example.ml#2139:45->2139:52
	LDR	%r3, %r31, $140	# build/example.ml#2139:45->2139:52
	LDR	%r2, %r31, $144	# build/example.ml#2139:45->2139:52
	LDR	%r1, %r31, $148	# build/example.ml#2139:45->2139:52
	FLDR	%fr6, %r31, $152	# build/example.ml#2139:45->2139:52
	FLDR	%fr5, %r31, $156	# build/example.ml#2139:45->2139:52
	FLDR	%fr4, %r31, $160	# build/example.ml#2139:45->2139:52
	FLDR	%fr3, %r31, $164	# build/example.ml#2139:45->2139:52
	FLDR	%fr2, %r31, $168	# build/example.ml#2139:45->2139:52
	FLDR	%fr1, %r31, $172	# build/example.ml#2139:45->2139:52
	SDR	%r1, %r31, $176	# build/example.ml#2139:5->2139:53
	FSDR	%fr2, %r31, $180	# build/example.ml#2139:5->2139:53
	FSDR	%fr1, %r31, $184	# build/example.ml#2139:5->2139:53
	MV	%r1, %r9	# build/example.ml#2139:5->2139:53
	FMV	%fr2, %fr6	# build/example.ml#2139:5->2139:53
	FMV	%fr1, %fr9	# build/example.ml#2139:5->2139:53
	FMV	%fr0, %fr7	# build/example.ml#2139:5->2139:53
	ADDI	%r31, %r31, $188	# build/example.ml#2139:5->2139:53
	ADDI	%r31, %r31, $4	# build/example.ml#2139:5->2139:53
	SIP	# build/example.ml#2139:5->2139:53
	J	$vecset.2573	# build/example.ml#2139:5->2139:53
	ADDI	%r31, %r31, $-188	# build/example.ml#2139:5->2139:53
	LDR	%r1, %r31, $176	# build/example.ml#2139:5->2139:53
	FLDR	%fr2, %r31, $180	# build/example.ml#2139:5->2139:53
	FLDR	%fr1, %r31, $184	# build/example.ml#2139:5->2139:53
	MVI	%r9, $80	# build/example.ml#2140:33->2140:35
	ADD	%r9, %r3, %r9	# build/example.ml#2140:27->2140:35
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r9, $0	# build/example.ml#2140:13->2140:36
	SDR	%r3, %r31, $188	# build/example.ml#2140:42->2140:49
	SDR	%r2, %r31, $192	# build/example.ml#2140:42->2140:49
	SDR	%r1, %r31, $196	# build/example.ml#2140:42->2140:49
	FSDR	%fr6, %r31, $200	# build/example.ml#2140:42->2140:49
	FSDR	%fr5, %r31, $204	# build/example.ml#2140:42->2140:49
	FSDR	%fr4, %r31, $208	# build/example.ml#2140:42->2140:49
	FSDR	%fr3, %r31, $212	# build/example.ml#2140:42->2140:49
	FSDR	%fr2, %r31, $216	# build/example.ml#2140:42->2140:49
	FSDR	%fr1, %r31, $220	# build/example.ml#2140:42->2140:49
	FMV	%fr0, %fr7	# build/example.ml#2140:42->2140:49
	ADDI	%r31, %r31, $224	# build/example.ml#2140:42->2140:49
	ADDI	%r31, %r31, $4	# build/example.ml#2140:42->2140:49
	SIP	# build/example.ml#2140:42->2140:49
	J	$min_caml_fneg	# build/example.ml#2140:42->2140:49
	ADDI	%r31, %r31, $-224	# build/example.ml#2140:42->2140:49
	FMV	%fr5, %fr0	# build/example.ml#2140:42->2140:49
	LDR	%r3, %r31, $188	# build/example.ml#2140:42->2140:49
	LDR	%r2, %r31, $192	# build/example.ml#2140:42->2140:49
	LDR	%r1, %r31, $196	# build/example.ml#2140:42->2140:49
	FLDR	%fr6, %r31, $200	# build/example.ml#2140:42->2140:49
	FLDR	%fr5, %r31, $204	# build/example.ml#2140:42->2140:49
	FLDR	%fr4, %r31, $208	# build/example.ml#2140:42->2140:49
	FLDR	%fr3, %r31, $212	# build/example.ml#2140:42->2140:49
	FLDR	%fr2, %r31, $216	# build/example.ml#2140:42->2140:49
	FLDR	%fr1, %r31, $220	# build/example.ml#2140:42->2140:49
	SDR	%r3, %r31, $224	# build/example.ml#2140:52->2140:59
	SDR	%r2, %r31, $228	# build/example.ml#2140:52->2140:59
	SDR	%r1, %r31, $232	# build/example.ml#2140:52->2140:59
	FSDR	%fr6, %r31, $236	# build/example.ml#2140:52->2140:59
	FSDR	%fr5, %r31, $240	# build/example.ml#2140:52->2140:59
	FSDR	%fr4, %r31, $244	# build/example.ml#2140:52->2140:59
	FSDR	%fr3, %r31, $248	# build/example.ml#2140:52->2140:59
	FSDR	%fr2, %r31, $252	# build/example.ml#2140:52->2140:59
	FSDR	%fr1, %r31, $256	# build/example.ml#2140:52->2140:59
	FMV	%fr0, %fr8	# build/example.ml#2140:52->2140:59
	ADDI	%r31, %r31, $260	# build/example.ml#2140:52->2140:59
	ADDI	%r31, %r31, $4	# build/example.ml#2140:52->2140:59
	SIP	# build/example.ml#2140:52->2140:59
	J	$min_caml_fneg	# build/example.ml#2140:52->2140:59
	ADDI	%r31, %r31, $-260	# build/example.ml#2140:52->2140:59
	FMV	%fr6, %fr0	# build/example.ml#2140:52->2140:59
	LDR	%r3, %r31, $224	# build/example.ml#2140:52->2140:59
	LDR	%r2, %r31, $228	# build/example.ml#2140:52->2140:59
	LDR	%r1, %r31, $232	# build/example.ml#2140:52->2140:59
	FLDR	%fr6, %r31, $236	# build/example.ml#2140:52->2140:59
	FLDR	%fr5, %r31, $240	# build/example.ml#2140:52->2140:59
	FLDR	%fr4, %r31, $244	# build/example.ml#2140:52->2140:59
	FLDR	%fr3, %r31, $248	# build/example.ml#2140:52->2140:59
	FLDR	%fr2, %r31, $252	# build/example.ml#2140:52->2140:59
	FLDR	%fr1, %r31, $256	# build/example.ml#2140:52->2140:59
	SDR	%r1, %r31, $260	# build/example.ml#2140:5->2140:60
	FSDR	%fr2, %r31, $264	# build/example.ml#2140:5->2140:60
	FSDR	%fr1, %r31, $268	# build/example.ml#2140:5->2140:60
	MV	%r1, %r9	# build/example.ml#2140:5->2140:60
	FMV	%fr2, %fr6	# build/example.ml#2140:5->2140:60
	FMV	%fr1, %fr5	# build/example.ml#2140:5->2140:60
	FMV	%fr0, %fr9	# build/example.ml#2140:5->2140:60
	ADDI	%r31, %r31, $272	# build/example.ml#2140:5->2140:60
	ADDI	%r31, %r31, $4	# build/example.ml#2140:5->2140:60
	SIP	# build/example.ml#2140:5->2140:60
	J	$vecset.2573	# build/example.ml#2140:5->2140:60
	ADDI	%r31, %r31, $-272	# build/example.ml#2140:5->2140:60
	LDR	%r1, %r31, $260	# build/example.ml#2140:5->2140:60
	FLDR	%fr2, %r31, $264	# build/example.ml#2140:5->2140:60
	FLDR	%fr1, %r31, $268	# build/example.ml#2140:5->2140:60
	MVI	%r9, $1	# build/example.ml#2141:33->2141:34
	ADD	%r9, %r3, %r9	# build/example.ml#2141:27->2141:34
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r9, $0	# build/example.ml#2141:13->2141:35
	SDR	%r3, %r31, $272	# build/example.ml#2141:38->2141:45
	SDR	%r2, %r31, $276	# build/example.ml#2141:38->2141:45
	SDR	%r1, %r31, $280	# build/example.ml#2141:38->2141:45
	FSDR	%fr6, %r31, $284	# build/example.ml#2141:38->2141:45
	FSDR	%fr5, %r31, $288	# build/example.ml#2141:38->2141:45
	FSDR	%fr4, %r31, $292	# build/example.ml#2141:38->2141:45
	FSDR	%fr3, %r31, $296	# build/example.ml#2141:38->2141:45
	FSDR	%fr2, %r31, $300	# build/example.ml#2141:38->2141:45
	FSDR	%fr1, %r31, $304	# build/example.ml#2141:38->2141:45
	FMV	%fr0, %fr7	# build/example.ml#2141:38->2141:45
	ADDI	%r31, %r31, $308	# build/example.ml#2141:38->2141:45
	ADDI	%r31, %r31, $4	# build/example.ml#2141:38->2141:45
	SIP	# build/example.ml#2141:38->2141:45
	J	$min_caml_fneg	# build/example.ml#2141:38->2141:45
	ADDI	%r31, %r31, $-308	# build/example.ml#2141:38->2141:45
	FMV	%fr4, %fr0	# build/example.ml#2141:38->2141:45
	LDR	%r3, %r31, $272	# build/example.ml#2141:38->2141:45
	LDR	%r2, %r31, $276	# build/example.ml#2141:38->2141:45
	LDR	%r1, %r31, $280	# build/example.ml#2141:38->2141:45
	FLDR	%fr6, %r31, $284	# build/example.ml#2141:38->2141:45
	FLDR	%fr5, %r31, $288	# build/example.ml#2141:38->2141:45
	FLDR	%fr4, %r31, $292	# build/example.ml#2141:38->2141:45
	FLDR	%fr3, %r31, $296	# build/example.ml#2141:38->2141:45
	FLDR	%fr2, %r31, $300	# build/example.ml#2141:38->2141:45
	FLDR	%fr1, %r31, $304	# build/example.ml#2141:38->2141:45
	SDR	%r3, %r31, $308	# build/example.ml#2141:48->2141:55
	SDR	%r2, %r31, $312	# build/example.ml#2141:48->2141:55
	SDR	%r1, %r31, $316	# build/example.ml#2141:48->2141:55
	FSDR	%fr6, %r31, $320	# build/example.ml#2141:48->2141:55
	FSDR	%fr5, %r31, $324	# build/example.ml#2141:48->2141:55
	FSDR	%fr4, %r31, $328	# build/example.ml#2141:48->2141:55
	FSDR	%fr3, %r31, $332	# build/example.ml#2141:48->2141:55
	FSDR	%fr2, %r31, $336	# build/example.ml#2141:48->2141:55
	FSDR	%fr1, %r31, $340	# build/example.ml#2141:48->2141:55
	FMV	%fr0, %fr8	# build/example.ml#2141:48->2141:55
	ADDI	%r31, %r31, $344	# build/example.ml#2141:48->2141:55
	ADDI	%r31, %r31, $4	# build/example.ml#2141:48->2141:55
	SIP	# build/example.ml#2141:48->2141:55
	J	$min_caml_fneg	# build/example.ml#2141:48->2141:55
	ADDI	%r31, %r31, $-344	# build/example.ml#2141:48->2141:55
	FMV	%fr5, %fr0	# build/example.ml#2141:48->2141:55
	LDR	%r3, %r31, $308	# build/example.ml#2141:48->2141:55
	LDR	%r2, %r31, $312	# build/example.ml#2141:48->2141:55
	LDR	%r1, %r31, $316	# build/example.ml#2141:48->2141:55
	FLDR	%fr6, %r31, $320	# build/example.ml#2141:48->2141:55
	FLDR	%fr5, %r31, $324	# build/example.ml#2141:48->2141:55
	FLDR	%fr4, %r31, $328	# build/example.ml#2141:48->2141:55
	FLDR	%fr3, %r31, $332	# build/example.ml#2141:48->2141:55
	FLDR	%fr2, %r31, $336	# build/example.ml#2141:48->2141:55
	FLDR	%fr1, %r31, $340	# build/example.ml#2141:48->2141:55
	SDR	%r3, %r31, $344	# build/example.ml#2141:58->2141:65
	SDR	%r2, %r31, $348	# build/example.ml#2141:58->2141:65
	SDR	%r1, %r31, $352	# build/example.ml#2141:58->2141:65
	FSDR	%fr6, %r31, $356	# build/example.ml#2141:58->2141:65
	FSDR	%fr5, %r31, $360	# build/example.ml#2141:58->2141:65
	FSDR	%fr4, %r31, $364	# build/example.ml#2141:58->2141:65
	FSDR	%fr3, %r31, $368	# build/example.ml#2141:58->2141:65
	FSDR	%fr2, %r31, $372	# build/example.ml#2141:58->2141:65
	FSDR	%fr1, %r31, $376	# build/example.ml#2141:58->2141:65
	FMV	%fr0, %fr9	# build/example.ml#2141:58->2141:65
	ADDI	%r31, %r31, $380	# build/example.ml#2141:58->2141:65
	ADDI	%r31, %r31, $4	# build/example.ml#2141:58->2141:65
	SIP	# build/example.ml#2141:58->2141:65
	J	$min_caml_fneg	# build/example.ml#2141:58->2141:65
	ADDI	%r31, %r31, $-380	# build/example.ml#2141:58->2141:65
	FMV	%fr6, %fr0	# build/example.ml#2141:58->2141:65
	LDR	%r3, %r31, $344	# build/example.ml#2141:58->2141:65
	LDR	%r2, %r31, $348	# build/example.ml#2141:58->2141:65
	LDR	%r1, %r31, $352	# build/example.ml#2141:58->2141:65
	FLDR	%fr6, %r31, $356	# build/example.ml#2141:58->2141:65
	FLDR	%fr5, %r31, $360	# build/example.ml#2141:58->2141:65
	FLDR	%fr4, %r31, $364	# build/example.ml#2141:58->2141:65
	FLDR	%fr3, %r31, $368	# build/example.ml#2141:58->2141:65
	FLDR	%fr2, %r31, $372	# build/example.ml#2141:58->2141:65
	FLDR	%fr1, %r31, $376	# build/example.ml#2141:58->2141:65
	SDR	%r1, %r31, $380	# build/example.ml#2141:5->2141:66
	FSDR	%fr2, %r31, $384	# build/example.ml#2141:5->2141:66
	FSDR	%fr1, %r31, $388	# build/example.ml#2141:5->2141:66
	MV	%r1, %r9	# build/example.ml#2141:5->2141:66
	FMV	%fr2, %fr6	# build/example.ml#2141:5->2141:66
	FMV	%fr1, %fr5	# build/example.ml#2141:5->2141:66
	FMV	%fr0, %fr4	# build/example.ml#2141:5->2141:66
	ADDI	%r31, %r31, $392	# build/example.ml#2141:5->2141:66
	ADDI	%r31, %r31, $4	# build/example.ml#2141:5->2141:66
	SIP	# build/example.ml#2141:5->2141:66
	J	$vecset.2573	# build/example.ml#2141:5->2141:66
	ADDI	%r31, %r31, $-392	# build/example.ml#2141:5->2141:66
	LDR	%r1, %r31, $380	# build/example.ml#2141:5->2141:66
	FLDR	%fr2, %r31, $384	# build/example.ml#2141:5->2141:66
	FLDR	%fr1, %r31, $388	# build/example.ml#2141:5->2141:66
	MVI	%r9, $41	# build/example.ml#2142:33->2142:35
	ADD	%r9, %r3, %r9	# build/example.ml#2142:27->2142:35
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r9, $0	# build/example.ml#2142:13->2142:36
	SDR	%r3, %r31, $392	# build/example.ml#2142:39->2142:46
	SDR	%r2, %r31, $396	# build/example.ml#2142:39->2142:46
	SDR	%r1, %r31, $400	# build/example.ml#2142:39->2142:46
	FSDR	%fr6, %r31, $404	# build/example.ml#2142:39->2142:46
	FSDR	%fr5, %r31, $408	# build/example.ml#2142:39->2142:46
	FSDR	%fr4, %r31, $412	# build/example.ml#2142:39->2142:46
	FSDR	%fr3, %r31, $416	# build/example.ml#2142:39->2142:46
	FSDR	%fr2, %r31, $420	# build/example.ml#2142:39->2142:46
	FSDR	%fr1, %r31, $424	# build/example.ml#2142:39->2142:46
	FMV	%fr0, %fr7	# build/example.ml#2142:39->2142:46
	ADDI	%r31, %r31, $428	# build/example.ml#2142:39->2142:46
	ADDI	%r31, %r31, $4	# build/example.ml#2142:39->2142:46
	SIP	# build/example.ml#2142:39->2142:46
	J	$min_caml_fneg	# build/example.ml#2142:39->2142:46
	ADDI	%r31, %r31, $-428	# build/example.ml#2142:39->2142:46
	FMV	%fr5, %fr0	# build/example.ml#2142:39->2142:46
	LDR	%r3, %r31, $392	# build/example.ml#2142:39->2142:46
	LDR	%r2, %r31, $396	# build/example.ml#2142:39->2142:46
	LDR	%r1, %r31, $400	# build/example.ml#2142:39->2142:46
	FLDR	%fr6, %r31, $404	# build/example.ml#2142:39->2142:46
	FLDR	%fr5, %r31, $408	# build/example.ml#2142:39->2142:46
	FLDR	%fr4, %r31, $412	# build/example.ml#2142:39->2142:46
	FLDR	%fr3, %r31, $416	# build/example.ml#2142:39->2142:46
	FLDR	%fr2, %r31, $420	# build/example.ml#2142:39->2142:46
	FLDR	%fr1, %r31, $424	# build/example.ml#2142:39->2142:46
	SDR	%r3, %r31, $428	# build/example.ml#2142:49->2142:56
	SDR	%r2, %r31, $432	# build/example.ml#2142:49->2142:56
	SDR	%r1, %r31, $436	# build/example.ml#2142:49->2142:56
	FSDR	%fr6, %r31, $440	# build/example.ml#2142:49->2142:56
	FSDR	%fr5, %r31, $444	# build/example.ml#2142:49->2142:56
	FSDR	%fr4, %r31, $448	# build/example.ml#2142:49->2142:56
	FSDR	%fr3, %r31, $452	# build/example.ml#2142:49->2142:56
	FSDR	%fr2, %r31, $456	# build/example.ml#2142:49->2142:56
	FSDR	%fr1, %r31, $460	# build/example.ml#2142:49->2142:56
	FMV	%fr0, %fr9	# build/example.ml#2142:49->2142:56
	ADDI	%r31, %r31, $464	# build/example.ml#2142:49->2142:56
	ADDI	%r31, %r31, $4	# build/example.ml#2142:49->2142:56
	SIP	# build/example.ml#2142:49->2142:56
	J	$min_caml_fneg	# build/example.ml#2142:49->2142:56
	ADDI	%r31, %r31, $-464	# build/example.ml#2142:49->2142:56
	FMV	%fr6, %fr0	# build/example.ml#2142:49->2142:56
	LDR	%r3, %r31, $428	# build/example.ml#2142:49->2142:56
	LDR	%r2, %r31, $432	# build/example.ml#2142:49->2142:56
	LDR	%r1, %r31, $436	# build/example.ml#2142:49->2142:56
	FLDR	%fr6, %r31, $440	# build/example.ml#2142:49->2142:56
	FLDR	%fr5, %r31, $444	# build/example.ml#2142:49->2142:56
	FLDR	%fr4, %r31, $448	# build/example.ml#2142:49->2142:56
	FLDR	%fr3, %r31, $452	# build/example.ml#2142:49->2142:56
	FLDR	%fr2, %r31, $456	# build/example.ml#2142:49->2142:56
	FLDR	%fr1, %r31, $460	# build/example.ml#2142:49->2142:56
	SDR	%r1, %r31, $464	# build/example.ml#2142:5->2142:60
	FSDR	%fr2, %r31, $468	# build/example.ml#2142:5->2142:60
	FSDR	%fr1, %r31, $472	# build/example.ml#2142:5->2142:60
	MV	%r1, %r9	# build/example.ml#2142:5->2142:60
	FMV	%fr2, %fr8	# build/example.ml#2142:5->2142:60
	FMV	%fr1, %fr6	# build/example.ml#2142:5->2142:60
	FMV	%fr0, %fr5	# build/example.ml#2142:5->2142:60
	ADDI	%r31, %r31, $476	# build/example.ml#2142:5->2142:60
	ADDI	%r31, %r31, $4	# build/example.ml#2142:5->2142:60
	SIP	# build/example.ml#2142:5->2142:60
	J	$vecset.2573	# build/example.ml#2142:5->2142:60
	ADDI	%r31, %r31, $-476	# build/example.ml#2142:5->2142:60
	LDR	%r1, %r31, $464	# build/example.ml#2142:5->2142:60
	FLDR	%fr2, %r31, $468	# build/example.ml#2142:5->2142:60
	FLDR	%fr1, %r31, $472	# build/example.ml#2142:5->2142:60
	MVI	%r9, $81	# build/example.ml#2143:33->2143:35
	ADD	%r9, %r3, %r9	# build/example.ml#2143:27->2143:35
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r9, $0	# build/example.ml#2143:13->2143:36
	SDR	%r3, %r31, $476	# build/example.ml#2143:39->2143:46
	SDR	%r2, %r31, $480	# build/example.ml#2143:39->2143:46
	SDR	%r1, %r31, $484	# build/example.ml#2143:39->2143:46
	FSDR	%fr6, %r31, $488	# build/example.ml#2143:39->2143:46
	FSDR	%fr5, %r31, $492	# build/example.ml#2143:39->2143:46
	FSDR	%fr4, %r31, $496	# build/example.ml#2143:39->2143:46
	FSDR	%fr3, %r31, $500	# build/example.ml#2143:39->2143:46
	FSDR	%fr2, %r31, $504	# build/example.ml#2143:39->2143:46
	FSDR	%fr1, %r31, $508	# build/example.ml#2143:39->2143:46
	FMV	%fr0, %fr9	# build/example.ml#2143:39->2143:46
	ADDI	%r31, %r31, $512	# build/example.ml#2143:39->2143:46
	ADDI	%r31, %r31, $4	# build/example.ml#2143:39->2143:46
	SIP	# build/example.ml#2143:39->2143:46
	J	$min_caml_fneg	# build/example.ml#2143:39->2143:46
	ADDI	%r31, %r31, $-512	# build/example.ml#2143:39->2143:46
	FMV	%fr9, %fr0	# build/example.ml#2143:39->2143:46
	LDR	%r3, %r31, $476	# build/example.ml#2143:39->2143:46
	LDR	%r2, %r31, $480	# build/example.ml#2143:39->2143:46
	LDR	%r1, %r31, $484	# build/example.ml#2143:39->2143:46
	FLDR	%fr6, %r31, $488	# build/example.ml#2143:39->2143:46
	FLDR	%fr5, %r31, $492	# build/example.ml#2143:39->2143:46
	FLDR	%fr4, %r31, $496	# build/example.ml#2143:39->2143:46
	FLDR	%fr3, %r31, $500	# build/example.ml#2143:39->2143:46
	FLDR	%fr2, %r31, $504	# build/example.ml#2143:39->2143:46
	FLDR	%fr1, %r31, $508	# build/example.ml#2143:39->2143:46
	SDR	%r1, %r31, $512	# build/example.ml#2143:5->2143:53
	FSDR	%fr2, %r31, $516	# build/example.ml#2143:5->2143:53
	FSDR	%fr1, %r31, $520	# build/example.ml#2143:5->2143:53
	MV	%r1, %r9	# build/example.ml#2143:5->2143:53
	FMV	%fr2, %fr8	# build/example.ml#2143:5->2143:53
	FMV	%fr1, %fr7	# build/example.ml#2143:5->2143:53
	FMV	%fr0, %fr9	# build/example.ml#2143:5->2143:53
	ADDI	%r31, %r31, $524	# build/example.ml#2143:5->2143:53
	ADDI	%r31, %r31, $4	# build/example.ml#2143:5->2143:53
	SIP	# build/example.ml#2143:5->2143:53
	J	$vecset.2573	# build/example.ml#2143:5->2143:53
	ADDI	%r31, %r31, $-524	# build/example.ml#2143:5->2143:53
	LDR	%r1, %r31, $512	# build/example.ml#2143:5->2143:53
	FLDR	%fr2, %r31, $516	# build/example.ml#2143:5->2143:53
	FLDR	%fr1, %r31, $520	# build/example.ml#2143:5->2143:53
	J	$if_lt_cont.11492	# build/example.ml#2130:3->2146:77
if_lt.11491:
	SDR	%r3, %r31, $524	# build/example.ml#2145:14->2145:34
	SDR	%r2, %r31, $528	# build/example.ml#2145:14->2145:34
	SDR	%r1, %r31, $532	# build/example.ml#2145:14->2145:34
	FSDR	%fr6, %r31, $536	# build/example.ml#2145:14->2145:34
	FSDR	%fr5, %r31, $540	# build/example.ml#2145:14->2145:34
	FSDR	%fr4, %r31, $544	# build/example.ml#2145:14->2145:34
	FSDR	%fr3, %r31, $548	# build/example.ml#2145:14->2145:34
	FSDR	%fr2, %r31, $552	# build/example.ml#2145:14->2145:34
	FSDR	%fr1, %r31, $556	# build/example.ml#2145:14->2145:34
	FMV	%fr0, %fr1	# build/example.ml#2145:14->2145:34
	FMV	%fr1, %fr2	# build/example.ml#2145:14->2145:34
	ADDI	%r31, %r31, $560	# build/example.ml#2145:14->2145:34
	ADDI	%r31, %r31, $4	# build/example.ml#2145:14->2145:34
	SIP	# build/example.ml#2145:14->2145:34
	J	$adjust_position.2997	# build/example.ml#2145:14->2145:34
	ADDI	%r31, %r31, $-560	# build/example.ml#2145:14->2145:34
	FMV	%fr9, %fr0	# build/example.ml#2145:14->2145:34
	LDR	%r3, %r31, $524	# build/example.ml#2145:14->2145:34
	LDR	%r2, %r31, $528	# build/example.ml#2145:14->2145:34
	LDR	%r1, %r31, $532	# build/example.ml#2145:14->2145:34
	FLDR	%fr6, %r31, $536	# build/example.ml#2145:14->2145:34
	FLDR	%fr5, %r31, $540	# build/example.ml#2145:14->2145:34
	FLDR	%fr4, %r31, $544	# build/example.ml#2145:14->2145:34
	FLDR	%fr3, %r31, $548	# build/example.ml#2145:14->2145:34
	FLDR	%fr2, %r31, $552	# build/example.ml#2145:14->2145:34
	FLDR	%fr1, %r31, $556	# build/example.ml#2145:14->2145:34
	MVI	%r9, $1	# build/example.ml#2146:27->2146:28
	ADD	%r9, %r1, %r9	# build/example.ml#2146:18->2146:28
	SDR	%r3, %r31, $560	# build/example.ml#2146:34->2146:55
	SDR	%r2, %r31, $564	# build/example.ml#2146:34->2146:55
	SDR	%r1, %r31, $568	# build/example.ml#2146:34->2146:55
	FSDR	%fr6, %r31, $572	# build/example.ml#2146:34->2146:55
	FSDR	%fr5, %r31, $576	# build/example.ml#2146:34->2146:55
	FSDR	%fr4, %r31, $580	# build/example.ml#2146:34->2146:55
	FSDR	%fr3, %r31, $584	# build/example.ml#2146:34->2146:55
	FSDR	%fr2, %r31, $588	# build/example.ml#2146:34->2146:55
	FSDR	%fr1, %r31, $592	# build/example.ml#2146:34->2146:55
	FMV	%fr1, %fr3	# build/example.ml#2146:34->2146:55
	FMV	%fr0, %fr9	# build/example.ml#2146:34->2146:55
	ADDI	%r31, %r31, $596	# build/example.ml#2146:34->2146:55
	ADDI	%r31, %r31, $4	# build/example.ml#2146:34->2146:55
	SIP	# build/example.ml#2146:34->2146:55
	J	$adjust_position.2997	# build/example.ml#2146:34->2146:55
	ADDI	%r31, %r31, $-596	# build/example.ml#2146:34->2146:55
	FMV	%fr8, %fr0	# build/example.ml#2146:34->2146:55
	LDR	%r3, %r31, $560	# build/example.ml#2146:34->2146:55
	LDR	%r2, %r31, $564	# build/example.ml#2146:34->2146:55
	LDR	%r1, %r31, $568	# build/example.ml#2146:34->2146:55
	FLDR	%fr6, %r31, $572	# build/example.ml#2146:34->2146:55
	FLDR	%fr5, %r31, $576	# build/example.ml#2146:34->2146:55
	FLDR	%fr4, %r31, $580	# build/example.ml#2146:34->2146:55
	FLDR	%fr3, %r31, $584	# build/example.ml#2146:34->2146:55
	FLDR	%fr2, %r31, $588	# build/example.ml#2146:34->2146:55
	FLDR	%fr1, %r31, $592	# build/example.ml#2146:34->2146:55
	SDR	%r3, %r31, $596	# build/example.ml#2146:5->2146:77
	SDR	%r2, %r31, $600	# build/example.ml#2146:5->2146:77
	SDR	%r1, %r31, $604	# build/example.ml#2146:5->2146:77
	FSDR	%fr6, %r31, $608	# build/example.ml#2146:5->2146:77
	FSDR	%fr5, %r31, $612	# build/example.ml#2146:5->2146:77
	FSDR	%fr4, %r31, $616	# build/example.ml#2146:5->2146:77
	FSDR	%fr3, %r31, $620	# build/example.ml#2146:5->2146:77
	FSDR	%fr2, %r31, $624	# build/example.ml#2146:5->2146:77
	FSDR	%fr1, %r31, $628	# build/example.ml#2146:5->2146:77
	MV	%r1, %r9	# build/example.ml#2146:5->2146:77
	FMV	%fr1, %fr8	# build/example.ml#2146:5->2146:77
	FMV	%fr0, %fr9	# build/example.ml#2146:5->2146:77
	ADDI	%r31, %r31, $632	# build/example.ml#2146:5->2146:77
	ADDI	%r31, %r31, $4	# build/example.ml#2146:5->2146:77
	SIP	# build/example.ml#2146:5->2146:77
	J	$calc_dirvec.3000	# build/example.ml#2146:5->2146:77
	ADDI	%r31, %r31, $-632	# build/example.ml#2146:5->2146:77
	LDR	%r3, %r31, $596	# build/example.ml#2146:5->2146:77
	LDR	%r2, %r31, $600	# build/example.ml#2146:5->2146:77
	LDR	%r1, %r31, $604	# build/example.ml#2146:5->2146:77
	FLDR	%fr6, %r31, $608	# build/example.ml#2146:5->2146:77
	FLDR	%fr5, %r31, $612	# build/example.ml#2146:5->2146:77
	FLDR	%fr4, %r31, $616	# build/example.ml#2146:5->2146:77
	FLDR	%fr3, %r31, $620	# build/example.ml#2146:5->2146:77
	FLDR	%fr2, %r31, $624	# build/example.ml#2146:5->2146:77
	FLDR	%fr1, %r31, $628	# build/example.ml#2146:5->2146:77
if_lt_cont.11492:
	LDR	%r9, %r31, $0	# build/example.ml#2130:16->2130:17
	LDR	%r8, %r31, $4	# build/example.ml#2130:16->2130:17
	FLDR	%fr9, %r31, $8	# build/example.ml#2130:16->2130:17
	FLDR	%fr8, %r31, $12	# build/example.ml#2130:16->2130:17
	FLDR	%fr7, %r31, $16	# build/example.ml#2130:16->2130:17
	LINK	# build/example.ml#2130:16->2130:17
adjust_position.2997:
	FSDR	%fr9, %r31, $0	# build/example.ml#2121:16->2121:20
	FSDR	%fr8, %r31, $4	# build/example.ml#2121:16->2121:20
	FMUL	%fr8, %fr0, %fr0	# build/example.ml#2121:16->2121:20
	FLDA	%fr9, $l.7790	# build/example.ml#2121:24->2121:27
	FADD	%fr9, %fr8, %fr9	# build/example.ml#2121:16->2121:27
	FSDR	%fr1, %r31, $8	# build/example.ml#2121:11->2121:28
	FMV	%fr0, %fr9	# build/example.ml#2121:11->2121:28
	ADDI	%r31, %r31, $12	# build/example.ml#2121:11->2121:28
	ADDI	%r31, %r31, $4	# build/example.ml#2121:11->2121:28
	SIP	# build/example.ml#2121:11->2121:28
	J	$min_caml_sqrt	# build/example.ml#2121:11->2121:28
	ADDI	%r31, %r31, $-12	# build/example.ml#2121:11->2121:28
	FMV	%fr8, %fr0	# build/example.ml#2121:11->2121:28
	FLDR	%fr1, %r31, $8	# build/example.ml#2121:11->2121:28
	FLDA	%fr9, $l.7785	# build/example.ml#2122:15->2122:18
	FDIV	%fr9, %fr9, %fr8	# build/example.ml#2122:15->2122:23
	FSDR	%fr1, %r31, $12	# build/example.ml#2123:17->2123:27
	FMV	%fr0, %fr9	# build/example.ml#2123:17->2123:27
	ADDI	%r31, %r31, $16	# build/example.ml#2123:17->2123:27
	ADDI	%r31, %r31, $4	# build/example.ml#2123:17->2123:27
	SIP	# build/example.ml#2123:17->2123:27
	J	$min_caml_atan	# build/example.ml#2123:17->2123:27
	ADDI	%r31, %r31, $-16	# build/example.ml#2123:17->2123:27
	FMV	%fr9, %fr0	# build/example.ml#2123:17->2123:27
	FLDR	%fr1, %r31, $12	# build/example.ml#2123:17->2123:27
	FMUL	%fr9, %fr9, %fr1	# build/example.ml#2124:21->2124:37
	FSDR	%fr1, %r31, $16	# build/example.ml#2124:16->2124:38
	FMV	%fr0, %fr9	# build/example.ml#2124:16->2124:38
	ADDI	%r31, %r31, $20	# build/example.ml#2124:16->2124:38
	ADDI	%r31, %r31, $4	# build/example.ml#2124:16->2124:38
	SIP	# build/example.ml#2124:16->2124:38
	J	$tan.2995	# build/example.ml#2124:16->2124:38
	ADDI	%r31, %r31, $-20	# build/example.ml#2124:16->2124:38
	FMV	%fr9, %fr0	# build/example.ml#2124:16->2124:38
	FLDR	%fr1, %r31, $16	# build/example.ml#2124:16->2124:38
	FMUL	%fr0, %fr9, %fr8	# build/example.ml#2125:3->2125:13
	FLDR	%fr9, %r31, $0	# build/example.ml#2121:16->2121:20
	FLDR	%fr8, %r31, $4	# build/example.ml#2121:16->2121:20
	LINK	# build/example.ml#2121:16->2121:20
tan.2995:
	FSDR	%fr9, %r31, $0	# build/example.ml#2116:3->2116:9
	FSDR	%fr8, %r31, $4	# build/example.ml#2116:3->2116:9
	ADDI	%r31, %r31, $8	# build/example.ml#2116:3->2116:9
	ADDI	%r31, %r31, $4	# build/example.ml#2116:3->2116:9
	SIP	# build/example.ml#2116:3->2116:9
	J	$min_caml_sin	# build/example.ml#2116:3->2116:9
	ADDI	%r31, %r31, $-8	# build/example.ml#2116:3->2116:9
	FMV	%fr9, %fr0	# build/example.ml#2116:3->2116:9
	ADDI	%r31, %r31, $8	# build/example.ml#2116:13->2116:19
	ADDI	%r31, %r31, $4	# build/example.ml#2116:13->2116:19
	SIP	# build/example.ml#2116:13->2116:19
	J	$min_caml_cos	# build/example.ml#2116:13->2116:19
	ADDI	%r31, %r31, $-8	# build/example.ml#2116:13->2116:19
	FMV	%fr8, %fr0	# build/example.ml#2116:13->2116:19
	FDIV	%fr0, %fr9, %fr8	# build/example.ml#2116:3->2116:19
	FLDR	%fr9, %r31, $0	# build/example.ml#2116:3->2116:9
	FLDR	%fr8, %r31, $4	# build/example.ml#2116:3->2116:9
	LINK	# build/example.ml#2116:3->2116:9
create_pixelline.2993:
	SDR	%r9, %r31, $0	# build/example.ml#2102:27->2102:37
	SDR	%r8, %r31, $4	# build/example.ml#2102:27->2102:37
	SDR	%r7, %r31, $8	# build/example.ml#2102:27->2102:37
	SDR	%r28, %r31, $12	# build/example.ml#2102:27->2102:37
	SDR	%r27, %r31, $16	# build/example.ml#2102:27->2102:37
	SDR	%r26, %r31, $20	# build/example.ml#2102:27->2102:37
	MVI	%r26, $min_caml_image_size	# build/example.ml#2102:27->2102:37
	MVI	%r9, $0	# build/example.ml#2102:39->2102:40
	LDD	%r27, %r26, $4, %r9	# build/example.ml#1858:16->1858:30
	SDR	%r6, %r31, $24	# build/example.ml#2102:43->2102:57
	SDR	%r5, %r31, $28	# build/example.ml#2102:43->2102:57
	SDR	%r4, %r31, $32	# build/example.ml#2102:43->2102:57
	SDR	%r3, %r31, $36	# build/example.ml#2102:43->2102:57
	ADDI	%r31, %r31, $40	# build/example.ml#2102:43->2102:57
	ADDI	%r31, %r31, $4	# build/example.ml#2102:43->2102:57
	SIP	# build/example.ml#2102:43->2102:57
	J	$create_pixel.2988	# build/example.ml#2102:43->2102:57
	ADDI	%r31, %r31, $-40	# build/example.ml#2102:43->2102:57
	MV	%r28, %r0	# build/example.ml#2102:43->2102:57
	LDR	%r6, %r31, $24	# build/example.ml#2102:43->2102:57
	LDR	%r5, %r31, $28	# build/example.ml#2102:43->2102:57
	LDR	%r4, %r31, $32	# build/example.ml#2102:43->2102:57
	LDR	%r3, %r31, $36	# build/example.ml#2102:43->2102:57
	LDR	%r9, %r28, $28	# build/example.ml#2102:14->2102:58
	LDR	%r8, %r28, $24	# build/example.ml#2102:14->2102:58
	LDR	%r7, %r28, $20	# build/example.ml#2102:14->2102:58
	LDR	%r6, %r28, $16	# build/example.ml#2102:14->2102:58
	LDR	%r5, %r28, $12	# build/example.ml#2102:14->2102:58
	LDR	%r4, %r28, $8	# build/example.ml#2102:14->2102:58
	LDR	%r3, %r28, $4	# build/example.ml#2102:14->2102:58
	LDR	%r28, %r28, $0	# build/example.ml#2102:14->2102:58
	SDR	%r6, %r31, $40	# build/example.ml#2102:14->2102:58
	SDR	%r5, %r31, $44	# build/example.ml#2102:14->2102:58
	SDR	%r4, %r31, $48	# build/example.ml#2102:14->2102:58
	SDR	%r3, %r31, $52	# build/example.ml#2102:14->2102:58
	MV	%r2, %r28	# build/example.ml#2102:14->2102:58
	MV	%r1, %r27	# build/example.ml#2102:14->2102:58
	ADDI	%r31, %r31, $56	# build/example.ml#2102:14->2102:58
	ADDI	%r31, %r31, $4	# build/example.ml#2102:14->2102:58
	SIP	# build/example.ml#2102:14->2102:58
	J	$min_caml_create_int_array	# build/example.ml#2102:14->2102:58
	ADDI	%r31, %r31, $-56	# build/example.ml#2102:14->2102:58
	MV	%r9, %r0	# build/example.ml#2102:14->2102:58
	LDR	%r6, %r31, $40	# build/example.ml#2102:14->2102:58
	LDR	%r5, %r31, $44	# build/example.ml#2102:14->2102:58
	LDR	%r4, %r31, $48	# build/example.ml#2102:14->2102:58
	LDR	%r3, %r31, $52	# build/example.ml#2102:14->2102:58
	MVI	%r8, $0	# build/example.ml#2103:40->2103:41
	LDD	%r7, %r26, $4, %r8	# build/example.ml#1858:16->1858:30
	MVI	%r8, $2	# build/example.ml#2103:43->2103:44
	SUB	%r8, %r7, %r8	# build/example.ml#2103:28->2103:44
	SDR	%r6, %r31, $56	# build/example.ml#2103:3->2103:45
	SDR	%r5, %r31, $60	# build/example.ml#2103:3->2103:45
	SDR	%r4, %r31, $64	# build/example.ml#2103:3->2103:45
	SDR	%r3, %r31, $68	# build/example.ml#2103:3->2103:45
	MV	%r2, %r8	# build/example.ml#2103:3->2103:45
	MV	%r1, %r9	# build/example.ml#2103:3->2103:45
	ADDI	%r31, %r31, $72	# build/example.ml#2103:3->2103:45
	ADDI	%r31, %r31, $4	# build/example.ml#2103:3->2103:45
	SIP	# build/example.ml#2103:3->2103:45
	J	$init_line_elements.2990	# build/example.ml#2103:3->2103:45
	ADDI	%r31, %r31, $-72	# build/example.ml#2103:3->2103:45
	LDR	%r6, %r31, $56	# build/example.ml#2103:3->2103:45
	LDR	%r5, %r31, $60	# build/example.ml#2103:3->2103:45
	LDR	%r4, %r31, $64	# build/example.ml#2103:3->2103:45
	LDR	%r3, %r31, $68	# build/example.ml#2103:3->2103:45
	LDR	%r9, %r31, $0	# build/example.ml#2102:27->2102:37
	LDR	%r8, %r31, $4	# build/example.ml#2102:27->2102:37
	LDR	%r7, %r31, $8	# build/example.ml#2102:27->2102:37
	LDR	%r28, %r31, $12	# build/example.ml#2102:27->2102:37
	LDR	%r27, %r31, $16	# build/example.ml#2102:27->2102:37
	LDR	%r26, %r31, $20	# build/example.ml#2102:27->2102:37
	LINK	# build/example.ml#2102:27->2102:37
init_line_elements.2990:
	SDR	%r9, %r31, $0	# build/example.ml#2093:11->2093:12
	MVI	%r9, $0	# build/example.ml#2093:11->2093:12
	CMP	%r2, %r9	# build/example.ml#2093:3->2097:9
	JZ	$if_lt.11493	# build/example.ml#2093:3->2097:9
	SDR	%r2, %r31, $4	# build/example.ml#2094:17->2094:31
	SDR	%r1, %r31, $8	# build/example.ml#2094:17->2094:31
	ADDI	%r31, %r31, $12	# build/example.ml#2094:17->2094:31
	ADDI	%r31, %r31, $4	# build/example.ml#2094:17->2094:31
	SIP	# build/example.ml#2094:17->2094:31
	J	$create_pixel.2988	# build/example.ml#2094:17->2094:31
	ADDI	%r31, %r31, $-12	# build/example.ml#2094:17->2094:31
	MV	%r9, %r0	# build/example.ml#2094:17->2094:31
	LDR	%r2, %r31, $4	# build/example.ml#2094:17->2094:31
	LDR	%r1, %r31, $8	# build/example.ml#2094:17->2094:31
	SDD	%r9, %r1, $4, %r2	# build/example.ml#2094:5->2094:31
	MVI	%r9, $1	# build/example.ml#2095:32->2095:33
	SUB	%r9, %r2, %r9	# build/example.ml#2095:30->2095:33
	SDR	%r2, %r31, $12	# build/example.ml#2095:5->2095:34
	SDR	%r1, %r31, $16	# build/example.ml#2095:5->2095:34
	MV	%r2, %r9	# build/example.ml#2095:5->2095:34
	ADDI	%r31, %r31, $20	# build/example.ml#2095:5->2095:34
	ADDI	%r31, %r31, $4	# build/example.ml#2095:5->2095:34
	SIP	# build/example.ml#2095:5->2095:34
	J	$init_line_elements.2990	# build/example.ml#2095:5->2095:34
	ADDI	%r31, %r31, $-20	# build/example.ml#2095:5->2095:34
	LDR	%r2, %r31, $12	# build/example.ml#2095:5->2095:34
	LDR	%r1, %r31, $16	# build/example.ml#2095:5->2095:34
	J	$if_lt_cont.11494	# build/example.ml#2093:3->2097:9
if_lt.11493:
	MV	%r0, %r1	# build/example.ml#2097:5->2097:9
if_lt_cont.11494:
	LDR	%r9, %r31, $0	# build/example.ml#2093:11->2093:12
	LINK	# build/example.ml#2093:11->2093:12
create_pixel.2988:
	SDR	%r9, %r31, $0	# build/example.ml#2080:28->2080:29
	SDR	%r8, %r31, $4	# build/example.ml#2080:28->2080:29
	SDR	%r7, %r31, $8	# build/example.ml#2080:28->2080:29
	SDR	%r28, %r31, $12	# build/example.ml#2080:28->2080:29
	SDR	%r27, %r31, $16	# build/example.ml#2080:28->2080:29
	FSDR	%fr9, %r31, $20	# build/example.ml#2080:28->2080:29
	MVI	%r9, $3	# build/example.ml#2080:28->2080:29
	FLDA	%fr9, $l.7787	# build/example.ml#2080:30->2080:33
	SDR	%r6, %r31, $24	# build/example.ml#2080:15->2080:33
	SDR	%r5, %r31, $28	# build/example.ml#2080:15->2080:33
	SDR	%r4, %r31, $32	# build/example.ml#2080:15->2080:33
	SDR	%r3, %r31, $36	# build/example.ml#2080:15->2080:33
	MV	%r1, %r9	# build/example.ml#2080:15->2080:33
	FMV	%fr0, %fr9	# build/example.ml#2080:15->2080:33
	ADDI	%r31, %r31, $40	# build/example.ml#2080:15->2080:33
	ADDI	%r31, %r31, $4	# build/example.ml#2080:15->2080:33
	SIP	# build/example.ml#2080:15->2080:33
	J	$min_caml_create_float_array	# build/example.ml#2080:15->2080:33
	ADDI	%r31, %r31, $-40	# build/example.ml#2080:15->2080:33
	MV	%r7, %r0	# build/example.ml#2080:15->2080:33
	LDR	%r6, %r31, $24	# build/example.ml#2080:15->2080:33
	LDR	%r5, %r31, $28	# build/example.ml#2080:15->2080:33
	LDR	%r4, %r31, $32	# build/example.ml#2080:15->2080:33
	LDR	%r3, %r31, $36	# build/example.ml#2080:15->2080:33
	SDR	%r6, %r31, $40	# build/example.ml#2081:20->2081:42
	SDR	%r5, %r31, $44	# build/example.ml#2081:20->2081:42
	SDR	%r4, %r31, $48	# build/example.ml#2081:20->2081:42
	SDR	%r3, %r31, $52	# build/example.ml#2081:20->2081:42
	ADDI	%r31, %r31, $56	# build/example.ml#2081:20->2081:42
	ADDI	%r31, %r31, $4	# build/example.ml#2081:20->2081:42
	SIP	# build/example.ml#2081:20->2081:42
	J	$create_float5x3array.2986	# build/example.ml#2081:20->2081:42
	ADDI	%r31, %r31, $-56	# build/example.ml#2081:20->2081:42
	MV	%r4, %r0	# build/example.ml#2081:20->2081:42
	LDR	%r6, %r31, $40	# build/example.ml#2081:20->2081:42
	LDR	%r5, %r31, $44	# build/example.ml#2081:20->2081:42
	LDR	%r4, %r31, $48	# build/example.ml#2081:20->2081:42
	LDR	%r3, %r31, $52	# build/example.ml#2081:20->2081:42
	MVI	%r8, $5	# build/example.ml#2082:29->2082:30
	MVI	%r9, $0	# build/example.ml#2082:31->2082:32
	SDR	%r6, %r31, $56	# build/example.ml#2082:16->2082:32
	SDR	%r5, %r31, $60	# build/example.ml#2082:16->2082:32
	SDR	%r4, %r31, $64	# build/example.ml#2082:16->2082:32
	SDR	%r3, %r31, $68	# build/example.ml#2082:16->2082:32
	MV	%r2, %r9	# build/example.ml#2082:16->2082:32
	MV	%r1, %r8	# build/example.ml#2082:16->2082:32
	ADDI	%r31, %r31, $72	# build/example.ml#2082:16->2082:32
	ADDI	%r31, %r31, $4	# build/example.ml#2082:16->2082:32
	SIP	# build/example.ml#2082:16->2082:32
	J	$min_caml_create_int_array	# build/example.ml#2082:16->2082:32
	ADDI	%r31, %r31, $-72	# build/example.ml#2082:16->2082:32
	MV	%r8, %r0	# build/example.ml#2082:16->2082:32
	LDR	%r6, %r31, $56	# build/example.ml#2082:16->2082:32
	LDR	%r5, %r31, $60	# build/example.ml#2082:16->2082:32
	LDR	%r4, %r31, $64	# build/example.ml#2082:16->2082:32
	LDR	%r3, %r31, $68	# build/example.ml#2082:16->2082:32
	MVI	%r6, $5	# build/example.ml#2083:29->2083:30
	MVI	%r9, $0	# build/example.ml#2083:31->2083:36
	SDR	%r6, %r31, $72	# build/example.ml#2083:16->2083:36
	SDR	%r5, %r31, $76	# build/example.ml#2083:16->2083:36
	SDR	%r4, %r31, $80	# build/example.ml#2083:16->2083:36
	SDR	%r3, %r31, $84	# build/example.ml#2083:16->2083:36
	MV	%r2, %r9	# build/example.ml#2083:16->2083:36
	MV	%r1, %r6	# build/example.ml#2083:16->2083:36
	ADDI	%r31, %r31, $88	# build/example.ml#2083:16->2083:36
	ADDI	%r31, %r31, $4	# build/example.ml#2083:16->2083:36
	SIP	# build/example.ml#2083:16->2083:36
	J	$min_caml_create_int_array	# build/example.ml#2083:16->2083:36
	ADDI	%r31, %r31, $-88	# build/example.ml#2083:16->2083:36
	MV	%r27, %r0	# build/example.ml#2083:16->2083:36
	LDR	%r6, %r31, $72	# build/example.ml#2083:16->2083:36
	LDR	%r5, %r31, $76	# build/example.ml#2083:16->2083:36
	LDR	%r4, %r31, $80	# build/example.ml#2083:16->2083:36
	LDR	%r3, %r31, $84	# build/example.ml#2083:16->2083:36
	SDR	%r6, %r31, $88	# build/example.ml#2084:16->2084:38
	SDR	%r5, %r31, $92	# build/example.ml#2084:16->2084:38
	SDR	%r4, %r31, $96	# build/example.ml#2084:16->2084:38
	SDR	%r3, %r31, $100	# build/example.ml#2084:16->2084:38
	ADDI	%r31, %r31, $104	# build/example.ml#2084:16->2084:38
	ADDI	%r31, %r31, $4	# build/example.ml#2084:16->2084:38
	SIP	# build/example.ml#2084:16->2084:38
	J	$create_float5x3array.2986	# build/example.ml#2084:16->2084:38
	ADDI	%r31, %r31, $-104	# build/example.ml#2084:16->2084:38
	MV	%r28, %r0	# build/example.ml#2084:16->2084:38
	LDR	%r6, %r31, $88	# build/example.ml#2084:16->2084:38
	LDR	%r5, %r31, $92	# build/example.ml#2084:16->2084:38
	LDR	%r4, %r31, $96	# build/example.ml#2084:16->2084:38
	LDR	%r3, %r31, $100	# build/example.ml#2084:16->2084:38
	SDR	%r6, %r31, $104	# build/example.ml#2085:16->2085:38
	SDR	%r5, %r31, $108	# build/example.ml#2085:16->2085:38
	SDR	%r4, %r31, $112	# build/example.ml#2085:16->2085:38
	SDR	%r3, %r31, $116	# build/example.ml#2085:16->2085:38
	ADDI	%r31, %r31, $120	# build/example.ml#2085:16->2085:38
	ADDI	%r31, %r31, $4	# build/example.ml#2085:16->2085:38
	SIP	# build/example.ml#2085:16->2085:38
	J	$create_float5x3array.2986	# build/example.ml#2085:16->2085:38
	ADDI	%r31, %r31, $-120	# build/example.ml#2085:16->2085:38
	MV	%r6, %r0	# build/example.ml#2085:16->2085:38
	LDR	%r6, %r31, $104	# build/example.ml#2085:16->2085:38
	LDR	%r5, %r31, $108	# build/example.ml#2085:16->2085:38
	LDR	%r4, %r31, $112	# build/example.ml#2085:16->2085:38
	LDR	%r3, %r31, $116	# build/example.ml#2085:16->2085:38
	MVI	%r5, $1	# build/example.ml#2086:28->2086:29
	MVI	%r9, $0	# build/example.ml#2086:30->2086:31
	SDR	%r6, %r31, $120	# build/example.ml#2086:15->2086:31
	SDR	%r5, %r31, $124	# build/example.ml#2086:15->2086:31
	SDR	%r4, %r31, $128	# build/example.ml#2086:15->2086:31
	SDR	%r3, %r31, $132	# build/example.ml#2086:15->2086:31
	MV	%r2, %r9	# build/example.ml#2086:15->2086:31
	MV	%r1, %r5	# build/example.ml#2086:15->2086:31
	ADDI	%r31, %r31, $136	# build/example.ml#2086:15->2086:31
	ADDI	%r31, %r31, $4	# build/example.ml#2086:15->2086:31
	SIP	# build/example.ml#2086:15->2086:31
	J	$min_caml_create_int_array	# build/example.ml#2086:15->2086:31
	ADDI	%r31, %r31, $-136	# build/example.ml#2086:15->2086:31
	MV	%r3, %r0	# build/example.ml#2086:15->2086:31
	LDR	%r6, %r31, $120	# build/example.ml#2086:15->2086:31
	LDR	%r5, %r31, $124	# build/example.ml#2086:15->2086:31
	LDR	%r4, %r31, $128	# build/example.ml#2086:15->2086:31
	LDR	%r3, %r31, $132	# build/example.ml#2086:15->2086:31
	SDR	%r6, %r31, $136	# build/example.ml#2087:20->2087:42
	SDR	%r5, %r31, $140	# build/example.ml#2087:20->2087:42
	SDR	%r4, %r31, $144	# build/example.ml#2087:20->2087:42
	SDR	%r3, %r31, $148	# build/example.ml#2087:20->2087:42
	ADDI	%r31, %r31, $152	# build/example.ml#2087:20->2087:42
	ADDI	%r31, %r31, $4	# build/example.ml#2087:20->2087:42
	SIP	# build/example.ml#2087:20->2087:42
	J	$create_float5x3array.2986	# build/example.ml#2087:20->2087:42
	ADDI	%r31, %r31, $-152	# build/example.ml#2087:20->2087:42
	MV	%r5, %r0	# build/example.ml#2087:20->2087:42
	LDR	%r6, %r31, $136	# build/example.ml#2087:20->2087:42
	LDR	%r5, %r31, $140	# build/example.ml#2087:20->2087:42
	LDR	%r4, %r31, $144	# build/example.ml#2087:20->2087:42
	LDR	%r3, %r31, $148	# build/example.ml#2087:20->2087:42
	MV	%r9, %r30	# build/example.ml#2088:4->2088:72
	ADDI	%r30, %r30, $32	# build/example.ml#2088:4->2088:72
	SDR	%r5, %r9, $28	# build/example.ml#2088:4->2088:72
	SDR	%r3, %r9, $24	# build/example.ml#2088:4->2088:72
	SDR	%r6, %r9, $20	# build/example.ml#2088:4->2088:72
	SDR	%r28, %r9, $16	# build/example.ml#2088:4->2088:72
	SDR	%r27, %r9, $12	# build/example.ml#2088:4->2088:72
	SDR	%r8, %r9, $8	# build/example.ml#2088:4->2088:72
	SDR	%r4, %r9, $4	# build/example.ml#2088:4->2088:72
	SDR	%r7, %r9, $0	# build/example.ml#2088:4->2088:72
	MV	%r0, %r9	# build/example.ml#2088:4->2088:72
	LDR	%r9, %r31, $0	# build/example.ml#2080:28->2080:29
	LDR	%r8, %r31, $4	# build/example.ml#2080:28->2080:29
	LDR	%r7, %r31, $8	# build/example.ml#2080:28->2080:29
	LDR	%r28, %r31, $12	# build/example.ml#2080:28->2080:29
	LDR	%r27, %r31, $16	# build/example.ml#2080:28->2080:29
	FLDR	%fr9, %r31, $20	# build/example.ml#2080:28->2080:29
	LINK	# build/example.ml#2080:28->2080:29
create_float5x3array.2986:
	SDR	%r9, %r31, $0	# build/example.ml#2068:26->2068:27
	SDR	%r8, %r31, $4	# build/example.ml#2068:26->2068:27
	SDR	%r7, %r31, $8	# build/example.ml#2068:26->2068:27
	FSDR	%fr9, %r31, $12	# build/example.ml#2068:26->2068:27
	MVI	%r9, $3	# build/example.ml#2068:26->2068:27
	FLDA	%fr9, $l.7787	# build/example.ml#2068:28->2068:31
	MV	%r1, %r9	# build/example.ml#2068:13->2068:31
	FMV	%fr0, %fr9	# build/example.ml#2068:13->2068:31
	ADDI	%r31, %r31, $16	# build/example.ml#2068:13->2068:31
	ADDI	%r31, %r31, $4	# build/example.ml#2068:13->2068:31
	SIP	# build/example.ml#2068:13->2068:31
	J	$min_caml_create_float_array	# build/example.ml#2068:13->2068:31
	ADDI	%r31, %r31, $-16	# build/example.ml#2068:13->2068:31
	MV	%r9, %r0	# build/example.ml#2068:13->2068:31
	MVI	%r8, $5	# build/example.ml#2069:28->2069:29
	MV	%r2, %r9	# build/example.ml#2069:15->2069:33
	MV	%r1, %r8	# build/example.ml#2069:15->2069:33
	ADDI	%r31, %r31, $16	# build/example.ml#2069:15->2069:33
	ADDI	%r31, %r31, $4	# build/example.ml#2069:15->2069:33
	SIP	# build/example.ml#2069:15->2069:33
	J	$min_caml_create_int_array	# build/example.ml#2069:15->2069:33
	ADDI	%r31, %r31, $-16	# build/example.ml#2069:15->2069:33
	MV	%r9, %r0	# build/example.ml#2069:15->2069:33
	MVI	%r7, $1	# build/example.ml#2070:10->2070:11
	MVI	%r8, $3	# build/example.ml#2070:29->2070:30
	FLDA	%fr9, $l.7787	# build/example.ml#2070:31->2070:34
	MV	%r1, %r8	# build/example.ml#2070:16->2070:34
	FMV	%fr0, %fr9	# build/example.ml#2070:16->2070:34
	ADDI	%r31, %r31, $16	# build/example.ml#2070:16->2070:34
	ADDI	%r31, %r31, $4	# build/example.ml#2070:16->2070:34
	SIP	# build/example.ml#2070:16->2070:34
	J	$min_caml_create_float_array	# build/example.ml#2070:16->2070:34
	ADDI	%r31, %r31, $-16	# build/example.ml#2070:16->2070:34
	MV	%r8, %r0	# build/example.ml#2070:16->2070:34
	SDD	%r8, %r9, $4, %r7	# build/example.ml#2070:3->2070:34
	MVI	%r7, $2	# build/example.ml#2071:10->2071:11
	MVI	%r8, $3	# build/example.ml#2071:29->2071:30
	FLDA	%fr9, $l.7787	# build/example.ml#2071:31->2071:34
	MV	%r1, %r8	# build/example.ml#2071:16->2071:34
	FMV	%fr0, %fr9	# build/example.ml#2071:16->2071:34
	ADDI	%r31, %r31, $16	# build/example.ml#2071:16->2071:34
	ADDI	%r31, %r31, $4	# build/example.ml#2071:16->2071:34
	SIP	# build/example.ml#2071:16->2071:34
	J	$min_caml_create_float_array	# build/example.ml#2071:16->2071:34
	ADDI	%r31, %r31, $-16	# build/example.ml#2071:16->2071:34
	MV	%r8, %r0	# build/example.ml#2071:16->2071:34
	SDD	%r8, %r9, $4, %r7	# build/example.ml#2071:3->2071:34
	MVI	%r7, $3	# build/example.ml#2072:10->2072:11
	MVI	%r8, $3	# build/example.ml#2072:29->2072:30
	FLDA	%fr9, $l.7787	# build/example.ml#2072:31->2072:34
	MV	%r1, %r8	# build/example.ml#2072:16->2072:34
	FMV	%fr0, %fr9	# build/example.ml#2072:16->2072:34
	ADDI	%r31, %r31, $16	# build/example.ml#2072:16->2072:34
	ADDI	%r31, %r31, $4	# build/example.ml#2072:16->2072:34
	SIP	# build/example.ml#2072:16->2072:34
	J	$min_caml_create_float_array	# build/example.ml#2072:16->2072:34
	ADDI	%r31, %r31, $-16	# build/example.ml#2072:16->2072:34
	MV	%r8, %r0	# build/example.ml#2072:16->2072:34
	SDD	%r8, %r9, $4, %r7	# build/example.ml#2072:3->2072:34
	MVI	%r7, $4	# build/example.ml#2073:10->2073:11
	MVI	%r8, $3	# build/example.ml#2073:29->2073:30
	FLDA	%fr9, $l.7787	# build/example.ml#2073:31->2073:34
	MV	%r1, %r8	# build/example.ml#2073:16->2073:34
	FMV	%fr0, %fr9	# build/example.ml#2073:16->2073:34
	ADDI	%r31, %r31, $16	# build/example.ml#2073:16->2073:34
	ADDI	%r31, %r31, $4	# build/example.ml#2073:16->2073:34
	SIP	# build/example.ml#2073:16->2073:34
	J	$min_caml_create_float_array	# build/example.ml#2073:16->2073:34
	ADDI	%r31, %r31, $-16	# build/example.ml#2073:16->2073:34
	MV	%r8, %r0	# build/example.ml#2073:16->2073:34
	SDD	%r8, %r9, $4, %r7	# build/example.ml#2073:3->2073:34
	MV	%r0, %r9	# build/example.ml#2074:3->2074:8
	LDR	%r9, %r31, $0	# build/example.ml#2068:26->2068:27
	LDR	%r8, %r31, $4	# build/example.ml#2068:26->2068:27
	LDR	%r7, %r31, $8	# build/example.ml#2068:26->2068:27
	FLDR	%fr9, %r31, $12	# build/example.ml#2068:26->2068:27
	LINK	# build/example.ml#2068:26->2068:27
scan_line.2980:
	SDR	%r9, %r31, $0	# build/example.ml#2051:10->2051:20
	SDR	%r8, %r31, $4	# build/example.ml#2051:10->2051:20
	MVI	%r8, $min_caml_image_size	# build/example.ml#2051:10->2051:20
	MVI	%r9, $1	# build/example.ml#2051:22->2051:23
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1858:16->1858:30
	CMP	%r1, %r9	# build/example.ml#2051:3->2058:13
	JZ	$if_lt.11495	# build/example.ml#2051:3->2058:13
	J	$if_lt_cont.11496	# build/example.ml#2051:3->2058:13
if_lt.11495:
	MVI	%r9, $1	# build/example.ml#2053:24->2053:25
	LDD	%r8, %r8, $4, %r9	# build/example.ml#1858:16->1858:30
	MVI	%r9, $1	# build/example.ml#2053:29->2053:30
	SUB	%r9, %r8, %r9	# build/example.ml#2053:12->2053:30
	CMP	%r1, %r9	# build/example.ml#2053:5->2055:12
	JZ	$if_lt.11497	# build/example.ml#2053:5->2055:12
	J	$if_lt_cont.11498	# build/example.ml#2053:5->2055:12
if_lt.11497:
	MVI	%r9, $1	# build/example.ml#2054:31->2054:32
	ADD	%r9, %r1, %r9	# build/example.ml#2054:27->2054:32
	SDR	%r5, %r31, $8	# build/example.ml#2054:7->2054:42
	SDR	%r4, %r31, $12	# build/example.ml#2054:7->2054:42
	SDR	%r3, %r31, $16	# build/example.ml#2054:7->2054:42
	SDR	%r2, %r31, $20	# build/example.ml#2054:7->2054:42
	SDR	%r1, %r31, $24	# build/example.ml#2054:7->2054:42
	MV	%r3, %r5	# build/example.ml#2054:7->2054:42
	MV	%r2, %r9	# build/example.ml#2054:7->2054:42
	MV	%r1, %r4	# build/example.ml#2054:7->2054:42
	ADDI	%r31, %r31, $28	# build/example.ml#2054:7->2054:42
	ADDI	%r31, %r31, $4	# build/example.ml#2054:7->2054:42
	SIP	# build/example.ml#2054:7->2054:42
	J	$pretrace_line.2970	# build/example.ml#2054:7->2054:42
	ADDI	%r31, %r31, $-28	# build/example.ml#2054:7->2054:42
	LDR	%r5, %r31, $8	# build/example.ml#2054:7->2054:42
	LDR	%r4, %r31, $12	# build/example.ml#2054:7->2054:42
	LDR	%r3, %r31, $16	# build/example.ml#2054:7->2054:42
	LDR	%r2, %r31, $20	# build/example.ml#2054:7->2054:42
	LDR	%r1, %r31, $24	# build/example.ml#2054:7->2054:42
if_lt_cont.11498:
	MVI	%r9, $0	# build/example.ml#2056:16->2056:17
	SDR	%r5, %r31, $28	# build/example.ml#2056:5->2056:33
	SDR	%r4, %r31, $32	# build/example.ml#2056:5->2056:33
	SDR	%r3, %r31, $36	# build/example.ml#2056:5->2056:33
	SDR	%r2, %r31, $40	# build/example.ml#2056:5->2056:33
	SDR	%r1, %r31, $44	# build/example.ml#2056:5->2056:33
	MV	%r5, %r4	# build/example.ml#2056:5->2056:33
	MV	%r4, %r3	# build/example.ml#2056:5->2056:33
	MV	%r3, %r2	# build/example.ml#2056:5->2056:33
	MV	%r2, %r1	# build/example.ml#2056:5->2056:33
	MV	%r1, %r9	# build/example.ml#2056:5->2056:33
	ADDI	%r31, %r31, $48	# build/example.ml#2056:5->2056:33
	ADDI	%r31, %r31, $4	# build/example.ml#2056:5->2056:33
	SIP	# build/example.ml#2056:5->2056:33
	J	$scan_pixel.2974	# build/example.ml#2056:5->2056:33
	ADDI	%r31, %r31, $-48	# build/example.ml#2056:5->2056:33
	LDR	%r5, %r31, $28	# build/example.ml#2056:5->2056:33
	LDR	%r4, %r31, $32	# build/example.ml#2056:5->2056:33
	LDR	%r3, %r31, $36	# build/example.ml#2056:5->2056:33
	LDR	%r2, %r31, $40	# build/example.ml#2056:5->2056:33
	LDR	%r1, %r31, $44	# build/example.ml#2056:5->2056:33
	MVI	%r9, $1	# build/example.ml#2057:20->2057:21
	ADD	%r8, %r1, %r9	# build/example.ml#2057:16->2057:21
	MVI	%r9, $2	# build/example.ml#2057:56->2057:57
	SDR	%r2, %r31, $48	# build/example.ml#2057:38->2057:57
	SDR	%r1, %r31, $52	# build/example.ml#2057:38->2057:57
	MV	%r2, %r9	# build/example.ml#2057:38->2057:57
	MV	%r1, %r5	# build/example.ml#2057:38->2057:57
	ADDI	%r31, %r31, $56	# build/example.ml#2057:38->2057:57
	ADDI	%r31, %r31, $4	# build/example.ml#2057:38->2057:57
	SIP	# build/example.ml#2057:38->2057:57
	J	$add_mod5.2570	# build/example.ml#2057:38->2057:57
	ADDI	%r31, %r31, $-56	# build/example.ml#2057:38->2057:57
	MV	%r9, %r0	# build/example.ml#2057:38->2057:57
	LDR	%r2, %r31, $48	# build/example.ml#2057:38->2057:57
	LDR	%r1, %r31, $52	# build/example.ml#2057:38->2057:57
	SDR	%r5, %r31, $56	# build/example.ml#2057:5->2057:58
	SDR	%r4, %r31, $60	# build/example.ml#2057:5->2057:58
	SDR	%r3, %r31, $64	# build/example.ml#2057:5->2057:58
	SDR	%r2, %r31, $68	# build/example.ml#2057:5->2057:58
	SDR	%r1, %r31, $72	# build/example.ml#2057:5->2057:58
	MV	%r5, %r9	# build/example.ml#2057:5->2057:58
	MV	%r1, %r8	# build/example.ml#2057:5->2057:58
	SDR	%r4, %r31, $76	# build/example.ml#2057:5->2057:58
	MV	%r4, %r2	# build/example.ml#2057:5->2057:58
	MV	%r2, %r3	# build/example.ml#2057:5->2057:58
	LDR	%r3, %r31, $76	# build/example.ml#2057:5->2057:58
	ADDI	%r31, %r31, $76	# build/example.ml#2057:5->2057:58
	ADDI	%r31, %r31, $4	# build/example.ml#2057:5->2057:58
	SIP	# build/example.ml#2057:5->2057:58
	J	$scan_line.2980	# build/example.ml#2057:5->2057:58
	ADDI	%r31, %r31, $-76	# build/example.ml#2057:5->2057:58
	LDR	%r5, %r31, $56	# build/example.ml#2057:5->2057:58
	LDR	%r4, %r31, $60	# build/example.ml#2057:5->2057:58
	LDR	%r3, %r31, $64	# build/example.ml#2057:5->2057:58
	LDR	%r2, %r31, $68	# build/example.ml#2057:5->2057:58
	LDR	%r1, %r31, $72	# build/example.ml#2057:5->2057:58
if_lt_cont.11496:
	LDR	%r9, %r31, $0	# build/example.ml#2051:10->2051:20
	LDR	%r8, %r31, $4	# build/example.ml#2051:10->2051:20
	LINK	# build/example.ml#2051:10->2051:20
scan_pixel.2974:
	SDR	%r9, %r31, $0	# build/example.ml#2030:10->2030:20
	SDR	%r8, %r31, $4	# build/example.ml#2030:10->2030:20
	SDR	%r7, %r31, $8	# build/example.ml#2030:10->2030:20
	SDR	%r28, %r31, $12	# build/example.ml#2030:10->2030:20
	SDR	%r27, %r31, $16	# build/example.ml#2030:10->2030:20
	SDR	%r26, %r31, $20	# build/example.ml#2030:10->2030:20
	SDR	%r25, %r31, $24	# build/example.ml#2030:10->2030:20
	SDR	%r24, %r31, $28	# build/example.ml#2030:10->2030:20
	SDR	%r23, %r31, $32	# build/example.ml#2030:10->2030:20
	MVI	%r8, $min_caml_image_size	# build/example.ml#2030:10->2030:20
	MVI	%r9, $0	# build/example.ml#2030:22->2030:23
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1858:16->1858:30
	CMP	%r1, %r9	# build/example.ml#2030:3->2045:13
	JZ	$if_lt.11499	# build/example.ml#2030:3->2045:13
	J	$if_lt_cont.11500	# build/example.ml#2030:3->2045:13
if_lt.11499:
	MVI	%r23, $min_caml_rgb	# build/example.ml#2033:12->2033:15
	LDD	%r25, %r4, $4, %r1	# build/example.ml#2033:23->2033:30
	LDR	%r9, %r25, $28	# build/example.ml#2033:17->2033:30
	LDR	%r8, %r25, $24	# build/example.ml#2033:17->2033:30
	LDR	%r7, %r25, $20	# build/example.ml#2033:17->2033:30
	LDR	%r6, %r25, $16	# build/example.ml#2033:17->2033:30
	LDR	%r28, %r25, $12	# build/example.ml#2033:17->2033:30
	LDR	%r27, %r25, $8	# build/example.ml#2033:17->2033:30
	LDR	%r26, %r25, $4	# build/example.ml#2033:17->2033:30
	LDR	%r25, %r25, $0	# build/example.ml#2033:17->2033:30
	MV	%r24, %r25	# build/example.ml#368:3->370:8
	SDR	%r2, %r31, $36	# build/example.ml#2033:5->2033:31
	SDR	%r1, %r31, $40	# build/example.ml#2033:5->2033:31
	MV	%r2, %r24	# build/example.ml#2033:5->2033:31
	MV	%r1, %r23	# build/example.ml#2033:5->2033:31
	ADDI	%r31, %r31, $44	# build/example.ml#2033:5->2033:31
	ADDI	%r31, %r31, $4	# build/example.ml#2033:5->2033:31
	SIP	# build/example.ml#2033:5->2033:31
	J	$veccpy.2583	# build/example.ml#2033:5->2033:31
	ADDI	%r31, %r31, $-44	# build/example.ml#2033:5->2033:31
	LDR	%r2, %r31, $36	# build/example.ml#2033:5->2033:31
	LDR	%r1, %r31, $40	# build/example.ml#2033:5->2033:31
	SDR	%r3, %r31, $44	# build/example.ml#2036:8->2036:32
	SDR	%r2, %r31, $48	# build/example.ml#2036:8->2036:32
	SDR	%r1, %r31, $52	# build/example.ml#2036:8->2036:32
	MV	%r3, %r5	# build/example.ml#2036:8->2036:32
	ADDI	%r31, %r31, $56	# build/example.ml#2036:8->2036:32
	ADDI	%r31, %r31, $4	# build/example.ml#2036:8->2036:32
	SIP	# build/example.ml#2036:8->2036:32
	J	$neighbors_exist.2934	# build/example.ml#2036:8->2036:32
	ADDI	%r31, %r31, $-56	# build/example.ml#2036:8->2036:32
	MV	%r23, %r0	# build/example.ml#2036:8->2036:32
	LDR	%r3, %r31, $44	# build/example.ml#2036:8->2036:32
	LDR	%r2, %r31, $48	# build/example.ml#2036:8->2036:32
	LDR	%r1, %r31, $52	# build/example.ml#2036:8->2036:32
	MVI	%r24, $0	# build/example.ml#2036:5->2039:37
	CEQ	%r23, %r24	# build/example.ml#2036:5->2039:37
	JZ	$if_eq.11501	# build/example.ml#2036:5->2039:37
	MVI	%r9, $0	# build/example.ml#2037:47->2037:48
	SDR	%r6, %r31, $56	# build/example.ml#2037:7->2037:48
	SDR	%r5, %r31, $60	# build/example.ml#2037:7->2037:48
	SDR	%r4, %r31, $64	# build/example.ml#2037:7->2037:48
	SDR	%r3, %r31, $68	# build/example.ml#2037:7->2037:48
	SDR	%r2, %r31, $72	# build/example.ml#2037:7->2037:48
	SDR	%r1, %r31, $76	# build/example.ml#2037:7->2037:48
	MV	%r6, %r9	# build/example.ml#2037:7->2037:48
	ADDI	%r31, %r31, $80	# build/example.ml#2037:7->2037:48
	ADDI	%r31, %r31, $4	# build/example.ml#2037:7->2037:48
	SIP	# build/example.ml#2037:7->2037:48
	J	$try_exploit_neighbors.2947	# build/example.ml#2037:7->2037:48
	ADDI	%r31, %r31, $-80	# build/example.ml#2037:7->2037:48
	LDR	%r6, %r31, $56	# build/example.ml#2037:7->2037:48
	LDR	%r5, %r31, $60	# build/example.ml#2037:7->2037:48
	LDR	%r4, %r31, $64	# build/example.ml#2037:7->2037:48
	LDR	%r3, %r31, $68	# build/example.ml#2037:7->2037:48
	LDR	%r2, %r31, $72	# build/example.ml#2037:7->2037:48
	LDR	%r1, %r31, $76	# build/example.ml#2037:7->2037:48
	J	$if_eq_cont.11502	# build/example.ml#2036:5->2039:37
if_eq.11501:
	MVI	%r24, $0	# build/example.ml#2039:36->2039:37
	SDR	%r6, %r31, $80	# build/example.ml#2039:7->2039:37
	SDR	%r5, %r31, $84	# build/example.ml#2039:7->2039:37
	SDR	%r4, %r31, $88	# build/example.ml#2039:7->2039:37
	SDR	%r3, %r31, $92	# build/example.ml#2039:7->2039:37
	SDR	%r2, %r31, $96	# build/example.ml#2039:7->2039:37
	SDR	%r1, %r31, $100	# build/example.ml#2039:7->2039:37
	MV	%r5, %r6	# build/example.ml#2039:7->2039:37
	MV	%r4, %r28	# build/example.ml#2039:7->2039:37
	MV	%r3, %r27	# build/example.ml#2039:7->2039:37
	MV	%r2, %r26	# build/example.ml#2039:7->2039:37
	MV	%r1, %r25	# build/example.ml#2039:7->2039:37
	MV	%r6, %r7	# build/example.ml#2039:7->2039:37
	MV	%r7, %r8	# build/example.ml#2039:7->2039:37
	MV	%r8, %r9	# build/example.ml#2039:7->2039:37
	MV	%r9, %r24	# build/example.ml#2039:7->2039:37
	ADDI	%r31, %r31, $104	# build/example.ml#2039:7->2039:37
	ADDI	%r31, %r31, $4	# build/example.ml#2039:7->2039:37
	SIP	# build/example.ml#2039:7->2039:37
	J	$do_without_neighbors.2931	# build/example.ml#2039:7->2039:37
	ADDI	%r31, %r31, $-104	# build/example.ml#2039:7->2039:37
	LDR	%r6, %r31, $80	# build/example.ml#2039:7->2039:37
	LDR	%r5, %r31, $84	# build/example.ml#2039:7->2039:37
	LDR	%r4, %r31, $88	# build/example.ml#2039:7->2039:37
	LDR	%r3, %r31, $92	# build/example.ml#2039:7->2039:37
	LDR	%r2, %r31, $96	# build/example.ml#2039:7->2039:37
	LDR	%r1, %r31, $100	# build/example.ml#2039:7->2039:37
if_eq_cont.11502:
	SDR	%r6, %r31, $104	# build/example.ml#2042:5->2042:17
	SDR	%r5, %r31, $108	# build/example.ml#2042:5->2042:17
	SDR	%r4, %r31, $112	# build/example.ml#2042:5->2042:17
	SDR	%r3, %r31, $116	# build/example.ml#2042:5->2042:17
	SDR	%r2, %r31, $120	# build/example.ml#2042:5->2042:17
	SDR	%r1, %r31, $124	# build/example.ml#2042:5->2042:17
	ADDI	%r31, %r31, $128	# build/example.ml#2042:5->2042:17
	ADDI	%r31, %r31, $4	# build/example.ml#2042:5->2042:17
	SIP	# build/example.ml#2042:5->2042:17
	J	$write_rgb.2958	# build/example.ml#2042:5->2042:17
	ADDI	%r31, %r31, $-128	# build/example.ml#2042:5->2042:17
	LDR	%r6, %r31, $104	# build/example.ml#2042:5->2042:17
	LDR	%r5, %r31, $108	# build/example.ml#2042:5->2042:17
	LDR	%r4, %r31, $112	# build/example.ml#2042:5->2042:17
	LDR	%r3, %r31, $116	# build/example.ml#2042:5->2042:17
	LDR	%r2, %r31, $120	# build/example.ml#2042:5->2042:17
	LDR	%r1, %r31, $124	# build/example.ml#2042:5->2042:17
	MVI	%r9, $1	# build/example.ml#2044:21->2044:22
	ADD	%r9, %r1, %r9	# build/example.ml#2044:17->2044:22
	SDR	%r6, %r31, $128	# build/example.ml#2044:5->2044:39
	SDR	%r5, %r31, $132	# build/example.ml#2044:5->2044:39
	SDR	%r4, %r31, $136	# build/example.ml#2044:5->2044:39
	SDR	%r3, %r31, $140	# build/example.ml#2044:5->2044:39
	SDR	%r2, %r31, $144	# build/example.ml#2044:5->2044:39
	SDR	%r1, %r31, $148	# build/example.ml#2044:5->2044:39
	MV	%r1, %r9	# build/example.ml#2044:5->2044:39
	ADDI	%r31, %r31, $152	# build/example.ml#2044:5->2044:39
	ADDI	%r31, %r31, $4	# build/example.ml#2044:5->2044:39
	SIP	# build/example.ml#2044:5->2044:39
	J	$scan_pixel.2974	# build/example.ml#2044:5->2044:39
	ADDI	%r31, %r31, $-152	# build/example.ml#2044:5->2044:39
	LDR	%r6, %r31, $128	# build/example.ml#2044:5->2044:39
	LDR	%r5, %r31, $132	# build/example.ml#2044:5->2044:39
	LDR	%r4, %r31, $136	# build/example.ml#2044:5->2044:39
	LDR	%r3, %r31, $140	# build/example.ml#2044:5->2044:39
	LDR	%r2, %r31, $144	# build/example.ml#2044:5->2044:39
	LDR	%r1, %r31, $148	# build/example.ml#2044:5->2044:39
if_lt_cont.11500:
	LDR	%r9, %r31, $0	# build/example.ml#2030:10->2030:20
	LDR	%r8, %r31, $4	# build/example.ml#2030:10->2030:20
	LDR	%r7, %r31, $8	# build/example.ml#2030:10->2030:20
	LDR	%r28, %r31, $12	# build/example.ml#2030:10->2030:20
	LDR	%r27, %r31, $16	# build/example.ml#2030:10->2030:20
	LDR	%r26, %r31, $20	# build/example.ml#2030:10->2030:20
	LDR	%r25, %r31, $24	# build/example.ml#2030:10->2030:20
	LDR	%r24, %r31, $28	# build/example.ml#2030:10->2030:20
	LDR	%r23, %r31, $32	# build/example.ml#2030:10->2030:20
	LINK	# build/example.ml#2030:10->2030:20
pretrace_line.2970:
	SDR	%r9, %r31, $0	# build/example.ml#2014:15->2014:25
	SDR	%r8, %r31, $4	# build/example.ml#2014:15->2014:25
	SDR	%r7, %r31, $8	# build/example.ml#2014:15->2014:25
	FSDR	%fr9, %r31, $12	# build/example.ml#2014:15->2014:25
	FSDR	%fr8, %r31, $16	# build/example.ml#2014:15->2014:25
	FSDR	%fr7, %r31, $20	# build/example.ml#2014:15->2014:25
	MVI	%r8, $min_caml_scan_pitch	# build/example.ml#2014:15->2014:25
	MVI	%r9, $0	# build/example.ml#2014:27->2014:28
	FLDD	%fr8, %r8, $4, %r9	# build/example.ml#1991:17->1991:31
	MVI	%r8, $min_caml_image_center	# build/example.ml#2014:51->2014:63
	MVI	%r9, $1	# build/example.ml#2014:65->2014:66
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1991:53->1991:69
	SUB	%r9, %r2, %r9	# build/example.ml#2014:47->2014:67
	SDR	%r3, %r31, $24	# build/example.ml#2014:33->2014:68
	SDR	%r2, %r31, $28	# build/example.ml#2014:33->2014:68
	SDR	%r1, %r31, $32	# build/example.ml#2014:33->2014:68
	FSDR	%fr6, %r31, $36	# build/example.ml#2014:33->2014:68
	MV	%r1, %r9	# build/example.ml#2014:33->2014:68
	ADDI	%r31, %r31, $40	# build/example.ml#2014:33->2014:68
	ADDI	%r31, %r31, $4	# build/example.ml#2014:33->2014:68
	SIP	# build/example.ml#2014:33->2014:68
	J	$min_caml_float_of_int	# build/example.ml#2014:33->2014:68
	ADDI	%r31, %r31, $-40	# build/example.ml#2014:33->2014:68
	FMV	%fr9, %fr0	# build/example.ml#2014:33->2014:68
	LDR	%r3, %r31, $24	# build/example.ml#2014:33->2014:68
	LDR	%r2, %r31, $28	# build/example.ml#2014:33->2014:68
	LDR	%r1, %r31, $32	# build/example.ml#2014:33->2014:68
	FLDR	%fr6, %r31, $36	# build/example.ml#2014:33->2014:68
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#2014:15->2014:68
	MVI	%r7, $min_caml_screeny_dir	# build/example.ml#2017:22->2017:33
	MVI	%r9, $0	# build/example.ml#2017:35->2017:36
	FLDD	%fr9, %r7, $4, %r9	# build/example.ml#509:3->509:43
	FMUL	%fr8, %fr7, %fr9	# build/example.ml#2017:13->2017:37
	MVI	%r8, $min_caml_screenz_dir	# build/example.ml#2017:41->2017:52
	MVI	%r9, $0	# build/example.ml#2017:54->2017:55
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#501:3->501:47
	FADD	%fr8, %fr8, %fr9	# build/example.ml#2017:13->2017:56
	MVI	%r9, $1	# build/example.ml#2018:35->2018:36
	FLDD	%fr9, %r7, $4, %r9	# build/example.ml#509:3->509:43
	FMUL	%fr6, %fr7, %fr9	# build/example.ml#2018:13->2018:37
	MVI	%r9, $1	# build/example.ml#2018:54->2018:55
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#501:3->501:47
	FADD	%fr9, %fr6, %fr9	# build/example.ml#2018:13->2018:56
	MVI	%r9, $2	# build/example.ml#2019:35->2019:36
	FLDD	%fr6, %r7, $4, %r9	# build/example.ml#509:3->509:43
	FMUL	%fr6, %fr7, %fr6	# build/example.ml#2019:13->2019:37
	MVI	%r9, $2	# build/example.ml#2019:54->2019:55
	FLDD	%fr7, %r8, $4, %r9	# build/example.ml#501:3->501:47
	FADD	%fr7, %fr6, %fr7	# build/example.ml#2019:13->2019:56
	MVI	%r8, $min_caml_image_size	# build/example.ml#2020:25->2020:35
	MVI	%r9, $0	# build/example.ml#2020:37->2020:38
	LDD	%r8, %r8, $4, %r9	# build/example.ml#1858:16->1858:30
	MVI	%r9, $1	# build/example.ml#2020:42->2020:43
	SUB	%r9, %r8, %r9	# build/example.ml#2020:25->2020:43
	SDR	%r3, %r31, $40	# build/example.ml#2020:3->2020:65
	SDR	%r2, %r31, $44	# build/example.ml#2020:3->2020:65
	SDR	%r1, %r31, $48	# build/example.ml#2020:3->2020:65
	FSDR	%fr6, %r31, $52	# build/example.ml#2020:3->2020:65
	MV	%r2, %r9	# build/example.ml#2020:3->2020:65
	FMV	%fr2, %fr7	# build/example.ml#2020:3->2020:65
	FMV	%fr1, %fr9	# build/example.ml#2020:3->2020:65
	FMV	%fr0, %fr8	# build/example.ml#2020:3->2020:65
	ADDI	%r31, %r31, $56	# build/example.ml#2020:3->2020:65
	ADDI	%r31, %r31, $4	# build/example.ml#2020:3->2020:65
	SIP	# build/example.ml#2020:3->2020:65
	J	$pretrace_pixels.2963	# build/example.ml#2020:3->2020:65
	ADDI	%r31, %r31, $-56	# build/example.ml#2020:3->2020:65
	LDR	%r3, %r31, $40	# build/example.ml#2020:3->2020:65
	LDR	%r2, %r31, $44	# build/example.ml#2020:3->2020:65
	LDR	%r1, %r31, $48	# build/example.ml#2020:3->2020:65
	FLDR	%fr6, %r31, $52	# build/example.ml#2020:3->2020:65
	LDR	%r9, %r31, $0	# build/example.ml#2014:15->2014:25
	LDR	%r8, %r31, $4	# build/example.ml#2014:15->2014:25
	LDR	%r7, %r31, $8	# build/example.ml#2014:15->2014:25
	FLDR	%fr9, %r31, $12	# build/example.ml#2014:15->2014:25
	FLDR	%fr8, %r31, $16	# build/example.ml#2014:15->2014:25
	FLDR	%fr7, %r31, $20	# build/example.ml#2014:15->2014:25
	LINK	# build/example.ml#2014:15->2014:25
pretrace_pixels.2963:
	SDR	%r9, %r31, $0	# build/example.ml#1989:11->1989:12
	SDR	%r8, %r31, $4	# build/example.ml#1989:11->1989:12
	SDR	%r7, %r31, $8	# build/example.ml#1989:11->1989:12
	SDR	%r28, %r31, $12	# build/example.ml#1989:11->1989:12
	SDR	%r27, %r31, $16	# build/example.ml#1989:11->1989:12
	SDR	%r26, %r31, $20	# build/example.ml#1989:11->1989:12
	SDR	%r25, %r31, $24	# build/example.ml#1989:11->1989:12
	SDR	%r24, %r31, $28	# build/example.ml#1989:11->1989:12
	FSDR	%fr9, %r31, $32	# build/example.ml#1989:11->1989:12
	FSDR	%fr8, %r31, $36	# build/example.ml#1989:11->1989:12
	MVI	%r9, $0	# build/example.ml#1989:11->1989:12
	CMP	%r2, %r9	# build/example.ml#1989:3->2009:13
	JZ	$if_lt.11503	# build/example.ml#1989:3->2009:13
	MVI	%r8, $min_caml_scan_pitch	# build/example.ml#1991:17->1991:27
	MVI	%r9, $0	# build/example.ml#1991:29->1991:30
	FLDD	%fr8, %r8, $4, %r9	# build/example.ml#1991:17->1991:31
	MVI	%r8, $min_caml_image_center	# build/example.ml#1991:53->1991:65
	MVI	%r9, $0	# build/example.ml#1991:67->1991:68
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1991:53->1991:69
	SUB	%r9, %r2, %r9	# build/example.ml#1991:49->1991:69
	SDR	%r6, %r31, $40	# build/example.ml#1991:35->1991:70
	SDR	%r5, %r31, $44	# build/example.ml#1991:35->1991:70
	SDR	%r4, %r31, $48	# build/example.ml#1991:35->1991:70
	SDR	%r3, %r31, $52	# build/example.ml#1991:35->1991:70
	SDR	%r2, %r31, $56	# build/example.ml#1991:35->1991:70
	SDR	%r1, %r31, $60	# build/example.ml#1991:35->1991:70
	FSDR	%fr2, %r31, $64	# build/example.ml#1991:35->1991:70
	FSDR	%fr1, %r31, $68	# build/example.ml#1991:35->1991:70
	MV	%r1, %r9	# build/example.ml#1991:35->1991:70
	ADDI	%r31, %r31, $72	# build/example.ml#1991:35->1991:70
	ADDI	%r31, %r31, $4	# build/example.ml#1991:35->1991:70
	SIP	# build/example.ml#1991:35->1991:70
	J	$min_caml_float_of_int	# build/example.ml#1991:35->1991:70
	ADDI	%r31, %r31, $-72	# build/example.ml#1991:35->1991:70
	FMV	%fr9, %fr0	# build/example.ml#1991:35->1991:70
	LDR	%r6, %r31, $40	# build/example.ml#1991:35->1991:70
	LDR	%r5, %r31, $44	# build/example.ml#1991:35->1991:70
	LDR	%r4, %r31, $48	# build/example.ml#1991:35->1991:70
	LDR	%r3, %r31, $52	# build/example.ml#1991:35->1991:70
	LDR	%r2, %r31, $56	# build/example.ml#1991:35->1991:70
	LDR	%r1, %r31, $60	# build/example.ml#1991:35->1991:70
	FLDR	%fr2, %r31, $64	# build/example.ml#1991:35->1991:70
	FLDR	%fr1, %r31, $68	# build/example.ml#1991:35->1991:70
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1991:17->1991:70
	MVI	%r24, $min_caml_ptrace_dirvec	# build/example.ml#1992:5->1992:18
	MVI	%r8, $0	# build/example.ml#1992:20->1992:21
	MVI	%r7, $min_caml_screenx_dir	# build/example.ml#1992:35->1992:46
	MVI	%r9, $0	# build/example.ml#1992:48->1992:49
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#505:3->505:28
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#1992:26->1992:50
	FADD	%fr8, %fr8, %fr0	# build/example.ml#1992:26->1992:57
	FSDD	%fr8, %r24, $4, %r8	# build/example.ml#1992:5->1992:57
	MVI	%r8, $1	# build/example.ml#1993:20->1993:21
	MVI	%r9, $1	# build/example.ml#1993:48->1993:49
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#505:3->505:28
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#1993:26->1993:50
	FADD	%fr8, %fr8, %fr1	# build/example.ml#1993:26->1993:57
	FSDD	%fr8, %r24, $4, %r8	# build/example.ml#1993:5->1993:57
	MVI	%r8, $2	# build/example.ml#1994:20->1994:21
	MVI	%r9, $2	# build/example.ml#1994:48->1994:49
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#505:3->505:28
	FMUL	%fr9, %fr9, %fr8	# build/example.ml#1994:26->1994:50
	FADD	%fr9, %fr9, %fr2	# build/example.ml#1994:26->1994:57
	FSDD	%fr9, %r24, $4, %r8	# build/example.ml#1994:5->1994:57
	MVI	%r9, $0	# build/example.ml#1995:31->1995:36
	SDR	%r6, %r31, $72	# build/example.ml#1995:5->1995:36
	SDR	%r5, %r31, $76	# build/example.ml#1995:5->1995:36
	SDR	%r4, %r31, $80	# build/example.ml#1995:5->1995:36
	SDR	%r3, %r31, $84	# build/example.ml#1995:5->1995:36
	SDR	%r2, %r31, $88	# build/example.ml#1995:5->1995:36
	SDR	%r1, %r31, $92	# build/example.ml#1995:5->1995:36
	FSDR	%fr2, %r31, $96	# build/example.ml#1995:5->1995:36
	FSDR	%fr1, %r31, $100	# build/example.ml#1995:5->1995:36
	MV	%r2, %r9	# build/example.ml#1995:5->1995:36
	MV	%r1, %r24	# build/example.ml#1995:5->1995:36
	ADDI	%r31, %r31, $104	# build/example.ml#1995:5->1995:36
	ADDI	%r31, %r31, $4	# build/example.ml#1995:5->1995:36
	SIP	# build/example.ml#1995:5->1995:36
	J	$vecunit_sgn.2591	# build/example.ml#1995:5->1995:36
	ADDI	%r31, %r31, $-104	# build/example.ml#1995:5->1995:36
	LDR	%r6, %r31, $72	# build/example.ml#1995:5->1995:36
	LDR	%r5, %r31, $76	# build/example.ml#1995:5->1995:36
	LDR	%r4, %r31, $80	# build/example.ml#1995:5->1995:36
	LDR	%r3, %r31, $84	# build/example.ml#1995:5->1995:36
	LDR	%r2, %r31, $88	# build/example.ml#1995:5->1995:36
	LDR	%r1, %r31, $92	# build/example.ml#1995:5->1995:36
	FLDR	%fr2, %r31, $96	# build/example.ml#1995:5->1995:36
	FLDR	%fr1, %r31, $100	# build/example.ml#1995:5->1995:36
	MVI	%r25, $min_caml_rgb	# build/example.ml#1996:14->1996:17
	FLDA	%fr9, $l.7787	# build/example.ml#66:13->66:16
	SDR	%r1, %r31, $104	# build/example.ml#66:3->66:16
	MV	%r1, %r25	# build/example.ml#66:3->66:16
	FMV	%fr0, %fr9	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $108	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $4	# build/example.ml#66:3->66:16
	SIP	# build/example.ml#66:3->66:16
	J	$vecfill.2578	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $-108	# build/example.ml#66:3->66:16
	LDR	%r1, %r31, $104	# build/example.ml#66:3->66:16
	MVI	%r8, $min_caml_startp	# build/example.ml#1997:12->1997:18
	MVI	%r9, $min_caml_viewpoint	# build/example.ml#1997:19->1997:28
	SDR	%r2, %r31, $108	# build/example.ml#1997:5->1997:28
	SDR	%r1, %r31, $112	# build/example.ml#1997:5->1997:28
	FSDR	%fr1, %r31, $116	# build/example.ml#1997:5->1997:28
	MV	%r2, %r9	# build/example.ml#1997:5->1997:28
	MV	%r1, %r8	# build/example.ml#1997:5->1997:28
	ADDI	%r31, %r31, $120	# build/example.ml#1997:5->1997:28
	ADDI	%r31, %r31, $4	# build/example.ml#1997:5->1997:28
	SIP	# build/example.ml#1997:5->1997:28
	J	$veccpy.2583	# build/example.ml#1997:5->1997:28
	ADDI	%r31, %r31, $-120	# build/example.ml#1997:5->1997:28
	LDR	%r2, %r31, $108	# build/example.ml#1997:5->1997:28
	LDR	%r1, %r31, $112	# build/example.ml#1997:5->1997:28
	FLDR	%fr1, %r31, $116	# build/example.ml#1997:5->1997:28
	MVI	%r26, $0	# build/example.ml#2000:15->2000:16
	FLDA	%fr8, $l.7785	# build/example.ml#2000:17->2000:20
	LDD	%r27, %r1, $4, %r2	# build/example.ml#2000:35->2000:43
	LDR	%r9, %r27, $28	# build/example.ml#2000:5->2000:47
	LDR	%r8, %r27, $24	# build/example.ml#2000:5->2000:47
	LDR	%r7, %r27, $20	# build/example.ml#2000:5->2000:47
	LDR	%r6, %r27, $16	# build/example.ml#2000:5->2000:47
	LDR	%r5, %r27, $12	# build/example.ml#2000:5->2000:47
	LDR	%r4, %r27, $8	# build/example.ml#2000:5->2000:47
	LDR	%r28, %r27, $4	# build/example.ml#2000:5->2000:47
	LDR	%r27, %r27, $0	# build/example.ml#2000:5->2000:47
	FLDA	%fr9, $l.7787	# build/example.ml#2000:44->2000:47
	SDR	%r6, %r31, $120	# build/example.ml#2000:5->2000:47
	SDR	%r5, %r31, $124	# build/example.ml#2000:5->2000:47
	SDR	%r4, %r31, $128	# build/example.ml#2000:5->2000:47
	SDR	%r3, %r31, $132	# build/example.ml#2000:5->2000:47
	SDR	%r2, %r31, $136	# build/example.ml#2000:5->2000:47
	SDR	%r1, %r31, $140	# build/example.ml#2000:5->2000:47
	FSDR	%fr2, %r31, $144	# build/example.ml#2000:5->2000:47
	FSDR	%fr1, %r31, $148	# build/example.ml#2000:5->2000:47
	MV	%r10, %r9	# build/example.ml#2000:5->2000:47
	MV	%r3, %r27	# build/example.ml#2000:5->2000:47
	MV	%r2, %r24	# build/example.ml#2000:5->2000:47
	MV	%r1, %r26	# build/example.ml#2000:5->2000:47
	MV	%r9, %r8	# build/example.ml#2000:5->2000:47
	MV	%r8, %r7	# build/example.ml#2000:5->2000:47
	MV	%r7, %r6	# build/example.ml#2000:5->2000:47
	MV	%r6, %r5	# build/example.ml#2000:5->2000:47
	MV	%r5, %r4	# build/example.ml#2000:5->2000:47
	MV	%r4, %r28	# build/example.ml#2000:5->2000:47
	FMV	%fr1, %fr9	# build/example.ml#2000:5->2000:47
	FMV	%fr0, %fr8	# build/example.ml#2000:5->2000:47
	ADDI	%r31, %r31, $152	# build/example.ml#2000:5->2000:47
	ADDI	%r31, %r31, $4	# build/example.ml#2000:5->2000:47
	SIP	# build/example.ml#2000:5->2000:47
	J	$trace_ray.2900	# build/example.ml#2000:5->2000:47
	ADDI	%r31, %r31, $-152	# build/example.ml#2000:5->2000:47
	LDR	%r6, %r31, $120	# build/example.ml#2000:5->2000:47
	LDR	%r5, %r31, $124	# build/example.ml#2000:5->2000:47
	LDR	%r4, %r31, $128	# build/example.ml#2000:5->2000:47
	LDR	%r3, %r31, $132	# build/example.ml#2000:5->2000:47
	LDR	%r2, %r31, $136	# build/example.ml#2000:5->2000:47
	LDR	%r1, %r31, $140	# build/example.ml#2000:5->2000:47
	FLDR	%fr2, %r31, $144	# build/example.ml#2000:5->2000:47
	FLDR	%fr1, %r31, $148	# build/example.ml#2000:5->2000:47
	MV	%r26, %r27	# build/example.ml#368:3->370:8
	SDR	%r2, %r31, $152	# build/example.ml#2001:5->2001:32
	SDR	%r1, %r31, $156	# build/example.ml#2001:5->2001:32
	FSDR	%fr1, %r31, $160	# build/example.ml#2001:5->2001:32
	MV	%r2, %r25	# build/example.ml#2001:5->2001:32
	MV	%r1, %r26	# build/example.ml#2001:5->2001:32
	ADDI	%r31, %r31, $164	# build/example.ml#2001:5->2001:32
	ADDI	%r31, %r31, $4	# build/example.ml#2001:5->2001:32
	SIP	# build/example.ml#2001:5->2001:32
	J	$veccpy.2583	# build/example.ml#2001:5->2001:32
	ADDI	%r31, %r31, $-164	# build/example.ml#2001:5->2001:32
	LDR	%r2, %r31, $152	# build/example.ml#2001:5->2001:32
	LDR	%r1, %r31, $156	# build/example.ml#2001:5->2001:32
	FLDR	%fr1, %r31, $160	# build/example.ml#2001:5->2001:32
	SDR	%r6, %r31, $164	# build/example.ml#2002:5->2002:37
	SDR	%r5, %r31, $168	# build/example.ml#2002:5->2002:37
	SDR	%r4, %r31, $172	# build/example.ml#2002:5->2002:37
	SDR	%r3, %r31, $176	# build/example.ml#2002:5->2002:37
	SDR	%r2, %r31, $180	# build/example.ml#2002:5->2002:37
	SDR	%r1, %r31, $184	# build/example.ml#2002:5->2002:37
	MV	%r2, %r28	# build/example.ml#2002:5->2002:37
	MV	%r1, %r27	# build/example.ml#2002:5->2002:37
	SDR	%r9, %r31, $188	# build/example.ml#2002:5->2002:37
	MV	%r9, %r3	# build/example.ml#2002:5->2002:37
	MV	%r3, %r4	# build/example.ml#2002:5->2002:37
	MV	%r4, %r5	# build/example.ml#2002:5->2002:37
	MV	%r5, %r6	# build/example.ml#2002:5->2002:37
	MV	%r6, %r7	# build/example.ml#2002:5->2002:37
	MV	%r7, %r8	# build/example.ml#2002:5->2002:37
	LDR	%r8, %r31, $188	# build/example.ml#2002:5->2002:37
	ADDI	%r31, %r31, $188	# build/example.ml#2002:5->2002:37
	ADDI	%r31, %r31, $4	# build/example.ml#2002:5->2002:37
	SIP	# build/example.ml#2002:5->2002:37
	J	$p_set_group_id.2675	# build/example.ml#2002:5->2002:37
	ADDI	%r31, %r31, $-188	# build/example.ml#2002:5->2002:37
	LDR	%r6, %r31, $164	# build/example.ml#2002:5->2002:37
	LDR	%r5, %r31, $168	# build/example.ml#2002:5->2002:37
	LDR	%r4, %r31, $172	# build/example.ml#2002:5->2002:37
	LDR	%r3, %r31, $176	# build/example.ml#2002:5->2002:37
	LDR	%r2, %r31, $180	# build/example.ml#2002:5->2002:37
	LDR	%r1, %r31, $184	# build/example.ml#2002:5->2002:37
	MVI	%r26, $0	# build/example.ml#2005:36->2005:37
	SDR	%r6, %r31, $188	# build/example.ml#2005:5->2005:37
	SDR	%r5, %r31, $192	# build/example.ml#2005:5->2005:37
	SDR	%r4, %r31, $196	# build/example.ml#2005:5->2005:37
	SDR	%r3, %r31, $200	# build/example.ml#2005:5->2005:37
	SDR	%r2, %r31, $204	# build/example.ml#2005:5->2005:37
	SDR	%r1, %r31, $208	# build/example.ml#2005:5->2005:37
	FSDR	%fr2, %r31, $212	# build/example.ml#2005:5->2005:37
	FSDR	%fr1, %r31, $216	# build/example.ml#2005:5->2005:37
	MV	%r3, %r4	# build/example.ml#2005:5->2005:37
	MV	%r2, %r28	# build/example.ml#2005:5->2005:37
	MV	%r1, %r27	# build/example.ml#2005:5->2005:37
	MV	%r4, %r5	# build/example.ml#2005:5->2005:37
	MV	%r5, %r6	# build/example.ml#2005:5->2005:37
	MV	%r6, %r7	# build/example.ml#2005:5->2005:37
	MV	%r7, %r8	# build/example.ml#2005:5->2005:37
	MV	%r8, %r9	# build/example.ml#2005:5->2005:37
	MV	%r9, %r26	# build/example.ml#2005:5->2005:37
	ADDI	%r31, %r31, $220	# build/example.ml#2005:5->2005:37
	ADDI	%r31, %r31, $4	# build/example.ml#2005:5->2005:37
	SIP	# build/example.ml#2005:5->2005:37
	J	$pretrace_diffuse_rays.2960	# build/example.ml#2005:5->2005:37
	ADDI	%r31, %r31, $-220	# build/example.ml#2005:5->2005:37
	LDR	%r6, %r31, $188	# build/example.ml#2005:5->2005:37
	LDR	%r5, %r31, $192	# build/example.ml#2005:5->2005:37
	LDR	%r4, %r31, $196	# build/example.ml#2005:5->2005:37
	LDR	%r3, %r31, $200	# build/example.ml#2005:5->2005:37
	LDR	%r2, %r31, $204	# build/example.ml#2005:5->2005:37
	LDR	%r1, %r31, $208	# build/example.ml#2005:5->2005:37
	FLDR	%fr2, %r31, $212	# build/example.ml#2005:5->2005:37
	FLDR	%fr1, %r31, $216	# build/example.ml#2005:5->2005:37
	MVI	%r9, $1	# build/example.ml#2007:29->2007:30
	SUB	%r8, %r2, %r9	# build/example.ml#2007:27->2007:30
	MVI	%r9, $1	# build/example.ml#2007:51->2007:52
	SDR	%r2, %r31, $220	# build/example.ml#2007:33->2007:52
	SDR	%r1, %r31, $224	# build/example.ml#2007:33->2007:52
	MV	%r2, %r9	# build/example.ml#2007:33->2007:52
	MV	%r1, %r3	# build/example.ml#2007:33->2007:52
	ADDI	%r31, %r31, $228	# build/example.ml#2007:33->2007:52
	ADDI	%r31, %r31, $4	# build/example.ml#2007:33->2007:52
	SIP	# build/example.ml#2007:33->2007:52
	J	$add_mod5.2570	# build/example.ml#2007:33->2007:52
	ADDI	%r31, %r31, $-228	# build/example.ml#2007:33->2007:52
	MV	%r9, %r0	# build/example.ml#2007:33->2007:52
	LDR	%r2, %r31, $220	# build/example.ml#2007:33->2007:52
	LDR	%r1, %r31, $224	# build/example.ml#2007:33->2007:52
	SDR	%r6, %r31, $228	# build/example.ml#2007:5->2007:65
	SDR	%r5, %r31, $232	# build/example.ml#2007:5->2007:65
	SDR	%r4, %r31, $236	# build/example.ml#2007:5->2007:65
	SDR	%r3, %r31, $240	# build/example.ml#2007:5->2007:65
	SDR	%r2, %r31, $244	# build/example.ml#2007:5->2007:65
	SDR	%r1, %r31, $248	# build/example.ml#2007:5->2007:65
	FSDR	%fr2, %r31, $252	# build/example.ml#2007:5->2007:65
	FSDR	%fr1, %r31, $256	# build/example.ml#2007:5->2007:65
	MV	%r3, %r9	# build/example.ml#2007:5->2007:65
	MV	%r2, %r8	# build/example.ml#2007:5->2007:65
	ADDI	%r31, %r31, $260	# build/example.ml#2007:5->2007:65
	ADDI	%r31, %r31, $4	# build/example.ml#2007:5->2007:65
	SIP	# build/example.ml#2007:5->2007:65
	J	$pretrace_pixels.2963	# build/example.ml#2007:5->2007:65
	ADDI	%r31, %r31, $-260	# build/example.ml#2007:5->2007:65
	LDR	%r6, %r31, $228	# build/example.ml#2007:5->2007:65
	LDR	%r5, %r31, $232	# build/example.ml#2007:5->2007:65
	LDR	%r4, %r31, $236	# build/example.ml#2007:5->2007:65
	LDR	%r3, %r31, $240	# build/example.ml#2007:5->2007:65
	LDR	%r2, %r31, $244	# build/example.ml#2007:5->2007:65
	LDR	%r1, %r31, $248	# build/example.ml#2007:5->2007:65
	FLDR	%fr2, %r31, $252	# build/example.ml#2007:5->2007:65
	FLDR	%fr1, %r31, $256	# build/example.ml#2007:5->2007:65
	J	$if_lt_cont.11504	# build/example.ml#1989:3->2009:13
if_lt.11503:
if_lt_cont.11504:
	LDR	%r9, %r31, $0	# build/example.ml#1989:11->1989:12
	LDR	%r8, %r31, $4	# build/example.ml#1989:11->1989:12
	LDR	%r7, %r31, $8	# build/example.ml#1989:11->1989:12
	LDR	%r28, %r31, $12	# build/example.ml#1989:11->1989:12
	LDR	%r27, %r31, $16	# build/example.ml#1989:11->1989:12
	LDR	%r26, %r31, $20	# build/example.ml#1989:11->1989:12
	LDR	%r25, %r31, $24	# build/example.ml#1989:11->1989:12
	LDR	%r24, %r31, $28	# build/example.ml#1989:11->1989:12
	FLDR	%fr9, %r31, $32	# build/example.ml#1989:11->1989:12
	FLDR	%fr8, %r31, $36	# build/example.ml#1989:11->1989:12
	LINK	# build/example.ml#1989:11->1989:12
pretrace_diffuse_rays.2960:
	SDR	%r9, %r31, $0	# build/example.ml#1959:14->1959:15
	SDR	%r8, %r31, $4	# build/example.ml#1959:14->1959:15
	SDR	%r7, %r31, $8	# build/example.ml#1959:14->1959:15
	SDR	%r28, %r31, $12	# build/example.ml#1959:14->1959:15
	SDR	%r27, %r31, $16	# build/example.ml#1959:14->1959:15
	SDR	%r26, %r31, $20	# build/example.ml#1959:14->1959:15
	SDR	%r25, %r31, $24	# build/example.ml#1959:14->1959:15
	SDR	%r24, %r31, $28	# build/example.ml#1959:14->1959:15
	FSDR	%fr9, %r31, $32	# build/example.ml#1959:14->1959:15
	MVI	%r28, $4	# build/example.ml#1959:14->1959:15
	CMP	%r28, %r9	# build/example.ml#1959:3->1983:10
	JZ	$if_lt.11505	# build/example.ml#1959:3->1983:10
	MV	%r28, %r3	# build/example.ml#383:3->385:9
	LDD	%r28, %r28, $4, %r9	# build/example.ml#1654:7->1654:61
	MVI	%r27, $0	# build/example.ml#1963:15->1963:16
	CMP	%r28, %r27	# build/example.ml#1963:5->1982:15
	JZ	$if_lt.11507	# build/example.ml#1963:5->1982:15
	MV	%r28, %r4	# build/example.ml#390:3->392:9
	LDD	%r27, %r28, $4, %r9	# build/example.ml#1661:2->1661:30
	MVI	%r28, $0	# build/example.ml#1966:7->1980:17
	CEQ	%r27, %r28	# build/example.ml#1966:7->1980:17
	JZ	$if_eq.11509	# build/example.ml#1966:7->1980:17
	SDR	%r6, %r31, $36	# build/example.ml#1967:17->1967:33
	SDR	%r5, %r31, $40	# build/example.ml#1967:17->1967:33
	SDR	%r4, %r31, $44	# build/example.ml#1967:17->1967:33
	SDR	%r3, %r31, $48	# build/example.ml#1967:17->1967:33
	SDR	%r2, %r31, $52	# build/example.ml#1967:17->1967:33
	SDR	%r1, %r31, $56	# build/example.ml#1967:17->1967:33
	ADDI	%r31, %r31, $60	# build/example.ml#1967:17->1967:33
	ADDI	%r31, %r31, $4	# build/example.ml#1967:17->1967:33
	SIP	# build/example.ml#1967:17->1967:33
	J	$p_group_id.2673	# build/example.ml#1967:17->1967:33
	ADDI	%r31, %r31, $-60	# build/example.ml#1967:17->1967:33
	MV	%r26, %r0	# build/example.ml#1967:17->1967:33
	LDR	%r6, %r31, $36	# build/example.ml#1967:17->1967:33
	LDR	%r5, %r31, $40	# build/example.ml#1967:17->1967:33
	LDR	%r4, %r31, $44	# build/example.ml#1967:17->1967:33
	LDR	%r3, %r31, $48	# build/example.ml#1967:17->1967:33
	LDR	%r2, %r31, $52	# build/example.ml#1967:17->1967:33
	LDR	%r1, %r31, $56	# build/example.ml#1967:17->1967:33
	MVI	%r24, $min_caml_diffuse_ray	# build/example.ml#1968:11->1968:22
	FLDA	%fr9, $l.7787	# build/example.ml#66:13->66:16
	SDR	%r1, %r31, $60	# build/example.ml#66:3->66:16
	MV	%r1, %r24	# build/example.ml#66:3->66:16
	FMV	%fr0, %fr9	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $64	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $4	# build/example.ml#66:3->66:16
	SIP	# build/example.ml#66:3->66:16
	J	$vecfill.2578	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $-64	# build/example.ml#66:3->66:16
	LDR	%r1, %r31, $60	# build/example.ml#66:3->66:16
	MV	%r28, %r8	# build/example.ml#434:3->436:13
	MV	%r27, %r2	# build/example.ml#375:3->377:13
	MVI	%r25, $min_caml_dirvecs	# build/example.ml#1975:4->1975:11
	LDD	%r26, %r25, $4, %r26	# build/example.ml#1780:24->1780:35
	LDD	%r28, %r28, $4, %r9	# build/example.ml#1668:9->1668:24
	LDD	%r27, %r27, $4, %r9	# build/example.ml#1656:14->1656:40
	SDR	%r6, %r31, $64	# build/example.ml#1974:2->1977:30
	SDR	%r5, %r31, $68	# build/example.ml#1974:2->1977:30
	SDR	%r4, %r31, $72	# build/example.ml#1974:2->1977:30
	SDR	%r3, %r31, $76	# build/example.ml#1974:2->1977:30
	SDR	%r2, %r31, $80	# build/example.ml#1974:2->1977:30
	SDR	%r1, %r31, $84	# build/example.ml#1974:2->1977:30
	MV	%r3, %r27	# build/example.ml#1974:2->1977:30
	MV	%r2, %r28	# build/example.ml#1974:2->1977:30
	MV	%r1, %r26	# build/example.ml#1974:2->1977:30
	ADDI	%r31, %r31, $88	# build/example.ml#1974:2->1977:30
	ADDI	%r31, %r31, $4	# build/example.ml#1974:2->1977:30
	SIP	# build/example.ml#1974:2->1977:30
	J	$trace_diffuse_rays.2914	# build/example.ml#1974:2->1977:30
	ADDI	%r31, %r31, $-88	# build/example.ml#1974:2->1977:30
	LDR	%r6, %r31, $64	# build/example.ml#1974:2->1977:30
	LDR	%r5, %r31, $68	# build/example.ml#1974:2->1977:30
	LDR	%r4, %r31, $72	# build/example.ml#1974:2->1977:30
	LDR	%r3, %r31, $76	# build/example.ml#1974:2->1977:30
	LDR	%r2, %r31, $80	# build/example.ml#1974:2->1977:30
	LDR	%r1, %r31, $84	# build/example.ml#1974:2->1977:30
	MV	%r28, %r6	# build/example.ml#404:3->406:9
	LDD	%r28, %r28, $4, %r9	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $88	# build/example.ml#1979:2->1979:34
	SDR	%r1, %r31, $92	# build/example.ml#1979:2->1979:34
	MV	%r2, %r24	# build/example.ml#1979:2->1979:34
	MV	%r1, %r28	# build/example.ml#1979:2->1979:34
	ADDI	%r31, %r31, $96	# build/example.ml#1979:2->1979:34
	ADDI	%r31, %r31, $4	# build/example.ml#1979:2->1979:34
	SIP	# build/example.ml#1979:2->1979:34
	J	$veccpy.2583	# build/example.ml#1979:2->1979:34
	ADDI	%r31, %r31, $-96	# build/example.ml#1979:2->1979:34
	LDR	%r2, %r31, $88	# build/example.ml#1979:2->1979:34
	LDR	%r1, %r31, $92	# build/example.ml#1979:2->1979:34
	J	$if_eq_cont.11510	# build/example.ml#1966:7->1980:17
if_eq.11509:
if_eq_cont.11510:
	MVI	%r28, $1	# build/example.ml#1981:43->1981:44
	ADD	%r9, %r9, %r28	# build/example.ml#1981:36->1981:44
	SDR	%r6, %r31, $96	# build/example.ml#1981:7->1981:45
	SDR	%r5, %r31, $100	# build/example.ml#1981:7->1981:45
	SDR	%r4, %r31, $104	# build/example.ml#1981:7->1981:45
	SDR	%r3, %r31, $108	# build/example.ml#1981:7->1981:45
	SDR	%r2, %r31, $112	# build/example.ml#1981:7->1981:45
	SDR	%r1, %r31, $116	# build/example.ml#1981:7->1981:45
	ADDI	%r31, %r31, $120	# build/example.ml#1981:7->1981:45
	ADDI	%r31, %r31, $4	# build/example.ml#1981:7->1981:45
	SIP	# build/example.ml#1981:7->1981:45
	J	$pretrace_diffuse_rays.2960	# build/example.ml#1981:7->1981:45
	ADDI	%r31, %r31, $-120	# build/example.ml#1981:7->1981:45
	LDR	%r6, %r31, $96	# build/example.ml#1981:7->1981:45
	LDR	%r5, %r31, $100	# build/example.ml#1981:7->1981:45
	LDR	%r4, %r31, $104	# build/example.ml#1981:7->1981:45
	LDR	%r3, %r31, $108	# build/example.ml#1981:7->1981:45
	LDR	%r2, %r31, $112	# build/example.ml#1981:7->1981:45
	LDR	%r1, %r31, $116	# build/example.ml#1981:7->1981:45
	J	$if_lt_cont.11508	# build/example.ml#1963:5->1982:15
if_lt.11507:
if_lt_cont.11508:
	J	$if_lt_cont.11506	# build/example.ml#1959:3->1983:10
if_lt.11505:
if_lt_cont.11506:
	LDR	%r9, %r31, $0	# build/example.ml#1959:14->1959:15
	LDR	%r8, %r31, $4	# build/example.ml#1959:14->1959:15
	LDR	%r7, %r31, $8	# build/example.ml#1959:14->1959:15
	LDR	%r28, %r31, $12	# build/example.ml#1959:14->1959:15
	LDR	%r27, %r31, $16	# build/example.ml#1959:14->1959:15
	LDR	%r26, %r31, $20	# build/example.ml#1959:14->1959:15
	LDR	%r25, %r31, $24	# build/example.ml#1959:14->1959:15
	LDR	%r24, %r31, $28	# build/example.ml#1959:14->1959:15
	FLDR	%fr9, %r31, $32	# build/example.ml#1959:14->1959:15
	LINK	# build/example.ml#1959:14->1959:15
write_rgb.2958:
	SDR	%r9, %r31, $0	# build/example.ml#1942:22->1942:25
	SDR	%r8, %r31, $4	# build/example.ml#1942:22->1942:25
	FSDR	%fr9, %r31, $8	# build/example.ml#1942:22->1942:25
	MVI	%r8, $min_caml_rgb	# build/example.ml#1942:22->1942:25
	MVI	%r9, $0	# build/example.ml#1942:27->1942:28
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#110:15->110:23
	FMV	%fr0, %fr9	# build/example.ml#1942:4->1942:29
	ADDI	%r31, %r31, $12	# build/example.ml#1942:4->1942:29
	ADDI	%r31, %r31, $4	# build/example.ml#1942:4->1942:29
	SIP	# build/example.ml#1942:4->1942:29
	J	$write_rgb_element.2956	# build/example.ml#1942:4->1942:29
	ADDI	%r31, %r31, $-12	# build/example.ml#1942:4->1942:29
	MVI	%r9, $32	# build/example.ml#1943:15->1943:17
	MV	%r1, %r9	# build/example.ml#1943:4->1943:17
	ADDI	%r31, %r31, $12	# build/example.ml#1943:4->1943:17
	ADDI	%r31, %r31, $4	# build/example.ml#1943:4->1943:17
	SIP	# build/example.ml#1943:4->1943:17
	J	$min_caml_print_char	# build/example.ml#1943:4->1943:17
	ADDI	%r31, %r31, $-12	# build/example.ml#1943:4->1943:17
	MVI	%r9, $1	# build/example.ml#1944:27->1944:28
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#110:15->110:23
	FMV	%fr0, %fr9	# build/example.ml#1944:4->1944:29
	ADDI	%r31, %r31, $12	# build/example.ml#1944:4->1944:29
	ADDI	%r31, %r31, $4	# build/example.ml#1944:4->1944:29
	SIP	# build/example.ml#1944:4->1944:29
	J	$write_rgb_element.2956	# build/example.ml#1944:4->1944:29
	ADDI	%r31, %r31, $-12	# build/example.ml#1944:4->1944:29
	MVI	%r9, $32	# build/example.ml#1945:15->1945:17
	MV	%r1, %r9	# build/example.ml#1945:4->1945:17
	ADDI	%r31, %r31, $12	# build/example.ml#1945:4->1945:17
	ADDI	%r31, %r31, $4	# build/example.ml#1945:4->1945:17
	SIP	# build/example.ml#1945:4->1945:17
	J	$min_caml_print_char	# build/example.ml#1945:4->1945:17
	ADDI	%r31, %r31, $-12	# build/example.ml#1945:4->1945:17
	MVI	%r9, $2	# build/example.ml#1946:27->1946:28
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#110:15->110:23
	FMV	%fr0, %fr9	# build/example.ml#1946:4->1946:29
	ADDI	%r31, %r31, $12	# build/example.ml#1946:4->1946:29
	ADDI	%r31, %r31, $4	# build/example.ml#1946:4->1946:29
	SIP	# build/example.ml#1946:4->1946:29
	J	$write_rgb_element.2956	# build/example.ml#1946:4->1946:29
	ADDI	%r31, %r31, $-12	# build/example.ml#1946:4->1946:29
	MVI	%r9, $10	# build/example.ml#1947:15->1947:17
	MV	%r1, %r9	# build/example.ml#1947:4->1947:17
	ADDI	%r31, %r31, $12	# build/example.ml#1947:4->1947:17
	ADDI	%r31, %r31, $4	# build/example.ml#1947:4->1947:17
	SIP	# build/example.ml#1947:4->1947:17
	J	$min_caml_print_char	# build/example.ml#1947:4->1947:17
	ADDI	%r31, %r31, $-12	# build/example.ml#1947:4->1947:17
	LDR	%r9, %r31, $0	# build/example.ml#1942:22->1942:25
	LDR	%r8, %r31, $4	# build/example.ml#1942:22->1942:25
	FLDR	%fr9, %r31, $8	# build/example.ml#1942:22->1942:25
	LINK	# build/example.ml#1942:22->1942:25
write_rgb_element.2956:
	SDR	%r9, %r31, $0	# build/example.ml#1936:12->1936:26
	SDR	%r8, %r31, $4	# build/example.ml#1936:12->1936:26
	ADDI	%r31, %r31, $8	# build/example.ml#1936:12->1936:26
	ADDI	%r31, %r31, $4	# build/example.ml#1936:12->1936:26
	SIP	# build/example.ml#1936:12->1936:26
	J	$min_caml_int_of_float	# build/example.ml#1936:12->1936:26
	ADDI	%r31, %r31, $-8	# build/example.ml#1936:12->1936:26
	MV	%r9, %r0	# build/example.ml#1936:12->1936:26
	MVI	%r8, $255	# build/example.ml#1937:22->1937:25
	CMP	%r8, %r9	# build/example.ml#1937:14->1937:64
	JZ	$if_lt.11511	# build/example.ml#1937:14->1937:64
	MVI	%r8, $0	# build/example.ml#1937:48->1937:49
	CMP	%r9, %r8	# build/example.ml#1937:40->1937:64
	JZ	$if_lt.11513	# build/example.ml#1937:40->1937:64
	J	$if_lt_cont.11514	# build/example.ml#1937:40->1937:64
if_lt.11513:
if_lt_cont.11514:
	J	$if_lt_cont.11512	# build/example.ml#1937:14->1937:64
if_lt.11511:
if_lt_cont.11512:
	MV	%r1, %r9	# build/example.ml#1938:3->1938:17
	ADDI	%r31, %r31, $8	# build/example.ml#1938:3->1938:17
	ADDI	%r31, %r31, $4	# build/example.ml#1938:3->1938:17
	SIP	# build/example.ml#1938:3->1938:17
	J	$min_caml_print_int	# build/example.ml#1938:3->1938:17
	ADDI	%r31, %r31, $-8	# build/example.ml#1938:3->1938:17
	LDR	%r9, %r31, $0	# build/example.ml#1936:12->1936:26
	LDR	%r8, %r31, $4	# build/example.ml#1936:12->1936:26
	LINK	# build/example.ml#1936:12->1936:26
write_ppm_header.2954:
	SDR	%r9, %r31, $0	# build/example.ml#1923:16->1923:18
	SDR	%r8, %r31, $4	# build/example.ml#1923:16->1923:18
	MVI	%r9, $80	# build/example.ml#1923:16->1923:18
	MV	%r1, %r9	# build/example.ml#1923:5->1923:18
	ADDI	%r31, %r31, $8	# build/example.ml#1923:5->1923:18
	ADDI	%r31, %r31, $4	# build/example.ml#1923:5->1923:18
	SIP	# build/example.ml#1923:5->1923:18
	J	$min_caml_print_char	# build/example.ml#1923:5->1923:18
	ADDI	%r31, %r31, $-8	# build/example.ml#1923:5->1923:18
	MVI	%r9, $51	# build/example.ml#1924:17->1924:23
	MV	%r1, %r9	# build/example.ml#1924:5->1924:24
	ADDI	%r31, %r31, $8	# build/example.ml#1924:5->1924:24
	ADDI	%r31, %r31, $4	# build/example.ml#1924:5->1924:24
	SIP	# build/example.ml#1924:5->1924:24
	J	$min_caml_print_char	# build/example.ml#1924:5->1924:24
	ADDI	%r31, %r31, $-8	# build/example.ml#1924:5->1924:24
	MVI	%r9, $10	# build/example.ml#1925:16->1925:18
	MV	%r1, %r9	# build/example.ml#1925:5->1925:18
	ADDI	%r31, %r31, $8	# build/example.ml#1925:5->1925:18
	ADDI	%r31, %r31, $4	# build/example.ml#1925:5->1925:18
	SIP	# build/example.ml#1925:5->1925:18
	J	$min_caml_print_char	# build/example.ml#1925:5->1925:18
	ADDI	%r31, %r31, $-8	# build/example.ml#1925:5->1925:18
	MVI	%r8, $min_caml_image_size	# build/example.ml#1926:15->1926:25
	MVI	%r9, $0	# build/example.ml#1926:27->1926:28
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1858:16->1858:30
	MV	%r1, %r9	# build/example.ml#1926:5->1926:29
	ADDI	%r31, %r31, $8	# build/example.ml#1926:5->1926:29
	ADDI	%r31, %r31, $4	# build/example.ml#1926:5->1926:29
	SIP	# build/example.ml#1926:5->1926:29
	J	$min_caml_print_int	# build/example.ml#1926:5->1926:29
	ADDI	%r31, %r31, $-8	# build/example.ml#1926:5->1926:29
	MVI	%r9, $32	# build/example.ml#1927:16->1927:18
	MV	%r1, %r9	# build/example.ml#1927:5->1927:18
	ADDI	%r31, %r31, $8	# build/example.ml#1927:5->1927:18
	ADDI	%r31, %r31, $4	# build/example.ml#1927:5->1927:18
	SIP	# build/example.ml#1927:5->1927:18
	J	$min_caml_print_char	# build/example.ml#1927:5->1927:18
	ADDI	%r31, %r31, $-8	# build/example.ml#1927:5->1927:18
	MVI	%r9, $1	# build/example.ml#1928:27->1928:28
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1858:16->1858:30
	MV	%r1, %r9	# build/example.ml#1928:5->1928:29
	ADDI	%r31, %r31, $8	# build/example.ml#1928:5->1928:29
	ADDI	%r31, %r31, $4	# build/example.ml#1928:5->1928:29
	SIP	# build/example.ml#1928:5->1928:29
	J	$min_caml_print_int	# build/example.ml#1928:5->1928:29
	ADDI	%r31, %r31, $-8	# build/example.ml#1928:5->1928:29
	MVI	%r9, $32	# build/example.ml#1929:16->1929:18
	MV	%r1, %r9	# build/example.ml#1929:5->1929:18
	ADDI	%r31, %r31, $8	# build/example.ml#1929:5->1929:18
	ADDI	%r31, %r31, $4	# build/example.ml#1929:5->1929:18
	SIP	# build/example.ml#1929:5->1929:18
	J	$min_caml_print_char	# build/example.ml#1929:5->1929:18
	ADDI	%r31, %r31, $-8	# build/example.ml#1929:5->1929:18
	MVI	%r9, $255	# build/example.ml#1930:15->1930:18
	MV	%r1, %r9	# build/example.ml#1930:5->1930:18
	ADDI	%r31, %r31, $8	# build/example.ml#1930:5->1930:18
	ADDI	%r31, %r31, $4	# build/example.ml#1930:5->1930:18
	SIP	# build/example.ml#1930:5->1930:18
	J	$min_caml_print_int	# build/example.ml#1930:5->1930:18
	ADDI	%r31, %r31, $-8	# build/example.ml#1930:5->1930:18
	MVI	%r9, $10	# build/example.ml#1931:16->1931:18
	MV	%r1, %r9	# build/example.ml#1931:5->1931:18
	ADDI	%r31, %r31, $8	# build/example.ml#1931:5->1931:18
	ADDI	%r31, %r31, $4	# build/example.ml#1931:5->1931:18
	SIP	# build/example.ml#1931:5->1931:18
	J	$min_caml_print_char	# build/example.ml#1931:5->1931:18
	ADDI	%r31, %r31, $-8	# build/example.ml#1931:5->1931:18
	LDR	%r9, %r31, $0	# build/example.ml#1923:16->1923:18
	LDR	%r8, %r31, $4	# build/example.ml#1923:16->1923:18
	LINK	# build/example.ml#1923:16->1923:18
try_exploit_neighbors.2947:
	SDR	%r9, %r31, $0	# build/example.ml#1895:15->1895:22
	SDR	%r8, %r31, $4	# build/example.ml#1895:15->1895:22
	SDR	%r7, %r31, $8	# build/example.ml#1895:15->1895:22
	SDR	%r28, %r31, $12	# build/example.ml#1895:15->1895:22
	SDR	%r27, %r31, $16	# build/example.ml#1895:15->1895:22
	SDR	%r26, %r31, $20	# build/example.ml#1895:15->1895:22
	SDR	%r25, %r31, $24	# build/example.ml#1895:15->1895:22
	SDR	%r24, %r31, $28	# build/example.ml#1895:15->1895:22
	SDR	%r23, %r31, $32	# build/example.ml#1895:15->1895:22
	SDR	%r22, %r31, $36	# build/example.ml#1895:15->1895:22
	LDD	%r24, %r4, $4, %r1	# build/example.ml#1895:15->1895:22
	LDR	%r9, %r24, $28	# build/example.ml#1895:3->1915:10
	LDR	%r8, %r24, $24	# build/example.ml#1895:3->1915:10
	LDR	%r7, %r24, $20	# build/example.ml#1895:3->1915:10
	LDR	%r28, %r24, $16	# build/example.ml#1895:3->1915:10
	LDR	%r27, %r24, $12	# build/example.ml#1895:3->1915:10
	LDR	%r26, %r24, $8	# build/example.ml#1895:3->1915:10
	LDR	%r25, %r24, $4	# build/example.ml#1895:3->1915:10
	LDR	%r24, %r24, $0	# build/example.ml#1895:3->1915:10
	MVI	%r23, $4	# build/example.ml#1896:14->1896:15
	CMP	%r23, %r6	# build/example.ml#1896:3->1915:10
	JZ	$if_lt.11515	# build/example.ml#1896:3->1915:10
	MV	%r23, %r26	# build/example.ml#383:3->385:9
	LDD	%r22, %r23, $4, %r6	# build/example.ml#1654:7->1654:61
	MVI	%r23, $0	# build/example.ml#1899:37->1899:38
	CMP	%r22, %r23	# build/example.ml#1899:5->1914:12
	JZ	$if_lt.11517	# build/example.ml#1899:5->1914:12
	SDR	%r5, %r31, $40	# build/example.ml#1901:10->1901:54
	SDR	%r4, %r31, $44	# build/example.ml#1901:10->1901:54
	SDR	%r3, %r31, $48	# build/example.ml#1901:10->1901:54
	SDR	%r2, %r31, $52	# build/example.ml#1901:10->1901:54
	SDR	%r1, %r31, $56	# build/example.ml#1901:10->1901:54
	MV	%r2, %r3	# build/example.ml#1901:10->1901:54
	MV	%r3, %r4	# build/example.ml#1901:10->1901:54
	MV	%r4, %r5	# build/example.ml#1901:10->1901:54
	MV	%r5, %r6	# build/example.ml#1901:10->1901:54
	ADDI	%r31, %r31, $60	# build/example.ml#1901:10->1901:54
	ADDI	%r31, %r31, $4	# build/example.ml#1901:10->1901:54
	SIP	# build/example.ml#1901:10->1901:54
	J	$neighbors_are_available.2941	# build/example.ml#1901:10->1901:54
	ADDI	%r31, %r31, $-60	# build/example.ml#1901:10->1901:54
	MV	%r22, %r0	# build/example.ml#1901:10->1901:54
	LDR	%r5, %r31, $40	# build/example.ml#1901:10->1901:54
	LDR	%r4, %r31, $44	# build/example.ml#1901:10->1901:54
	LDR	%r3, %r31, $48	# build/example.ml#1901:10->1901:54
	LDR	%r2, %r31, $52	# build/example.ml#1901:10->1901:54
	LDR	%r1, %r31, $56	# build/example.ml#1901:10->1901:54
	MVI	%r23, $0	# build/example.ml#1901:7->1913:35
	CEQ	%r22, %r23	# build/example.ml#1901:7->1913:35
	JZ	$if_eq.11519	# build/example.ml#1901:7->1913:35
	MV	%r9, %r27	# build/example.ml#390:3->392:9
	LDD	%r8, %r9, $4, %r6	# build/example.ml#1661:2->1661:30
	MVI	%r9, $0	# build/example.ml#1905:9->1907:9
	CEQ	%r8, %r9	# build/example.ml#1905:9->1907:9
	JZ	$if_eq.11521	# build/example.ml#1905:9->1907:9
	SDR	%r6, %r31, $60	# build/example.ml#1906:4->1906:51
	SDR	%r5, %r31, $64	# build/example.ml#1906:4->1906:51
	SDR	%r4, %r31, $68	# build/example.ml#1906:4->1906:51
	SDR	%r3, %r31, $72	# build/example.ml#1906:4->1906:51
	SDR	%r2, %r31, $76	# build/example.ml#1906:4->1906:51
	SDR	%r1, %r31, $80	# build/example.ml#1906:4->1906:51
	MV	%r2, %r3	# build/example.ml#1906:4->1906:51
	MV	%r3, %r4	# build/example.ml#1906:4->1906:51
	MV	%r4, %r5	# build/example.ml#1906:4->1906:51
	MV	%r5, %r6	# build/example.ml#1906:4->1906:51
	ADDI	%r31, %r31, $84	# build/example.ml#1906:4->1906:51
	ADDI	%r31, %r31, $4	# build/example.ml#1906:4->1906:51
	SIP	# build/example.ml#1906:4->1906:51
	J	$calc_diffuse_using_5points.2925	# build/example.ml#1906:4->1906:51
	ADDI	%r31, %r31, $-84	# build/example.ml#1906:4->1906:51
	LDR	%r6, %r31, $60	# build/example.ml#1906:4->1906:51
	LDR	%r5, %r31, $64	# build/example.ml#1906:4->1906:51
	LDR	%r4, %r31, $68	# build/example.ml#1906:4->1906:51
	LDR	%r3, %r31, $72	# build/example.ml#1906:4->1906:51
	LDR	%r2, %r31, $76	# build/example.ml#1906:4->1906:51
	LDR	%r1, %r31, $80	# build/example.ml#1906:4->1906:51
	J	$if_eq_cont.11522	# build/example.ml#1905:9->1907:9
if_eq.11521:
if_eq_cont.11522:
	MVI	%r9, $1	# build/example.ml#1910:50->1910:51
	ADD	%r9, %r6, %r9	# build/example.ml#1910:43->1910:51
	SDR	%r6, %r31, $84	# build/example.ml#1910:2->1910:52
	SDR	%r5, %r31, $88	# build/example.ml#1910:2->1910:52
	SDR	%r4, %r31, $92	# build/example.ml#1910:2->1910:52
	SDR	%r3, %r31, $96	# build/example.ml#1910:2->1910:52
	SDR	%r2, %r31, $100	# build/example.ml#1910:2->1910:52
	SDR	%r1, %r31, $104	# build/example.ml#1910:2->1910:52
	MV	%r6, %r9	# build/example.ml#1910:2->1910:52
	ADDI	%r31, %r31, $108	# build/example.ml#1910:2->1910:52
	ADDI	%r31, %r31, $4	# build/example.ml#1910:2->1910:52
	SIP	# build/example.ml#1910:2->1910:52
	J	$try_exploit_neighbors.2947	# build/example.ml#1910:2->1910:52
	ADDI	%r31, %r31, $-108	# build/example.ml#1910:2->1910:52
	LDR	%r6, %r31, $84	# build/example.ml#1910:2->1910:52
	LDR	%r5, %r31, $88	# build/example.ml#1910:2->1910:52
	LDR	%r4, %r31, $92	# build/example.ml#1910:2->1910:52
	LDR	%r3, %r31, $96	# build/example.ml#1910:2->1910:52
	LDR	%r2, %r31, $100	# build/example.ml#1910:2->1910:52
	LDR	%r1, %r31, $104	# build/example.ml#1910:2->1910:52
	J	$if_eq_cont.11520	# build/example.ml#1901:7->1913:35
if_eq.11519:
	SDR	%r6, %r31, $108	# build/example.ml#1913:2->1913:35
	SDR	%r5, %r31, $112	# build/example.ml#1913:2->1913:35
	SDR	%r4, %r31, $116	# build/example.ml#1913:2->1913:35
	SDR	%r3, %r31, $120	# build/example.ml#1913:2->1913:35
	SDR	%r2, %r31, $124	# build/example.ml#1913:2->1913:35
	SDR	%r1, %r31, $128	# build/example.ml#1913:2->1913:35
	MV	%r5, %r28	# build/example.ml#1913:2->1913:35
	MV	%r4, %r27	# build/example.ml#1913:2->1913:35
	MV	%r3, %r26	# build/example.ml#1913:2->1913:35
	MV	%r2, %r25	# build/example.ml#1913:2->1913:35
	MV	%r1, %r24	# build/example.ml#1913:2->1913:35
	SDR	%r9, %r31, $132	# build/example.ml#1913:2->1913:35
	MV	%r9, %r6	# build/example.ml#1913:2->1913:35
	MV	%r6, %r7	# build/example.ml#1913:2->1913:35
	MV	%r7, %r8	# build/example.ml#1913:2->1913:35
	LDR	%r8, %r31, $132	# build/example.ml#1913:2->1913:35
	ADDI	%r31, %r31, $132	# build/example.ml#1913:2->1913:35
	ADDI	%r31, %r31, $4	# build/example.ml#1913:2->1913:35
	SIP	# build/example.ml#1913:2->1913:35
	J	$do_without_neighbors.2931	# build/example.ml#1913:2->1913:35
	ADDI	%r31, %r31, $-132	# build/example.ml#1913:2->1913:35
	LDR	%r6, %r31, $108	# build/example.ml#1913:2->1913:35
	LDR	%r5, %r31, $112	# build/example.ml#1913:2->1913:35
	LDR	%r4, %r31, $116	# build/example.ml#1913:2->1913:35
	LDR	%r3, %r31, $120	# build/example.ml#1913:2->1913:35
	LDR	%r2, %r31, $124	# build/example.ml#1913:2->1913:35
	LDR	%r1, %r31, $128	# build/example.ml#1913:2->1913:35
if_eq_cont.11520:
	J	$if_lt_cont.11518	# build/example.ml#1899:5->1914:12
if_lt.11517:
if_lt_cont.11518:
	J	$if_lt_cont.11516	# build/example.ml#1896:3->1915:10
if_lt.11515:
if_lt_cont.11516:
	LDR	%r9, %r31, $0	# build/example.ml#1895:15->1895:22
	LDR	%r8, %r31, $4	# build/example.ml#1895:15->1895:22
	LDR	%r7, %r31, $8	# build/example.ml#1895:15->1895:22
	LDR	%r28, %r31, $12	# build/example.ml#1895:15->1895:22
	LDR	%r27, %r31, $16	# build/example.ml#1895:15->1895:22
	LDR	%r26, %r31, $20	# build/example.ml#1895:15->1895:22
	LDR	%r25, %r31, $24	# build/example.ml#1895:15->1895:22
	LDR	%r24, %r31, $28	# build/example.ml#1895:15->1895:22
	LDR	%r23, %r31, $32	# build/example.ml#1895:15->1895:22
	LDR	%r22, %r31, $36	# build/example.ml#1895:15->1895:22
	LINK	# build/example.ml#1895:15->1895:22
neighbors_are_available.2941:
	SDR	%r11, %r31, $0	# build/example.ml#1877:35->1877:42
	SDR	%r10, %r31, $4	# build/example.ml#1877:35->1877:42
	LDD	%r10, %r3, $4, %r1	# build/example.ml#1877:35->1877:42
	LDR	%r10, %r10, $8	# build/example.ml#1877:20->1877:47
	LDD	%r10, %r10, $4, %r5	# build/example.ml#1654:7->1654:61
	LDD	%r11, %r2, $4, %r1	# build/example.ml#1879:21->1879:29
	LDR	%r11, %r11, $8	# build/example.ml#1879:6->1879:34
	LDD	%r11, %r11, $4, %r5	# build/example.ml#1654:7->1654:61
	CEQ	%r11, %r10	# build/example.ml#1879:3->1887:13
	JZ	$if_eq.11523	# build/example.ml#1879:3->1887:13
	MVI	%r0, $0	# build/example.ml#1887:8->1887:13
	J	$if_eq_cont.11524	# build/example.ml#1879:3->1887:13
if_eq.11523:
	LDD	%r11, %r4, $4, %r1	# build/example.ml#1880:23->1880:31
	LDR	%r11, %r11, $8	# build/example.ml#1880:8->1880:36
	LDD	%r11, %r11, $4, %r5	# build/example.ml#1654:7->1654:61
	CEQ	%r11, %r10	# build/example.ml#1880:5->1886:15
	JZ	$if_eq.11525	# build/example.ml#1880:5->1886:15
	MVI	%r0, $0	# build/example.ml#1886:10->1886:15
	J	$if_eq_cont.11526	# build/example.ml#1880:5->1886:15
if_eq.11525:
	MVI	%r11, $1	# build/example.ml#1881:32->1881:33
	SUB	%r11, %r1, %r11	# build/example.ml#1881:30->1881:33
	LDD	%r11, %r3, $4, %r11	# build/example.ml#1877:35->1877:42
	LDR	%r11, %r11, $8	# build/example.ml#1881:10->1881:39
	LDD	%r11, %r11, $4, %r5	# build/example.ml#1654:7->1654:61
	CEQ	%r11, %r10	# build/example.ml#1881:7->1885:17
	JZ	$if_eq.11527	# build/example.ml#1881:7->1885:17
	MVI	%r0, $0	# build/example.ml#1885:12->1885:17
	J	$if_eq_cont.11528	# build/example.ml#1881:7->1885:17
if_eq.11527:
	MVI	%r11, $1	# build/example.ml#1882:27->1882:28
	ADD	%r1, %r1, %r11	# build/example.ml#1882:25->1882:28
	LDD	%r1, %r3, $4, %r1	# build/example.ml#1877:35->1877:42
	LDR	%r1, %r1, $8	# build/example.ml#1882:5->1882:34
	LDD	%r1, %r1, $4, %r5	# build/example.ml#1654:7->1654:61
	CEQ	%r1, %r10	# build/example.ml#1882:2->1884:12
	JZ	$if_eq.11529	# build/example.ml#1882:2->1884:12
	MVI	%r0, $0	# build/example.ml#1884:7->1884:12
	J	$if_eq_cont.11530	# build/example.ml#1882:2->1884:12
if_eq.11529:
	MVI	%r0, $1	# build/example.ml#1883:4->1883:8
if_eq_cont.11530:
if_eq_cont.11528:
if_eq_cont.11526:
if_eq_cont.11524:
	LDR	%r11, %r31, $0	# build/example.ml#1877:35->1877:42
	LDR	%r10, %r31, $4	# build/example.ml#1877:35->1877:42
	LINK	# build/example.ml#1877:35->1877:42
neighbors_exist.2934:
	SDR	%r12, %r31, $0	# build/example.ml#1858:11->1858:12
	SDR	%r11, %r31, $4	# build/example.ml#1858:11->1858:12
	SDR	%r10, %r31, $8	# build/example.ml#1858:11->1858:12
	MVI	%r10, $1	# build/example.ml#1858:11->1858:12
	ADD	%r11, %r2, %r10	# build/example.ml#1858:7->1858:12
	MVI	%r12, $min_caml_image_size	# build/example.ml#1858:16->1858:26
	MVI	%r10, $1	# build/example.ml#1858:28->1858:29
	LDD	%r10, %r12, $4, %r10	# build/example.ml#1858:16->1858:30
	CMP	%r11, %r10	# build/example.ml#1858:3->1866:13
	JZ	$if_lt.11531	# build/example.ml#1858:3->1866:13
	MVI	%r0, $0	# build/example.ml#1866:8->1866:13
	J	$if_lt_cont.11532	# build/example.ml#1858:3->1866:13
if_lt.11531:
	MVI	%r10, $0	# build/example.ml#1859:12->1859:13
	CMP	%r10, %r2	# build/example.ml#1859:5->1865:15
	JZ	$if_lt.11533	# build/example.ml#1859:5->1865:15
	MVI	%r0, $0	# build/example.ml#1865:10->1865:15
	J	$if_lt_cont.11534	# build/example.ml#1859:5->1865:15
if_lt.11533:
	MVI	%r10, $1	# build/example.ml#1860:15->1860:16
	ADD	%r11, %r1, %r10	# build/example.ml#1860:11->1860:16
	MVI	%r10, $0	# build/example.ml#1860:32->1860:33
	LDD	%r10, %r12, $4, %r10	# build/example.ml#1858:16->1858:30
	CMP	%r11, %r10	# build/example.ml#1860:7->1864:17
	JZ	$if_lt.11535	# build/example.ml#1860:7->1864:17
	MVI	%r0, $0	# build/example.ml#1864:12->1864:17
	J	$if_lt_cont.11536	# build/example.ml#1860:7->1864:17
if_lt.11535:
	MVI	%r10, $0	# build/example.ml#1861:9->1861:10
	CMP	%r10, %r1	# build/example.ml#1861:2->1863:12
	JZ	$if_lt.11537	# build/example.ml#1861:2->1863:12
	MVI	%r0, $0	# build/example.ml#1863:7->1863:12
	J	$if_lt_cont.11538	# build/example.ml#1861:2->1863:12
if_lt.11537:
	MVI	%r0, $1	# build/example.ml#1862:4->1862:8
if_lt_cont.11538:
if_lt_cont.11536:
if_lt_cont.11534:
if_lt_cont.11532:
	LDR	%r12, %r31, $0	# build/example.ml#1858:11->1858:12
	LDR	%r11, %r31, $4	# build/example.ml#1858:11->1858:12
	LDR	%r10, %r31, $8	# build/example.ml#1858:11->1858:12
	LINK	# build/example.ml#1858:11->1858:12
do_without_neighbors.2931:
	SDR	%r9, %r31, $0	# build/example.ml#1843:14->1843:15
	SDR	%r8, %r31, $4	# build/example.ml#1843:14->1843:15
	SDR	%r7, %r31, $8	# build/example.ml#1843:14->1843:15
	SDR	%r28, %r31, $12	# build/example.ml#1843:14->1843:15
	SDR	%r27, %r31, $16	# build/example.ml#1843:14->1843:15
	MVI	%r28, $4	# build/example.ml#1843:14->1843:15
	CMP	%r28, %r9	# build/example.ml#1843:3->1853:10
	JZ	$if_lt.11539	# build/example.ml#1843:3->1853:10
	MV	%r28, %r3	# build/example.ml#383:3->385:9
	LDD	%r27, %r28, $4, %r9	# build/example.ml#1654:7->1654:61
	MVI	%r28, $0	# build/example.ml#1846:30->1846:31
	CMP	%r27, %r28	# build/example.ml#1846:5->1852:15
	JZ	$if_lt.11541	# build/example.ml#1846:5->1852:15
	MV	%r28, %r4	# build/example.ml#390:3->392:9
	LDD	%r27, %r28, $4, %r9	# build/example.ml#1661:2->1661:30
	MVI	%r28, $0	# build/example.ml#1848:7->1850:14
	CEQ	%r27, %r28	# build/example.ml#1848:7->1850:14
	JZ	$if_eq.11543	# build/example.ml#1848:7->1850:14
	SDR	%r6, %r31, $20	# build/example.ml#1849:2->1849:38
	SDR	%r5, %r31, $24	# build/example.ml#1849:2->1849:38
	SDR	%r4, %r31, $28	# build/example.ml#1849:2->1849:38
	SDR	%r3, %r31, $32	# build/example.ml#1849:2->1849:38
	SDR	%r2, %r31, $36	# build/example.ml#1849:2->1849:38
	SDR	%r1, %r31, $40	# build/example.ml#1849:2->1849:38
	ADDI	%r31, %r31, $44	# build/example.ml#1849:2->1849:38
	ADDI	%r31, %r31, $4	# build/example.ml#1849:2->1849:38
	SIP	# build/example.ml#1849:2->1849:38
	J	$calc_diffuse_using_1point.2922	# build/example.ml#1849:2->1849:38
	ADDI	%r31, %r31, $-44	# build/example.ml#1849:2->1849:38
	LDR	%r6, %r31, $20	# build/example.ml#1849:2->1849:38
	LDR	%r5, %r31, $24	# build/example.ml#1849:2->1849:38
	LDR	%r4, %r31, $28	# build/example.ml#1849:2->1849:38
	LDR	%r3, %r31, $32	# build/example.ml#1849:2->1849:38
	LDR	%r2, %r31, $36	# build/example.ml#1849:2->1849:38
	LDR	%r1, %r31, $40	# build/example.ml#1849:2->1849:38
	J	$if_eq_cont.11544	# build/example.ml#1848:7->1850:14
if_eq.11543:
if_eq_cont.11544:
	MVI	%r28, $1	# build/example.ml#1851:42->1851:43
	ADD	%r9, %r9, %r28	# build/example.ml#1851:35->1851:43
	SDR	%r6, %r31, $44	# build/example.ml#1851:7->1851:44
	SDR	%r5, %r31, $48	# build/example.ml#1851:7->1851:44
	SDR	%r4, %r31, $52	# build/example.ml#1851:7->1851:44
	SDR	%r3, %r31, $56	# build/example.ml#1851:7->1851:44
	SDR	%r2, %r31, $60	# build/example.ml#1851:7->1851:44
	SDR	%r1, %r31, $64	# build/example.ml#1851:7->1851:44
	ADDI	%r31, %r31, $68	# build/example.ml#1851:7->1851:44
	ADDI	%r31, %r31, $4	# build/example.ml#1851:7->1851:44
	SIP	# build/example.ml#1851:7->1851:44
	J	$do_without_neighbors.2931	# build/example.ml#1851:7->1851:44
	ADDI	%r31, %r31, $-68	# build/example.ml#1851:7->1851:44
	LDR	%r6, %r31, $44	# build/example.ml#1851:7->1851:44
	LDR	%r5, %r31, $48	# build/example.ml#1851:7->1851:44
	LDR	%r4, %r31, $52	# build/example.ml#1851:7->1851:44
	LDR	%r3, %r31, $56	# build/example.ml#1851:7->1851:44
	LDR	%r2, %r31, $60	# build/example.ml#1851:7->1851:44
	LDR	%r1, %r31, $64	# build/example.ml#1851:7->1851:44
	J	$if_lt_cont.11542	# build/example.ml#1846:5->1852:15
if_lt.11541:
if_lt_cont.11542:
	J	$if_lt_cont.11540	# build/example.ml#1843:3->1853:10
if_lt.11539:
if_lt_cont.11540:
	LDR	%r9, %r31, $0	# build/example.ml#1843:14->1843:15
	LDR	%r8, %r31, $4	# build/example.ml#1843:14->1843:15
	LDR	%r7, %r31, $8	# build/example.ml#1843:14->1843:15
	LDR	%r28, %r31, $12	# build/example.ml#1843:14->1843:15
	LDR	%r27, %r31, $16	# build/example.ml#1843:14->1843:15
	LINK	# build/example.ml#1843:14->1843:15
calc_diffuse_using_5points.2925:
	SDR	%r9, %r31, $0	# build/example.ml#1824:39->1824:47
	SDR	%r8, %r31, $4	# build/example.ml#1824:39->1824:47
	SDR	%r7, %r31, $8	# build/example.ml#1824:39->1824:47
	SDR	%r28, %r31, $12	# build/example.ml#1824:39->1824:47
	LDD	%r9, %r2, $4, %r1	# build/example.ml#1824:39->1824:47
	LDR	%r9, %r9, $20	# build/example.ml#1824:14->1824:47
	MVI	%r8, $1	# build/example.ml#1825:48->1825:49
	SUB	%r8, %r1, %r8	# build/example.ml#1825:46->1825:49
	LDD	%r8, %r3, $4, %r8	# build/example.ml#1825:41->1825:50
	LDR	%r8, %r8, $20	# build/example.ml#1825:16->1825:50
	LDD	%r6, %r3, $4, %r1	# build/example.ml#1825:41->1825:50
	LDR	%r7, %r6, $20	# build/example.ml#1826:18->1826:50
	LDR	%r6, %r6, $16	# build/example.ml#1826:18->1826:50
	MVI	%r28, $1	# build/example.ml#1827:49->1827:50
	ADD	%r28, %r1, %r28	# build/example.ml#1827:47->1827:50
	LDD	%r3, %r3, $4, %r28	# build/example.ml#1825:41->1825:50
	LDR	%r3, %r3, $20	# build/example.ml#1827:17->1827:51
	LDD	%r4, %r4, $4, %r1	# build/example.ml#1828:41->1828:49
	LDR	%r4, %r4, $20	# build/example.ml#1828:16->1828:49
	MVI	%r28, $min_caml_diffuse_ray	# build/example.ml#1830:10->1830:21
	LDD	%r9, %r9, $4, %r5	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $16	# build/example.ml#1830:3->1830:33
	SDR	%r1, %r31, $20	# build/example.ml#1830:3->1830:33
	MV	%r2, %r9	# build/example.ml#1830:3->1830:33
	MV	%r1, %r28	# build/example.ml#1830:3->1830:33
	ADDI	%r31, %r31, $24	# build/example.ml#1830:3->1830:33
	ADDI	%r31, %r31, $4	# build/example.ml#1830:3->1830:33
	SIP	# build/example.ml#1830:3->1830:33
	J	$veccpy.2583	# build/example.ml#1830:3->1830:33
	ADDI	%r31, %r31, $-24	# build/example.ml#1830:3->1830:33
	LDR	%r2, %r31, $16	# build/example.ml#1830:3->1830:33
	LDR	%r1, %r31, $20	# build/example.ml#1830:3->1830:33
	LDD	%r9, %r8, $4, %r5	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $24	# build/example.ml#1831:3->1831:35
	SDR	%r1, %r31, $28	# build/example.ml#1831:3->1831:35
	MV	%r2, %r9	# build/example.ml#1831:3->1831:35
	MV	%r1, %r28	# build/example.ml#1831:3->1831:35
	ADDI	%r31, %r31, $32	# build/example.ml#1831:3->1831:35
	ADDI	%r31, %r31, $4	# build/example.ml#1831:3->1831:35
	SIP	# build/example.ml#1831:3->1831:35
	J	$vecadd.2606	# build/example.ml#1831:3->1831:35
	ADDI	%r31, %r31, $-32	# build/example.ml#1831:3->1831:35
	LDR	%r2, %r31, $24	# build/example.ml#1831:3->1831:35
	LDR	%r1, %r31, $28	# build/example.ml#1831:3->1831:35
	LDD	%r9, %r7, $4, %r5	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $32	# build/example.ml#1832:3->1832:37
	SDR	%r1, %r31, $36	# build/example.ml#1832:3->1832:37
	MV	%r2, %r9	# build/example.ml#1832:3->1832:37
	MV	%r1, %r28	# build/example.ml#1832:3->1832:37
	ADDI	%r31, %r31, $40	# build/example.ml#1832:3->1832:37
	ADDI	%r31, %r31, $4	# build/example.ml#1832:3->1832:37
	SIP	# build/example.ml#1832:3->1832:37
	J	$vecadd.2606	# build/example.ml#1832:3->1832:37
	ADDI	%r31, %r31, $-40	# build/example.ml#1832:3->1832:37
	LDR	%r2, %r31, $32	# build/example.ml#1832:3->1832:37
	LDR	%r1, %r31, $36	# build/example.ml#1832:3->1832:37
	LDD	%r9, %r3, $4, %r5	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $40	# build/example.ml#1833:3->1833:36
	SDR	%r1, %r31, $44	# build/example.ml#1833:3->1833:36
	MV	%r2, %r9	# build/example.ml#1833:3->1833:36
	MV	%r1, %r28	# build/example.ml#1833:3->1833:36
	ADDI	%r31, %r31, $48	# build/example.ml#1833:3->1833:36
	ADDI	%r31, %r31, $4	# build/example.ml#1833:3->1833:36
	SIP	# build/example.ml#1833:3->1833:36
	J	$vecadd.2606	# build/example.ml#1833:3->1833:36
	ADDI	%r31, %r31, $-48	# build/example.ml#1833:3->1833:36
	LDR	%r2, %r31, $40	# build/example.ml#1833:3->1833:36
	LDR	%r1, %r31, $44	# build/example.ml#1833:3->1833:36
	LDD	%r9, %r4, $4, %r5	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $48	# build/example.ml#1834:3->1834:35
	SDR	%r1, %r31, $52	# build/example.ml#1834:3->1834:35
	MV	%r2, %r9	# build/example.ml#1834:3->1834:35
	MV	%r1, %r28	# build/example.ml#1834:3->1834:35
	ADDI	%r31, %r31, $56	# build/example.ml#1834:3->1834:35
	ADDI	%r31, %r31, $4	# build/example.ml#1834:3->1834:35
	SIP	# build/example.ml#1834:3->1834:35
	J	$vecadd.2606	# build/example.ml#1834:3->1834:35
	ADDI	%r31, %r31, $-56	# build/example.ml#1834:3->1834:35
	LDR	%r2, %r31, $48	# build/example.ml#1834:3->1834:35
	LDR	%r1, %r31, $52	# build/example.ml#1834:3->1834:35
	MV	%r9, %r6	# build/example.ml#397:3->399:9
	MVI	%r8, $min_caml_rgb	# build/example.ml#1837:13->1837:16
	LDD	%r9, %r9, $4, %r5	# build/example.ml#1665:9->1665:23
	SDR	%r3, %r31, $56	# build/example.ml#1837:3->1837:43
	SDR	%r2, %r31, $60	# build/example.ml#1837:3->1837:43
	SDR	%r1, %r31, $64	# build/example.ml#1837:3->1837:43
	MV	%r3, %r28	# build/example.ml#1837:3->1837:43
	MV	%r2, %r9	# build/example.ml#1837:3->1837:43
	MV	%r1, %r8	# build/example.ml#1837:3->1837:43
	ADDI	%r31, %r31, $68	# build/example.ml#1837:3->1837:43
	ADDI	%r31, %r31, $4	# build/example.ml#1837:3->1837:43
	SIP	# build/example.ml#1837:3->1837:43
	J	$vecaccumv.2615	# build/example.ml#1837:3->1837:43
	ADDI	%r31, %r31, $-68	# build/example.ml#1837:3->1837:43
	LDR	%r3, %r31, $56	# build/example.ml#1837:3->1837:43
	LDR	%r2, %r31, $60	# build/example.ml#1837:3->1837:43
	LDR	%r1, %r31, $64	# build/example.ml#1837:3->1837:43
	LDR	%r9, %r31, $0	# build/example.ml#1824:39->1824:47
	LDR	%r8, %r31, $4	# build/example.ml#1824:39->1824:47
	LDR	%r7, %r31, $8	# build/example.ml#1824:39->1824:47
	LDR	%r28, %r31, $12	# build/example.ml#1824:39->1824:47
	LINK	# build/example.ml#1824:39->1824:47
calc_diffuse_using_1point.2922:
	SDR	%r9, %r31, $0	# build/example.ml#404:3->406:9
	SDR	%r8, %r31, $4	# build/example.ml#404:3->406:9
	SDR	%r7, %r31, $8	# build/example.ml#404:3->406:9
	SDR	%r28, %r31, $12	# build/example.ml#404:3->406:9
	SDR	%r27, %r31, $16	# build/example.ml#404:3->406:9
	SDR	%r26, %r31, $20	# build/example.ml#404:3->406:9
	SDR	%r25, %r31, $24	# build/example.ml#404:3->406:9
	SDR	%r24, %r31, $28	# build/example.ml#404:3->406:9
	MV	%r28, %r6	# build/example.ml#404:3->406:9
	MV	%r27, %r8	# build/example.ml#434:3->436:13
	MV	%r26, %r2	# build/example.ml#375:3->377:13
	MV	%r25, %r5	# build/example.ml#397:3->399:9
	MVI	%r24, $min_caml_diffuse_ray	# build/example.ml#1810:10->1810:21
	LDD	%r28, %r28, $4, %r9	# build/example.ml#1810:22->1810:35
	SDR	%r2, %r31, $32	# build/example.ml#1810:3->1810:35
	SDR	%r1, %r31, $36	# build/example.ml#1810:3->1810:35
	MV	%r2, %r28	# build/example.ml#1810:3->1810:35
	MV	%r1, %r24	# build/example.ml#1810:3->1810:35
	ADDI	%r31, %r31, $40	# build/example.ml#1810:3->1810:35
	ADDI	%r31, %r31, $4	# build/example.ml#1810:3->1810:35
	SIP	# build/example.ml#1810:3->1810:35
	J	$veccpy.2583	# build/example.ml#1810:3->1810:35
	ADDI	%r31, %r31, $-40	# build/example.ml#1810:3->1810:35
	LDR	%r2, %r31, $32	# build/example.ml#1810:3->1810:35
	LDR	%r1, %r31, $36	# build/example.ml#1810:3->1810:35
	SDR	%r6, %r31, $40	# build/example.ml#1812:6->1812:22
	SDR	%r5, %r31, $44	# build/example.ml#1812:6->1812:22
	SDR	%r4, %r31, $48	# build/example.ml#1812:6->1812:22
	SDR	%r3, %r31, $52	# build/example.ml#1812:6->1812:22
	SDR	%r2, %r31, $56	# build/example.ml#1812:6->1812:22
	SDR	%r1, %r31, $60	# build/example.ml#1812:6->1812:22
	ADDI	%r31, %r31, $64	# build/example.ml#1812:6->1812:22
	ADDI	%r31, %r31, $4	# build/example.ml#1812:6->1812:22
	SIP	# build/example.ml#1812:6->1812:22
	J	$p_group_id.2673	# build/example.ml#1812:6->1812:22
	ADDI	%r31, %r31, $-64	# build/example.ml#1812:6->1812:22
	MV	%r8, %r0	# build/example.ml#1812:6->1812:22
	LDR	%r6, %r31, $40	# build/example.ml#1812:6->1812:22
	LDR	%r5, %r31, $44	# build/example.ml#1812:6->1812:22
	LDR	%r4, %r31, $48	# build/example.ml#1812:6->1812:22
	LDR	%r3, %r31, $52	# build/example.ml#1812:6->1812:22
	LDR	%r2, %r31, $56	# build/example.ml#1812:6->1812:22
	LDR	%r1, %r31, $60	# build/example.ml#1812:6->1812:22
	LDD	%r7, %r27, $4, %r9	# build/example.ml#1668:9->1668:24
	LDD	%r6, %r26, $4, %r9	# build/example.ml#1656:14->1656:40
	SDR	%r6, %r31, $64	# build/example.ml#1811:3->1814:31
	SDR	%r5, %r31, $68	# build/example.ml#1811:3->1814:31
	SDR	%r4, %r31, $72	# build/example.ml#1811:3->1814:31
	SDR	%r3, %r31, $76	# build/example.ml#1811:3->1814:31
	SDR	%r2, %r31, $80	# build/example.ml#1811:3->1814:31
	SDR	%r1, %r31, $84	# build/example.ml#1811:3->1814:31
	MV	%r3, %r6	# build/example.ml#1811:3->1814:31
	MV	%r2, %r7	# build/example.ml#1811:3->1814:31
	MV	%r1, %r8	# build/example.ml#1811:3->1814:31
	ADDI	%r31, %r31, $88	# build/example.ml#1811:3->1814:31
	ADDI	%r31, %r31, $4	# build/example.ml#1811:3->1814:31
	SIP	# build/example.ml#1811:3->1814:31
	J	$trace_diffuse_ray_80percent.2918	# build/example.ml#1811:3->1814:31
	ADDI	%r31, %r31, $-88	# build/example.ml#1811:3->1814:31
	LDR	%r6, %r31, $64	# build/example.ml#1811:3->1814:31
	LDR	%r5, %r31, $68	# build/example.ml#1811:3->1814:31
	LDR	%r4, %r31, $72	# build/example.ml#1811:3->1814:31
	LDR	%r3, %r31, $76	# build/example.ml#1811:3->1814:31
	LDR	%r2, %r31, $80	# build/example.ml#1811:3->1814:31
	LDR	%r1, %r31, $84	# build/example.ml#1811:3->1814:31
	MVI	%r8, $min_caml_rgb	# build/example.ml#1815:13->1815:16
	LDD	%r9, %r25, $4, %r9	# build/example.ml#1665:9->1665:23
	SDR	%r3, %r31, $88	# build/example.ml#1815:3->1815:43
	SDR	%r2, %r31, $92	# build/example.ml#1815:3->1815:43
	SDR	%r1, %r31, $96	# build/example.ml#1815:3->1815:43
	MV	%r3, %r24	# build/example.ml#1815:3->1815:43
	MV	%r2, %r9	# build/example.ml#1815:3->1815:43
	MV	%r1, %r8	# build/example.ml#1815:3->1815:43
	ADDI	%r31, %r31, $100	# build/example.ml#1815:3->1815:43
	ADDI	%r31, %r31, $4	# build/example.ml#1815:3->1815:43
	SIP	# build/example.ml#1815:3->1815:43
	J	$vecaccumv.2615	# build/example.ml#1815:3->1815:43
	ADDI	%r31, %r31, $-100	# build/example.ml#1815:3->1815:43
	LDR	%r3, %r31, $88	# build/example.ml#1815:3->1815:43
	LDR	%r2, %r31, $92	# build/example.ml#1815:3->1815:43
	LDR	%r1, %r31, $96	# build/example.ml#1815:3->1815:43
	LDR	%r9, %r31, $0	# build/example.ml#404:3->406:9
	LDR	%r8, %r31, $4	# build/example.ml#404:3->406:9
	LDR	%r7, %r31, $8	# build/example.ml#404:3->406:9
	LDR	%r28, %r31, $12	# build/example.ml#404:3->406:9
	LDR	%r27, %r31, $16	# build/example.ml#404:3->406:9
	LDR	%r26, %r31, $20	# build/example.ml#404:3->406:9
	LDR	%r25, %r31, $24	# build/example.ml#404:3->406:9
	LDR	%r24, %r31, $28	# build/example.ml#404:3->406:9
	LINK	# build/example.ml#404:3->406:9
trace_diffuse_ray_80percent.2918:
	SDR	%r9, %r31, $0	# build/example.ml#1779:18->1779:19
	SDR	%r8, %r31, $4	# build/example.ml#1779:18->1779:19
	MVI	%r9, $0	# build/example.ml#1779:18->1779:19
	CEQ	%r1, %r9	# build/example.ml#1779:3->1781:10
	JZ	$if_eq.11545	# build/example.ml#1779:3->1781:10
	MVI	%r8, $min_caml_dirvecs	# build/example.ml#1780:24->1780:31
	MVI	%r9, $0	# build/example.ml#1780:33->1780:34
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1780:24->1780:35
	SDR	%r3, %r31, $8	# build/example.ml#1780:5->1780:47
	SDR	%r2, %r31, $12	# build/example.ml#1780:5->1780:47
	SDR	%r1, %r31, $16	# build/example.ml#1780:5->1780:47
	MV	%r1, %r9	# build/example.ml#1780:5->1780:47
	ADDI	%r31, %r31, $20	# build/example.ml#1780:5->1780:47
	ADDI	%r31, %r31, $4	# build/example.ml#1780:5->1780:47
	SIP	# build/example.ml#1780:5->1780:47
	J	$trace_diffuse_rays.2914	# build/example.ml#1780:5->1780:47
	ADDI	%r31, %r31, $-20	# build/example.ml#1780:5->1780:47
	LDR	%r3, %r31, $8	# build/example.ml#1780:5->1780:47
	LDR	%r2, %r31, $12	# build/example.ml#1780:5->1780:47
	LDR	%r1, %r31, $16	# build/example.ml#1780:5->1780:47
	J	$if_eq_cont.11546	# build/example.ml#1779:3->1781:10
if_eq.11545:
if_eq_cont.11546:
	MVI	%r9, $1	# build/example.ml#1783:18->1783:19
	CEQ	%r1, %r9	# build/example.ml#1783:3->1785:10
	JZ	$if_eq.11547	# build/example.ml#1783:3->1785:10
	MVI	%r8, $min_caml_dirvecs	# build/example.ml#1784:24->1784:31
	MVI	%r9, $1	# build/example.ml#1784:33->1784:34
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1780:24->1780:35
	SDR	%r3, %r31, $20	# build/example.ml#1784:5->1784:47
	SDR	%r2, %r31, $24	# build/example.ml#1784:5->1784:47
	SDR	%r1, %r31, $28	# build/example.ml#1784:5->1784:47
	MV	%r1, %r9	# build/example.ml#1784:5->1784:47
	ADDI	%r31, %r31, $32	# build/example.ml#1784:5->1784:47
	ADDI	%r31, %r31, $4	# build/example.ml#1784:5->1784:47
	SIP	# build/example.ml#1784:5->1784:47
	J	$trace_diffuse_rays.2914	# build/example.ml#1784:5->1784:47
	ADDI	%r31, %r31, $-32	# build/example.ml#1784:5->1784:47
	LDR	%r3, %r31, $20	# build/example.ml#1784:5->1784:47
	LDR	%r2, %r31, $24	# build/example.ml#1784:5->1784:47
	LDR	%r1, %r31, $28	# build/example.ml#1784:5->1784:47
	J	$if_eq_cont.11548	# build/example.ml#1783:3->1785:10
if_eq.11547:
if_eq_cont.11548:
	MVI	%r9, $2	# build/example.ml#1787:18->1787:19
	CEQ	%r1, %r9	# build/example.ml#1787:3->1789:10
	JZ	$if_eq.11549	# build/example.ml#1787:3->1789:10
	MVI	%r8, $min_caml_dirvecs	# build/example.ml#1788:24->1788:31
	MVI	%r9, $2	# build/example.ml#1788:33->1788:34
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1780:24->1780:35
	SDR	%r3, %r31, $32	# build/example.ml#1788:5->1788:47
	SDR	%r2, %r31, $36	# build/example.ml#1788:5->1788:47
	SDR	%r1, %r31, $40	# build/example.ml#1788:5->1788:47
	MV	%r1, %r9	# build/example.ml#1788:5->1788:47
	ADDI	%r31, %r31, $44	# build/example.ml#1788:5->1788:47
	ADDI	%r31, %r31, $4	# build/example.ml#1788:5->1788:47
	SIP	# build/example.ml#1788:5->1788:47
	J	$trace_diffuse_rays.2914	# build/example.ml#1788:5->1788:47
	ADDI	%r31, %r31, $-44	# build/example.ml#1788:5->1788:47
	LDR	%r3, %r31, $32	# build/example.ml#1788:5->1788:47
	LDR	%r2, %r31, $36	# build/example.ml#1788:5->1788:47
	LDR	%r1, %r31, $40	# build/example.ml#1788:5->1788:47
	J	$if_eq_cont.11550	# build/example.ml#1787:3->1789:10
if_eq.11549:
if_eq_cont.11550:
	MVI	%r9, $3	# build/example.ml#1791:18->1791:19
	CEQ	%r1, %r9	# build/example.ml#1791:3->1793:10
	JZ	$if_eq.11551	# build/example.ml#1791:3->1793:10
	MVI	%r8, $min_caml_dirvecs	# build/example.ml#1792:24->1792:31
	MVI	%r9, $3	# build/example.ml#1792:33->1792:34
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1780:24->1780:35
	SDR	%r3, %r31, $44	# build/example.ml#1792:5->1792:47
	SDR	%r2, %r31, $48	# build/example.ml#1792:5->1792:47
	SDR	%r1, %r31, $52	# build/example.ml#1792:5->1792:47
	MV	%r1, %r9	# build/example.ml#1792:5->1792:47
	ADDI	%r31, %r31, $56	# build/example.ml#1792:5->1792:47
	ADDI	%r31, %r31, $4	# build/example.ml#1792:5->1792:47
	SIP	# build/example.ml#1792:5->1792:47
	J	$trace_diffuse_rays.2914	# build/example.ml#1792:5->1792:47
	ADDI	%r31, %r31, $-56	# build/example.ml#1792:5->1792:47
	LDR	%r3, %r31, $44	# build/example.ml#1792:5->1792:47
	LDR	%r2, %r31, $48	# build/example.ml#1792:5->1792:47
	LDR	%r1, %r31, $52	# build/example.ml#1792:5->1792:47
	J	$if_eq_cont.11552	# build/example.ml#1791:3->1793:10
if_eq.11551:
if_eq_cont.11552:
	MVI	%r9, $4	# build/example.ml#1795:18->1795:19
	CEQ	%r1, %r9	# build/example.ml#1795:3->1797:10
	JZ	$if_eq.11553	# build/example.ml#1795:3->1797:10
	MVI	%r8, $min_caml_dirvecs	# build/example.ml#1796:24->1796:31
	MVI	%r9, $4	# build/example.ml#1796:33->1796:34
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1780:24->1780:35
	SDR	%r3, %r31, $56	# build/example.ml#1796:5->1796:47
	SDR	%r2, %r31, $60	# build/example.ml#1796:5->1796:47
	SDR	%r1, %r31, $64	# build/example.ml#1796:5->1796:47
	MV	%r1, %r9	# build/example.ml#1796:5->1796:47
	ADDI	%r31, %r31, $68	# build/example.ml#1796:5->1796:47
	ADDI	%r31, %r31, $4	# build/example.ml#1796:5->1796:47
	SIP	# build/example.ml#1796:5->1796:47
	J	$trace_diffuse_rays.2914	# build/example.ml#1796:5->1796:47
	ADDI	%r31, %r31, $-68	# build/example.ml#1796:5->1796:47
	LDR	%r3, %r31, $56	# build/example.ml#1796:5->1796:47
	LDR	%r2, %r31, $60	# build/example.ml#1796:5->1796:47
	LDR	%r1, %r31, $64	# build/example.ml#1796:5->1796:47
	J	$if_eq_cont.11554	# build/example.ml#1795:3->1797:10
if_eq.11553:
if_eq_cont.11554:
	LDR	%r9, %r31, $0	# build/example.ml#1779:18->1779:19
	LDR	%r8, %r31, $4	# build/example.ml#1779:18->1779:19
	LINK	# build/example.ml#1779:18->1779:19
trace_diffuse_rays.2914:
	SDR	%r9, %r31, $0	# build/example.ml#1768:3->1768:19
	SDR	%r3, %r31, $4	# build/example.ml#1768:3->1768:19
	SDR	%r2, %r31, $8	# build/example.ml#1768:3->1768:19
	SDR	%r1, %r31, $12	# build/example.ml#1768:3->1768:19
	MV	%r1, %r3	# build/example.ml#1768:3->1768:19
	ADDI	%r31, %r31, $16	# build/example.ml#1768:3->1768:19
	ADDI	%r31, %r31, $4	# build/example.ml#1768:3->1768:19
	SIP	# build/example.ml#1768:3->1768:19
	J	$setup_startp.2814	# build/example.ml#1768:3->1768:19
	ADDI	%r31, %r31, $-16	# build/example.ml#1768:3->1768:19
	LDR	%r3, %r31, $4	# build/example.ml#1768:3->1768:19
	LDR	%r2, %r31, $8	# build/example.ml#1768:3->1768:19
	LDR	%r1, %r31, $12	# build/example.ml#1768:3->1768:19
	MVI	%r9, $118	# build/example.ml#1772:52->1772:55
	SDR	%r3, %r31, $16	# build/example.ml#1772:3->1772:55
	SDR	%r2, %r31, $20	# build/example.ml#1772:3->1772:55
	SDR	%r1, %r31, $24	# build/example.ml#1772:3->1772:55
	MV	%r4, %r9	# build/example.ml#1772:3->1772:55
	ADDI	%r31, %r31, $28	# build/example.ml#1772:3->1772:55
	ADDI	%r31, %r31, $4	# build/example.ml#1772:3->1772:55
	SIP	# build/example.ml#1772:3->1772:55
	J	$iter_trace_diffuse_rays.2909	# build/example.ml#1772:3->1772:55
	ADDI	%r31, %r31, $-28	# build/example.ml#1772:3->1772:55
	LDR	%r3, %r31, $16	# build/example.ml#1772:3->1772:55
	LDR	%r2, %r31, $20	# build/example.ml#1772:3->1772:55
	LDR	%r1, %r31, $24	# build/example.ml#1772:3->1772:55
	LDR	%r9, %r31, $0	# build/example.ml#1768:3->1768:19
	LINK	# build/example.ml#1768:3->1768:19
iter_trace_diffuse_rays.2909:
	SDR	%r9, %r31, $0	# build/example.ml#1752:15->1752:16
	SDR	%r8, %r31, $4	# build/example.ml#1752:15->1752:16
	SDR	%r7, %r31, $8	# build/example.ml#1752:15->1752:16
	FSDR	%fr9, %r31, $12	# build/example.ml#1752:15->1752:16
	FSDR	%fr8, %r31, $16	# build/example.ml#1752:15->1752:16
	MVI	%r9, $0	# build/example.ml#1752:15->1752:16
	CMP	%r4, %r9	# build/example.ml#1752:3->1763:13
	JZ	$if_lt.11555	# build/example.ml#1752:3->1763:13
	LDD	%r8, %r1, $4, %r4	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r8, $4	# build/example.ml#1753:23->1753:49
	LDR	%r8, %r8, $0	# build/example.ml#1753:23->1753:49
	MV	%r7, %r8	# build/example.ml#445:3->446:8
	SDR	%r2, %r31, $20	# build/example.ml#1753:13->1753:58
	SDR	%r1, %r31, $24	# build/example.ml#1753:13->1753:58
	MV	%r1, %r7	# build/example.ml#1753:13->1753:58
	ADDI	%r31, %r31, $28	# build/example.ml#1753:13->1753:58
	ADDI	%r31, %r31, $4	# build/example.ml#1753:13->1753:58
	SIP	# build/example.ml#1753:13->1753:58
	J	$veciprod.2594	# build/example.ml#1753:13->1753:58
	ADDI	%r31, %r31, $-28	# build/example.ml#1753:13->1753:58
	FMV	%fr9, %fr0	# build/example.ml#1753:13->1753:58
	LDR	%r2, %r31, $20	# build/example.ml#1753:13->1753:58
	LDR	%r1, %r31, $24	# build/example.ml#1753:13->1753:58
	SDR	%r6, %r31, $28	# build/example.ml#1757:8->1757:16
	SDR	%r4, %r31, $32	# build/example.ml#1757:8->1757:16
	SDR	%r3, %r31, $36	# build/example.ml#1757:8->1757:16
	SDR	%r2, %r31, $40	# build/example.ml#1757:8->1757:16
	SDR	%r1, %r31, $44	# build/example.ml#1757:8->1757:16
	FMV	%fr0, %fr9	# build/example.ml#1757:8->1757:16
	ADDI	%r31, %r31, $48	# build/example.ml#1757:8->1757:16
	ADDI	%r31, %r31, $4	# build/example.ml#1757:8->1757:16
	SIP	# build/example.ml#1757:8->1757:16
	J	$min_caml_fisneg	# build/example.ml#1757:8->1757:16
	ADDI	%r31, %r31, $-48	# build/example.ml#1757:8->1757:16
	MV	%r6, %r0	# build/example.ml#1757:8->1757:16
	LDR	%r6, %r31, $28	# build/example.ml#1757:8->1757:16
	LDR	%r4, %r31, $32	# build/example.ml#1757:8->1757:16
	LDR	%r3, %r31, $36	# build/example.ml#1757:8->1757:16
	LDR	%r2, %r31, $40	# build/example.ml#1757:8->1757:16
	LDR	%r1, %r31, $44	# build/example.ml#1757:8->1757:16
	MVI	%r7, $0	# build/example.ml#1757:5->1760:58
	CEQ	%r6, %r7	# build/example.ml#1757:5->1760:58
	JZ	$if_eq.11557	# build/example.ml#1757:5->1760:58
	MVI	%r9, $1	# build/example.ml#1758:47->1758:48
	ADD	%r9, %r4, %r9	# build/example.ml#1758:39->1758:48
	LDD	%r8, %r1, $4, %r9	# build/example.ml#1753:29->1753:49
	LDR	%r9, %r8, $4	# build/example.ml#1758:7->1758:63
	LDR	%r8, %r8, $0	# build/example.ml#1758:7->1758:63
	FLDA	%fr8, $l.7792	# build/example.ml#1758:56->1758:62
	FDIV	%fr9, %fr9, %fr8	# build/example.ml#1758:51->1758:62
	SDR	%r6, %r31, $48	# build/example.ml#1758:7->1758:63
	SDR	%r4, %r31, $52	# build/example.ml#1758:7->1758:63
	SDR	%r3, %r31, $56	# build/example.ml#1758:7->1758:63
	SDR	%r2, %r31, $60	# build/example.ml#1758:7->1758:63
	SDR	%r1, %r31, $64	# build/example.ml#1758:7->1758:63
	MV	%r2, %r9	# build/example.ml#1758:7->1758:63
	MV	%r1, %r8	# build/example.ml#1758:7->1758:63
	FMV	%fr0, %fr9	# build/example.ml#1758:7->1758:63
	ADDI	%r31, %r31, $68	# build/example.ml#1758:7->1758:63
	ADDI	%r31, %r31, $4	# build/example.ml#1758:7->1758:63
	SIP	# build/example.ml#1758:7->1758:63
	J	$trace_diffuse_ray.2906	# build/example.ml#1758:7->1758:63
	ADDI	%r31, %r31, $-68	# build/example.ml#1758:7->1758:63
	LDR	%r6, %r31, $48	# build/example.ml#1758:7->1758:63
	LDR	%r4, %r31, $52	# build/example.ml#1758:7->1758:63
	LDR	%r3, %r31, $56	# build/example.ml#1758:7->1758:63
	LDR	%r2, %r31, $60	# build/example.ml#1758:7->1758:63
	LDR	%r1, %r31, $64	# build/example.ml#1758:7->1758:63
	J	$if_eq_cont.11558	# build/example.ml#1757:5->1760:58
if_eq.11557:
	FLDA	%fr8, $l.7791	# build/example.ml#1760:52->1760:57
	FDIV	%fr9, %fr9, %fr8	# build/example.ml#1760:47->1760:57
	SDR	%r6, %r31, $68	# build/example.ml#1760:7->1760:58
	SDR	%r4, %r31, $72	# build/example.ml#1760:7->1760:58
	SDR	%r3, %r31, $76	# build/example.ml#1760:7->1760:58
	SDR	%r2, %r31, $80	# build/example.ml#1760:7->1760:58
	SDR	%r1, %r31, $84	# build/example.ml#1760:7->1760:58
	MV	%r2, %r9	# build/example.ml#1760:7->1760:58
	MV	%r1, %r8	# build/example.ml#1760:7->1760:58
	FMV	%fr0, %fr9	# build/example.ml#1760:7->1760:58
	ADDI	%r31, %r31, $88	# build/example.ml#1760:7->1760:58
	ADDI	%r31, %r31, $4	# build/example.ml#1760:7->1760:58
	SIP	# build/example.ml#1760:7->1760:58
	J	$trace_diffuse_ray.2906	# build/example.ml#1760:7->1760:58
	ADDI	%r31, %r31, $-88	# build/example.ml#1760:7->1760:58
	LDR	%r6, %r31, $68	# build/example.ml#1760:7->1760:58
	LDR	%r4, %r31, $72	# build/example.ml#1760:7->1760:58
	LDR	%r3, %r31, $76	# build/example.ml#1760:7->1760:58
	LDR	%r2, %r31, $80	# build/example.ml#1760:7->1760:58
	LDR	%r1, %r31, $84	# build/example.ml#1760:7->1760:58
if_eq_cont.11558:
	MVI	%r9, $2	# build/example.ml#1762:63->1762:64
	SUB	%r9, %r4, %r9	# build/example.ml#1762:55->1762:64
	SDR	%r6, %r31, $88	# build/example.ml#1762:5->1762:65
	SDR	%r4, %r31, $92	# build/example.ml#1762:5->1762:65
	SDR	%r3, %r31, $96	# build/example.ml#1762:5->1762:65
	SDR	%r2, %r31, $100	# build/example.ml#1762:5->1762:65
	SDR	%r1, %r31, $104	# build/example.ml#1762:5->1762:65
	MV	%r4, %r9	# build/example.ml#1762:5->1762:65
	ADDI	%r31, %r31, $108	# build/example.ml#1762:5->1762:65
	ADDI	%r31, %r31, $4	# build/example.ml#1762:5->1762:65
	SIP	# build/example.ml#1762:5->1762:65
	J	$iter_trace_diffuse_rays.2909	# build/example.ml#1762:5->1762:65
	ADDI	%r31, %r31, $-108	# build/example.ml#1762:5->1762:65
	LDR	%r6, %r31, $88	# build/example.ml#1762:5->1762:65
	LDR	%r4, %r31, $92	# build/example.ml#1762:5->1762:65
	LDR	%r3, %r31, $96	# build/example.ml#1762:5->1762:65
	LDR	%r2, %r31, $100	# build/example.ml#1762:5->1762:65
	LDR	%r1, %r31, $104	# build/example.ml#1762:5->1762:65
	J	$if_lt_cont.11556	# build/example.ml#1752:3->1763:13
if_lt.11555:
if_lt_cont.11556:
	LDR	%r9, %r31, $0	# build/example.ml#1752:15->1752:16
	LDR	%r8, %r31, $4	# build/example.ml#1752:15->1752:16
	LDR	%r7, %r31, $8	# build/example.ml#1752:15->1752:16
	FLDR	%fr9, %r31, $12	# build/example.ml#1752:15->1752:16
	FLDR	%fr8, %r31, $16	# build/example.ml#1752:15->1752:16
	LINK	# build/example.ml#1752:15->1752:16
trace_diffuse_ray.2906:
	SDR	%r9, %r31, $0	# build/example.ml#1735:6->1735:36
	SDR	%r8, %r31, $4	# build/example.ml#1735:6->1735:36
	SDR	%r7, %r31, $8	# build/example.ml#1735:6->1735:36
	SDR	%r28, %r31, $12	# build/example.ml#1735:6->1735:36
	SDR	%r27, %r31, $16	# build/example.ml#1735:6->1735:36
	SDR	%r26, %r31, $20	# build/example.ml#1735:6->1735:36
	SDR	%r25, %r31, $24	# build/example.ml#1735:6->1735:36
	SDR	%r24, %r31, $28	# build/example.ml#1735:6->1735:36
	SDR	%r23, %r31, $32	# build/example.ml#1735:6->1735:36
	SDR	%r22, %r31, $36	# build/example.ml#1735:6->1735:36
	FSDR	%fr9, %r31, $40	# build/example.ml#1735:6->1735:36
	FSDR	%fr8, %r31, $44	# build/example.ml#1735:6->1735:36
	SDR	%r6, %r31, $48	# build/example.ml#1735:6->1735:36
	SDR	%r5, %r31, $52	# build/example.ml#1735:6->1735:36
	SDR	%r4, %r31, $56	# build/example.ml#1735:6->1735:36
	SDR	%r3, %r31, $60	# build/example.ml#1735:6->1735:36
	SDR	%r2, %r31, $64	# build/example.ml#1735:6->1735:36
	SDR	%r1, %r31, $68	# build/example.ml#1735:6->1735:36
	ADDI	%r31, %r31, $72	# build/example.ml#1735:6->1735:36
	ADDI	%r31, %r31, $4	# build/example.ml#1735:6->1735:36
	SIP	# build/example.ml#1735:6->1735:36
	J	$judge_intersection_fast.2877	# build/example.ml#1735:6->1735:36
	ADDI	%r31, %r31, $-72	# build/example.ml#1735:6->1735:36
	MV	%r8, %r0	# build/example.ml#1735:6->1735:36
	LDR	%r6, %r31, $48	# build/example.ml#1735:6->1735:36
	LDR	%r5, %r31, $52	# build/example.ml#1735:6->1735:36
	LDR	%r4, %r31, $56	# build/example.ml#1735:6->1735:36
	LDR	%r3, %r31, $60	# build/example.ml#1735:6->1735:36
	LDR	%r2, %r31, $64	# build/example.ml#1735:6->1735:36
	LDR	%r1, %r31, $68	# build/example.ml#1735:6->1735:36
	MVI	%r9, $0	# build/example.ml#1735:3->1746:10
	CEQ	%r8, %r9	# build/example.ml#1735:3->1746:10
	JZ	$if_eq.11559	# build/example.ml#1735:3->1746:10
	MVI	%r7, $min_caml_objects	# build/example.ml#1736:15->1736:22
	MVI	%r8, $min_caml_intersected_object_id	# build/example.ml#1736:24->1736:45
	MVI	%r9, $0	# build/example.ml#1736:47->1736:48
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1294:3->1294:36
	LDD	%r25, %r7, $4, %r9	# build/example.ml#637:7->637:25
	LDR	%r9, %r25, $40	# build/example.ml#1736:5->1745:12
	LDR	%r8, %r25, $36	# build/example.ml#1736:5->1745:12
	LDR	%r7, %r25, $32	# build/example.ml#1736:5->1745:12
	LDR	%r6, %r25, $28	# build/example.ml#1736:5->1745:12
	LDR	%r5, %r25, $24	# build/example.ml#1736:5->1745:12
	LDR	%r4, %r25, $20	# build/example.ml#1736:5->1745:12
	LDR	%r3, %r25, $16	# build/example.ml#1736:5->1745:12
	LDR	%r28, %r25, $12	# build/example.ml#1736:5->1745:12
	LDR	%r27, %r25, $8	# build/example.ml#1736:5->1745:12
	LDR	%r26, %r25, $4	# build/example.ml#1736:5->1745:12
	LDR	%r25, %r25, $0	# build/example.ml#1736:5->1745:12
	MV	%r24, %r1	# build/example.ml#445:3->446:8
	SDR	%r6, %r31, $72	# build/example.ml#1737:5->1737:35
	SDR	%r5, %r31, $76	# build/example.ml#1737:5->1737:35
	SDR	%r4, %r31, $80	# build/example.ml#1737:5->1737:35
	SDR	%r3, %r31, $84	# build/example.ml#1737:5->1737:35
	SDR	%r2, %r31, $88	# build/example.ml#1737:5->1737:35
	SDR	%r1, %r31, $92	# build/example.ml#1737:5->1737:35
	MV	%r12, %r24	# build/example.ml#1737:5->1737:35
	MV	%r11, %r9	# build/example.ml#1737:5->1737:35
	MV	%r10, %r8	# build/example.ml#1737:5->1737:35
	MV	%r2, %r26	# build/example.ml#1737:5->1737:35
	MV	%r1, %r25	# build/example.ml#1737:5->1737:35
	MV	%r9, %r7	# build/example.ml#1737:5->1737:35
	MV	%r8, %r6	# build/example.ml#1737:5->1737:35
	MV	%r7, %r5	# build/example.ml#1737:5->1737:35
	MV	%r6, %r4	# build/example.ml#1737:5->1737:35
	MV	%r5, %r3	# build/example.ml#1737:5->1737:35
	MV	%r4, %r28	# build/example.ml#1737:5->1737:35
	MV	%r3, %r27	# build/example.ml#1737:5->1737:35
	ADDI	%r31, %r31, $96	# build/example.ml#1737:5->1737:35
	ADDI	%r31, %r31, $4	# build/example.ml#1737:5->1737:35
	SIP	# build/example.ml#1737:5->1737:35
	J	$get_nvector.2885	# build/example.ml#1737:5->1737:35
	ADDI	%r31, %r31, $-96	# build/example.ml#1737:5->1737:35
	LDR	%r6, %r31, $72	# build/example.ml#1737:5->1737:35
	LDR	%r5, %r31, $76	# build/example.ml#1737:5->1737:35
	LDR	%r4, %r31, $80	# build/example.ml#1737:5->1737:35
	LDR	%r3, %r31, $84	# build/example.ml#1737:5->1737:35
	LDR	%r2, %r31, $88	# build/example.ml#1737:5->1737:35
	LDR	%r1, %r31, $92	# build/example.ml#1737:5->1737:35
	MVI	%r24, $min_caml_intersection_point	# build/example.ml#1738:18->1738:36
	SDR	%r6, %r31, $96	# build/example.ml#1738:5->1738:36
	SDR	%r5, %r31, $100	# build/example.ml#1738:5->1738:36
	SDR	%r4, %r31, $104	# build/example.ml#1738:5->1738:36
	SDR	%r3, %r31, $108	# build/example.ml#1738:5->1738:36
	SDR	%r2, %r31, $112	# build/example.ml#1738:5->1738:36
	SDR	%r1, %r31, $116	# build/example.ml#1738:5->1738:36
	MV	%r12, %r24	# build/example.ml#1738:5->1738:36
	MV	%r11, %r9	# build/example.ml#1738:5->1738:36
	MV	%r10, %r8	# build/example.ml#1738:5->1738:36
	MV	%r2, %r26	# build/example.ml#1738:5->1738:36
	MV	%r1, %r25	# build/example.ml#1738:5->1738:36
	MV	%r9, %r7	# build/example.ml#1738:5->1738:36
	MV	%r8, %r6	# build/example.ml#1738:5->1738:36
	MV	%r7, %r5	# build/example.ml#1738:5->1738:36
	MV	%r6, %r4	# build/example.ml#1738:5->1738:36
	MV	%r5, %r3	# build/example.ml#1738:5->1738:36
	MV	%r4, %r28	# build/example.ml#1738:5->1738:36
	MV	%r3, %r27	# build/example.ml#1738:5->1738:36
	ADDI	%r31, %r31, $120	# build/example.ml#1738:5->1738:36
	ADDI	%r31, %r31, $4	# build/example.ml#1738:5->1738:36
	SIP	# build/example.ml#1738:5->1738:36
	J	$utexture.2888	# build/example.ml#1738:5->1738:36
	ADDI	%r31, %r31, $-120	# build/example.ml#1738:5->1738:36
	LDR	%r6, %r31, $96	# build/example.ml#1738:5->1738:36
	LDR	%r5, %r31, $100	# build/example.ml#1738:5->1738:36
	LDR	%r4, %r31, $104	# build/example.ml#1738:5->1738:36
	LDR	%r3, %r31, $108	# build/example.ml#1738:5->1738:36
	LDR	%r2, %r31, $112	# build/example.ml#1738:5->1738:36
	LDR	%r1, %r31, $116	# build/example.ml#1738:5->1738:36
	MVI	%r23, $0	# build/example.ml#1741:40->1741:41
	MVI	%r22, $min_caml_or_net	# build/example.ml#1741:42->1741:48
	MVI	%r24, $0	# build/example.ml#1741:50->1741:51
	LDD	%r24, %r22, $4, %r24	# build/example.ml#714:4->714:35
	SDR	%r6, %r31, $120	# build/example.ml#1741:13->1741:52
	SDR	%r5, %r31, $124	# build/example.ml#1741:13->1741:52
	SDR	%r4, %r31, $128	# build/example.ml#1741:13->1741:52
	SDR	%r3, %r31, $132	# build/example.ml#1741:13->1741:52
	SDR	%r2, %r31, $136	# build/example.ml#1741:13->1741:52
	SDR	%r1, %r31, $140	# build/example.ml#1741:13->1741:52
	MV	%r2, %r24	# build/example.ml#1741:13->1741:52
	MV	%r1, %r23	# build/example.ml#1741:13->1741:52
	ADDI	%r31, %r31, $144	# build/example.ml#1741:13->1741:52
	ADDI	%r31, %r31, $4	# build/example.ml#1741:13->1741:52
	SIP	# build/example.ml#1741:13->1741:52
	J	$shadow_check_one_or_matrix.2848	# build/example.ml#1741:13->1741:52
	ADDI	%r31, %r31, $-144	# build/example.ml#1741:13->1741:52
	MV	%r23, %r0	# build/example.ml#1741:13->1741:52
	LDR	%r6, %r31, $120	# build/example.ml#1741:13->1741:52
	LDR	%r5, %r31, $124	# build/example.ml#1741:13->1741:52
	LDR	%r4, %r31, $128	# build/example.ml#1741:13->1741:52
	LDR	%r3, %r31, $132	# build/example.ml#1741:13->1741:52
	LDR	%r2, %r31, $136	# build/example.ml#1741:13->1741:52
	LDR	%r1, %r31, $140	# build/example.ml#1741:13->1741:52
	MVI	%r24, $0	# build/example.ml#1741:5->1745:12
	CEQ	%r23, %r24	# build/example.ml#1741:5->1745:12
	JZ	$if_eq.11561	# build/example.ml#1741:5->1745:12
	J	$if_eq_cont.11562	# build/example.ml#1741:5->1745:12
if_eq.11561:
	MVI	%r23, $min_caml_nvector	# build/example.ml#1742:32->1742:39
	MVI	%r24, $min_caml_light	# build/example.ml#1742:40->1742:45
	SDR	%r2, %r31, $144	# build/example.ml#1742:23->1742:45
	SDR	%r1, %r31, $148	# build/example.ml#1742:23->1742:45
	MV	%r2, %r24	# build/example.ml#1742:23->1742:45
	MV	%r1, %r23	# build/example.ml#1742:23->1742:45
	ADDI	%r31, %r31, $152	# build/example.ml#1742:23->1742:45
	ADDI	%r31, %r31, $4	# build/example.ml#1742:23->1742:45
	SIP	# build/example.ml#1742:23->1742:45
	J	$veciprod.2594	# build/example.ml#1742:23->1742:45
	ADDI	%r31, %r31, $-152	# build/example.ml#1742:23->1742:45
	FMV	%fr9, %fr0	# build/example.ml#1742:23->1742:45
	LDR	%r2, %r31, $144	# build/example.ml#1742:23->1742:45
	LDR	%r1, %r31, $148	# build/example.ml#1742:23->1742:45
	SDR	%r6, %r31, $152	# build/example.ml#1742:17->1742:46
	SDR	%r5, %r31, $156	# build/example.ml#1742:17->1742:46
	SDR	%r4, %r31, $160	# build/example.ml#1742:17->1742:46
	SDR	%r3, %r31, $164	# build/example.ml#1742:17->1742:46
	SDR	%r2, %r31, $168	# build/example.ml#1742:17->1742:46
	SDR	%r1, %r31, $172	# build/example.ml#1742:17->1742:46
	FMV	%fr0, %fr9	# build/example.ml#1742:17->1742:46
	ADDI	%r31, %r31, $176	# build/example.ml#1742:17->1742:46
	ADDI	%r31, %r31, $4	# build/example.ml#1742:17->1742:46
	SIP	# build/example.ml#1742:17->1742:46
	J	$min_caml_fneg	# build/example.ml#1742:17->1742:46
	ADDI	%r31, %r31, $-176	# build/example.ml#1742:17->1742:46
	FMV	%fr9, %fr0	# build/example.ml#1742:17->1742:46
	LDR	%r6, %r31, $152	# build/example.ml#1742:17->1742:46
	LDR	%r5, %r31, $156	# build/example.ml#1742:17->1742:46
	LDR	%r4, %r31, $160	# build/example.ml#1742:17->1742:46
	LDR	%r3, %r31, $164	# build/example.ml#1742:17->1742:46
	LDR	%r2, %r31, $168	# build/example.ml#1742:17->1742:46
	LDR	%r1, %r31, $172	# build/example.ml#1742:17->1742:46
	SDR	%r6, %r31, $176	# build/example.ml#1743:24->1743:33
	SDR	%r5, %r31, $180	# build/example.ml#1743:24->1743:33
	SDR	%r4, %r31, $184	# build/example.ml#1743:24->1743:33
	SDR	%r3, %r31, $188	# build/example.ml#1743:24->1743:33
	SDR	%r2, %r31, $192	# build/example.ml#1743:24->1743:33
	SDR	%r1, %r31, $196	# build/example.ml#1743:24->1743:33
	FMV	%fr0, %fr9	# build/example.ml#1743:24->1743:33
	ADDI	%r31, %r31, $200	# build/example.ml#1743:24->1743:33
	ADDI	%r31, %r31, $4	# build/example.ml#1743:24->1743:33
	SIP	# build/example.ml#1743:24->1743:33
	J	$min_caml_fispos	# build/example.ml#1743:24->1743:33
	ADDI	%r31, %r31, $-200	# build/example.ml#1743:24->1743:33
	MV	%r23, %r0	# build/example.ml#1743:24->1743:33
	LDR	%r6, %r31, $176	# build/example.ml#1743:24->1743:33
	LDR	%r5, %r31, $180	# build/example.ml#1743:24->1743:33
	LDR	%r4, %r31, $184	# build/example.ml#1743:24->1743:33
	LDR	%r3, %r31, $188	# build/example.ml#1743:24->1743:33
	LDR	%r2, %r31, $192	# build/example.ml#1743:24->1743:33
	LDR	%r1, %r31, $196	# build/example.ml#1743:24->1743:33
	MVI	%r24, $0	# build/example.ml#1743:21->1743:50
	CEQ	%r23, %r24	# build/example.ml#1743:21->1743:50
	JZ	$if_eq.11563	# build/example.ml#1743:21->1743:50
	J	$if_eq_cont.11564	# build/example.ml#1743:21->1743:50
if_eq.11563:
	FLDA	%rd, $l.7787	# build/example.ml#1743:47->1743:50
if_eq_cont.11564:
	MVI	%r24, $min_caml_diffuse_ray	# build/example.ml#1744:16->1744:27
	FMUL	%fr8, %fr0, %fr9	# build/example.ml#1744:29->1744:45
	SDR	%r6, %r31, $200	# build/example.ml#1744:49->1744:62
	SDR	%r5, %r31, $204	# build/example.ml#1744:49->1744:62
	SDR	%r4, %r31, $208	# build/example.ml#1744:49->1744:62
	SDR	%r3, %r31, $212	# build/example.ml#1744:49->1744:62
	SDR	%r2, %r31, $216	# build/example.ml#1744:49->1744:62
	SDR	%r1, %r31, $220	# build/example.ml#1744:49->1744:62
	MV	%r11, %r9	# build/example.ml#1744:49->1744:62
	MV	%r10, %r8	# build/example.ml#1744:49->1744:62
	MV	%r2, %r26	# build/example.ml#1744:49->1744:62
	MV	%r1, %r25	# build/example.ml#1744:49->1744:62
	MV	%r9, %r7	# build/example.ml#1744:49->1744:62
	MV	%r8, %r6	# build/example.ml#1744:49->1744:62
	MV	%r7, %r5	# build/example.ml#1744:49->1744:62
	MV	%r6, %r4	# build/example.ml#1744:49->1744:62
	MV	%r5, %r3	# build/example.ml#1744:49->1744:62
	MV	%r4, %r28	# build/example.ml#1744:49->1744:62
	MV	%r3, %r27	# build/example.ml#1744:49->1744:62
	ADDI	%r31, %r31, $224	# build/example.ml#1744:49->1744:62
	ADDI	%r31, %r31, $4	# build/example.ml#1744:49->1744:62
	SIP	# build/example.ml#1744:49->1744:62
	J	$o_diffuse.2643	# build/example.ml#1744:49->1744:62
	ADDI	%r31, %r31, $-224	# build/example.ml#1744:49->1744:62
	FMV	%fr9, %fr0	# build/example.ml#1744:49->1744:62
	LDR	%r6, %r31, $200	# build/example.ml#1744:49->1744:62
	LDR	%r5, %r31, $204	# build/example.ml#1744:49->1744:62
	LDR	%r4, %r31, $208	# build/example.ml#1744:49->1744:62
	LDR	%r3, %r31, $212	# build/example.ml#1744:49->1744:62
	LDR	%r2, %r31, $216	# build/example.ml#1744:49->1744:62
	LDR	%r1, %r31, $220	# build/example.ml#1744:49->1744:62
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1744:29->1744:62
	MVI	%r9, $min_caml_texture_color	# build/example.ml#1744:64->1744:77
	SDR	%r2, %r31, $224	# build/example.ml#1744:7->1744:77
	SDR	%r1, %r31, $228	# build/example.ml#1744:7->1744:77
	MV	%r2, %r9	# build/example.ml#1744:7->1744:77
	MV	%r1, %r24	# build/example.ml#1744:7->1744:77
	FMV	%fr0, %fr9	# build/example.ml#1744:7->1744:77
	ADDI	%r31, %r31, $232	# build/example.ml#1744:7->1744:77
	ADDI	%r31, %r31, $4	# build/example.ml#1744:7->1744:77
	SIP	# build/example.ml#1744:7->1744:77
	J	$vecaccum.2602	# build/example.ml#1744:7->1744:77
	ADDI	%r31, %r31, $-232	# build/example.ml#1744:7->1744:77
	LDR	%r2, %r31, $224	# build/example.ml#1744:7->1744:77
	LDR	%r1, %r31, $228	# build/example.ml#1744:7->1744:77
if_eq_cont.11562:
	J	$if_eq_cont.11560	# build/example.ml#1735:3->1746:10
if_eq.11559:
if_eq_cont.11560:
	LDR	%r9, %r31, $0	# build/example.ml#1735:6->1735:36
	LDR	%r8, %r31, $4	# build/example.ml#1735:6->1735:36
	LDR	%r7, %r31, $8	# build/example.ml#1735:6->1735:36
	LDR	%r28, %r31, $12	# build/example.ml#1735:6->1735:36
	LDR	%r27, %r31, $16	# build/example.ml#1735:6->1735:36
	LDR	%r26, %r31, $20	# build/example.ml#1735:6->1735:36
	LDR	%r25, %r31, $24	# build/example.ml#1735:6->1735:36
	LDR	%r24, %r31, $28	# build/example.ml#1735:6->1735:36
	LDR	%r23, %r31, $32	# build/example.ml#1735:6->1735:36
	LDR	%r22, %r31, $36	# build/example.ml#1735:6->1735:36
	FLDR	%fr9, %r31, $40	# build/example.ml#1735:6->1735:36
	FLDR	%fr8, %r31, $44	# build/example.ml#1735:6->1735:36
	LINK	# build/example.ml#1735:6->1735:36
trace_ray.2900:
	SDR	%r9, %r31, $0	# build/example.ml#1640:14->1640:15
	SDR	%r8, %r31, $4	# build/example.ml#1640:14->1640:15
	SDR	%r7, %r31, $8	# build/example.ml#1640:14->1640:15
	SDR	%r28, %r31, $12	# build/example.ml#1640:14->1640:15
	SDR	%r27, %r31, $16	# build/example.ml#1640:14->1640:15
	SDR	%r26, %r31, $20	# build/example.ml#1640:14->1640:15
	SDR	%r25, %r31, $24	# build/example.ml#1640:14->1640:15
	SDR	%r24, %r31, $28	# build/example.ml#1640:14->1640:15
	SDR	%r23, %r31, $32	# build/example.ml#1640:14->1640:15
	SDR	%r22, %r31, $36	# build/example.ml#1640:14->1640:15
	SDR	%r21, %r31, $40	# build/example.ml#1640:14->1640:15
	SDR	%r20, %r31, $44	# build/example.ml#1640:14->1640:15
	SDR	%r19, %r31, $48	# build/example.ml#1640:14->1640:15
	SDR	%r18, %r31, $52	# build/example.ml#1640:14->1640:15
	SDR	%r17, %r31, $56	# build/example.ml#1640:14->1640:15
	SDR	%r16, %r31, $60	# build/example.ml#1640:14->1640:15
	SDR	%r15, %r31, $64	# build/example.ml#1640:14->1640:15
	SDR	%r14, %r31, $68	# build/example.ml#1640:14->1640:15
	SDR	%r13, %r31, $72	# build/example.ml#1640:14->1640:15
	SDR	%r12, %r31, $76	# build/example.ml#1640:14->1640:15
	SDR	%r11, %r31, $80	# build/example.ml#1640:14->1640:15
	SDR	%r10, %r31, $84	# build/example.ml#1640:14->1640:15
	FSDR	%fr9, %r31, $88	# build/example.ml#1640:14->1640:15
	FSDR	%fr8, %r31, $92	# build/example.ml#1640:14->1640:15
	FSDR	%fr7, %r31, $96	# build/example.ml#1640:14->1640:15
	MVI	%r28, $4	# build/example.ml#1640:14->1640:15
	CMP	%r28, %r1	# build/example.ml#1640:3->1721:13
	JZ	$if_lt.11565	# build/example.ml#1640:3->1721:13
	MV	%r16, %r5	# build/example.ml#383:3->385:9
	SDR	%r6, %r31, $100	# build/example.ml#1642:8->1642:33
	SDR	%r5, %r31, $104	# build/example.ml#1642:8->1642:33
	SDR	%r4, %r31, $108	# build/example.ml#1642:8->1642:33
	SDR	%r3, %r31, $112	# build/example.ml#1642:8->1642:33
	SDR	%r2, %r31, $116	# build/example.ml#1642:8->1642:33
	SDR	%r1, %r31, $120	# build/example.ml#1642:8->1642:33
	FSDR	%fr6, %r31, $124	# build/example.ml#1642:8->1642:33
	FSDR	%fr1, %r31, $128	# build/example.ml#1642:8->1642:33
	MV	%r1, %r2	# build/example.ml#1642:8->1642:33
	ADDI	%r31, %r31, $132	# build/example.ml#1642:8->1642:33
	ADDI	%r31, %r31, $4	# build/example.ml#1642:8->1642:33
	SIP	# build/example.ml#1642:8->1642:33
	J	$judge_intersection.2863	# build/example.ml#1642:8->1642:33
	ADDI	%r31, %r31, $-132	# build/example.ml#1642:8->1642:33
	MV	%r27, %r0	# build/example.ml#1642:8->1642:33
	LDR	%r6, %r31, $100	# build/example.ml#1642:8->1642:33
	LDR	%r5, %r31, $104	# build/example.ml#1642:8->1642:33
	LDR	%r4, %r31, $108	# build/example.ml#1642:8->1642:33
	LDR	%r3, %r31, $112	# build/example.ml#1642:8->1642:33
	LDR	%r2, %r31, $116	# build/example.ml#1642:8->1642:33
	LDR	%r1, %r31, $120	# build/example.ml#1642:8->1642:33
	FLDR	%fr6, %r31, $124	# build/example.ml#1642:8->1642:33
	FLDR	%fr1, %r31, $128	# build/example.ml#1642:8->1642:33
	MVI	%r28, $0	# build/example.ml#1642:5->1720:7
	CEQ	%r27, %r28	# build/example.ml#1642:5->1720:7
	JZ	$if_eq.11567	# build/example.ml#1642:5->1720:7
	MVI	%r27, $min_caml_intersected_object_id	# build/example.ml#1644:20->1644:41
	MVI	%r28, $0	# build/example.ml#1644:43->1644:44
	LDD	%r15, %r27, $4, %r28	# build/example.ml#1294:3->1294:36
	MVI	%r28, $min_caml_objects	# build/example.ml#1645:17->1645:24
	LDD	%r18, %r28, $4, %r15	# build/example.ml#637:7->637:25
	LDR	%r28, %r18, $40	# build/example.ml#1645:7->1700:17
	LDR	%r27, %r18, $36	# build/example.ml#1645:7->1700:17
	LDR	%r26, %r18, $32	# build/example.ml#1645:7->1700:17
	LDR	%r25, %r18, $28	# build/example.ml#1645:7->1700:17
	LDR	%r24, %r18, $24	# build/example.ml#1645:7->1700:17
	LDR	%r23, %r18, $20	# build/example.ml#1645:7->1700:17
	LDR	%r22, %r18, $16	# build/example.ml#1645:7->1700:17
	LDR	%r21, %r18, $12	# build/example.ml#1645:7->1700:17
	LDR	%r20, %r18, $8	# build/example.ml#1645:7->1700:17
	LDR	%r19, %r18, $4	# build/example.ml#1645:7->1700:17
	LDR	%r18, %r18, $0	# build/example.ml#1645:7->1700:17
	MV	%r17, %r20	# build/example.ml#169:3->174:12
	SDR	%r6, %r31, $132	# build/example.ml#1647:21->1647:34
	SDR	%r5, %r31, $136	# build/example.ml#1647:21->1647:34
	SDR	%r4, %r31, $140	# build/example.ml#1647:21->1647:34
	SDR	%r3, %r31, $144	# build/example.ml#1647:21->1647:34
	SDR	%r2, %r31, $148	# build/example.ml#1647:21->1647:34
	SDR	%r1, %r31, $152	# build/example.ml#1647:21->1647:34
	MV	%r11, %r28	# build/example.ml#1647:21->1647:34
	MV	%r10, %r27	# build/example.ml#1647:21->1647:34
	MV	%r9, %r26	# build/example.ml#1647:21->1647:34
	MV	%r8, %r25	# build/example.ml#1647:21->1647:34
	MV	%r7, %r24	# build/example.ml#1647:21->1647:34
	MV	%r6, %r23	# build/example.ml#1647:21->1647:34
	MV	%r5, %r22	# build/example.ml#1647:21->1647:34
	MV	%r4, %r21	# build/example.ml#1647:21->1647:34
	MV	%r3, %r20	# build/example.ml#1647:21->1647:34
	MV	%r2, %r19	# build/example.ml#1647:21->1647:34
	MV	%r1, %r18	# build/example.ml#1647:21->1647:34
	ADDI	%r31, %r31, $156	# build/example.ml#1647:21->1647:34
	ADDI	%r31, %r31, $4	# build/example.ml#1647:21->1647:34
	SIP	# build/example.ml#1647:21->1647:34
	J	$o_diffuse.2643	# build/example.ml#1647:21->1647:34
	ADDI	%r31, %r31, $-156	# build/example.ml#1647:21->1647:34
	FMV	%fr9, %fr0	# build/example.ml#1647:21->1647:34
	LDR	%r6, %r31, $132	# build/example.ml#1647:21->1647:34
	LDR	%r5, %r31, $136	# build/example.ml#1647:21->1647:34
	LDR	%r4, %r31, $140	# build/example.ml#1647:21->1647:34
	LDR	%r3, %r31, $144	# build/example.ml#1647:21->1647:34
	LDR	%r2, %r31, $148	# build/example.ml#1647:21->1647:34
	LDR	%r1, %r31, $152	# build/example.ml#1647:21->1647:34
	FMUL	%fr7, %fr9, %fr0	# build/example.ml#1647:21->1647:44
	SDR	%r6, %r31, $156	# build/example.ml#1649:7->1649:29
	SDR	%r5, %r31, $160	# build/example.ml#1649:7->1649:29
	SDR	%r4, %r31, $164	# build/example.ml#1649:7->1649:29
	SDR	%r3, %r31, $168	# build/example.ml#1649:7->1649:29
	SDR	%r2, %r31, $172	# build/example.ml#1649:7->1649:29
	SDR	%r1, %r31, $176	# build/example.ml#1649:7->1649:29
	FSDR	%fr6, %r31, $180	# build/example.ml#1649:7->1649:29
	FSDR	%fr1, %r31, $184	# build/example.ml#1649:7->1649:29
	MV	%r12, %r2	# build/example.ml#1649:7->1649:29
	MV	%r11, %r28	# build/example.ml#1649:7->1649:29
	MV	%r10, %r27	# build/example.ml#1649:7->1649:29
	MV	%r9, %r26	# build/example.ml#1649:7->1649:29
	MV	%r8, %r25	# build/example.ml#1649:7->1649:29
	MV	%r7, %r24	# build/example.ml#1649:7->1649:29
	MV	%r6, %r23	# build/example.ml#1649:7->1649:29
	MV	%r5, %r22	# build/example.ml#1649:7->1649:29
	MV	%r4, %r21	# build/example.ml#1649:7->1649:29
	MV	%r3, %r20	# build/example.ml#1649:7->1649:29
	MV	%r1, %r18	# build/example.ml#1649:7->1649:29
	MV	%r2, %r19	# build/example.ml#1649:7->1649:29
	ADDI	%r31, %r31, $188	# build/example.ml#1649:7->1649:29
	ADDI	%r31, %r31, $4	# build/example.ml#1649:7->1649:29
	SIP	# build/example.ml#1649:7->1649:29
	J	$get_nvector.2885	# build/example.ml#1649:7->1649:29
	ADDI	%r31, %r31, $-188	# build/example.ml#1649:7->1649:29
	LDR	%r6, %r31, $156	# build/example.ml#1649:7->1649:29
	LDR	%r5, %r31, $160	# build/example.ml#1649:7->1649:29
	LDR	%r4, %r31, $164	# build/example.ml#1649:7->1649:29
	LDR	%r3, %r31, $168	# build/example.ml#1649:7->1649:29
	LDR	%r2, %r31, $172	# build/example.ml#1649:7->1649:29
	LDR	%r1, %r31, $176	# build/example.ml#1649:7->1649:29
	FLDR	%fr6, %r31, $180	# build/example.ml#1649:7->1649:29
	FLDR	%fr1, %r31, $184	# build/example.ml#1649:7->1649:29
	MVI	%r14, $min_caml_startp	# build/example.ml#1650:14->1650:20
	MVI	%r11, $min_caml_intersection_point	# build/example.ml#1650:21->1650:39
	SDR	%r2, %r31, $188	# build/example.ml#1650:7->1650:39
	SDR	%r1, %r31, $192	# build/example.ml#1650:7->1650:39
	FSDR	%fr1, %r31, $196	# build/example.ml#1650:7->1650:39
	MV	%r2, %r11	# build/example.ml#1650:7->1650:39
	MV	%r1, %r14	# build/example.ml#1650:7->1650:39
	ADDI	%r31, %r31, $200	# build/example.ml#1650:7->1650:39
	ADDI	%r31, %r31, $4	# build/example.ml#1650:7->1650:39
	SIP	# build/example.ml#1650:7->1650:39
	J	$veccpy.2583	# build/example.ml#1650:7->1650:39
	ADDI	%r31, %r31, $-200	# build/example.ml#1650:7->1650:39
	LDR	%r2, %r31, $188	# build/example.ml#1650:7->1650:39
	LDR	%r1, %r31, $192	# build/example.ml#1650:7->1650:39
	FLDR	%fr1, %r31, $196	# build/example.ml#1650:7->1650:39
	SDR	%r6, %r31, $200	# build/example.ml#1651:7->1651:38
	SDR	%r5, %r31, $204	# build/example.ml#1651:7->1651:38
	SDR	%r4, %r31, $208	# build/example.ml#1651:7->1651:38
	SDR	%r3, %r31, $212	# build/example.ml#1651:7->1651:38
	SDR	%r2, %r31, $216	# build/example.ml#1651:7->1651:38
	SDR	%r1, %r31, $220	# build/example.ml#1651:7->1651:38
	FSDR	%fr6, %r31, $224	# build/example.ml#1651:7->1651:38
	FSDR	%fr1, %r31, $228	# build/example.ml#1651:7->1651:38
	MV	%r12, %r11	# build/example.ml#1651:7->1651:38
	MV	%r10, %r27	# build/example.ml#1651:7->1651:38
	MV	%r9, %r26	# build/example.ml#1651:7->1651:38
	MV	%r8, %r25	# build/example.ml#1651:7->1651:38
	MV	%r7, %r24	# build/example.ml#1651:7->1651:38
	MV	%r6, %r23	# build/example.ml#1651:7->1651:38
	MV	%r5, %r22	# build/example.ml#1651:7->1651:38
	MV	%r4, %r21	# build/example.ml#1651:7->1651:38
	MV	%r3, %r20	# build/example.ml#1651:7->1651:38
	MV	%r2, %r19	# build/example.ml#1651:7->1651:38
	MV	%r1, %r18	# build/example.ml#1651:7->1651:38
	MV	%r11, %r28	# build/example.ml#1651:7->1651:38
	ADDI	%r31, %r31, $232	# build/example.ml#1651:7->1651:38
	ADDI	%r31, %r31, $4	# build/example.ml#1651:7->1651:38
	SIP	# build/example.ml#1651:7->1651:38
	J	$utexture.2888	# build/example.ml#1651:7->1651:38
	ADDI	%r31, %r31, $-232	# build/example.ml#1651:7->1651:38
	LDR	%r6, %r31, $200	# build/example.ml#1651:7->1651:38
	LDR	%r5, %r31, $204	# build/example.ml#1651:7->1651:38
	LDR	%r4, %r31, $208	# build/example.ml#1651:7->1651:38
	LDR	%r3, %r31, $212	# build/example.ml#1651:7->1651:38
	LDR	%r2, %r31, $216	# build/example.ml#1651:7->1651:38
	LDR	%r1, %r31, $220	# build/example.ml#1651:7->1651:38
	FLDR	%fr6, %r31, $224	# build/example.ml#1651:7->1651:38
	FLDR	%fr1, %r31, $228	# build/example.ml#1651:7->1651:38
	MVI	%r14, $4	# build/example.ml#1654:38->1654:39
	MUL	%r14, %r15, %r14	# build/example.ml#1654:29->1654:39
	MVI	%r13, $min_caml_intsec_rectside	# build/example.ml#1654:42->1654:57
	MVI	%r15, $0	# build/example.ml#1654:59->1654:60
	LDD	%r15, %r13, $4, %r15	# build/example.ml#1295:3->1295:28
	ADD	%r15, %r14, %r15	# build/example.ml#1654:29->1654:61
	SDD	%r15, %r16, $4, %r1	# build/example.ml#1654:7->1654:61
	MV	%r15, %r4	# build/example.ml#375:3->377:13
	LDD	%r15, %r15, $4, %r1	# build/example.ml#1656:14->1656:40
	SDR	%r2, %r31, $232	# build/example.ml#1656:7->1656:59
	SDR	%r1, %r31, $236	# build/example.ml#1656:7->1656:59
	FSDR	%fr1, %r31, $240	# build/example.ml#1656:7->1656:59
	MV	%r2, %r11	# build/example.ml#1656:7->1656:59
	MV	%r1, %r15	# build/example.ml#1656:7->1656:59
	ADDI	%r31, %r31, $244	# build/example.ml#1656:7->1656:59
	ADDI	%r31, %r31, $4	# build/example.ml#1656:7->1656:59
	SIP	# build/example.ml#1656:7->1656:59
	J	$veccpy.2583	# build/example.ml#1656:7->1656:59
	ADDI	%r31, %r31, $-244	# build/example.ml#1656:7->1656:59
	LDR	%r2, %r31, $232	# build/example.ml#1656:7->1656:59
	LDR	%r1, %r31, $236	# build/example.ml#1656:7->1656:59
	FLDR	%fr1, %r31, $240	# build/example.ml#1656:7->1656:59
	MV	%r15, %r6	# build/example.ml#390:3->392:9
	SDR	%r6, %r31, $244	# build/example.ml#1660:17->1660:30
	SDR	%r5, %r31, $248	# build/example.ml#1660:17->1660:30
	SDR	%r4, %r31, $252	# build/example.ml#1660:17->1660:30
	SDR	%r3, %r31, $256	# build/example.ml#1660:17->1660:30
	SDR	%r2, %r31, $260	# build/example.ml#1660:17->1660:30
	SDR	%r1, %r31, $264	# build/example.ml#1660:17->1660:30
	MV	%r11, %r28	# build/example.ml#1660:17->1660:30
	MV	%r10, %r27	# build/example.ml#1660:17->1660:30
	MV	%r9, %r26	# build/example.ml#1660:17->1660:30
	MV	%r8, %r25	# build/example.ml#1660:17->1660:30
	MV	%r7, %r24	# build/example.ml#1660:17->1660:30
	MV	%r6, %r23	# build/example.ml#1660:17->1660:30
	MV	%r5, %r22	# build/example.ml#1660:17->1660:30
	MV	%r4, %r21	# build/example.ml#1660:17->1660:30
	MV	%r3, %r20	# build/example.ml#1660:17->1660:30
	MV	%r2, %r19	# build/example.ml#1660:17->1660:30
	MV	%r1, %r18	# build/example.ml#1660:17->1660:30
	ADDI	%r31, %r31, $268	# build/example.ml#1660:17->1660:30
	ADDI	%r31, %r31, $4	# build/example.ml#1660:17->1660:30
	SIP	# build/example.ml#1660:17->1660:30
	J	$o_diffuse.2643	# build/example.ml#1660:17->1660:30
	ADDI	%r31, %r31, $-268	# build/example.ml#1660:17->1660:30
	FMV	%fr8, %fr0	# build/example.ml#1660:17->1660:30
	LDR	%r6, %r31, $244	# build/example.ml#1660:17->1660:30
	LDR	%r5, %r31, $248	# build/example.ml#1660:17->1660:30
	LDR	%r4, %r31, $252	# build/example.ml#1660:17->1660:30
	LDR	%r3, %r31, $256	# build/example.ml#1660:17->1660:30
	LDR	%r2, %r31, $260	# build/example.ml#1660:17->1660:30
	LDR	%r1, %r31, $264	# build/example.ml#1660:17->1660:30
	FLDA	%fr9, $l.7793	# build/example.ml#1660:32->1660:35
	SDR	%r6, %r31, $268	# build/example.ml#1660:10->1660:35
	SDR	%r5, %r31, $272	# build/example.ml#1660:10->1660:35
	SDR	%r4, %r31, $276	# build/example.ml#1660:10->1660:35
	SDR	%r3, %r31, $280	# build/example.ml#1660:10->1660:35
	SDR	%r2, %r31, $284	# build/example.ml#1660:10->1660:35
	SDR	%r1, %r31, $288	# build/example.ml#1660:10->1660:35
	FSDR	%fr6, %r31, $292	# build/example.ml#1660:10->1660:35
	FSDR	%fr1, %r31, $296	# build/example.ml#1660:10->1660:35
	FMV	%fr1, %fr9	# build/example.ml#1660:10->1660:35
	FMV	%fr0, %fr8	# build/example.ml#1660:10->1660:35
	ADDI	%r31, %r31, $300	# build/example.ml#1660:10->1660:35
	ADDI	%r31, %r31, $4	# build/example.ml#1660:10->1660:35
	SIP	# build/example.ml#1660:10->1660:35
	J	$min_caml_fless	# build/example.ml#1660:10->1660:35
	ADDI	%r31, %r31, $-300	# build/example.ml#1660:10->1660:35
	MV	%r13, %r0	# build/example.ml#1660:10->1660:35
	LDR	%r6, %r31, $268	# build/example.ml#1660:10->1660:35
	LDR	%r5, %r31, $272	# build/example.ml#1660:10->1660:35
	LDR	%r4, %r31, $276	# build/example.ml#1660:10->1660:35
	LDR	%r3, %r31, $280	# build/example.ml#1660:10->1660:35
	LDR	%r2, %r31, $284	# build/example.ml#1660:10->1660:35
	LDR	%r1, %r31, $288	# build/example.ml#1660:10->1660:35
	FLDR	%fr6, %r31, $292	# build/example.ml#1660:10->1660:35
	FLDR	%fr1, %r31, $296	# build/example.ml#1660:10->1660:35
	MVI	%r14, $0	# build/example.ml#1660:7->1669:9
	CEQ	%r13, %r14	# build/example.ml#1660:7->1669:9
	JZ	$if_eq.11569	# build/example.ml#1660:7->1669:9
	MVI	%r14, $0	# build/example.ml#1661:25->1661:30
	SDD	%r14, %r15, $4, %r1	# build/example.ml#1661:2->1661:30
	J	$if_eq_cont.11570	# build/example.ml#1660:7->1669:9
if_eq.11569:
	MVI	%r14, $1	# build/example.ml#1663:25->1663:29
	SDD	%r14, %r15, $4, %r1	# build/example.ml#1663:2->1663:29
	MV	%r15, %r7	# build/example.ml#397:3->399:9
	LDD	%r14, %r15, $4, %r1	# build/example.ml#1665:9->1665:23
	MVI	%r15, $min_caml_texture_color	# build/example.ml#1665:24->1665:37
	SDR	%r2, %r31, $300	# build/example.ml#1665:2->1665:37
	SDR	%r1, %r31, $304	# build/example.ml#1665:2->1665:37
	FSDR	%fr1, %r31, $308	# build/example.ml#1665:2->1665:37
	MV	%r2, %r15	# build/example.ml#1665:2->1665:37
	MV	%r1, %r14	# build/example.ml#1665:2->1665:37
	ADDI	%r31, %r31, $312	# build/example.ml#1665:2->1665:37
	ADDI	%r31, %r31, $4	# build/example.ml#1665:2->1665:37
	SIP	# build/example.ml#1665:2->1665:37
	J	$veccpy.2583	# build/example.ml#1665:2->1665:37
	ADDI	%r31, %r31, $-312	# build/example.ml#1665:2->1665:37
	LDR	%r2, %r31, $300	# build/example.ml#1665:2->1665:37
	LDR	%r1, %r31, $304	# build/example.ml#1665:2->1665:37
	FLDR	%fr1, %r31, $308	# build/example.ml#1665:2->1665:37
	FLDA	%fr9, $l.7794	# build/example.ml#1666:28->1666:40
	FMUL	%fr9, %fr9, %fr7	# build/example.ml#1666:27->1666:52
	SDR	%r1, %r31, $312	# build/example.ml#1666:2->1666:53
	FSDR	%fr1, %r31, $316	# build/example.ml#1666:2->1666:53
	MV	%r1, %r14	# build/example.ml#1666:2->1666:53
	FMV	%fr0, %fr9	# build/example.ml#1666:2->1666:53
	ADDI	%r31, %r31, $320	# build/example.ml#1666:2->1666:53
	ADDI	%r31, %r31, $4	# build/example.ml#1666:2->1666:53
	SIP	# build/example.ml#1666:2->1666:53
	J	$vecscale.2612	# build/example.ml#1666:2->1666:53
	ADDI	%r31, %r31, $-320	# build/example.ml#1666:2->1666:53
	LDR	%r1, %r31, $312	# build/example.ml#1666:2->1666:53
	FLDR	%fr1, %r31, $316	# build/example.ml#1666:2->1666:53
	MV	%r15, %r10	# build/example.ml#434:3->436:13
	LDD	%r14, %r15, $4, %r1	# build/example.ml#1668:9->1668:24
	MVI	%r15, $min_caml_nvector	# build/example.ml#1668:25->1668:32
	SDR	%r2, %r31, $320	# build/example.ml#1668:2->1668:32
	SDR	%r1, %r31, $324	# build/example.ml#1668:2->1668:32
	FSDR	%fr1, %r31, $328	# build/example.ml#1668:2->1668:32
	MV	%r2, %r15	# build/example.ml#1668:2->1668:32
	MV	%r1, %r14	# build/example.ml#1668:2->1668:32
	ADDI	%r31, %r31, $332	# build/example.ml#1668:2->1668:32
	ADDI	%r31, %r31, $4	# build/example.ml#1668:2->1668:32
	SIP	# build/example.ml#1668:2->1668:32
	J	$veccpy.2583	# build/example.ml#1668:2->1668:32
	ADDI	%r31, %r31, $-332	# build/example.ml#1668:2->1668:32
	LDR	%r2, %r31, $320	# build/example.ml#1668:2->1668:32
	LDR	%r1, %r31, $324	# build/example.ml#1668:2->1668:32
	FLDR	%fr1, %r31, $328	# build/example.ml#1668:2->1668:32
if_eq_cont.11570:
	FLDA	%fr8, $l.7795	# build/example.ml#1671:16->1671:20
	MVI	%r12, $min_caml_nvector	# build/example.ml#1671:41->1671:48
	SDR	%r2, %r31, $332	# build/example.ml#1671:25->1671:48
	SDR	%r1, %r31, $336	# build/example.ml#1671:25->1671:48
	FSDR	%fr1, %r31, $340	# build/example.ml#1671:25->1671:48
	MV	%r1, %r2	# build/example.ml#1671:25->1671:48
	MV	%r2, %r12	# build/example.ml#1671:25->1671:48
	ADDI	%r31, %r31, $344	# build/example.ml#1671:25->1671:48
	ADDI	%r31, %r31, $4	# build/example.ml#1671:25->1671:48
	SIP	# build/example.ml#1671:25->1671:48
	J	$veciprod.2594	# build/example.ml#1671:25->1671:48
	ADDI	%r31, %r31, $-344	# build/example.ml#1671:25->1671:48
	FMV	%fr9, %fr0	# build/example.ml#1671:25->1671:48
	LDR	%r2, %r31, $332	# build/example.ml#1671:25->1671:48
	LDR	%r1, %r31, $336	# build/example.ml#1671:25->1671:48
	FLDR	%fr1, %r31, $340	# build/example.ml#1671:25->1671:48
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1671:15->1671:48
	SDR	%r2, %r31, $344	# build/example.ml#1673:7->1673:32
	SDR	%r1, %r31, $348	# build/example.ml#1673:7->1673:32
	FSDR	%fr1, %r31, $352	# build/example.ml#1673:7->1673:32
	MV	%r1, %r2	# build/example.ml#1673:7->1673:32
	MV	%r2, %r12	# build/example.ml#1673:7->1673:32
	FMV	%fr0, %fr9	# build/example.ml#1673:7->1673:32
	ADDI	%r31, %r31, $356	# build/example.ml#1673:7->1673:32
	ADDI	%r31, %r31, $4	# build/example.ml#1673:7->1673:32
	SIP	# build/example.ml#1673:7->1673:32
	J	$vecaccum.2602	# build/example.ml#1673:7->1673:32
	ADDI	%r31, %r31, $-356	# build/example.ml#1673:7->1673:32
	LDR	%r2, %r31, $344	# build/example.ml#1673:7->1673:32
	LDR	%r1, %r31, $348	# build/example.ml#1673:7->1673:32
	FLDR	%fr1, %r31, $352	# build/example.ml#1673:7->1673:32
	SDR	%r6, %r31, $356	# build/example.ml#1675:37->1675:50
	SDR	%r5, %r31, $360	# build/example.ml#1675:37->1675:50
	SDR	%r4, %r31, $364	# build/example.ml#1675:37->1675:50
	SDR	%r3, %r31, $368	# build/example.ml#1675:37->1675:50
	SDR	%r2, %r31, $372	# build/example.ml#1675:37->1675:50
	SDR	%r1, %r31, $376	# build/example.ml#1675:37->1675:50
	MV	%r11, %r28	# build/example.ml#1675:37->1675:50
	MV	%r10, %r27	# build/example.ml#1675:37->1675:50
	MV	%r9, %r26	# build/example.ml#1675:37->1675:50
	MV	%r8, %r25	# build/example.ml#1675:37->1675:50
	MV	%r7, %r24	# build/example.ml#1675:37->1675:50
	MV	%r6, %r23	# build/example.ml#1675:37->1675:50
	MV	%r5, %r22	# build/example.ml#1675:37->1675:50
	MV	%r4, %r21	# build/example.ml#1675:37->1675:50
	MV	%r3, %r20	# build/example.ml#1675:37->1675:50
	MV	%r2, %r19	# build/example.ml#1675:37->1675:50
	MV	%r1, %r18	# build/example.ml#1675:37->1675:50
	ADDI	%r31, %r31, $380	# build/example.ml#1675:37->1675:50
	ADDI	%r31, %r31, $4	# build/example.ml#1675:37->1675:50
	SIP	# build/example.ml#1675:37->1675:50
	J	$o_hilight.2645	# build/example.ml#1675:37->1675:50
	ADDI	%r31, %r31, $-380	# build/example.ml#1675:37->1675:50
	FMV	%fr9, %fr0	# build/example.ml#1675:37->1675:50
	LDR	%r6, %r31, $356	# build/example.ml#1675:37->1675:50
	LDR	%r5, %r31, $360	# build/example.ml#1675:37->1675:50
	LDR	%r4, %r31, $364	# build/example.ml#1675:37->1675:50
	LDR	%r3, %r31, $368	# build/example.ml#1675:37->1675:50
	LDR	%r2, %r31, $372	# build/example.ml#1675:37->1675:50
	LDR	%r1, %r31, $376	# build/example.ml#1675:37->1675:50
	FMUL	%fr9, %fr0, %fr9	# build/example.ml#1675:27->1675:50
	MVI	%r14, $0	# build/example.ml#1678:42->1678:43
	MVI	%r13, $min_caml_or_net	# build/example.ml#1678:44->1678:50
	MVI	%r15, $0	# build/example.ml#1678:52->1678:53
	LDD	%r15, %r13, $4, %r15	# build/example.ml#714:4->714:35
	SDR	%r6, %r31, $380	# build/example.ml#1678:15->1678:54
	SDR	%r5, %r31, $384	# build/example.ml#1678:15->1678:54
	SDR	%r4, %r31, $388	# build/example.ml#1678:15->1678:54
	SDR	%r3, %r31, $392	# build/example.ml#1678:15->1678:54
	SDR	%r2, %r31, $396	# build/example.ml#1678:15->1678:54
	SDR	%r1, %r31, $400	# build/example.ml#1678:15->1678:54
	FSDR	%fr6, %r31, $404	# build/example.ml#1678:15->1678:54
	FSDR	%fr1, %r31, $408	# build/example.ml#1678:15->1678:54
	MV	%r2, %r15	# build/example.ml#1678:15->1678:54
	MV	%r1, %r14	# build/example.ml#1678:15->1678:54
	ADDI	%r31, %r31, $412	# build/example.ml#1678:15->1678:54
	ADDI	%r31, %r31, $4	# build/example.ml#1678:15->1678:54
	SIP	# build/example.ml#1678:15->1678:54
	J	$shadow_check_one_or_matrix.2848	# build/example.ml#1678:15->1678:54
	ADDI	%r31, %r31, $-412	# build/example.ml#1678:15->1678:54
	MV	%r14, %r0	# build/example.ml#1678:15->1678:54
	LDR	%r6, %r31, $380	# build/example.ml#1678:15->1678:54
	LDR	%r5, %r31, $384	# build/example.ml#1678:15->1678:54
	LDR	%r4, %r31, $388	# build/example.ml#1678:15->1678:54
	LDR	%r3, %r31, $392	# build/example.ml#1678:15->1678:54
	LDR	%r2, %r31, $396	# build/example.ml#1678:15->1678:54
	LDR	%r1, %r31, $400	# build/example.ml#1678:15->1678:54
	FLDR	%fr6, %r31, $404	# build/example.ml#1678:15->1678:54
	FLDR	%fr1, %r31, $408	# build/example.ml#1678:15->1678:54
	MVI	%r15, $0	# build/example.ml#1678:7->1682:14
	CEQ	%r14, %r15	# build/example.ml#1678:7->1682:14
	JZ	$if_eq.11571	# build/example.ml#1678:7->1682:14
	J	$if_eq_cont.11572	# build/example.ml#1678:7->1682:14
if_eq.11571:
	MVI	%r15, $min_caml_light	# build/example.ml#1679:45->1679:50
	SDR	%r2, %r31, $412	# build/example.ml#1679:28->1679:50
	SDR	%r1, %r31, $416	# build/example.ml#1679:28->1679:50
	FSDR	%fr1, %r31, $420	# build/example.ml#1679:28->1679:50
	MV	%r2, %r15	# build/example.ml#1679:28->1679:50
	MV	%r1, %r12	# build/example.ml#1679:28->1679:50
	ADDI	%r31, %r31, $424	# build/example.ml#1679:28->1679:50
	ADDI	%r31, %r31, $4	# build/example.ml#1679:28->1679:50
	SIP	# build/example.ml#1679:28->1679:50
	J	$veciprod.2594	# build/example.ml#1679:28->1679:50
	ADDI	%r31, %r31, $-424	# build/example.ml#1679:28->1679:50
	FMV	%fr8, %fr0	# build/example.ml#1679:28->1679:50
	LDR	%r2, %r31, $412	# build/example.ml#1679:28->1679:50
	LDR	%r1, %r31, $416	# build/example.ml#1679:28->1679:50
	FLDR	%fr1, %r31, $420	# build/example.ml#1679:28->1679:50
	SDR	%r6, %r31, $424	# build/example.ml#1679:22->1679:51
	SDR	%r5, %r31, $428	# build/example.ml#1679:22->1679:51
	SDR	%r4, %r31, $432	# build/example.ml#1679:22->1679:51
	SDR	%r3, %r31, $436	# build/example.ml#1679:22->1679:51
	SDR	%r2, %r31, $440	# build/example.ml#1679:22->1679:51
	SDR	%r1, %r31, $444	# build/example.ml#1679:22->1679:51
	FSDR	%fr6, %r31, $448	# build/example.ml#1679:22->1679:51
	FSDR	%fr1, %r31, $452	# build/example.ml#1679:22->1679:51
	FMV	%fr0, %fr8	# build/example.ml#1679:22->1679:51
	ADDI	%r31, %r31, $456	# build/example.ml#1679:22->1679:51
	ADDI	%r31, %r31, $4	# build/example.ml#1679:22->1679:51
	SIP	# build/example.ml#1679:22->1679:51
	J	$min_caml_fneg	# build/example.ml#1679:22->1679:51
	ADDI	%r31, %r31, $-456	# build/example.ml#1679:22->1679:51
	FMV	%fr8, %fr0	# build/example.ml#1679:22->1679:51
	LDR	%r6, %r31, $424	# build/example.ml#1679:22->1679:51
	LDR	%r5, %r31, $428	# build/example.ml#1679:22->1679:51
	LDR	%r4, %r31, $432	# build/example.ml#1679:22->1679:51
	LDR	%r3, %r31, $436	# build/example.ml#1679:22->1679:51
	LDR	%r2, %r31, $440	# build/example.ml#1679:22->1679:51
	LDR	%r1, %r31, $444	# build/example.ml#1679:22->1679:51
	FLDR	%fr6, %r31, $448	# build/example.ml#1679:22->1679:51
	FLDR	%fr1, %r31, $452	# build/example.ml#1679:22->1679:51
	FMUL	%fr6, %fr8, %fr7	# build/example.ml#1679:22->1679:62
	SDR	%r2, %r31, $456	# build/example.ml#1680:29->1680:50
	SDR	%r1, %r31, $460	# build/example.ml#1680:29->1680:50
	FSDR	%fr1, %r31, $464	# build/example.ml#1680:29->1680:50
	MV	%r1, %r2	# build/example.ml#1680:29->1680:50
	MV	%r2, %r15	# build/example.ml#1680:29->1680:50
	ADDI	%r31, %r31, $468	# build/example.ml#1680:29->1680:50
	ADDI	%r31, %r31, $4	# build/example.ml#1680:29->1680:50
	SIP	# build/example.ml#1680:29->1680:50
	J	$veciprod.2594	# build/example.ml#1680:29->1680:50
	ADDI	%r31, %r31, $-468	# build/example.ml#1680:29->1680:50
	FMV	%fr8, %fr0	# build/example.ml#1680:29->1680:50
	LDR	%r2, %r31, $456	# build/example.ml#1680:29->1680:50
	LDR	%r1, %r31, $460	# build/example.ml#1680:29->1680:50
	FLDR	%fr1, %r31, $464	# build/example.ml#1680:29->1680:50
	SDR	%r6, %r31, $468	# build/example.ml#1680:23->1680:51
	SDR	%r5, %r31, $472	# build/example.ml#1680:23->1680:51
	SDR	%r4, %r31, $476	# build/example.ml#1680:23->1680:51
	SDR	%r3, %r31, $480	# build/example.ml#1680:23->1680:51
	SDR	%r2, %r31, $484	# build/example.ml#1680:23->1680:51
	SDR	%r1, %r31, $488	# build/example.ml#1680:23->1680:51
	FSDR	%fr6, %r31, $492	# build/example.ml#1680:23->1680:51
	FSDR	%fr1, %r31, $496	# build/example.ml#1680:23->1680:51
	FMV	%fr0, %fr8	# build/example.ml#1680:23->1680:51
	ADDI	%r31, %r31, $500	# build/example.ml#1680:23->1680:51
	ADDI	%r31, %r31, $4	# build/example.ml#1680:23->1680:51
	SIP	# build/example.ml#1680:23->1680:51
	J	$min_caml_fneg	# build/example.ml#1680:23->1680:51
	ADDI	%r31, %r31, $-500	# build/example.ml#1680:23->1680:51
	FMV	%fr8, %fr0	# build/example.ml#1680:23->1680:51
	LDR	%r6, %r31, $468	# build/example.ml#1680:23->1680:51
	LDR	%r5, %r31, $472	# build/example.ml#1680:23->1680:51
	LDR	%r4, %r31, $476	# build/example.ml#1680:23->1680:51
	LDR	%r3, %r31, $480	# build/example.ml#1680:23->1680:51
	LDR	%r2, %r31, $484	# build/example.ml#1680:23->1680:51
	LDR	%r1, %r31, $488	# build/example.ml#1680:23->1680:51
	FLDR	%fr6, %r31, $492	# build/example.ml#1680:23->1680:51
	FLDR	%fr1, %r31, $496	# build/example.ml#1680:23->1680:51
	SDR	%r6, %r31, $500	# build/example.ml#1681:9->1681:47
	SDR	%r5, %r31, $504	# build/example.ml#1681:9->1681:47
	SDR	%r4, %r31, $508	# build/example.ml#1681:9->1681:47
	SDR	%r3, %r31, $512	# build/example.ml#1681:9->1681:47
	SDR	%r2, %r31, $516	# build/example.ml#1681:9->1681:47
	SDR	%r1, %r31, $520	# build/example.ml#1681:9->1681:47
	FSDR	%fr6, %r31, $524	# build/example.ml#1681:9->1681:47
	FSDR	%fr1, %r31, $528	# build/example.ml#1681:9->1681:47
	FMV	%fr2, %fr9	# build/example.ml#1681:9->1681:47
	FMV	%fr1, %fr8	# build/example.ml#1681:9->1681:47
	FMV	%fr0, %fr6	# build/example.ml#1681:9->1681:47
	ADDI	%r31, %r31, $532	# build/example.ml#1681:9->1681:47
	ADDI	%r31, %r31, $4	# build/example.ml#1681:9->1681:47
	SIP	# build/example.ml#1681:9->1681:47
	J	$add_light.2891	# build/example.ml#1681:9->1681:47
	ADDI	%r31, %r31, $-532	# build/example.ml#1681:9->1681:47
	LDR	%r6, %r31, $500	# build/example.ml#1681:9->1681:47
	LDR	%r5, %r31, $504	# build/example.ml#1681:9->1681:47
	LDR	%r4, %r31, $508	# build/example.ml#1681:9->1681:47
	LDR	%r3, %r31, $512	# build/example.ml#1681:9->1681:47
	LDR	%r2, %r31, $516	# build/example.ml#1681:9->1681:47
	LDR	%r1, %r31, $520	# build/example.ml#1681:9->1681:47
	FLDR	%fr6, %r31, $524	# build/example.ml#1681:9->1681:47
	FLDR	%fr1, %r31, $528	# build/example.ml#1681:9->1681:47
if_eq_cont.11572:
	SDR	%r6, %r31, $532	# build/example.ml#1685:7->1685:38
	SDR	%r5, %r31, $536	# build/example.ml#1685:7->1685:38
	SDR	%r4, %r31, $540	# build/example.ml#1685:7->1685:38
	SDR	%r3, %r31, $544	# build/example.ml#1685:7->1685:38
	SDR	%r2, %r31, $548	# build/example.ml#1685:7->1685:38
	SDR	%r1, %r31, $552	# build/example.ml#1685:7->1685:38
	FSDR	%fr6, %r31, $556	# build/example.ml#1685:7->1685:38
	FSDR	%fr1, %r31, $560	# build/example.ml#1685:7->1685:38
	MV	%r1, %r11	# build/example.ml#1685:7->1685:38
	ADDI	%r31, %r31, $564	# build/example.ml#1685:7->1685:38
	ADDI	%r31, %r31, $4	# build/example.ml#1685:7->1685:38
	SIP	# build/example.ml#1685:7->1685:38
	J	$setup_startp.2814	# build/example.ml#1685:7->1685:38
	ADDI	%r31, %r31, $-564	# build/example.ml#1685:7->1685:38
	LDR	%r6, %r31, $532	# build/example.ml#1685:7->1685:38
	LDR	%r5, %r31, $536	# build/example.ml#1685:7->1685:38
	LDR	%r4, %r31, $540	# build/example.ml#1685:7->1685:38
	LDR	%r3, %r31, $544	# build/example.ml#1685:7->1685:38
	LDR	%r2, %r31, $548	# build/example.ml#1685:7->1685:38
	LDR	%r1, %r31, $552	# build/example.ml#1685:7->1685:38
	FLDR	%fr6, %r31, $556	# build/example.ml#1685:7->1685:38
	FLDR	%fr1, %r31, $560	# build/example.ml#1685:7->1685:38
	MVI	%r14, $min_caml_n_reflections	# build/example.ml#1686:26->1686:39
	MVI	%r15, $0	# build/example.ml#1686:41->1686:42
	LDD	%r14, %r14, $4, %r15	# build/example.ml#1686:26->1686:43
	MVI	%r15, $1	# build/example.ml#1686:44->1686:45
	SUB	%r15, %r14, %r15	# build/example.ml#1686:26->1686:45
	SDR	%r6, %r31, $564	# build/example.ml#1686:7->1686:75
	SDR	%r5, %r31, $568	# build/example.ml#1686:7->1686:75
	SDR	%r4, %r31, $572	# build/example.ml#1686:7->1686:75
	SDR	%r3, %r31, $576	# build/example.ml#1686:7->1686:75
	SDR	%r2, %r31, $580	# build/example.ml#1686:7->1686:75
	SDR	%r1, %r31, $584	# build/example.ml#1686:7->1686:75
	FSDR	%fr6, %r31, $588	# build/example.ml#1686:7->1686:75
	FSDR	%fr1, %r31, $592	# build/example.ml#1686:7->1686:75
	MV	%r1, %r15	# build/example.ml#1686:7->1686:75
	FMV	%fr1, %fr9	# build/example.ml#1686:7->1686:75
	FMV	%fr0, %fr7	# build/example.ml#1686:7->1686:75
	ADDI	%r31, %r31, $596	# build/example.ml#1686:7->1686:75
	ADDI	%r31, %r31, $4	# build/example.ml#1686:7->1686:75
	SIP	# build/example.ml#1686:7->1686:75
	J	$trace_reflections.2895	# build/example.ml#1686:7->1686:75
	ADDI	%r31, %r31, $-596	# build/example.ml#1686:7->1686:75
	LDR	%r6, %r31, $564	# build/example.ml#1686:7->1686:75
	LDR	%r5, %r31, $568	# build/example.ml#1686:7->1686:75
	LDR	%r4, %r31, $572	# build/example.ml#1686:7->1686:75
	LDR	%r3, %r31, $576	# build/example.ml#1686:7->1686:75
	LDR	%r2, %r31, $580	# build/example.ml#1686:7->1686:75
	LDR	%r1, %r31, $584	# build/example.ml#1686:7->1686:75
	FLDR	%fr6, %r31, $588	# build/example.ml#1686:7->1686:75
	FLDR	%fr1, %r31, $592	# build/example.ml#1686:7->1686:75
	FLDA	%fr9, $l.7790	# build/example.ml#1689:16->1689:19
	SDR	%r6, %r31, $596	# build/example.ml#1689:10->1689:26
	SDR	%r5, %r31, $600	# build/example.ml#1689:10->1689:26
	SDR	%r4, %r31, $604	# build/example.ml#1689:10->1689:26
	SDR	%r3, %r31, $608	# build/example.ml#1689:10->1689:26
	SDR	%r2, %r31, $612	# build/example.ml#1689:10->1689:26
	SDR	%r1, %r31, $616	# build/example.ml#1689:10->1689:26
	FSDR	%fr6, %r31, $620	# build/example.ml#1689:10->1689:26
	FSDR	%fr1, %r31, $624	# build/example.ml#1689:10->1689:26
	FMV	%fr1, %fr0	# build/example.ml#1689:10->1689:26
	FMV	%fr0, %fr9	# build/example.ml#1689:10->1689:26
	ADDI	%r31, %r31, $628	# build/example.ml#1689:10->1689:26
	ADDI	%r31, %r31, $4	# build/example.ml#1689:10->1689:26
	SIP	# build/example.ml#1689:10->1689:26
	J	$min_caml_fless	# build/example.ml#1689:10->1689:26
	ADDI	%r31, %r31, $-628	# build/example.ml#1689:10->1689:26
	MV	%r14, %r0	# build/example.ml#1689:10->1689:26
	LDR	%r6, %r31, $596	# build/example.ml#1689:10->1689:26
	LDR	%r5, %r31, $600	# build/example.ml#1689:10->1689:26
	LDR	%r4, %r31, $604	# build/example.ml#1689:10->1689:26
	LDR	%r3, %r31, $608	# build/example.ml#1689:10->1689:26
	LDR	%r2, %r31, $612	# build/example.ml#1689:10->1689:26
	LDR	%r1, %r31, $616	# build/example.ml#1689:10->1689:26
	FLDR	%fr6, %r31, $620	# build/example.ml#1689:10->1689:26
	FLDR	%fr1, %r31, $624	# build/example.ml#1689:10->1689:26
	MVI	%r15, $0	# build/example.ml#1689:7->1700:17
	CEQ	%r14, %r15	# build/example.ml#1689:7->1700:17
	JZ	$if_eq.11573	# build/example.ml#1689:7->1700:17
	MVI	%r15, $4	# build/example.ml#1691:12->1691:13
	CMP	%r1, %r15	# build/example.ml#1691:2->1693:9
	JZ	$if_lt.11575	# build/example.ml#1691:2->1693:9
	J	$if_lt_cont.11576	# build/example.ml#1691:2->1693:9
if_lt.11575:
	MVI	%r15, $1	# build/example.ml#1692:22->1692:23
	ADD	%r14, %r1, %r15	# build/example.ml#1692:17->1692:23
	MVI	%r15, $-1	# build/example.ml#1692:28->1692:30
	SDD	%r15, %r16, $4, %r14	# build/example.ml#1692:4->1692:30
if_lt_cont.11576:
	MVI	%r16, $2	# build/example.ml#1695:17->1695:18
	CEQ	%r17, %r16	# build/example.ml#1695:2->1698:12
	JZ	$if_eq.11577	# build/example.ml#1695:2->1698:12
	J	$if_eq_cont.11578	# build/example.ml#1695:2->1698:12
if_eq.11577:
	FLDA	%fr8, $l.7785	# build/example.ml#1696:29->1696:32
	SDR	%r6, %r31, $628	# build/example.ml#1696:36->1696:49
	SDR	%r5, %r31, $632	# build/example.ml#1696:36->1696:49
	SDR	%r4, %r31, $636	# build/example.ml#1696:36->1696:49
	SDR	%r3, %r31, $640	# build/example.ml#1696:36->1696:49
	SDR	%r2, %r31, $644	# build/example.ml#1696:36->1696:49
	SDR	%r1, %r31, $648	# build/example.ml#1696:36->1696:49
	MV	%r11, %r28	# build/example.ml#1696:36->1696:49
	MV	%r10, %r27	# build/example.ml#1696:36->1696:49
	MV	%r9, %r26	# build/example.ml#1696:36->1696:49
	MV	%r8, %r25	# build/example.ml#1696:36->1696:49
	MV	%r7, %r24	# build/example.ml#1696:36->1696:49
	MV	%r6, %r23	# build/example.ml#1696:36->1696:49
	MV	%r5, %r22	# build/example.ml#1696:36->1696:49
	MV	%r4, %r21	# build/example.ml#1696:36->1696:49
	MV	%r3, %r20	# build/example.ml#1696:36->1696:49
	MV	%r2, %r19	# build/example.ml#1696:36->1696:49
	MV	%r1, %r18	# build/example.ml#1696:36->1696:49
	ADDI	%r31, %r31, $652	# build/example.ml#1696:36->1696:49
	ADDI	%r31, %r31, $4	# build/example.ml#1696:36->1696:49
	SIP	# build/example.ml#1696:36->1696:49
	J	$o_diffuse.2643	# build/example.ml#1696:36->1696:49
	ADDI	%r31, %r31, $-652	# build/example.ml#1696:36->1696:49
	FMV	%fr9, %fr0	# build/example.ml#1696:36->1696:49
	LDR	%r6, %r31, $628	# build/example.ml#1696:36->1696:49
	LDR	%r5, %r31, $632	# build/example.ml#1696:36->1696:49
	LDR	%r4, %r31, $636	# build/example.ml#1696:36->1696:49
	LDR	%r3, %r31, $640	# build/example.ml#1696:36->1696:49
	LDR	%r2, %r31, $644	# build/example.ml#1696:36->1696:49
	LDR	%r1, %r31, $648	# build/example.ml#1696:36->1696:49
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1696:29->1696:49
	FMUL	%fr9, %fr0, %fr9	# build/example.ml#1696:18->1696:50
	MVI	%r28, $1	# build/example.ml#1697:20->1697:21
	ADD	%r27, %r1, %r28	# build/example.ml#1697:15->1697:21
	MVI	%r26, $min_caml_tmin	# build/example.ml#1697:53->1697:57
	MVI	%r28, $0	# build/example.ml#1697:59->1697:60
	FLDD	%fr8, %r26, $4, %r28	# build/example.ml#1284:17->1284:25
	FADD	%fr8, %fr1, %fr8	# build/example.ml#1697:45->1697:61
	SDR	%r6, %r31, $652	# build/example.ml#1697:4->1697:62
	SDR	%r5, %r31, $656	# build/example.ml#1697:4->1697:62
	SDR	%r4, %r31, $660	# build/example.ml#1697:4->1697:62
	SDR	%r3, %r31, $664	# build/example.ml#1697:4->1697:62
	SDR	%r2, %r31, $668	# build/example.ml#1697:4->1697:62
	SDR	%r1, %r31, $672	# build/example.ml#1697:4->1697:62
	FSDR	%fr6, %r31, $676	# build/example.ml#1697:4->1697:62
	FSDR	%fr1, %r31, $680	# build/example.ml#1697:4->1697:62
	MV	%r1, %r27	# build/example.ml#1697:4->1697:62
	FMV	%fr1, %fr8	# build/example.ml#1697:4->1697:62
	FMV	%fr0, %fr9	# build/example.ml#1697:4->1697:62
	ADDI	%r31, %r31, $684	# build/example.ml#1697:4->1697:62
	ADDI	%r31, %r31, $4	# build/example.ml#1697:4->1697:62
	SIP	# build/example.ml#1697:4->1697:62
	J	$trace_ray.2900	# build/example.ml#1697:4->1697:62
	ADDI	%r31, %r31, $-684	# build/example.ml#1697:4->1697:62
	LDR	%r6, %r31, $652	# build/example.ml#1697:4->1697:62
	LDR	%r5, %r31, $656	# build/example.ml#1697:4->1697:62
	LDR	%r4, %r31, $660	# build/example.ml#1697:4->1697:62
	LDR	%r3, %r31, $664	# build/example.ml#1697:4->1697:62
	LDR	%r2, %r31, $668	# build/example.ml#1697:4->1697:62
	LDR	%r1, %r31, $672	# build/example.ml#1697:4->1697:62
	FLDR	%fr6, %r31, $676	# build/example.ml#1697:4->1697:62
	FLDR	%fr1, %r31, $680	# build/example.ml#1697:4->1697:62
if_eq_cont.11578:
	J	$if_eq_cont.11574	# build/example.ml#1689:7->1700:17
if_eq.11573:
if_eq_cont.11574:
	J	$if_eq_cont.11568	# build/example.ml#1642:5->1720:7
if_eq.11567:
	MVI	%r9, $-1	# build/example.ml#1705:29->1705:31
	SDD	%r9, %r16, $4, %r1	# build/example.ml#1705:7->1705:31
	MVI	%r9, $0	# build/example.ml#1707:18->1707:19
	CEQ	%r1, %r9	# build/example.ml#1707:7->1719:17
	JZ	$if_eq.11579	# build/example.ml#1707:7->1719:17
	MVI	%r9, $min_caml_light	# build/example.ml#1708:33->1708:38
	SDR	%r2, %r31, $684	# build/example.ml#1708:17->1708:38
	SDR	%r1, %r31, $688	# build/example.ml#1708:17->1708:38
	FSDR	%fr1, %r31, $692	# build/example.ml#1708:17->1708:38
	MV	%r1, %r2	# build/example.ml#1708:17->1708:38
	MV	%r2, %r9	# build/example.ml#1708:17->1708:38
	ADDI	%r31, %r31, $696	# build/example.ml#1708:17->1708:38
	ADDI	%r31, %r31, $4	# build/example.ml#1708:17->1708:38
	SIP	# build/example.ml#1708:17->1708:38
	J	$veciprod.2594	# build/example.ml#1708:17->1708:38
	ADDI	%r31, %r31, $-696	# build/example.ml#1708:17->1708:38
	FMV	%fr9, %fr0	# build/example.ml#1708:17->1708:38
	LDR	%r2, %r31, $684	# build/example.ml#1708:17->1708:38
	LDR	%r1, %r31, $688	# build/example.ml#1708:17->1708:38
	FLDR	%fr1, %r31, $692	# build/example.ml#1708:17->1708:38
	SDR	%r6, %r31, $696	# build/example.ml#1708:11->1708:39
	SDR	%r5, %r31, $700	# build/example.ml#1708:11->1708:39
	SDR	%r4, %r31, $704	# build/example.ml#1708:11->1708:39
	SDR	%r3, %r31, $708	# build/example.ml#1708:11->1708:39
	SDR	%r2, %r31, $712	# build/example.ml#1708:11->1708:39
	SDR	%r1, %r31, $716	# build/example.ml#1708:11->1708:39
	FSDR	%fr6, %r31, $720	# build/example.ml#1708:11->1708:39
	FSDR	%fr1, %r31, $724	# build/example.ml#1708:11->1708:39
	FMV	%fr0, %fr9	# build/example.ml#1708:11->1708:39
	ADDI	%r31, %r31, $728	# build/example.ml#1708:11->1708:39
	ADDI	%r31, %r31, $4	# build/example.ml#1708:11->1708:39
	SIP	# build/example.ml#1708:11->1708:39
	J	$min_caml_fneg	# build/example.ml#1708:11->1708:39
	ADDI	%r31, %r31, $-728	# build/example.ml#1708:11->1708:39
	FMV	%fr9, %fr0	# build/example.ml#1708:11->1708:39
	LDR	%r6, %r31, $696	# build/example.ml#1708:11->1708:39
	LDR	%r5, %r31, $700	# build/example.ml#1708:11->1708:39
	LDR	%r4, %r31, $704	# build/example.ml#1708:11->1708:39
	LDR	%r3, %r31, $708	# build/example.ml#1708:11->1708:39
	LDR	%r2, %r31, $712	# build/example.ml#1708:11->1708:39
	LDR	%r1, %r31, $716	# build/example.ml#1708:11->1708:39
	FLDR	%fr6, %r31, $720	# build/example.ml#1708:11->1708:39
	FLDR	%fr1, %r31, $724	# build/example.ml#1708:11->1708:39
	SDR	%r6, %r31, $728	# build/example.ml#1710:5->1710:14
	SDR	%r5, %r31, $732	# build/example.ml#1710:5->1710:14
	SDR	%r4, %r31, $736	# build/example.ml#1710:5->1710:14
	SDR	%r3, %r31, $740	# build/example.ml#1710:5->1710:14
	SDR	%r2, %r31, $744	# build/example.ml#1710:5->1710:14
	SDR	%r1, %r31, $748	# build/example.ml#1710:5->1710:14
	FSDR	%fr6, %r31, $752	# build/example.ml#1710:5->1710:14
	FSDR	%fr1, %r31, $756	# build/example.ml#1710:5->1710:14
	FMV	%fr0, %fr9	# build/example.ml#1710:5->1710:14
	ADDI	%r31, %r31, $760	# build/example.ml#1710:5->1710:14
	ADDI	%r31, %r31, $4	# build/example.ml#1710:5->1710:14
	SIP	# build/example.ml#1710:5->1710:14
	J	$min_caml_fispos	# build/example.ml#1710:5->1710:14
	ADDI	%r31, %r31, $-760	# build/example.ml#1710:5->1710:14
	MV	%r8, %r0	# build/example.ml#1710:5->1710:14
	LDR	%r6, %r31, $728	# build/example.ml#1710:5->1710:14
	LDR	%r5, %r31, $732	# build/example.ml#1710:5->1710:14
	LDR	%r4, %r31, $736	# build/example.ml#1710:5->1710:14
	LDR	%r3, %r31, $740	# build/example.ml#1710:5->1710:14
	LDR	%r2, %r31, $744	# build/example.ml#1710:5->1710:14
	LDR	%r1, %r31, $748	# build/example.ml#1710:5->1710:14
	FLDR	%fr6, %r31, $752	# build/example.ml#1710:5->1710:14
	FLDR	%fr1, %r31, $756	# build/example.ml#1710:5->1710:14
	MVI	%r9, $0	# build/example.ml#1710:2->1718:9
	CEQ	%r8, %r9	# build/example.ml#1710:2->1718:9
	JZ	$if_eq.11581	# build/example.ml#1710:2->1718:9
	SDR	%r6, %r31, $760	# build/example.ml#1713:15->1713:22
	SDR	%r5, %r31, $764	# build/example.ml#1713:15->1713:22
	SDR	%r4, %r31, $768	# build/example.ml#1713:15->1713:22
	SDR	%r3, %r31, $772	# build/example.ml#1713:15->1713:22
	SDR	%r2, %r31, $776	# build/example.ml#1713:15->1713:22
	SDR	%r1, %r31, $780	# build/example.ml#1713:15->1713:22
	FSDR	%fr6, %r31, $784	# build/example.ml#1713:15->1713:22
	FSDR	%fr1, %r31, $788	# build/example.ml#1713:15->1713:22
	FMV	%fr0, %fr9	# build/example.ml#1713:15->1713:22
	ADDI	%r31, %r31, $792	# build/example.ml#1713:15->1713:22
	ADDI	%r31, %r31, $4	# build/example.ml#1713:15->1713:22
	SIP	# build/example.ml#1713:15->1713:22
	J	$min_caml_fsqr	# build/example.ml#1713:15->1713:22
	ADDI	%r31, %r31, $-792	# build/example.ml#1713:15->1713:22
	FMV	%fr8, %fr0	# build/example.ml#1713:15->1713:22
	LDR	%r6, %r31, $760	# build/example.ml#1713:15->1713:22
	LDR	%r5, %r31, $764	# build/example.ml#1713:15->1713:22
	LDR	%r4, %r31, $768	# build/example.ml#1713:15->1713:22
	LDR	%r3, %r31, $772	# build/example.ml#1713:15->1713:22
	LDR	%r2, %r31, $776	# build/example.ml#1713:15->1713:22
	LDR	%r1, %r31, $780	# build/example.ml#1713:15->1713:22
	FLDR	%fr6, %r31, $784	# build/example.ml#1713:15->1713:22
	FLDR	%fr1, %r31, $788	# build/example.ml#1713:15->1713:22
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1713:15->1713:28
	FMUL	%fr8, %fr9, %fr0	# build/example.ml#1713:15->1713:38
	MVI	%r8, $min_caml_beam	# build/example.ml#1713:42->1713:46
	MVI	%r9, $0	# build/example.ml#1713:48->1713:49
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#534:3->534:28
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1713:15->1713:50
	MVI	%r7, $min_caml_rgb	# build/example.ml#1714:5->1714:8
	MVI	%r8, $0	# build/example.ml#1714:10->1714:11
	MVI	%r9, $0	# build/example.ml#1714:21->1714:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#110:15->110:23
	FADD	%fr8, %fr8, %fr9	# build/example.ml#1714:16->1714:30
	FSDD	%fr8, %r7, $4, %r8	# build/example.ml#1714:5->1714:30
	MVI	%r8, $1	# build/example.ml#1715:10->1715:11
	MVI	%r9, $1	# build/example.ml#1715:21->1715:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#110:15->110:23
	FADD	%fr8, %fr8, %fr9	# build/example.ml#1715:16->1715:30
	FSDD	%fr8, %r7, $4, %r8	# build/example.ml#1715:5->1715:30
	MVI	%r8, $2	# build/example.ml#1716:10->1716:11
	MVI	%r9, $2	# build/example.ml#1716:21->1716:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#110:15->110:23
	FADD	%fr9, %fr8, %fr9	# build/example.ml#1716:16->1716:30
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#1716:5->1716:30
	J	$if_eq_cont.11582	# build/example.ml#1710:2->1718:9
if_eq.11581:
if_eq_cont.11582:
	J	$if_eq_cont.11580	# build/example.ml#1707:7->1719:17
if_eq.11579:
if_eq_cont.11580:
if_eq_cont.11568:
	J	$if_lt_cont.11566	# build/example.ml#1640:3->1721:13
if_lt.11565:
if_lt_cont.11566:
	LDR	%r9, %r31, $0	# build/example.ml#1640:14->1640:15
	LDR	%r8, %r31, $4	# build/example.ml#1640:14->1640:15
	LDR	%r7, %r31, $8	# build/example.ml#1640:14->1640:15
	LDR	%r28, %r31, $12	# build/example.ml#1640:14->1640:15
	LDR	%r27, %r31, $16	# build/example.ml#1640:14->1640:15
	LDR	%r26, %r31, $20	# build/example.ml#1640:14->1640:15
	LDR	%r25, %r31, $24	# build/example.ml#1640:14->1640:15
	LDR	%r24, %r31, $28	# build/example.ml#1640:14->1640:15
	LDR	%r23, %r31, $32	# build/example.ml#1640:14->1640:15
	LDR	%r22, %r31, $36	# build/example.ml#1640:14->1640:15
	LDR	%r21, %r31, $40	# build/example.ml#1640:14->1640:15
	LDR	%r20, %r31, $44	# build/example.ml#1640:14->1640:15
	LDR	%r19, %r31, $48	# build/example.ml#1640:14->1640:15
	LDR	%r18, %r31, $52	# build/example.ml#1640:14->1640:15
	LDR	%r17, %r31, $56	# build/example.ml#1640:14->1640:15
	LDR	%r16, %r31, $60	# build/example.ml#1640:14->1640:15
	LDR	%r15, %r31, $64	# build/example.ml#1640:14->1640:15
	LDR	%r14, %r31, $68	# build/example.ml#1640:14->1640:15
	LDR	%r13, %r31, $72	# build/example.ml#1640:14->1640:15
	LDR	%r12, %r31, $76	# build/example.ml#1640:14->1640:15
	LDR	%r11, %r31, $80	# build/example.ml#1640:14->1640:15
	LDR	%r10, %r31, $84	# build/example.ml#1640:14->1640:15
	FLDR	%fr9, %r31, $88	# build/example.ml#1640:14->1640:15
	FLDR	%fr8, %r31, $92	# build/example.ml#1640:14->1640:15
	FLDR	%fr7, %r31, $96	# build/example.ml#1640:14->1640:15
	LINK	# build/example.ml#1640:14->1640:15
trace_reflections.2895:
	SDR	%r9, %r31, $0	# build/example.ml#1612:15->1612:16
	SDR	%r8, %r31, $4	# build/example.ml#1612:15->1612:16
	SDR	%r7, %r31, $8	# build/example.ml#1612:15->1612:16
	FSDR	%fr9, %r31, $12	# build/example.ml#1612:15->1612:16
	FSDR	%fr8, %r31, $16	# build/example.ml#1612:15->1612:16
	FSDR	%fr7, %r31, $20	# build/example.ml#1612:15->1612:16
	MVI	%r9, $0	# build/example.ml#1612:15->1612:16
	CMP	%r1, %r9	# build/example.ml#1612:3->1632:12
	JZ	$if_lt.11583	# build/example.ml#1612:3->1632:12
	MVI	%r9, $min_caml_reflections	# build/example.ml#1613:17->1613:28
	LDD	%r7, %r9, $4, %r1	# build/example.ml#1613:17->1613:36
	FLDR	%fr9, %r7, $12	# build/example.ml#1613:5->1631:63
	LDR	%r9, %r7, $8	# build/example.ml#1613:5->1631:63
	LDR	%r8, %r7, $4	# build/example.ml#1613:5->1631:63
	LDR	%r7, %r7, $0	# build/example.ml#1613:5->1631:63
	MV	%r6, %r8	# build/example.ml#467:3->468:9
	MV	%r5, %r9	# build/example.ml#467:3->468:9
	SDR	%r6, %r31, $24	# build/example.ml#1617:8->1617:36
	SDR	%r5, %r31, $28	# build/example.ml#1617:8->1617:36
	SDR	%r4, %r31, $32	# build/example.ml#1617:8->1617:36
	SDR	%r3, %r31, $36	# build/example.ml#1617:8->1617:36
	SDR	%r2, %r31, $40	# build/example.ml#1617:8->1617:36
	SDR	%r1, %r31, $44	# build/example.ml#1617:8->1617:36
	FSDR	%fr1, %r31, $48	# build/example.ml#1617:8->1617:36
	MV	%r2, %r5	# build/example.ml#1617:8->1617:36
	MV	%r1, %r6	# build/example.ml#1617:8->1617:36
	ADDI	%r31, %r31, $52	# build/example.ml#1617:8->1617:36
	ADDI	%r31, %r31, $4	# build/example.ml#1617:8->1617:36
	SIP	# build/example.ml#1617:8->1617:36
	J	$judge_intersection_fast.2877	# build/example.ml#1617:8->1617:36
	ADDI	%r31, %r31, $-52	# build/example.ml#1617:8->1617:36
	MV	%r4, %r0	# build/example.ml#1617:8->1617:36
	LDR	%r6, %r31, $24	# build/example.ml#1617:8->1617:36
	LDR	%r5, %r31, $28	# build/example.ml#1617:8->1617:36
	LDR	%r4, %r31, $32	# build/example.ml#1617:8->1617:36
	LDR	%r3, %r31, $36	# build/example.ml#1617:8->1617:36
	LDR	%r2, %r31, $40	# build/example.ml#1617:8->1617:36
	LDR	%r1, %r31, $44	# build/example.ml#1617:8->1617:36
	FLDR	%fr1, %r31, $48	# build/example.ml#1617:8->1617:36
	MVI	%r5, $0	# build/example.ml#1617:5->1630:12
	CEQ	%r4, %r5	# build/example.ml#1617:5->1630:12
	JZ	$if_eq.11585	# build/example.ml#1617:5->1630:12
	MVI	%r4, $min_caml_intersected_object_id	# build/example.ml#1618:24->1618:45
	MVI	%r5, $0	# build/example.ml#1618:47->1618:48
	LDD	%r4, %r4, $4, %r5	# build/example.ml#1294:3->1294:36
	MVI	%r5, $4	# build/example.ml#1618:52->1618:53
	MUL	%r4, %r4, %r5	# build/example.ml#1618:24->1618:53
	MVI	%r3, $min_caml_intsec_rectside	# build/example.ml#1618:56->1618:71
	MVI	%r5, $0	# build/example.ml#1618:73->1618:74
	LDD	%r5, %r3, $4, %r5	# build/example.ml#1295:3->1295:28
	ADD	%r5, %r4, %r5	# build/example.ml#1618:24->1618:75
	MV	%r9, %r8	# build/example.ml#461:3->462:8
	CEQ	%r5, %r7	# build/example.ml#1619:7->1629:14
	JZ	$if_eq.11587	# build/example.ml#1619:7->1629:14
	J	$if_eq_cont.11588	# build/example.ml#1619:7->1629:14
if_eq.11587:
	MVI	%r5, $0	# build/example.ml#1621:44->1621:45
	MVI	%r4, $min_caml_or_net	# build/example.ml#1621:46->1621:52
	MVI	%r7, $0	# build/example.ml#1621:54->1621:55
	LDD	%r7, %r4, $4, %r7	# build/example.ml#714:4->714:35
	SDR	%r6, %r31, $52	# build/example.ml#1621:17->1621:56
	SDR	%r5, %r31, $56	# build/example.ml#1621:17->1621:56
	SDR	%r4, %r31, $60	# build/example.ml#1621:17->1621:56
	SDR	%r3, %r31, $64	# build/example.ml#1621:17->1621:56
	SDR	%r2, %r31, $68	# build/example.ml#1621:17->1621:56
	SDR	%r1, %r31, $72	# build/example.ml#1621:17->1621:56
	FSDR	%fr1, %r31, $76	# build/example.ml#1621:17->1621:56
	MV	%r2, %r7	# build/example.ml#1621:17->1621:56
	MV	%r1, %r5	# build/example.ml#1621:17->1621:56
	ADDI	%r31, %r31, $80	# build/example.ml#1621:17->1621:56
	ADDI	%r31, %r31, $4	# build/example.ml#1621:17->1621:56
	SIP	# build/example.ml#1621:17->1621:56
	J	$shadow_check_one_or_matrix.2848	# build/example.ml#1621:17->1621:56
	ADDI	%r31, %r31, $-80	# build/example.ml#1621:17->1621:56
	MV	%r5, %r0	# build/example.ml#1621:17->1621:56
	LDR	%r6, %r31, $52	# build/example.ml#1621:17->1621:56
	LDR	%r5, %r31, $56	# build/example.ml#1621:17->1621:56
	LDR	%r4, %r31, $60	# build/example.ml#1621:17->1621:56
	LDR	%r3, %r31, $64	# build/example.ml#1621:17->1621:56
	LDR	%r2, %r31, $68	# build/example.ml#1621:17->1621:56
	LDR	%r1, %r31, $72	# build/example.ml#1621:17->1621:56
	FLDR	%fr1, %r31, $76	# build/example.ml#1621:17->1621:56
	MVI	%r7, $0	# build/example.ml#1621:9->1628:16
	CEQ	%r5, %r7	# build/example.ml#1621:9->1628:16
	JZ	$if_eq.11589	# build/example.ml#1621:9->1628:16
	J	$if_eq_cont.11590	# build/example.ml#1621:9->1628:16
if_eq.11589:
	MVI	%r5, $min_caml_nvector	# build/example.ml#1623:28->1623:35
	MV	%r7, %r6	# build/example.ml#445:3->446:8
	SDR	%r2, %r31, $80	# build/example.ml#1623:19->1623:48
	SDR	%r1, %r31, $84	# build/example.ml#1623:19->1623:48
	FSDR	%fr1, %r31, $88	# build/example.ml#1623:19->1623:48
	MV	%r2, %r7	# build/example.ml#1623:19->1623:48
	MV	%r1, %r5	# build/example.ml#1623:19->1623:48
	ADDI	%r31, %r31, $92	# build/example.ml#1623:19->1623:48
	ADDI	%r31, %r31, $4	# build/example.ml#1623:19->1623:48
	SIP	# build/example.ml#1623:19->1623:48
	J	$veciprod.2594	# build/example.ml#1623:19->1623:48
	ADDI	%r31, %r31, $-92	# build/example.ml#1623:19->1623:48
	FMV	%fr8, %fr0	# build/example.ml#1623:19->1623:48
	LDR	%r2, %r31, $80	# build/example.ml#1623:19->1623:48
	LDR	%r1, %r31, $84	# build/example.ml#1623:19->1623:48
	FLDR	%fr1, %r31, $88	# build/example.ml#1623:19->1623:48
	MV	%r9, %r8	# build/example.ml#473:3->474:7
	FMUL	%fr7, %fr9, %fr0	# build/example.ml#1625:24->1625:40
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#1625:24->1625:45
	MV	%r9, %r6	# build/example.ml#445:3->446:8
	SDR	%r2, %r31, $92	# build/example.ml#1626:34->1626:62
	SDR	%r1, %r31, $96	# build/example.ml#1626:34->1626:62
	FSDR	%fr1, %r31, $100	# build/example.ml#1626:34->1626:62
	MV	%r1, %r2	# build/example.ml#1626:34->1626:62
	MV	%r2, %r9	# build/example.ml#1626:34->1626:62
	ADDI	%r31, %r31, $104	# build/example.ml#1626:34->1626:62
	ADDI	%r31, %r31, $4	# build/example.ml#1626:34->1626:62
	SIP	# build/example.ml#1626:34->1626:62
	J	$veciprod.2594	# build/example.ml#1626:34->1626:62
	ADDI	%r31, %r31, $-104	# build/example.ml#1626:34->1626:62
	FMV	%fr7, %fr0	# build/example.ml#1626:34->1626:62
	LDR	%r2, %r31, $92	# build/example.ml#1626:34->1626:62
	LDR	%r1, %r31, $96	# build/example.ml#1626:34->1626:62
	FLDR	%fr1, %r31, $100	# build/example.ml#1626:34->1626:62
	FMUL	%fr9, %fr9, %fr7	# build/example.ml#1626:25->1626:62
	SDR	%r6, %r31, $104	# build/example.ml#1627:11->1627:49
	SDR	%r5, %r31, $108	# build/example.ml#1627:11->1627:49
	SDR	%r4, %r31, $112	# build/example.ml#1627:11->1627:49
	SDR	%r3, %r31, $116	# build/example.ml#1627:11->1627:49
	SDR	%r2, %r31, $120	# build/example.ml#1627:11->1627:49
	SDR	%r1, %r31, $124	# build/example.ml#1627:11->1627:49
	FSDR	%fr1, %r31, $128	# build/example.ml#1627:11->1627:49
	FMV	%fr2, %fr1	# build/example.ml#1627:11->1627:49
	FMV	%fr0, %fr8	# build/example.ml#1627:11->1627:49
	FMV	%fr1, %fr9	# build/example.ml#1627:11->1627:49
	ADDI	%r31, %r31, $132	# build/example.ml#1627:11->1627:49
	ADDI	%r31, %r31, $4	# build/example.ml#1627:11->1627:49
	SIP	# build/example.ml#1627:11->1627:49
	J	$add_light.2891	# build/example.ml#1627:11->1627:49
	ADDI	%r31, %r31, $-132	# build/example.ml#1627:11->1627:49
	LDR	%r6, %r31, $104	# build/example.ml#1627:11->1627:49
	LDR	%r5, %r31, $108	# build/example.ml#1627:11->1627:49
	LDR	%r4, %r31, $112	# build/example.ml#1627:11->1627:49
	LDR	%r3, %r31, $116	# build/example.ml#1627:11->1627:49
	LDR	%r2, %r31, $120	# build/example.ml#1627:11->1627:49
	LDR	%r1, %r31, $124	# build/example.ml#1627:11->1627:49
	FLDR	%fr1, %r31, $128	# build/example.ml#1627:11->1627:49
if_eq_cont.11590:
if_eq_cont.11588:
	J	$if_eq_cont.11586	# build/example.ml#1617:5->1630:12
if_eq.11585:
if_eq_cont.11586:
	MVI	%r9, $1	# build/example.ml#1631:32->1631:33
	SUB	%r9, %r1, %r9	# build/example.ml#1631:24->1631:33
	SDR	%r6, %r31, $132	# build/example.ml#1631:5->1631:63
	SDR	%r5, %r31, $136	# build/example.ml#1631:5->1631:63
	SDR	%r4, %r31, $140	# build/example.ml#1631:5->1631:63
	SDR	%r3, %r31, $144	# build/example.ml#1631:5->1631:63
	SDR	%r2, %r31, $148	# build/example.ml#1631:5->1631:63
	SDR	%r1, %r31, $152	# build/example.ml#1631:5->1631:63
	FSDR	%fr1, %r31, $156	# build/example.ml#1631:5->1631:63
	MV	%r1, %r9	# build/example.ml#1631:5->1631:63
	ADDI	%r31, %r31, $160	# build/example.ml#1631:5->1631:63
	ADDI	%r31, %r31, $4	# build/example.ml#1631:5->1631:63
	SIP	# build/example.ml#1631:5->1631:63
	J	$trace_reflections.2895	# build/example.ml#1631:5->1631:63
	ADDI	%r31, %r31, $-160	# build/example.ml#1631:5->1631:63
	LDR	%r6, %r31, $132	# build/example.ml#1631:5->1631:63
	LDR	%r5, %r31, $136	# build/example.ml#1631:5->1631:63
	LDR	%r4, %r31, $140	# build/example.ml#1631:5->1631:63
	LDR	%r3, %r31, $144	# build/example.ml#1631:5->1631:63
	LDR	%r2, %r31, $148	# build/example.ml#1631:5->1631:63
	LDR	%r1, %r31, $152	# build/example.ml#1631:5->1631:63
	FLDR	%fr1, %r31, $156	# build/example.ml#1631:5->1631:63
	J	$if_lt_cont.11584	# build/example.ml#1612:3->1632:12
if_lt.11583:
if_lt_cont.11584:
	LDR	%r9, %r31, $0	# build/example.ml#1612:15->1612:16
	LDR	%r8, %r31, $4	# build/example.ml#1612:15->1612:16
	LDR	%r7, %r31, $8	# build/example.ml#1612:15->1612:16
	FLDR	%fr9, %r31, $12	# build/example.ml#1612:15->1612:16
	FLDR	%fr8, %r31, $16	# build/example.ml#1612:15->1612:16
	FLDR	%fr7, %r31, $20	# build/example.ml#1612:15->1612:16
	LINK	# build/example.ml#1612:15->1612:16
add_light.2891:
	SDR	%r9, %r31, $0	# build/example.ml#1596:6->1596:19
	SDR	%r8, %r31, $4	# build/example.ml#1596:6->1596:19
	SDR	%r7, %r31, $8	# build/example.ml#1596:6->1596:19
	FSDR	%fr9, %r31, $12	# build/example.ml#1596:6->1596:19
	FSDR	%fr8, %r31, $16	# build/example.ml#1596:6->1596:19
	FSDR	%fr2, %r31, $20	# build/example.ml#1596:6->1596:19
	FSDR	%fr1, %r31, $24	# build/example.ml#1596:6->1596:19
	ADDI	%r31, %r31, $28	# build/example.ml#1596:6->1596:19
	ADDI	%r31, %r31, $4	# build/example.ml#1596:6->1596:19
	SIP	# build/example.ml#1596:6->1596:19
	J	$min_caml_fispos	# build/example.ml#1596:6->1596:19
	ADDI	%r31, %r31, $-28	# build/example.ml#1596:6->1596:19
	MV	%r8, %r0	# build/example.ml#1596:6->1596:19
	FLDR	%fr2, %r31, $20	# build/example.ml#1596:6->1596:19
	FLDR	%fr1, %r31, $24	# build/example.ml#1596:6->1596:19
	MVI	%r9, $0	# build/example.ml#1596:3->1598:10
	CEQ	%r8, %r9	# build/example.ml#1596:3->1598:10
	JZ	$if_eq.11591	# build/example.ml#1596:3->1598:10
	MVI	%r8, $min_caml_rgb	# build/example.ml#1597:14->1597:17
	MVI	%r9, $min_caml_texture_color	# build/example.ml#1597:25->1597:38
	FSDR	%fr1, %r31, $28	# build/example.ml#1597:5->1597:38
	MV	%r2, %r9	# build/example.ml#1597:5->1597:38
	MV	%r1, %r8	# build/example.ml#1597:5->1597:38
	ADDI	%r31, %r31, $32	# build/example.ml#1597:5->1597:38
	ADDI	%r31, %r31, $4	# build/example.ml#1597:5->1597:38
	SIP	# build/example.ml#1597:5->1597:38
	J	$vecaccum.2602	# build/example.ml#1597:5->1597:38
	ADDI	%r31, %r31, $-32	# build/example.ml#1597:5->1597:38
	FLDR	%fr1, %r31, $28	# build/example.ml#1597:5->1597:38
	J	$if_eq_cont.11592	# build/example.ml#1596:3->1598:10
if_eq.11591:
if_eq_cont.11592:
	FSDR	%fr2, %r31, $32	# build/example.ml#1601:6->1601:20
	FSDR	%fr1, %r31, $36	# build/example.ml#1601:6->1601:20
	FMV	%fr0, %fr1	# build/example.ml#1601:6->1601:20
	ADDI	%r31, %r31, $40	# build/example.ml#1601:6->1601:20
	ADDI	%r31, %r31, $4	# build/example.ml#1601:6->1601:20
	SIP	# build/example.ml#1601:6->1601:20
	J	$min_caml_fispos	# build/example.ml#1601:6->1601:20
	ADDI	%r31, %r31, $-40	# build/example.ml#1601:6->1601:20
	MV	%r8, %r0	# build/example.ml#1601:6->1601:20
	FLDR	%fr2, %r31, $32	# build/example.ml#1601:6->1601:20
	FLDR	%fr1, %r31, $36	# build/example.ml#1601:6->1601:20
	MVI	%r9, $0	# build/example.ml#1601:3->1606:12
	CEQ	%r8, %r9	# build/example.ml#1601:3->1606:12
	JZ	$if_eq.11593	# build/example.ml#1601:3->1606:12
	FSDR	%fr2, %r31, $40	# build/example.ml#1602:21->1602:33
	FSDR	%fr1, %r31, $44	# build/example.ml#1602:21->1602:33
	FMV	%fr0, %fr1	# build/example.ml#1602:21->1602:33
	ADDI	%r31, %r31, $48	# build/example.ml#1602:21->1602:33
	ADDI	%r31, %r31, $4	# build/example.ml#1602:21->1602:33
	SIP	# build/example.ml#1602:21->1602:33
	J	$min_caml_fsqr	# build/example.ml#1602:21->1602:33
	ADDI	%r31, %r31, $-48	# build/example.ml#1602:21->1602:33
	FMV	%fr9, %fr0	# build/example.ml#1602:21->1602:33
	FLDR	%fr2, %r31, $40	# build/example.ml#1602:21->1602:33
	FLDR	%fr1, %r31, $44	# build/example.ml#1602:21->1602:33
	FSDR	%fr2, %r31, $48	# build/example.ml#1602:15->1602:34
	FSDR	%fr1, %r31, $52	# build/example.ml#1602:15->1602:34
	FMV	%fr0, %fr9	# build/example.ml#1602:15->1602:34
	ADDI	%r31, %r31, $56	# build/example.ml#1602:15->1602:34
	ADDI	%r31, %r31, $4	# build/example.ml#1602:15->1602:34
	SIP	# build/example.ml#1602:15->1602:34
	J	$min_caml_fsqr	# build/example.ml#1602:15->1602:34
	ADDI	%r31, %r31, $-56	# build/example.ml#1602:15->1602:34
	FMV	%fr9, %fr0	# build/example.ml#1602:15->1602:34
	FLDR	%fr2, %r31, $48	# build/example.ml#1602:15->1602:34
	FLDR	%fr1, %r31, $52	# build/example.ml#1602:15->1602:34
	FMUL	%fr9, %fr9, %fr2	# build/example.ml#1602:15->1602:51
	MVI	%r7, $min_caml_rgb	# build/example.ml#1603:5->1603:8
	MVI	%r8, $0	# build/example.ml#1603:10->1603:11
	MVI	%r9, $0	# build/example.ml#1603:21->1603:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#110:15->110:23
	FADD	%fr8, %fr8, %fr9	# build/example.ml#1603:16->1603:30
	FSDD	%fr8, %r7, $4, %r8	# build/example.ml#1603:5->1603:30
	MVI	%r8, $1	# build/example.ml#1604:10->1604:11
	MVI	%r9, $1	# build/example.ml#1604:21->1604:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#110:15->110:23
	FADD	%fr8, %fr8, %fr9	# build/example.ml#1604:16->1604:30
	FSDD	%fr8, %r7, $4, %r8	# build/example.ml#1604:5->1604:30
	MVI	%r8, $2	# build/example.ml#1605:10->1605:11
	MVI	%r9, $2	# build/example.ml#1605:21->1605:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#110:15->110:23
	FADD	%fr9, %fr8, %fr9	# build/example.ml#1605:16->1605:30
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#1605:5->1605:30
	J	$if_eq_cont.11594	# build/example.ml#1601:3->1606:12
if_eq.11593:
if_eq_cont.11594:
	LDR	%r9, %r31, $0	# build/example.ml#1596:6->1596:19
	LDR	%r8, %r31, $4	# build/example.ml#1596:6->1596:19
	LDR	%r7, %r31, $8	# build/example.ml#1596:6->1596:19
	FLDR	%fr9, %r31, $12	# build/example.ml#1596:6->1596:19
	FLDR	%fr8, %r31, $16	# build/example.ml#1596:6->1596:19
	LINK	# build/example.ml#1596:6->1596:19
utexture.2888:
	SDR	%r9, %r31, $0	# build/example.ml#149:3->154:8
	SDR	%r8, %r31, $4	# build/example.ml#149:3->154:8
	SDR	%r7, %r31, $8	# build/example.ml#149:3->154:8
	SDR	%r28, %r31, $12	# build/example.ml#149:3->154:8
	SDR	%r27, %r31, $16	# build/example.ml#149:3->154:8
	SDR	%r26, %r31, $20	# build/example.ml#149:3->154:8
	SDR	%r12, %r31, $24	# build/example.ml#149:3->154:8
	SDR	%r11, %r31, $28	# build/example.ml#149:3->154:8
	SDR	%r10, %r31, $32	# build/example.ml#149:3->154:8
	FSDR	%fr9, %r31, $36	# build/example.ml#149:3->154:8
	FSDR	%fr8, %r31, $40	# build/example.ml#149:3->154:8
	FSDR	%fr7, %r31, $44	# build/example.ml#149:3->154:8
	MV	%r28, %r1	# build/example.ml#149:3->154:8
	MVI	%r26, $min_caml_texture_color	# build/example.ml#1518:3->1518:16
	MVI	%r27, $0	# build/example.ml#1518:18->1518:19
	SDR	%r6, %r31, $48	# build/example.ml#1518:24->1518:37
	SDR	%r5, %r31, $52	# build/example.ml#1518:24->1518:37
	SDR	%r4, %r31, $56	# build/example.ml#1518:24->1518:37
	SDR	%r3, %r31, $60	# build/example.ml#1518:24->1518:37
	SDR	%r2, %r31, $64	# build/example.ml#1518:24->1518:37
	SDR	%r1, %r31, $68	# build/example.ml#1518:24->1518:37
	ADDI	%r31, %r31, $72	# build/example.ml#1518:24->1518:37
	ADDI	%r31, %r31, $4	# build/example.ml#1518:24->1518:37
	SIP	# build/example.ml#1518:24->1518:37
	J	$o_color_red.2647	# build/example.ml#1518:24->1518:37
	ADDI	%r31, %r31, $-72	# build/example.ml#1518:24->1518:37
	FMV	%fr9, %fr0	# build/example.ml#1518:24->1518:37
	LDR	%r6, %r31, $48	# build/example.ml#1518:24->1518:37
	LDR	%r5, %r31, $52	# build/example.ml#1518:24->1518:37
	LDR	%r4, %r31, $56	# build/example.ml#1518:24->1518:37
	LDR	%r3, %r31, $60	# build/example.ml#1518:24->1518:37
	LDR	%r2, %r31, $64	# build/example.ml#1518:24->1518:37
	LDR	%r1, %r31, $68	# build/example.ml#1518:24->1518:37
	FSDD	%fr9, %r26, $4, %r27	# build/example.ml#1518:3->1518:37
	MVI	%r27, $1	# build/example.ml#1519:18->1519:19
	SDR	%r6, %r31, $72	# build/example.ml#1519:24->1519:39
	SDR	%r5, %r31, $76	# build/example.ml#1519:24->1519:39
	SDR	%r4, %r31, $80	# build/example.ml#1519:24->1519:39
	SDR	%r3, %r31, $84	# build/example.ml#1519:24->1519:39
	SDR	%r2, %r31, $88	# build/example.ml#1519:24->1519:39
	SDR	%r1, %r31, $92	# build/example.ml#1519:24->1519:39
	ADDI	%r31, %r31, $96	# build/example.ml#1519:24->1519:39
	ADDI	%r31, %r31, $4	# build/example.ml#1519:24->1519:39
	SIP	# build/example.ml#1519:24->1519:39
	J	$o_color_green.2649	# build/example.ml#1519:24->1519:39
	ADDI	%r31, %r31, $-96	# build/example.ml#1519:24->1519:39
	FMV	%fr9, %fr0	# build/example.ml#1519:24->1519:39
	LDR	%r6, %r31, $72	# build/example.ml#1519:24->1519:39
	LDR	%r5, %r31, $76	# build/example.ml#1519:24->1519:39
	LDR	%r4, %r31, $80	# build/example.ml#1519:24->1519:39
	LDR	%r3, %r31, $84	# build/example.ml#1519:24->1519:39
	LDR	%r2, %r31, $88	# build/example.ml#1519:24->1519:39
	LDR	%r1, %r31, $92	# build/example.ml#1519:24->1519:39
	FSDD	%fr9, %r26, $4, %r27	# build/example.ml#1519:3->1519:39
	MVI	%r27, $2	# build/example.ml#1520:18->1520:19
	SDR	%r6, %r31, $96	# build/example.ml#1520:24->1520:38
	SDR	%r5, %r31, $100	# build/example.ml#1520:24->1520:38
	SDR	%r4, %r31, $104	# build/example.ml#1520:24->1520:38
	SDR	%r3, %r31, $108	# build/example.ml#1520:24->1520:38
	SDR	%r2, %r31, $112	# build/example.ml#1520:24->1520:38
	SDR	%r1, %r31, $116	# build/example.ml#1520:24->1520:38
	ADDI	%r31, %r31, $120	# build/example.ml#1520:24->1520:38
	ADDI	%r31, %r31, $4	# build/example.ml#1520:24->1520:38
	SIP	# build/example.ml#1520:24->1520:38
	J	$o_color_blue.2651	# build/example.ml#1520:24->1520:38
	ADDI	%r31, %r31, $-120	# build/example.ml#1520:24->1520:38
	FMV	%fr9, %fr0	# build/example.ml#1520:24->1520:38
	LDR	%r6, %r31, $96	# build/example.ml#1520:24->1520:38
	LDR	%r5, %r31, $100	# build/example.ml#1520:24->1520:38
	LDR	%r4, %r31, $104	# build/example.ml#1520:24->1520:38
	LDR	%r3, %r31, $108	# build/example.ml#1520:24->1520:38
	LDR	%r2, %r31, $112	# build/example.ml#1520:24->1520:38
	LDR	%r1, %r31, $116	# build/example.ml#1520:24->1520:38
	FSDD	%fr9, %r26, $4, %r27	# build/example.ml#1520:3->1520:38
	MVI	%r27, $1	# build/example.ml#1521:14->1521:15
	CEQ	%r28, %r27	# build/example.ml#1521:3->1585:10
	JZ	$if_eq.11595	# build/example.ml#1521:3->1585:10
	MVI	%r27, $2	# build/example.ml#1539:19->1539:20
	CEQ	%r28, %r27	# build/example.ml#1539:8->1585:10
	JZ	$if_eq.11597	# build/example.ml#1539:8->1585:10
	MVI	%r27, $3	# build/example.ml#1546:19->1546:20
	CEQ	%r28, %r27	# build/example.ml#1546:8->1585:10
	JZ	$if_eq.11599	# build/example.ml#1546:8->1585:10
	MVI	%r27, $4	# build/example.ml#1557:19->1557:20
	CEQ	%r28, %r27	# build/example.ml#1557:8->1585:10
	JZ	$if_eq.11601	# build/example.ml#1557:8->1585:10
	J	$if_eq_cont.11602	# build/example.ml#1557:8->1585:10
if_eq.11601:
	MVI	%r28, $0	# build/example.ml#1559:18->1559:19
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $120	# build/example.ml#1559:24->1559:35
	SDR	%r5, %r31, $124	# build/example.ml#1559:24->1559:35
	SDR	%r4, %r31, $128	# build/example.ml#1559:24->1559:35
	SDR	%r3, %r31, $132	# build/example.ml#1559:24->1559:35
	SDR	%r2, %r31, $136	# build/example.ml#1559:24->1559:35
	SDR	%r1, %r31, $140	# build/example.ml#1559:24->1559:35
	ADDI	%r31, %r31, $144	# build/example.ml#1559:24->1559:35
	ADDI	%r31, %r31, $4	# build/example.ml#1559:24->1559:35
	SIP	# build/example.ml#1559:24->1559:35
	J	$o_param_x.2637	# build/example.ml#1559:24->1559:35
	ADDI	%r31, %r31, $-144	# build/example.ml#1559:24->1559:35
	FMV	%fr9, %fr0	# build/example.ml#1559:24->1559:35
	LDR	%r6, %r31, $120	# build/example.ml#1559:24->1559:35
	LDR	%r5, %r31, $124	# build/example.ml#1559:24->1559:35
	LDR	%r4, %r31, $128	# build/example.ml#1559:24->1559:35
	LDR	%r3, %r31, $132	# build/example.ml#1559:24->1559:35
	LDR	%r2, %r31, $136	# build/example.ml#1559:24->1559:35
	LDR	%r1, %r31, $140	# build/example.ml#1559:24->1559:35
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#1559:15->1559:35
	SDR	%r6, %r31, $144	# build/example.ml#1559:47->1559:58
	SDR	%r5, %r31, $148	# build/example.ml#1559:47->1559:58
	SDR	%r4, %r31, $152	# build/example.ml#1559:47->1559:58
	SDR	%r3, %r31, $156	# build/example.ml#1559:47->1559:58
	SDR	%r2, %r31, $160	# build/example.ml#1559:47->1559:58
	SDR	%r1, %r31, $164	# build/example.ml#1559:47->1559:58
	ADDI	%r31, %r31, $168	# build/example.ml#1559:47->1559:58
	ADDI	%r31, %r31, $4	# build/example.ml#1559:47->1559:58
	SIP	# build/example.ml#1559:47->1559:58
	J	$o_param_a.2629	# build/example.ml#1559:47->1559:58
	ADDI	%r31, %r31, $-168	# build/example.ml#1559:47->1559:58
	FMV	%fr9, %fr0	# build/example.ml#1559:47->1559:58
	LDR	%r6, %r31, $144	# build/example.ml#1559:47->1559:58
	LDR	%r5, %r31, $148	# build/example.ml#1559:47->1559:58
	LDR	%r4, %r31, $152	# build/example.ml#1559:47->1559:58
	LDR	%r3, %r31, $156	# build/example.ml#1559:47->1559:58
	LDR	%r2, %r31, $160	# build/example.ml#1559:47->1559:58
	LDR	%r1, %r31, $164	# build/example.ml#1559:47->1559:58
	SDR	%r6, %r31, $168	# build/example.ml#1559:41->1559:59
	SDR	%r5, %r31, $172	# build/example.ml#1559:41->1559:59
	SDR	%r4, %r31, $176	# build/example.ml#1559:41->1559:59
	SDR	%r3, %r31, $180	# build/example.ml#1559:41->1559:59
	SDR	%r2, %r31, $184	# build/example.ml#1559:41->1559:59
	SDR	%r1, %r31, $188	# build/example.ml#1559:41->1559:59
	FSDR	%fr6, %r31, $192	# build/example.ml#1559:41->1559:59
	FSDR	%fr5, %r31, $196	# build/example.ml#1559:41->1559:59
	FMV	%fr0, %fr9	# build/example.ml#1559:41->1559:59
	ADDI	%r31, %r31, $200	# build/example.ml#1559:41->1559:59
	ADDI	%r31, %r31, $4	# build/example.ml#1559:41->1559:59
	SIP	# build/example.ml#1559:41->1559:59
	J	$min_caml_sqrt	# build/example.ml#1559:41->1559:59
	ADDI	%r31, %r31, $-200	# build/example.ml#1559:41->1559:59
	FMV	%fr9, %fr0	# build/example.ml#1559:41->1559:59
	LDR	%r6, %r31, $168	# build/example.ml#1559:41->1559:59
	LDR	%r5, %r31, $172	# build/example.ml#1559:41->1559:59
	LDR	%r4, %r31, $176	# build/example.ml#1559:41->1559:59
	LDR	%r3, %r31, $180	# build/example.ml#1559:41->1559:59
	LDR	%r2, %r31, $184	# build/example.ml#1559:41->1559:59
	LDR	%r1, %r31, $188	# build/example.ml#1559:41->1559:59
	FLDR	%fr6, %r31, $192	# build/example.ml#1559:41->1559:59
	FLDR	%fr5, %r31, $196	# build/example.ml#1559:41->1559:59
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#1559:14->1559:60
	MVI	%r28, $2	# build/example.ml#1560:18->1560:19
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $200	# build/example.ml#1560:24->1560:35
	SDR	%r5, %r31, $204	# build/example.ml#1560:24->1560:35
	SDR	%r4, %r31, $208	# build/example.ml#1560:24->1560:35
	SDR	%r3, %r31, $212	# build/example.ml#1560:24->1560:35
	SDR	%r2, %r31, $216	# build/example.ml#1560:24->1560:35
	SDR	%r1, %r31, $220	# build/example.ml#1560:24->1560:35
	ADDI	%r31, %r31, $224	# build/example.ml#1560:24->1560:35
	ADDI	%r31, %r31, $4	# build/example.ml#1560:24->1560:35
	SIP	# build/example.ml#1560:24->1560:35
	J	$o_param_z.2641	# build/example.ml#1560:24->1560:35
	ADDI	%r31, %r31, $-224	# build/example.ml#1560:24->1560:35
	FMV	%fr9, %fr0	# build/example.ml#1560:24->1560:35
	LDR	%r6, %r31, $200	# build/example.ml#1560:24->1560:35
	LDR	%r5, %r31, $204	# build/example.ml#1560:24->1560:35
	LDR	%r4, %r31, $208	# build/example.ml#1560:24->1560:35
	LDR	%r3, %r31, $212	# build/example.ml#1560:24->1560:35
	LDR	%r2, %r31, $216	# build/example.ml#1560:24->1560:35
	LDR	%r1, %r31, $220	# build/example.ml#1560:24->1560:35
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#1560:15->1560:35
	SDR	%r6, %r31, $224	# build/example.ml#1560:47->1560:58
	SDR	%r5, %r31, $228	# build/example.ml#1560:47->1560:58
	SDR	%r4, %r31, $232	# build/example.ml#1560:47->1560:58
	SDR	%r3, %r31, $236	# build/example.ml#1560:47->1560:58
	SDR	%r2, %r31, $240	# build/example.ml#1560:47->1560:58
	SDR	%r1, %r31, $244	# build/example.ml#1560:47->1560:58
	ADDI	%r31, %r31, $248	# build/example.ml#1560:47->1560:58
	ADDI	%r31, %r31, $4	# build/example.ml#1560:47->1560:58
	SIP	# build/example.ml#1560:47->1560:58
	J	$o_param_c.2633	# build/example.ml#1560:47->1560:58
	ADDI	%r31, %r31, $-248	# build/example.ml#1560:47->1560:58
	FMV	%fr9, %fr0	# build/example.ml#1560:47->1560:58
	LDR	%r6, %r31, $224	# build/example.ml#1560:47->1560:58
	LDR	%r5, %r31, $228	# build/example.ml#1560:47->1560:58
	LDR	%r4, %r31, $232	# build/example.ml#1560:47->1560:58
	LDR	%r3, %r31, $236	# build/example.ml#1560:47->1560:58
	LDR	%r2, %r31, $240	# build/example.ml#1560:47->1560:58
	LDR	%r1, %r31, $244	# build/example.ml#1560:47->1560:58
	SDR	%r6, %r31, $248	# build/example.ml#1560:41->1560:59
	SDR	%r5, %r31, $252	# build/example.ml#1560:41->1560:59
	SDR	%r4, %r31, $256	# build/example.ml#1560:41->1560:59
	SDR	%r3, %r31, $260	# build/example.ml#1560:41->1560:59
	SDR	%r2, %r31, $264	# build/example.ml#1560:41->1560:59
	SDR	%r1, %r31, $268	# build/example.ml#1560:41->1560:59
	FSDR	%fr6, %r31, $272	# build/example.ml#1560:41->1560:59
	FSDR	%fr5, %r31, $276	# build/example.ml#1560:41->1560:59
	FMV	%fr0, %fr9	# build/example.ml#1560:41->1560:59
	ADDI	%r31, %r31, $280	# build/example.ml#1560:41->1560:59
	ADDI	%r31, %r31, $4	# build/example.ml#1560:41->1560:59
	SIP	# build/example.ml#1560:41->1560:59
	J	$min_caml_sqrt	# build/example.ml#1560:41->1560:59
	ADDI	%r31, %r31, $-280	# build/example.ml#1560:41->1560:59
	FMV	%fr9, %fr0	# build/example.ml#1560:41->1560:59
	LDR	%r6, %r31, $248	# build/example.ml#1560:41->1560:59
	LDR	%r5, %r31, $252	# build/example.ml#1560:41->1560:59
	LDR	%r4, %r31, $256	# build/example.ml#1560:41->1560:59
	LDR	%r3, %r31, $260	# build/example.ml#1560:41->1560:59
	LDR	%r2, %r31, $264	# build/example.ml#1560:41->1560:59
	LDR	%r1, %r31, $268	# build/example.ml#1560:41->1560:59
	FLDR	%fr6, %r31, $272	# build/example.ml#1560:41->1560:59
	FLDR	%fr5, %r31, $276	# build/example.ml#1560:41->1560:59
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1560:14->1560:60
	SDR	%r6, %r31, $280	# build/example.ml#1561:15->1561:22
	SDR	%r5, %r31, $284	# build/example.ml#1561:15->1561:22
	SDR	%r4, %r31, $288	# build/example.ml#1561:15->1561:22
	SDR	%r3, %r31, $292	# build/example.ml#1561:15->1561:22
	SDR	%r2, %r31, $296	# build/example.ml#1561:15->1561:22
	SDR	%r1, %r31, $300	# build/example.ml#1561:15->1561:22
	FSDR	%fr6, %r31, $304	# build/example.ml#1561:15->1561:22
	FSDR	%fr5, %r31, $308	# build/example.ml#1561:15->1561:22
	FMV	%fr0, %fr7	# build/example.ml#1561:15->1561:22
	ADDI	%r31, %r31, $312	# build/example.ml#1561:15->1561:22
	ADDI	%r31, %r31, $4	# build/example.ml#1561:15->1561:22
	SIP	# build/example.ml#1561:15->1561:22
	J	$min_caml_fsqr	# build/example.ml#1561:15->1561:22
	ADDI	%r31, %r31, $-312	# build/example.ml#1561:15->1561:22
	FMV	%fr6, %fr0	# build/example.ml#1561:15->1561:22
	LDR	%r6, %r31, $280	# build/example.ml#1561:15->1561:22
	LDR	%r5, %r31, $284	# build/example.ml#1561:15->1561:22
	LDR	%r4, %r31, $288	# build/example.ml#1561:15->1561:22
	LDR	%r3, %r31, $292	# build/example.ml#1561:15->1561:22
	LDR	%r2, %r31, $296	# build/example.ml#1561:15->1561:22
	LDR	%r1, %r31, $300	# build/example.ml#1561:15->1561:22
	FLDR	%fr6, %r31, $304	# build/example.ml#1561:15->1561:22
	FLDR	%fr5, %r31, $308	# build/example.ml#1561:15->1561:22
	SDR	%r6, %r31, $312	# build/example.ml#1561:28->1561:35
	SDR	%r5, %r31, $316	# build/example.ml#1561:28->1561:35
	SDR	%r4, %r31, $320	# build/example.ml#1561:28->1561:35
	SDR	%r3, %r31, $324	# build/example.ml#1561:28->1561:35
	SDR	%r2, %r31, $328	# build/example.ml#1561:28->1561:35
	SDR	%r1, %r31, $332	# build/example.ml#1561:28->1561:35
	FSDR	%fr6, %r31, $336	# build/example.ml#1561:28->1561:35
	FSDR	%fr5, %r31, $340	# build/example.ml#1561:28->1561:35
	FMV	%fr0, %fr9	# build/example.ml#1561:28->1561:35
	ADDI	%r31, %r31, $344	# build/example.ml#1561:28->1561:35
	ADDI	%r31, %r31, $4	# build/example.ml#1561:28->1561:35
	SIP	# build/example.ml#1561:28->1561:35
	J	$min_caml_fsqr	# build/example.ml#1561:28->1561:35
	ADDI	%r31, %r31, $-344	# build/example.ml#1561:28->1561:35
	FMV	%fr8, %fr0	# build/example.ml#1561:28->1561:35
	LDR	%r6, %r31, $312	# build/example.ml#1561:28->1561:35
	LDR	%r5, %r31, $316	# build/example.ml#1561:28->1561:35
	LDR	%r4, %r31, $320	# build/example.ml#1561:28->1561:35
	LDR	%r3, %r31, $324	# build/example.ml#1561:28->1561:35
	LDR	%r2, %r31, $328	# build/example.ml#1561:28->1561:35
	LDR	%r1, %r31, $332	# build/example.ml#1561:28->1561:35
	FLDR	%fr6, %r31, $336	# build/example.ml#1561:28->1561:35
	FLDR	%fr5, %r31, $340	# build/example.ml#1561:28->1561:35
	FADD	%fr8, %fr6, %fr8	# build/example.ml#1561:14->1561:36
	FABS	%fr5, %fr7	# build/example.ml#1563:17->1563:24
	FLDA	%fr6, $l.7802	# build/example.ml#1563:26->1563:32
	SDR	%r6, %r31, $344	# build/example.ml#1563:10->1563:32
	SDR	%r5, %r31, $348	# build/example.ml#1563:10->1563:32
	SDR	%r4, %r31, $352	# build/example.ml#1563:10->1563:32
	SDR	%r3, %r31, $356	# build/example.ml#1563:10->1563:32
	SDR	%r2, %r31, $360	# build/example.ml#1563:10->1563:32
	SDR	%r1, %r31, $364	# build/example.ml#1563:10->1563:32
	FSDR	%fr6, %r31, $368	# build/example.ml#1563:10->1563:32
	FSDR	%fr5, %r31, $372	# build/example.ml#1563:10->1563:32
	FMV	%fr1, %fr6	# build/example.ml#1563:10->1563:32
	FMV	%fr0, %fr5	# build/example.ml#1563:10->1563:32
	ADDI	%r31, %r31, $376	# build/example.ml#1563:10->1563:32
	ADDI	%r31, %r31, $4	# build/example.ml#1563:10->1563:32
	SIP	# build/example.ml#1563:10->1563:32
	J	$min_caml_fless	# build/example.ml#1563:10->1563:32
	ADDI	%r31, %r31, $-376	# build/example.ml#1563:10->1563:32
	MV	%r27, %r0	# build/example.ml#1563:10->1563:32
	LDR	%r6, %r31, $344	# build/example.ml#1563:10->1563:32
	LDR	%r5, %r31, $348	# build/example.ml#1563:10->1563:32
	LDR	%r4, %r31, $352	# build/example.ml#1563:10->1563:32
	LDR	%r3, %r31, $356	# build/example.ml#1563:10->1563:32
	LDR	%r2, %r31, $360	# build/example.ml#1563:10->1563:32
	LDR	%r1, %r31, $364	# build/example.ml#1563:10->1563:32
	FLDR	%fr6, %r31, $368	# build/example.ml#1563:10->1563:32
	FLDR	%fr5, %r31, $372	# build/example.ml#1563:10->1563:32
	MVI	%r28, $0	# build/example.ml#1563:7->1568:34
	CEQ	%r27, %r28	# build/example.ml#1563:7->1568:34
	JZ	$if_eq.11603	# build/example.ml#1563:7->1568:34
	FLDA	%rd, $l.7804	# build/example.ml#1564:2->1564:6
	J	$if_eq_cont.11604	# build/example.ml#1563:7->1568:34
if_eq.11603:
	FDIV	%fr9, %fr9, %fr7	# build/example.ml#1566:17->1566:25
	FABS	%fr9, %fr9	# build/example.ml#1566:11->1566:26
	SDR	%r6, %r31, $376	# build/example.ml#1568:4->1568:11
	SDR	%r5, %r31, $380	# build/example.ml#1568:4->1568:11
	SDR	%r4, %r31, $384	# build/example.ml#1568:4->1568:11
	SDR	%r3, %r31, $388	# build/example.ml#1568:4->1568:11
	SDR	%r2, %r31, $392	# build/example.ml#1568:4->1568:11
	SDR	%r1, %r31, $396	# build/example.ml#1568:4->1568:11
	FSDR	%fr6, %r31, $400	# build/example.ml#1568:4->1568:11
	FSDR	%fr5, %r31, $404	# build/example.ml#1568:4->1568:11
	FMV	%fr0, %fr9	# build/example.ml#1568:4->1568:11
	ADDI	%r31, %r31, $408	# build/example.ml#1568:4->1568:11
	ADDI	%r31, %r31, $4	# build/example.ml#1568:4->1568:11
	SIP	# build/example.ml#1568:4->1568:11
	J	$min_caml_atan	# build/example.ml#1568:4->1568:11
	ADDI	%r31, %r31, $-408	# build/example.ml#1568:4->1568:11
	FMV	%fr7, %fr0	# build/example.ml#1568:4->1568:11
	LDR	%r6, %r31, $376	# build/example.ml#1568:4->1568:11
	LDR	%r5, %r31, $380	# build/example.ml#1568:4->1568:11
	LDR	%r4, %r31, $384	# build/example.ml#1568:4->1568:11
	LDR	%r3, %r31, $388	# build/example.ml#1568:4->1568:11
	LDR	%r2, %r31, $392	# build/example.ml#1568:4->1568:11
	LDR	%r1, %r31, $396	# build/example.ml#1568:4->1568:11
	FLDR	%fr6, %r31, $400	# build/example.ml#1568:4->1568:11
	FLDR	%fr5, %r31, $404	# build/example.ml#1568:4->1568:11
	FLDA	%fr9, $l.7803	# build/example.ml#1568:16->1568:20
	FMUL	%fr7, %fr7, %fr9	# build/example.ml#1568:3->1568:20
	FLDA	%fr9, $l.7801	# build/example.ml#1568:25->1568:34
	FDIV	%rd, %fr7, %fr9	# build/example.ml#1568:2->1568:34
if_eq_cont.11604:
	SDR	%r6, %r31, $408	# build/example.ml#1570:21->1570:29
	SDR	%r5, %r31, $412	# build/example.ml#1570:21->1570:29
	SDR	%r4, %r31, $416	# build/example.ml#1570:21->1570:29
	SDR	%r3, %r31, $420	# build/example.ml#1570:21->1570:29
	SDR	%r2, %r31, $424	# build/example.ml#1570:21->1570:29
	SDR	%r1, %r31, $428	# build/example.ml#1570:21->1570:29
	FSDR	%fr6, %r31, $432	# build/example.ml#1570:21->1570:29
	FSDR	%fr5, %r31, $436	# build/example.ml#1570:21->1570:29
	FMV	%fr0, %fr9	# build/example.ml#1570:21->1570:29
	ADDI	%r31, %r31, $440	# build/example.ml#1570:21->1570:29
	ADDI	%r31, %r31, $4	# build/example.ml#1570:21->1570:29
	SIP	# build/example.ml#1570:21->1570:29
	J	$min_caml_floor	# build/example.ml#1570:21->1570:29
	ADDI	%r31, %r31, $-440	# build/example.ml#1570:21->1570:29
	FMV	%fr7, %fr0	# build/example.ml#1570:21->1570:29
	LDR	%r6, %r31, $408	# build/example.ml#1570:21->1570:29
	LDR	%r5, %r31, $412	# build/example.ml#1570:21->1570:29
	LDR	%r4, %r31, $416	# build/example.ml#1570:21->1570:29
	LDR	%r3, %r31, $420	# build/example.ml#1570:21->1570:29
	LDR	%r2, %r31, $424	# build/example.ml#1570:21->1570:29
	LDR	%r1, %r31, $428	# build/example.ml#1570:21->1570:29
	FLDR	%fr6, %r31, $432	# build/example.ml#1570:21->1570:29
	FLDR	%fr5, %r31, $436	# build/example.ml#1570:21->1570:29
	FSUB	%fr9, %fr9, %fr7	# build/example.ml#1570:14->1570:30
	MVI	%r28, $1	# build/example.ml#1572:18->1572:19
	FLDD	%fr6, %r12, $4, %r28	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $440	# build/example.ml#1572:24->1572:35
	SDR	%r5, %r31, $444	# build/example.ml#1572:24->1572:35
	SDR	%r4, %r31, $448	# build/example.ml#1572:24->1572:35
	SDR	%r3, %r31, $452	# build/example.ml#1572:24->1572:35
	SDR	%r2, %r31, $456	# build/example.ml#1572:24->1572:35
	SDR	%r1, %r31, $460	# build/example.ml#1572:24->1572:35
	ADDI	%r31, %r31, $464	# build/example.ml#1572:24->1572:35
	ADDI	%r31, %r31, $4	# build/example.ml#1572:24->1572:35
	SIP	# build/example.ml#1572:24->1572:35
	J	$o_param_y.2639	# build/example.ml#1572:24->1572:35
	ADDI	%r31, %r31, $-464	# build/example.ml#1572:24->1572:35
	FMV	%fr7, %fr0	# build/example.ml#1572:24->1572:35
	LDR	%r6, %r31, $440	# build/example.ml#1572:24->1572:35
	LDR	%r5, %r31, $444	# build/example.ml#1572:24->1572:35
	LDR	%r4, %r31, $448	# build/example.ml#1572:24->1572:35
	LDR	%r3, %r31, $452	# build/example.ml#1572:24->1572:35
	LDR	%r2, %r31, $456	# build/example.ml#1572:24->1572:35
	LDR	%r1, %r31, $460	# build/example.ml#1572:24->1572:35
	FSUB	%fr6, %fr6, %fr7	# build/example.ml#1572:15->1572:35
	SDR	%r6, %r31, $464	# build/example.ml#1572:47->1572:58
	SDR	%r5, %r31, $468	# build/example.ml#1572:47->1572:58
	SDR	%r4, %r31, $472	# build/example.ml#1572:47->1572:58
	SDR	%r3, %r31, $476	# build/example.ml#1572:47->1572:58
	SDR	%r2, %r31, $480	# build/example.ml#1572:47->1572:58
	SDR	%r1, %r31, $484	# build/example.ml#1572:47->1572:58
	ADDI	%r31, %r31, $488	# build/example.ml#1572:47->1572:58
	ADDI	%r31, %r31, $4	# build/example.ml#1572:47->1572:58
	SIP	# build/example.ml#1572:47->1572:58
	J	$o_param_b.2631	# build/example.ml#1572:47->1572:58
	ADDI	%r31, %r31, $-488	# build/example.ml#1572:47->1572:58
	FMV	%fr7, %fr0	# build/example.ml#1572:47->1572:58
	LDR	%r6, %r31, $464	# build/example.ml#1572:47->1572:58
	LDR	%r5, %r31, $468	# build/example.ml#1572:47->1572:58
	LDR	%r4, %r31, $472	# build/example.ml#1572:47->1572:58
	LDR	%r3, %r31, $476	# build/example.ml#1572:47->1572:58
	LDR	%r2, %r31, $480	# build/example.ml#1572:47->1572:58
	LDR	%r1, %r31, $484	# build/example.ml#1572:47->1572:58
	SDR	%r6, %r31, $488	# build/example.ml#1572:41->1572:59
	SDR	%r5, %r31, $492	# build/example.ml#1572:41->1572:59
	SDR	%r4, %r31, $496	# build/example.ml#1572:41->1572:59
	SDR	%r3, %r31, $500	# build/example.ml#1572:41->1572:59
	SDR	%r2, %r31, $504	# build/example.ml#1572:41->1572:59
	SDR	%r1, %r31, $508	# build/example.ml#1572:41->1572:59
	FSDR	%fr6, %r31, $512	# build/example.ml#1572:41->1572:59
	FSDR	%fr5, %r31, $516	# build/example.ml#1572:41->1572:59
	FMV	%fr0, %fr7	# build/example.ml#1572:41->1572:59
	ADDI	%r31, %r31, $520	# build/example.ml#1572:41->1572:59
	ADDI	%r31, %r31, $4	# build/example.ml#1572:41->1572:59
	SIP	# build/example.ml#1572:41->1572:59
	J	$min_caml_sqrt	# build/example.ml#1572:41->1572:59
	ADDI	%r31, %r31, $-520	# build/example.ml#1572:41->1572:59
	FMV	%fr7, %fr0	# build/example.ml#1572:41->1572:59
	LDR	%r6, %r31, $488	# build/example.ml#1572:41->1572:59
	LDR	%r5, %r31, $492	# build/example.ml#1572:41->1572:59
	LDR	%r4, %r31, $496	# build/example.ml#1572:41->1572:59
	LDR	%r3, %r31, $500	# build/example.ml#1572:41->1572:59
	LDR	%r2, %r31, $504	# build/example.ml#1572:41->1572:59
	LDR	%r1, %r31, $508	# build/example.ml#1572:41->1572:59
	FLDR	%fr6, %r31, $512	# build/example.ml#1572:41->1572:59
	FLDR	%fr5, %r31, $516	# build/example.ml#1572:41->1572:59
	FMUL	%fr7, %fr6, %fr7	# build/example.ml#1572:14->1572:60
	FABS	%fr5, %fr8	# build/example.ml#1574:17->1574:24
	FLDA	%fr6, $l.7802	# build/example.ml#1574:26->1574:32
	SDR	%r6, %r31, $520	# build/example.ml#1574:10->1574:32
	SDR	%r5, %r31, $524	# build/example.ml#1574:10->1574:32
	SDR	%r4, %r31, $528	# build/example.ml#1574:10->1574:32
	SDR	%r3, %r31, $532	# build/example.ml#1574:10->1574:32
	SDR	%r2, %r31, $536	# build/example.ml#1574:10->1574:32
	SDR	%r1, %r31, $540	# build/example.ml#1574:10->1574:32
	FSDR	%fr6, %r31, $544	# build/example.ml#1574:10->1574:32
	FSDR	%fr5, %r31, $548	# build/example.ml#1574:10->1574:32
	FMV	%fr1, %fr6	# build/example.ml#1574:10->1574:32
	FMV	%fr0, %fr5	# build/example.ml#1574:10->1574:32
	ADDI	%r31, %r31, $552	# build/example.ml#1574:10->1574:32
	ADDI	%r31, %r31, $4	# build/example.ml#1574:10->1574:32
	SIP	# build/example.ml#1574:10->1574:32
	J	$min_caml_fless	# build/example.ml#1574:10->1574:32
	ADDI	%r31, %r31, $-552	# build/example.ml#1574:10->1574:32
	MV	%r8, %r0	# build/example.ml#1574:10->1574:32
	LDR	%r6, %r31, $520	# build/example.ml#1574:10->1574:32
	LDR	%r5, %r31, $524	# build/example.ml#1574:10->1574:32
	LDR	%r4, %r31, $528	# build/example.ml#1574:10->1574:32
	LDR	%r3, %r31, $532	# build/example.ml#1574:10->1574:32
	LDR	%r2, %r31, $536	# build/example.ml#1574:10->1574:32
	LDR	%r1, %r31, $540	# build/example.ml#1574:10->1574:32
	FLDR	%fr6, %r31, $544	# build/example.ml#1574:10->1574:32
	FLDR	%fr5, %r31, $548	# build/example.ml#1574:10->1574:32
	MVI	%r9, $0	# build/example.ml#1574:7->1578:37
	CEQ	%r8, %r9	# build/example.ml#1574:7->1578:37
	JZ	$if_eq.11605	# build/example.ml#1574:7->1578:37
	FLDA	%rd, $l.7804	# build/example.ml#1575:2->1575:6
	J	$if_eq_cont.11606	# build/example.ml#1574:7->1578:37
if_eq.11605:
	FDIV	%fr8, %fr7, %fr8	# build/example.ml#1577:17->1577:25
	FABS	%fr8, %fr8	# build/example.ml#1577:11->1577:26
	SDR	%r6, %r31, $552	# build/example.ml#1578:7->1578:14
	SDR	%r5, %r31, $556	# build/example.ml#1578:7->1578:14
	SDR	%r4, %r31, $560	# build/example.ml#1578:7->1578:14
	SDR	%r3, %r31, $564	# build/example.ml#1578:7->1578:14
	SDR	%r2, %r31, $568	# build/example.ml#1578:7->1578:14
	SDR	%r1, %r31, $572	# build/example.ml#1578:7->1578:14
	FSDR	%fr6, %r31, $576	# build/example.ml#1578:7->1578:14
	FSDR	%fr5, %r31, $580	# build/example.ml#1578:7->1578:14
	FMV	%fr0, %fr8	# build/example.ml#1578:7->1578:14
	ADDI	%r31, %r31, $584	# build/example.ml#1578:7->1578:14
	ADDI	%r31, %r31, $4	# build/example.ml#1578:7->1578:14
	SIP	# build/example.ml#1578:7->1578:14
	J	$min_caml_atan	# build/example.ml#1578:7->1578:14
	ADDI	%r31, %r31, $-584	# build/example.ml#1578:7->1578:14
	FMV	%fr7, %fr0	# build/example.ml#1578:7->1578:14
	LDR	%r6, %r31, $552	# build/example.ml#1578:7->1578:14
	LDR	%r5, %r31, $556	# build/example.ml#1578:7->1578:14
	LDR	%r4, %r31, $560	# build/example.ml#1578:7->1578:14
	LDR	%r3, %r31, $564	# build/example.ml#1578:7->1578:14
	LDR	%r2, %r31, $568	# build/example.ml#1578:7->1578:14
	LDR	%r1, %r31, $572	# build/example.ml#1578:7->1578:14
	FLDR	%fr6, %r31, $576	# build/example.ml#1578:7->1578:14
	FLDR	%fr5, %r31, $580	# build/example.ml#1578:7->1578:14
	FLDA	%fr8, $l.7803	# build/example.ml#1578:19->1578:23
	FMUL	%fr7, %fr7, %fr8	# build/example.ml#1578:6->1578:23
	FLDA	%fr8, $l.7801	# build/example.ml#1578:28->1578:37
	FDIV	%rd, %fr7, %fr8	# build/example.ml#1578:5->1578:37
if_eq_cont.11606:
	SDR	%r6, %r31, $584	# build/example.ml#1580:22->1580:30
	SDR	%r5, %r31, $588	# build/example.ml#1580:22->1580:30
	SDR	%r4, %r31, $592	# build/example.ml#1580:22->1580:30
	SDR	%r3, %r31, $596	# build/example.ml#1580:22->1580:30
	SDR	%r2, %r31, $600	# build/example.ml#1580:22->1580:30
	SDR	%r1, %r31, $604	# build/example.ml#1580:22->1580:30
	FSDR	%fr6, %r31, $608	# build/example.ml#1580:22->1580:30
	FSDR	%fr5, %r31, $612	# build/example.ml#1580:22->1580:30
	FMV	%fr0, %fr8	# build/example.ml#1580:22->1580:30
	ADDI	%r31, %r31, $616	# build/example.ml#1580:22->1580:30
	ADDI	%r31, %r31, $4	# build/example.ml#1580:22->1580:30
	SIP	# build/example.ml#1580:22->1580:30
	J	$min_caml_floor	# build/example.ml#1580:22->1580:30
	ADDI	%r31, %r31, $-616	# build/example.ml#1580:22->1580:30
	FMV	%fr7, %fr0	# build/example.ml#1580:22->1580:30
	LDR	%r6, %r31, $584	# build/example.ml#1580:22->1580:30
	LDR	%r5, %r31, $588	# build/example.ml#1580:22->1580:30
	LDR	%r4, %r31, $592	# build/example.ml#1580:22->1580:30
	LDR	%r3, %r31, $596	# build/example.ml#1580:22->1580:30
	LDR	%r2, %r31, $600	# build/example.ml#1580:22->1580:30
	LDR	%r1, %r31, $604	# build/example.ml#1580:22->1580:30
	FLDR	%fr6, %r31, $608	# build/example.ml#1580:22->1580:30
	FLDR	%fr5, %r31, $612	# build/example.ml#1580:22->1580:30
	FSUB	%fr8, %fr8, %fr7	# build/example.ml#1580:15->1580:31
	FLDA	%fr6, $l.7805	# build/example.ml#1581:15->1581:19
	FLDA	%fr7, $l.7793	# build/example.ml#1581:30->1581:33
	FSUB	%fr9, %fr7, %fr9	# build/example.ml#1581:30->1581:39
	SDR	%r6, %r31, $616	# build/example.ml#1581:24->1581:40
	SDR	%r5, %r31, $620	# build/example.ml#1581:24->1581:40
	SDR	%r4, %r31, $624	# build/example.ml#1581:24->1581:40
	SDR	%r3, %r31, $628	# build/example.ml#1581:24->1581:40
	SDR	%r2, %r31, $632	# build/example.ml#1581:24->1581:40
	SDR	%r1, %r31, $636	# build/example.ml#1581:24->1581:40
	FSDR	%fr6, %r31, $640	# build/example.ml#1581:24->1581:40
	FSDR	%fr5, %r31, $644	# build/example.ml#1581:24->1581:40
	FMV	%fr0, %fr9	# build/example.ml#1581:24->1581:40
	ADDI	%r31, %r31, $648	# build/example.ml#1581:24->1581:40
	ADDI	%r31, %r31, $4	# build/example.ml#1581:24->1581:40
	SIP	# build/example.ml#1581:24->1581:40
	J	$min_caml_fsqr	# build/example.ml#1581:24->1581:40
	ADDI	%r31, %r31, $-648	# build/example.ml#1581:24->1581:40
	FMV	%fr9, %fr0	# build/example.ml#1581:24->1581:40
	LDR	%r6, %r31, $616	# build/example.ml#1581:24->1581:40
	LDR	%r5, %r31, $620	# build/example.ml#1581:24->1581:40
	LDR	%r4, %r31, $624	# build/example.ml#1581:24->1581:40
	LDR	%r3, %r31, $628	# build/example.ml#1581:24->1581:40
	LDR	%r2, %r31, $632	# build/example.ml#1581:24->1581:40
	LDR	%r1, %r31, $636	# build/example.ml#1581:24->1581:40
	FLDR	%fr6, %r31, $640	# build/example.ml#1581:24->1581:40
	FLDR	%fr5, %r31, $644	# build/example.ml#1581:24->1581:40
	FSUB	%fr7, %fr6, %fr9	# build/example.ml#1581:15->1581:41
	FLDA	%fr9, $l.7793	# build/example.ml#1581:52->1581:55
	FSUB	%fr9, %fr9, %fr8	# build/example.ml#1581:52->1581:62
	SDR	%r6, %r31, $648	# build/example.ml#1581:46->1581:63
	SDR	%r5, %r31, $652	# build/example.ml#1581:46->1581:63
	SDR	%r4, %r31, $656	# build/example.ml#1581:46->1581:63
	SDR	%r3, %r31, $660	# build/example.ml#1581:46->1581:63
	SDR	%r2, %r31, $664	# build/example.ml#1581:46->1581:63
	SDR	%r1, %r31, $668	# build/example.ml#1581:46->1581:63
	FSDR	%fr6, %r31, $672	# build/example.ml#1581:46->1581:63
	FSDR	%fr5, %r31, $676	# build/example.ml#1581:46->1581:63
	FMV	%fr0, %fr9	# build/example.ml#1581:46->1581:63
	ADDI	%r31, %r31, $680	# build/example.ml#1581:46->1581:63
	ADDI	%r31, %r31, $4	# build/example.ml#1581:46->1581:63
	SIP	# build/example.ml#1581:46->1581:63
	J	$min_caml_fsqr	# build/example.ml#1581:46->1581:63
	ADDI	%r31, %r31, $-680	# build/example.ml#1581:46->1581:63
	FMV	%fr9, %fr0	# build/example.ml#1581:46->1581:63
	LDR	%r6, %r31, $648	# build/example.ml#1581:46->1581:63
	LDR	%r5, %r31, $652	# build/example.ml#1581:46->1581:63
	LDR	%r4, %r31, $656	# build/example.ml#1581:46->1581:63
	LDR	%r3, %r31, $660	# build/example.ml#1581:46->1581:63
	LDR	%r2, %r31, $664	# build/example.ml#1581:46->1581:63
	LDR	%r1, %r31, $668	# build/example.ml#1581:46->1581:63
	FLDR	%fr6, %r31, $672	# build/example.ml#1581:46->1581:63
	FLDR	%fr5, %r31, $676	# build/example.ml#1581:46->1581:63
	FSUB	%fr9, %fr7, %fr9	# build/example.ml#1581:15->1581:64
	SDR	%r6, %r31, $680	# build/example.ml#1582:18->1582:28
	SDR	%r5, %r31, $684	# build/example.ml#1582:18->1582:28
	SDR	%r4, %r31, $688	# build/example.ml#1582:18->1582:28
	SDR	%r3, %r31, $692	# build/example.ml#1582:18->1582:28
	SDR	%r2, %r31, $696	# build/example.ml#1582:18->1582:28
	SDR	%r1, %r31, $700	# build/example.ml#1582:18->1582:28
	FSDR	%fr6, %r31, $704	# build/example.ml#1582:18->1582:28
	FSDR	%fr5, %r31, $708	# build/example.ml#1582:18->1582:28
	FMV	%fr0, %fr9	# build/example.ml#1582:18->1582:28
	ADDI	%r31, %r31, $712	# build/example.ml#1582:18->1582:28
	ADDI	%r31, %r31, $4	# build/example.ml#1582:18->1582:28
	SIP	# build/example.ml#1582:18->1582:28
	J	$min_caml_fisneg	# build/example.ml#1582:18->1582:28
	ADDI	%r31, %r31, $-712	# build/example.ml#1582:18->1582:28
	MV	%r8, %r0	# build/example.ml#1582:18->1582:28
	LDR	%r6, %r31, $680	# build/example.ml#1582:18->1582:28
	LDR	%r5, %r31, $684	# build/example.ml#1582:18->1582:28
	LDR	%r4, %r31, $688	# build/example.ml#1582:18->1582:28
	LDR	%r3, %r31, $692	# build/example.ml#1582:18->1582:28
	LDR	%r2, %r31, $696	# build/example.ml#1582:18->1582:28
	LDR	%r1, %r31, $700	# build/example.ml#1582:18->1582:28
	FLDR	%fr6, %r31, $704	# build/example.ml#1582:18->1582:28
	FLDR	%fr5, %r31, $708	# build/example.ml#1582:18->1582:28
	MVI	%r9, $0	# build/example.ml#1582:15->1582:46
	CEQ	%r8, %r9	# build/example.ml#1582:15->1582:46
	JZ	$if_eq.11607	# build/example.ml#1582:15->1582:46
	FLDA	%rd, $l.7787	# build/example.ml#1582:34->1582:37
	J	$if_eq_cont.11608	# build/example.ml#1582:15->1582:46
if_eq.11607:
if_eq_cont.11608:
	MVI	%r9, $2	# build/example.ml#1583:20->1583:21
	FLDA	%fr8, $l.7799	# build/example.ml#1583:27->1583:32
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#1583:27->1583:39
	FLDA	%fr9, $l.7806	# build/example.ml#1583:44->1583:47
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#1583:26->1583:47
	FSDD	%fr9, %r26, $4, %r9	# build/example.ml#1583:5->1583:47
if_eq_cont.11602:
	J	$if_eq_cont.11600	# build/example.ml#1546:8->1585:10
if_eq.11599:
	MVI	%r28, $0	# build/example.ml#1549:19->1549:20
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $712	# build/example.ml#1549:25->1549:36
	SDR	%r5, %r31, $716	# build/example.ml#1549:25->1549:36
	SDR	%r4, %r31, $720	# build/example.ml#1549:25->1549:36
	SDR	%r3, %r31, $724	# build/example.ml#1549:25->1549:36
	SDR	%r2, %r31, $728	# build/example.ml#1549:25->1549:36
	SDR	%r1, %r31, $732	# build/example.ml#1549:25->1549:36
	ADDI	%r31, %r31, $736	# build/example.ml#1549:25->1549:36
	ADDI	%r31, %r31, $4	# build/example.ml#1549:25->1549:36
	SIP	# build/example.ml#1549:25->1549:36
	J	$o_param_x.2637	# build/example.ml#1549:25->1549:36
	ADDI	%r31, %r31, $-736	# build/example.ml#1549:25->1549:36
	FMV	%fr9, %fr0	# build/example.ml#1549:25->1549:36
	LDR	%r6, %r31, $712	# build/example.ml#1549:25->1549:36
	LDR	%r5, %r31, $716	# build/example.ml#1549:25->1549:36
	LDR	%r4, %r31, $720	# build/example.ml#1549:25->1549:36
	LDR	%r3, %r31, $724	# build/example.ml#1549:25->1549:36
	LDR	%r2, %r31, $728	# build/example.ml#1549:25->1549:36
	LDR	%r1, %r31, $732	# build/example.ml#1549:25->1549:36
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1549:16->1549:36
	MVI	%r28, $2	# build/example.ml#1550:19->1550:20
	FLDD	%fr7, %r12, $4, %r28	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $736	# build/example.ml#1550:25->1550:36
	SDR	%r5, %r31, $740	# build/example.ml#1550:25->1550:36
	SDR	%r4, %r31, $744	# build/example.ml#1550:25->1550:36
	SDR	%r3, %r31, $748	# build/example.ml#1550:25->1550:36
	SDR	%r2, %r31, $752	# build/example.ml#1550:25->1550:36
	SDR	%r1, %r31, $756	# build/example.ml#1550:25->1550:36
	ADDI	%r31, %r31, $760	# build/example.ml#1550:25->1550:36
	ADDI	%r31, %r31, $4	# build/example.ml#1550:25->1550:36
	SIP	# build/example.ml#1550:25->1550:36
	J	$o_param_z.2641	# build/example.ml#1550:25->1550:36
	ADDI	%r31, %r31, $-760	# build/example.ml#1550:25->1550:36
	FMV	%fr8, %fr0	# build/example.ml#1550:25->1550:36
	LDR	%r6, %r31, $736	# build/example.ml#1550:25->1550:36
	LDR	%r5, %r31, $740	# build/example.ml#1550:25->1550:36
	LDR	%r4, %r31, $744	# build/example.ml#1550:25->1550:36
	LDR	%r3, %r31, $748	# build/example.ml#1550:25->1550:36
	LDR	%r2, %r31, $752	# build/example.ml#1550:25->1550:36
	LDR	%r1, %r31, $756	# build/example.ml#1550:25->1550:36
	FSUB	%fr8, %fr7, %fr8	# build/example.ml#1550:16->1550:36
	SDR	%r6, %r31, $760	# build/example.ml#1551:22->1551:29
	SDR	%r5, %r31, $764	# build/example.ml#1551:22->1551:29
	SDR	%r4, %r31, $768	# build/example.ml#1551:22->1551:29
	SDR	%r3, %r31, $772	# build/example.ml#1551:22->1551:29
	SDR	%r2, %r31, $776	# build/example.ml#1551:22->1551:29
	SDR	%r1, %r31, $780	# build/example.ml#1551:22->1551:29
	FSDR	%fr6, %r31, $784	# build/example.ml#1551:22->1551:29
	FSDR	%fr5, %r31, $788	# build/example.ml#1551:22->1551:29
	FMV	%fr0, %fr9	# build/example.ml#1551:22->1551:29
	ADDI	%r31, %r31, $792	# build/example.ml#1551:22->1551:29
	ADDI	%r31, %r31, $4	# build/example.ml#1551:22->1551:29
	SIP	# build/example.ml#1551:22->1551:29
	J	$min_caml_fsqr	# build/example.ml#1551:22->1551:29
	ADDI	%r31, %r31, $-792	# build/example.ml#1551:22->1551:29
	FMV	%fr9, %fr0	# build/example.ml#1551:22->1551:29
	LDR	%r6, %r31, $760	# build/example.ml#1551:22->1551:29
	LDR	%r5, %r31, $764	# build/example.ml#1551:22->1551:29
	LDR	%r4, %r31, $768	# build/example.ml#1551:22->1551:29
	LDR	%r3, %r31, $772	# build/example.ml#1551:22->1551:29
	LDR	%r2, %r31, $776	# build/example.ml#1551:22->1551:29
	LDR	%r1, %r31, $780	# build/example.ml#1551:22->1551:29
	FLDR	%fr6, %r31, $784	# build/example.ml#1551:22->1551:29
	FLDR	%fr5, %r31, $788	# build/example.ml#1551:22->1551:29
	SDR	%r6, %r31, $792	# build/example.ml#1551:33->1551:40
	SDR	%r5, %r31, $796	# build/example.ml#1551:33->1551:40
	SDR	%r4, %r31, $800	# build/example.ml#1551:33->1551:40
	SDR	%r3, %r31, $804	# build/example.ml#1551:33->1551:40
	SDR	%r2, %r31, $808	# build/example.ml#1551:33->1551:40
	SDR	%r1, %r31, $812	# build/example.ml#1551:33->1551:40
	FSDR	%fr6, %r31, $816	# build/example.ml#1551:33->1551:40
	FSDR	%fr5, %r31, $820	# build/example.ml#1551:33->1551:40
	FMV	%fr0, %fr8	# build/example.ml#1551:33->1551:40
	ADDI	%r31, %r31, $824	# build/example.ml#1551:33->1551:40
	ADDI	%r31, %r31, $4	# build/example.ml#1551:33->1551:40
	SIP	# build/example.ml#1551:33->1551:40
	J	$min_caml_fsqr	# build/example.ml#1551:33->1551:40
	ADDI	%r31, %r31, $-824	# build/example.ml#1551:33->1551:40
	FMV	%fr8, %fr0	# build/example.ml#1551:33->1551:40
	LDR	%r6, %r31, $792	# build/example.ml#1551:33->1551:40
	LDR	%r5, %r31, $796	# build/example.ml#1551:33->1551:40
	LDR	%r4, %r31, $800	# build/example.ml#1551:33->1551:40
	LDR	%r3, %r31, $804	# build/example.ml#1551:33->1551:40
	LDR	%r2, %r31, $808	# build/example.ml#1551:33->1551:40
	LDR	%r1, %r31, $812	# build/example.ml#1551:33->1551:40
	FLDR	%fr6, %r31, $816	# build/example.ml#1551:33->1551:40
	FLDR	%fr5, %r31, $820	# build/example.ml#1551:33->1551:40
	FADD	%fr9, %fr9, %fr8	# build/example.ml#1551:22->1551:40
	SDR	%r6, %r31, $824	# build/example.ml#1551:16->1551:41
	SDR	%r5, %r31, $828	# build/example.ml#1551:16->1551:41
	SDR	%r4, %r31, $832	# build/example.ml#1551:16->1551:41
	SDR	%r3, %r31, $836	# build/example.ml#1551:16->1551:41
	SDR	%r2, %r31, $840	# build/example.ml#1551:16->1551:41
	SDR	%r1, %r31, $844	# build/example.ml#1551:16->1551:41
	FSDR	%fr6, %r31, $848	# build/example.ml#1551:16->1551:41
	FSDR	%fr5, %r31, $852	# build/example.ml#1551:16->1551:41
	FMV	%fr0, %fr9	# build/example.ml#1551:16->1551:41
	ADDI	%r31, %r31, $856	# build/example.ml#1551:16->1551:41
	ADDI	%r31, %r31, $4	# build/example.ml#1551:16->1551:41
	SIP	# build/example.ml#1551:16->1551:41
	J	$min_caml_sqrt	# build/example.ml#1551:16->1551:41
	ADDI	%r31, %r31, $-856	# build/example.ml#1551:16->1551:41
	FMV	%fr8, %fr0	# build/example.ml#1551:16->1551:41
	LDR	%r6, %r31, $824	# build/example.ml#1551:16->1551:41
	LDR	%r5, %r31, $828	# build/example.ml#1551:16->1551:41
	LDR	%r4, %r31, $832	# build/example.ml#1551:16->1551:41
	LDR	%r3, %r31, $836	# build/example.ml#1551:16->1551:41
	LDR	%r2, %r31, $840	# build/example.ml#1551:16->1551:41
	LDR	%r1, %r31, $844	# build/example.ml#1551:16->1551:41
	FLDR	%fr6, %r31, $848	# build/example.ml#1551:16->1551:41
	FLDR	%fr5, %r31, $852	# build/example.ml#1551:16->1551:41
	FLDA	%fr9, $l.7798	# build/example.ml#1551:45->1551:49
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#1551:16->1551:49
	SDR	%r6, %r31, $856	# build/example.ml#1552:24->1552:32
	SDR	%r5, %r31, $860	# build/example.ml#1552:24->1552:32
	SDR	%r4, %r31, $864	# build/example.ml#1552:24->1552:32
	SDR	%r3, %r31, $868	# build/example.ml#1552:24->1552:32
	SDR	%r2, %r31, $872	# build/example.ml#1552:24->1552:32
	SDR	%r1, %r31, $876	# build/example.ml#1552:24->1552:32
	FSDR	%fr6, %r31, $880	# build/example.ml#1552:24->1552:32
	FSDR	%fr5, %r31, $884	# build/example.ml#1552:24->1552:32
	FMV	%fr0, %fr9	# build/example.ml#1552:24->1552:32
	ADDI	%r31, %r31, $888	# build/example.ml#1552:24->1552:32
	ADDI	%r31, %r31, $4	# build/example.ml#1552:24->1552:32
	SIP	# build/example.ml#1552:24->1552:32
	J	$min_caml_floor	# build/example.ml#1552:24->1552:32
	ADDI	%r31, %r31, $-888	# build/example.ml#1552:24->1552:32
	FMV	%fr8, %fr0	# build/example.ml#1552:24->1552:32
	LDR	%r6, %r31, $856	# build/example.ml#1552:24->1552:32
	LDR	%r5, %r31, $860	# build/example.ml#1552:24->1552:32
	LDR	%r4, %r31, $864	# build/example.ml#1552:24->1552:32
	LDR	%r3, %r31, $868	# build/example.ml#1552:24->1552:32
	LDR	%r2, %r31, $872	# build/example.ml#1552:24->1552:32
	LDR	%r1, %r31, $876	# build/example.ml#1552:24->1552:32
	FLDR	%fr6, %r31, $880	# build/example.ml#1552:24->1552:32
	FLDR	%fr5, %r31, $884	# build/example.ml#1552:24->1552:32
	FSUB	%fr8, %fr9, %fr8	# build/example.ml#1552:18->1552:32
	FLDA	%fr9, $l.7801	# build/example.ml#1552:37->1552:46
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1552:17->1552:46
	SDR	%r6, %r31, $888	# build/example.ml#1553:23->1553:29
	SDR	%r5, %r31, $892	# build/example.ml#1553:23->1553:29
	SDR	%r4, %r31, $896	# build/example.ml#1553:23->1553:29
	SDR	%r3, %r31, $900	# build/example.ml#1553:23->1553:29
	SDR	%r2, %r31, $904	# build/example.ml#1553:23->1553:29
	SDR	%r1, %r31, $908	# build/example.ml#1553:23->1553:29
	FSDR	%fr6, %r31, $912	# build/example.ml#1553:23->1553:29
	FSDR	%fr5, %r31, $916	# build/example.ml#1553:23->1553:29
	FMV	%fr0, %fr9	# build/example.ml#1553:23->1553:29
	ADDI	%r31, %r31, $920	# build/example.ml#1553:23->1553:29
	ADDI	%r31, %r31, $4	# build/example.ml#1553:23->1553:29
	SIP	# build/example.ml#1553:23->1553:29
	J	$min_caml_cos	# build/example.ml#1553:23->1553:29
	ADDI	%r31, %r31, $-920	# build/example.ml#1553:23->1553:29
	FMV	%fr9, %fr0	# build/example.ml#1553:23->1553:29
	LDR	%r6, %r31, $888	# build/example.ml#1553:23->1553:29
	LDR	%r5, %r31, $892	# build/example.ml#1553:23->1553:29
	LDR	%r4, %r31, $896	# build/example.ml#1553:23->1553:29
	LDR	%r3, %r31, $900	# build/example.ml#1553:23->1553:29
	LDR	%r2, %r31, $904	# build/example.ml#1553:23->1553:29
	LDR	%r1, %r31, $908	# build/example.ml#1553:23->1553:29
	FLDR	%fr6, %r31, $912	# build/example.ml#1553:23->1553:29
	FLDR	%fr5, %r31, $916	# build/example.ml#1553:23->1553:29
	SDR	%r6, %r31, $920	# build/example.ml#1553:17->1553:30
	SDR	%r5, %r31, $924	# build/example.ml#1553:17->1553:30
	SDR	%r4, %r31, $928	# build/example.ml#1553:17->1553:30
	SDR	%r3, %r31, $932	# build/example.ml#1553:17->1553:30
	SDR	%r2, %r31, $936	# build/example.ml#1553:17->1553:30
	SDR	%r1, %r31, $940	# build/example.ml#1553:17->1553:30
	FSDR	%fr6, %r31, $944	# build/example.ml#1553:17->1553:30
	FSDR	%fr5, %r31, $948	# build/example.ml#1553:17->1553:30
	FMV	%fr0, %fr9	# build/example.ml#1553:17->1553:30
	ADDI	%r31, %r31, $952	# build/example.ml#1553:17->1553:30
	ADDI	%r31, %r31, $4	# build/example.ml#1553:17->1553:30
	SIP	# build/example.ml#1553:17->1553:30
	J	$min_caml_fsqr	# build/example.ml#1553:17->1553:30
	ADDI	%r31, %r31, $-952	# build/example.ml#1553:17->1553:30
	FMV	%fr9, %fr0	# build/example.ml#1553:17->1553:30
	LDR	%r6, %r31, $920	# build/example.ml#1553:17->1553:30
	LDR	%r5, %r31, $924	# build/example.ml#1553:17->1553:30
	LDR	%r4, %r31, $928	# build/example.ml#1553:17->1553:30
	LDR	%r3, %r31, $932	# build/example.ml#1553:17->1553:30
	LDR	%r2, %r31, $936	# build/example.ml#1553:17->1553:30
	LDR	%r1, %r31, $940	# build/example.ml#1553:17->1553:30
	FLDR	%fr6, %r31, $944	# build/example.ml#1553:17->1553:30
	FLDR	%fr5, %r31, $948	# build/example.ml#1553:17->1553:30
	MVI	%r9, $1	# build/example.ml#1554:22->1554:23
	FLDA	%fr8, $l.7799	# build/example.ml#1554:35->1554:40
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#1554:28->1554:40
	FSDD	%fr8, %r26, $4, %r9	# build/example.ml#1554:7->1554:40
	MVI	%r9, $2	# build/example.ml#1555:22->1555:23
	FLDA	%fr8, $l.7785	# build/example.ml#1555:29->1555:32
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#1555:29->1555:39
	FLDA	%fr9, $l.7799	# build/example.ml#1555:44->1555:49
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1555:28->1555:49
	FSDD	%fr9, %r26, $4, %r9	# build/example.ml#1555:7->1555:49
if_eq_cont.11600:
	J	$if_eq_cont.11598	# build/example.ml#1539:8->1585:10
if_eq.11597:
	MVI	%r9, $1	# build/example.ml#1542:30->1542:31
	FLDD	%fr8, %r12, $4, %r9	# build/example.ml#1524:15->1524:20
	FLDA	%fr9, $l.7800	# build/example.ml#1542:36->1542:40
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1542:27->1542:40
	SDR	%r6, %r31, $952	# build/example.ml#1542:22->1542:41
	SDR	%r5, %r31, $956	# build/example.ml#1542:22->1542:41
	SDR	%r4, %r31, $960	# build/example.ml#1542:22->1542:41
	SDR	%r3, %r31, $964	# build/example.ml#1542:22->1542:41
	SDR	%r2, %r31, $968	# build/example.ml#1542:22->1542:41
	SDR	%r1, %r31, $972	# build/example.ml#1542:22->1542:41
	FSDR	%fr6, %r31, $976	# build/example.ml#1542:22->1542:41
	FSDR	%fr5, %r31, $980	# build/example.ml#1542:22->1542:41
	FMV	%fr0, %fr9	# build/example.ml#1542:22->1542:41
	ADDI	%r31, %r31, $984	# build/example.ml#1542:22->1542:41
	ADDI	%r31, %r31, $4	# build/example.ml#1542:22->1542:41
	SIP	# build/example.ml#1542:22->1542:41
	J	$min_caml_sin	# build/example.ml#1542:22->1542:41
	ADDI	%r31, %r31, $-984	# build/example.ml#1542:22->1542:41
	FMV	%fr9, %fr0	# build/example.ml#1542:22->1542:41
	LDR	%r6, %r31, $952	# build/example.ml#1542:22->1542:41
	LDR	%r5, %r31, $956	# build/example.ml#1542:22->1542:41
	LDR	%r4, %r31, $960	# build/example.ml#1542:22->1542:41
	LDR	%r3, %r31, $964	# build/example.ml#1542:22->1542:41
	LDR	%r2, %r31, $968	# build/example.ml#1542:22->1542:41
	LDR	%r1, %r31, $972	# build/example.ml#1542:22->1542:41
	FLDR	%fr6, %r31, $976	# build/example.ml#1542:22->1542:41
	FLDR	%fr5, %r31, $980	# build/example.ml#1542:22->1542:41
	SDR	%r6, %r31, $984	# build/example.ml#1542:16->1542:42
	SDR	%r5, %r31, $988	# build/example.ml#1542:16->1542:42
	SDR	%r4, %r31, $992	# build/example.ml#1542:16->1542:42
	SDR	%r3, %r31, $996	# build/example.ml#1542:16->1542:42
	SDR	%r2, %r31, $1000	# build/example.ml#1542:16->1542:42
	SDR	%r1, %r31, $1004	# build/example.ml#1542:16->1542:42
	FSDR	%fr6, %r31, $1008	# build/example.ml#1542:16->1542:42
	FSDR	%fr5, %r31, $1012	# build/example.ml#1542:16->1542:42
	FMV	%fr0, %fr9	# build/example.ml#1542:16->1542:42
	ADDI	%r31, %r31, $1016	# build/example.ml#1542:16->1542:42
	ADDI	%r31, %r31, $4	# build/example.ml#1542:16->1542:42
	SIP	# build/example.ml#1542:16->1542:42
	J	$min_caml_fsqr	# build/example.ml#1542:16->1542:42
	ADDI	%r31, %r31, $-1016	# build/example.ml#1542:16->1542:42
	FMV	%fr9, %fr0	# build/example.ml#1542:16->1542:42
	LDR	%r6, %r31, $984	# build/example.ml#1542:16->1542:42
	LDR	%r5, %r31, $988	# build/example.ml#1542:16->1542:42
	LDR	%r4, %r31, $992	# build/example.ml#1542:16->1542:42
	LDR	%r3, %r31, $996	# build/example.ml#1542:16->1542:42
	LDR	%r2, %r31, $1000	# build/example.ml#1542:16->1542:42
	LDR	%r1, %r31, $1004	# build/example.ml#1542:16->1542:42
	FLDR	%fr6, %r31, $1008	# build/example.ml#1542:16->1542:42
	FLDR	%fr5, %r31, $1012	# build/example.ml#1542:16->1542:42
	MVI	%r9, $0	# build/example.ml#1543:22->1543:23
	FLDA	%fr8, $l.7799	# build/example.ml#1543:28->1543:33
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#1543:28->1543:39
	FSDD	%fr8, %r26, $4, %r9	# build/example.ml#1543:7->1543:39
	MVI	%r9, $1	# build/example.ml#1544:22->1544:23
	FLDA	%fr7, $l.7799	# build/example.ml#1544:28->1544:33
	FLDA	%fr8, $l.7785	# build/example.ml#1544:38->1544:41
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1544:38->1544:47
	FMUL	%fr9, %fr7, %fr9	# build/example.ml#1544:28->1544:48
	FSDD	%fr9, %r26, $4, %r9	# build/example.ml#1544:7->1544:48
if_eq_cont.11598:
	J	$if_eq_cont.11596	# build/example.ml#1521:3->1585:10
if_eq.11595:
	MVI	%r28, $0	# build/example.ml#1524:18->1524:19
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $1016	# build/example.ml#1524:24->1524:35
	SDR	%r5, %r31, $1020	# build/example.ml#1524:24->1524:35
	SDR	%r4, %r31, $1024	# build/example.ml#1524:24->1524:35
	SDR	%r3, %r31, $1028	# build/example.ml#1524:24->1524:35
	SDR	%r2, %r31, $1032	# build/example.ml#1524:24->1524:35
	SDR	%r1, %r31, $1036	# build/example.ml#1524:24->1524:35
	ADDI	%r31, %r31, $1040	# build/example.ml#1524:24->1524:35
	ADDI	%r31, %r31, $4	# build/example.ml#1524:24->1524:35
	SIP	# build/example.ml#1524:24->1524:35
	J	$o_param_x.2637	# build/example.ml#1524:24->1524:35
	ADDI	%r31, %r31, $-1040	# build/example.ml#1524:24->1524:35
	FMV	%fr9, %fr0	# build/example.ml#1524:24->1524:35
	LDR	%r6, %r31, $1016	# build/example.ml#1524:24->1524:35
	LDR	%r5, %r31, $1020	# build/example.ml#1524:24->1524:35
	LDR	%r4, %r31, $1024	# build/example.ml#1524:24->1524:35
	LDR	%r3, %r31, $1028	# build/example.ml#1524:24->1524:35
	LDR	%r2, %r31, $1032	# build/example.ml#1524:24->1524:35
	LDR	%r1, %r31, $1036	# build/example.ml#1524:24->1524:35
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1524:15->1524:35
	FLDA	%fr8, $l.7796	# build/example.ml#1526:31->1526:35
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#1526:25->1526:35
	SDR	%r6, %r31, $1040	# build/example.ml#1526:18->1526:36
	SDR	%r5, %r31, $1044	# build/example.ml#1526:18->1526:36
	SDR	%r4, %r31, $1048	# build/example.ml#1526:18->1526:36
	SDR	%r3, %r31, $1052	# build/example.ml#1526:18->1526:36
	SDR	%r2, %r31, $1056	# build/example.ml#1526:18->1526:36
	SDR	%r1, %r31, $1060	# build/example.ml#1526:18->1526:36
	FSDR	%fr6, %r31, $1064	# build/example.ml#1526:18->1526:36
	FSDR	%fr5, %r31, $1068	# build/example.ml#1526:18->1526:36
	FMV	%fr0, %fr8	# build/example.ml#1526:18->1526:36
	ADDI	%r31, %r31, $1072	# build/example.ml#1526:18->1526:36
	ADDI	%r31, %r31, $4	# build/example.ml#1526:18->1526:36
	SIP	# build/example.ml#1526:18->1526:36
	J	$min_caml_floor	# build/example.ml#1526:18->1526:36
	ADDI	%r31, %r31, $-1072	# build/example.ml#1526:18->1526:36
	FMV	%fr7, %fr0	# build/example.ml#1526:18->1526:36
	LDR	%r6, %r31, $1040	# build/example.ml#1526:18->1526:36
	LDR	%r5, %r31, $1044	# build/example.ml#1526:18->1526:36
	LDR	%r4, %r31, $1048	# build/example.ml#1526:18->1526:36
	LDR	%r3, %r31, $1052	# build/example.ml#1526:18->1526:36
	LDR	%r2, %r31, $1056	# build/example.ml#1526:18->1526:36
	LDR	%r1, %r31, $1060	# build/example.ml#1526:18->1526:36
	FLDR	%fr6, %r31, $1064	# build/example.ml#1526:18->1526:36
	FLDR	%fr5, %r31, $1068	# build/example.ml#1526:18->1526:36
	FLDA	%fr8, $l.7797	# build/example.ml#1526:41->1526:45
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#1526:17->1526:45
	FSUB	%fr8, %fr9, %fr8	# build/example.ml#1527:14->1527:22
	FLDA	%fr9, $l.7798	# build/example.ml#1527:24->1527:28
	SDR	%r6, %r31, $1072	# build/example.ml#1527:7->1527:28
	SDR	%r5, %r31, $1076	# build/example.ml#1527:7->1527:28
	SDR	%r4, %r31, $1080	# build/example.ml#1527:7->1527:28
	SDR	%r3, %r31, $1084	# build/example.ml#1527:7->1527:28
	SDR	%r2, %r31, $1088	# build/example.ml#1527:7->1527:28
	SDR	%r1, %r31, $1092	# build/example.ml#1527:7->1527:28
	FSDR	%fr6, %r31, $1096	# build/example.ml#1527:7->1527:28
	FSDR	%fr5, %r31, $1100	# build/example.ml#1527:7->1527:28
	FMV	%fr1, %fr9	# build/example.ml#1527:7->1527:28
	FMV	%fr0, %fr8	# build/example.ml#1527:7->1527:28
	ADDI	%r31, %r31, $1104	# build/example.ml#1527:7->1527:28
	ADDI	%r31, %r31, $4	# build/example.ml#1527:7->1527:28
	SIP	# build/example.ml#1527:7->1527:28
	J	$min_caml_fless	# build/example.ml#1527:7->1527:28
	ADDI	%r31, %r31, $-1104	# build/example.ml#1527:7->1527:28
	MV	%r28, %r0	# build/example.ml#1527:7->1527:28
	LDR	%r6, %r31, $1072	# build/example.ml#1527:7->1527:28
	LDR	%r5, %r31, $1076	# build/example.ml#1527:7->1527:28
	LDR	%r4, %r31, $1080	# build/example.ml#1527:7->1527:28
	LDR	%r3, %r31, $1084	# build/example.ml#1527:7->1527:28
	LDR	%r2, %r31, $1088	# build/example.ml#1527:7->1527:28
	LDR	%r1, %r31, $1092	# build/example.ml#1527:7->1527:28
	FLDR	%fr6, %r31, $1096	# build/example.ml#1527:7->1527:28
	FLDR	%fr5, %r31, $1100	# build/example.ml#1527:7->1527:28
	MVI	%r27, $2	# build/example.ml#1529:18->1529:19
	FLDD	%fr8, %r12, $4, %r27	# build/example.ml#1524:15->1524:20
	SDR	%r6, %r31, $1104	# build/example.ml#1529:24->1529:35
	SDR	%r5, %r31, $1108	# build/example.ml#1529:24->1529:35
	SDR	%r4, %r31, $1112	# build/example.ml#1529:24->1529:35
	SDR	%r3, %r31, $1116	# build/example.ml#1529:24->1529:35
	SDR	%r2, %r31, $1120	# build/example.ml#1529:24->1529:35
	SDR	%r1, %r31, $1124	# build/example.ml#1529:24->1529:35
	ADDI	%r31, %r31, $1128	# build/example.ml#1529:24->1529:35
	ADDI	%r31, %r31, $4	# build/example.ml#1529:24->1529:35
	SIP	# build/example.ml#1529:24->1529:35
	J	$o_param_z.2641	# build/example.ml#1529:24->1529:35
	ADDI	%r31, %r31, $-1128	# build/example.ml#1529:24->1529:35
	FMV	%fr9, %fr0	# build/example.ml#1529:24->1529:35
	LDR	%r6, %r31, $1104	# build/example.ml#1529:24->1529:35
	LDR	%r5, %r31, $1108	# build/example.ml#1529:24->1529:35
	LDR	%r4, %r31, $1112	# build/example.ml#1529:24->1529:35
	LDR	%r3, %r31, $1116	# build/example.ml#1529:24->1529:35
	LDR	%r2, %r31, $1120	# build/example.ml#1529:24->1529:35
	LDR	%r1, %r31, $1124	# build/example.ml#1529:24->1529:35
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1529:15->1529:35
	FLDA	%fr8, $l.7796	# build/example.ml#1531:31->1531:35
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#1531:25->1531:35
	SDR	%r6, %r31, $1128	# build/example.ml#1531:18->1531:36
	SDR	%r5, %r31, $1132	# build/example.ml#1531:18->1531:36
	SDR	%r4, %r31, $1136	# build/example.ml#1531:18->1531:36
	SDR	%r3, %r31, $1140	# build/example.ml#1531:18->1531:36
	SDR	%r2, %r31, $1144	# build/example.ml#1531:18->1531:36
	SDR	%r1, %r31, $1148	# build/example.ml#1531:18->1531:36
	FSDR	%fr6, %r31, $1152	# build/example.ml#1531:18->1531:36
	FSDR	%fr5, %r31, $1156	# build/example.ml#1531:18->1531:36
	FMV	%fr0, %fr8	# build/example.ml#1531:18->1531:36
	ADDI	%r31, %r31, $1160	# build/example.ml#1531:18->1531:36
	ADDI	%r31, %r31, $4	# build/example.ml#1531:18->1531:36
	SIP	# build/example.ml#1531:18->1531:36
	J	$min_caml_floor	# build/example.ml#1531:18->1531:36
	ADDI	%r31, %r31, $-1160	# build/example.ml#1531:18->1531:36
	FMV	%fr7, %fr0	# build/example.ml#1531:18->1531:36
	LDR	%r6, %r31, $1128	# build/example.ml#1531:18->1531:36
	LDR	%r5, %r31, $1132	# build/example.ml#1531:18->1531:36
	LDR	%r4, %r31, $1136	# build/example.ml#1531:18->1531:36
	LDR	%r3, %r31, $1140	# build/example.ml#1531:18->1531:36
	LDR	%r2, %r31, $1144	# build/example.ml#1531:18->1531:36
	LDR	%r1, %r31, $1148	# build/example.ml#1531:18->1531:36
	FLDR	%fr6, %r31, $1152	# build/example.ml#1531:18->1531:36
	FLDR	%fr5, %r31, $1156	# build/example.ml#1531:18->1531:36
	FLDA	%fr8, $l.7797	# build/example.ml#1531:41->1531:45
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#1531:17->1531:45
	FSUB	%fr8, %fr9, %fr8	# build/example.ml#1532:15->1532:23
	FLDA	%fr9, $l.7798	# build/example.ml#1532:25->1532:29
	SDR	%r6, %r31, $1160	# build/example.ml#1532:8->1532:29
	SDR	%r5, %r31, $1164	# build/example.ml#1532:8->1532:29
	SDR	%r4, %r31, $1168	# build/example.ml#1532:8->1532:29
	SDR	%r3, %r31, $1172	# build/example.ml#1532:8->1532:29
	SDR	%r2, %r31, $1176	# build/example.ml#1532:8->1532:29
	SDR	%r1, %r31, $1180	# build/example.ml#1532:8->1532:29
	FSDR	%fr6, %r31, $1184	# build/example.ml#1532:8->1532:29
	FSDR	%fr5, %r31, $1188	# build/example.ml#1532:8->1532:29
	FMV	%fr1, %fr9	# build/example.ml#1532:8->1532:29
	FMV	%fr0, %fr8	# build/example.ml#1532:8->1532:29
	ADDI	%r31, %r31, $1192	# build/example.ml#1532:8->1532:29
	ADDI	%r31, %r31, $4	# build/example.ml#1532:8->1532:29
	SIP	# build/example.ml#1532:8->1532:29
	J	$min_caml_fless	# build/example.ml#1532:8->1532:29
	ADDI	%r31, %r31, $-1192	# build/example.ml#1532:8->1532:29
	MV	%r9, %r0	# build/example.ml#1532:8->1532:29
	LDR	%r6, %r31, $1160	# build/example.ml#1532:8->1532:29
	LDR	%r5, %r31, $1164	# build/example.ml#1532:8->1532:29
	LDR	%r4, %r31, $1168	# build/example.ml#1532:8->1532:29
	LDR	%r3, %r31, $1172	# build/example.ml#1532:8->1532:29
	LDR	%r2, %r31, $1176	# build/example.ml#1532:8->1532:29
	LDR	%r1, %r31, $1180	# build/example.ml#1532:8->1532:29
	FLDR	%fr6, %r31, $1184	# build/example.ml#1532:8->1532:29
	FLDR	%fr5, %r31, $1188	# build/example.ml#1532:8->1532:29
	MVI	%r7, $1	# build/example.ml#1534:21->1534:22
	MVI	%r8, $0	# build/example.ml#1535:8->1537:43
	CEQ	%r28, %r8	# build/example.ml#1535:8->1537:43
	JZ	$if_eq.11609	# build/example.ml#1535:8->1537:43
	MVI	%r8, $0	# build/example.ml#1536:14->1536:42
	CEQ	%r9, %r8	# build/example.ml#1536:14->1536:42
	JZ	$if_eq.11611	# build/example.ml#1536:14->1536:42
	FLDA	%rd, $l.7799	# build/example.ml#1536:28->1536:33
	J	$if_eq_cont.11612	# build/example.ml#1536:14->1536:42
if_eq.11611:
	FLDA	%rd, $l.7787	# build/example.ml#1536:39->1536:42
if_eq_cont.11612:
	J	$if_eq_cont.11610	# build/example.ml#1535:8->1537:43
if_eq.11609:
	MVI	%r8, $0	# build/example.ml#1537:14->1537:42
	CEQ	%r9, %r8	# build/example.ml#1537:14->1537:42
	JZ	$if_eq.11613	# build/example.ml#1537:14->1537:42
	FLDA	%rd, $l.7787	# build/example.ml#1537:28->1537:31
	J	$if_eq_cont.11614	# build/example.ml#1537:14->1537:42
if_eq.11613:
	FLDA	%rd, $l.7799	# build/example.ml#1537:37->1537:42
if_eq_cont.11614:
if_eq_cont.11610:
	FSDD	%fr9, %r26, $4, %r7	# build/example.ml#1534:6->1537:43
if_eq_cont.11596:
	LDR	%r9, %r31, $0	# build/example.ml#149:3->154:8
	LDR	%r8, %r31, $4	# build/example.ml#149:3->154:8
	LDR	%r7, %r31, $8	# build/example.ml#149:3->154:8
	LDR	%r28, %r31, $12	# build/example.ml#149:3->154:8
	LDR	%r27, %r31, $16	# build/example.ml#149:3->154:8
	LDR	%r26, %r31, $20	# build/example.ml#149:3->154:8
	LDR	%r12, %r31, $24	# build/example.ml#149:3->154:8
	LDR	%r11, %r31, $28	# build/example.ml#149:3->154:8
	LDR	%r10, %r31, $32	# build/example.ml#149:3->154:8
	FLDR	%fr9, %r31, $36	# build/example.ml#149:3->154:8
	FLDR	%fr8, %r31, $40	# build/example.ml#149:3->154:8
	FLDR	%fr7, %r31, $44	# build/example.ml#149:3->154:8
	LINK	# build/example.ml#149:3->154:8
get_nvector.2885:
	SDR	%r9, %r31, $0	# build/example.ml#159:3->164:10
	SDR	%r8, %r31, $4	# build/example.ml#159:3->164:10
	SDR	%r7, %r31, $8	# build/example.ml#159:3->164:10
	SDR	%r28, %r31, $12	# build/example.ml#159:3->164:10
	SDR	%r27, %r31, $16	# build/example.ml#159:3->164:10
	SDR	%r12, %r31, $20	# build/example.ml#159:3->164:10
	SDR	%r11, %r31, $24	# build/example.ml#159:3->164:10
	SDR	%r10, %r31, $28	# build/example.ml#159:3->164:10
	MV	%r28, %r2	# build/example.ml#159:3->164:10
	MVI	%r27, $1	# build/example.ml#1501:16->1501:17
	CEQ	%r28, %r27	# build/example.ml#1501:3->1506:25
	JZ	$if_eq.11615	# build/example.ml#1501:3->1506:25
	MVI	%r27, $2	# build/example.ml#1503:21->1503:22
	CEQ	%r28, %r27	# build/example.ml#1503:8->1506:25
	JZ	$if_eq.11617	# build/example.ml#1503:8->1506:25
	SDR	%r6, %r31, $32	# build/example.ml#1506:5->1506:25
	SDR	%r5, %r31, $36	# build/example.ml#1506:5->1506:25
	SDR	%r4, %r31, $40	# build/example.ml#1506:5->1506:25
	SDR	%r3, %r31, $44	# build/example.ml#1506:5->1506:25
	SDR	%r2, %r31, $48	# build/example.ml#1506:5->1506:25
	SDR	%r1, %r31, $52	# build/example.ml#1506:5->1506:25
	ADDI	%r31, %r31, $56	# build/example.ml#1506:5->1506:25
	ADDI	%r31, %r31, $4	# build/example.ml#1506:5->1506:25
	SIP	# build/example.ml#1506:5->1506:25
	J	$get_nvector_second.2883	# build/example.ml#1506:5->1506:25
	ADDI	%r31, %r31, $-56	# build/example.ml#1506:5->1506:25
	LDR	%r6, %r31, $32	# build/example.ml#1506:5->1506:25
	LDR	%r5, %r31, $36	# build/example.ml#1506:5->1506:25
	LDR	%r4, %r31, $40	# build/example.ml#1506:5->1506:25
	LDR	%r3, %r31, $44	# build/example.ml#1506:5->1506:25
	LDR	%r2, %r31, $48	# build/example.ml#1506:5->1506:25
	LDR	%r1, %r31, $52	# build/example.ml#1506:5->1506:25
	J	$if_eq_cont.11618	# build/example.ml#1503:8->1506:25
if_eq.11617:
	SDR	%r6, %r31, $56	# build/example.ml#1504:5->1504:24
	SDR	%r5, %r31, $60	# build/example.ml#1504:5->1504:24
	SDR	%r4, %r31, $64	# build/example.ml#1504:5->1504:24
	SDR	%r3, %r31, $68	# build/example.ml#1504:5->1504:24
	SDR	%r2, %r31, $72	# build/example.ml#1504:5->1504:24
	SDR	%r1, %r31, $76	# build/example.ml#1504:5->1504:24
	ADDI	%r31, %r31, $80	# build/example.ml#1504:5->1504:24
	ADDI	%r31, %r31, $4	# build/example.ml#1504:5->1504:24
	SIP	# build/example.ml#1504:5->1504:24
	J	$get_nvector_plane.2881	# build/example.ml#1504:5->1504:24
	ADDI	%r31, %r31, $-80	# build/example.ml#1504:5->1504:24
	LDR	%r6, %r31, $56	# build/example.ml#1504:5->1504:24
	LDR	%r5, %r31, $60	# build/example.ml#1504:5->1504:24
	LDR	%r4, %r31, $64	# build/example.ml#1504:5->1504:24
	LDR	%r3, %r31, $68	# build/example.ml#1504:5->1504:24
	LDR	%r2, %r31, $72	# build/example.ml#1504:5->1504:24
	LDR	%r1, %r31, $76	# build/example.ml#1504:5->1504:24
if_eq_cont.11618:
	J	$if_eq_cont.11616	# build/example.ml#1501:3->1506:25
if_eq.11615:
	SDR	%r6, %r31, $80	# build/example.ml#1502:5->1502:28
	SDR	%r5, %r31, $84	# build/example.ml#1502:5->1502:28
	SDR	%r4, %r31, $88	# build/example.ml#1502:5->1502:28
	SDR	%r3, %r31, $92	# build/example.ml#1502:5->1502:28
	SDR	%r2, %r31, $96	# build/example.ml#1502:5->1502:28
	SDR	%r1, %r31, $100	# build/example.ml#1502:5->1502:28
	MV	%r1, %r12	# build/example.ml#1502:5->1502:28
	ADDI	%r31, %r31, $104	# build/example.ml#1502:5->1502:28
	ADDI	%r31, %r31, $4	# build/example.ml#1502:5->1502:28
	SIP	# build/example.ml#1502:5->1502:28
	J	$get_nvector_rect.2879	# build/example.ml#1502:5->1502:28
	ADDI	%r31, %r31, $-104	# build/example.ml#1502:5->1502:28
	LDR	%r6, %r31, $80	# build/example.ml#1502:5->1502:28
	LDR	%r5, %r31, $84	# build/example.ml#1502:5->1502:28
	LDR	%r4, %r31, $88	# build/example.ml#1502:5->1502:28
	LDR	%r3, %r31, $92	# build/example.ml#1502:5->1502:28
	LDR	%r2, %r31, $96	# build/example.ml#1502:5->1502:28
	LDR	%r1, %r31, $100	# build/example.ml#1502:5->1502:28
if_eq_cont.11616:
	LDR	%r9, %r31, $0	# build/example.ml#159:3->164:10
	LDR	%r8, %r31, $4	# build/example.ml#159:3->164:10
	LDR	%r7, %r31, $8	# build/example.ml#159:3->164:10
	LDR	%r28, %r31, $12	# build/example.ml#159:3->164:10
	LDR	%r27, %r31, $16	# build/example.ml#159:3->164:10
	LDR	%r12, %r31, $20	# build/example.ml#159:3->164:10
	LDR	%r11, %r31, $24	# build/example.ml#159:3->164:10
	LDR	%r10, %r31, $28	# build/example.ml#159:3->164:10
	LINK	# build/example.ml#159:3->164:10
get_nvector_second.2883:
	SDR	%r9, %r31, $0	# build/example.ml#1478:12->1478:30
	SDR	%r8, %r31, $4	# build/example.ml#1478:12->1478:30
	SDR	%r7, %r31, $8	# build/example.ml#1478:12->1478:30
	SDR	%r28, %r31, $12	# build/example.ml#1478:12->1478:30
	SDR	%r27, %r31, $16	# build/example.ml#1478:12->1478:30
	SDR	%r11, %r31, $20	# build/example.ml#1478:12->1478:30
	SDR	%r10, %r31, $24	# build/example.ml#1478:12->1478:30
	FSDR	%fr9, %r31, $28	# build/example.ml#1478:12->1478:30
	FSDR	%fr8, %r31, $32	# build/example.ml#1478:12->1478:30
	FSDR	%fr7, %r31, $36	# build/example.ml#1478:12->1478:30
	FSDR	%fr31, %r31, $40	# build/example.ml#1478:12->1478:30
	FSDR	%fr30, %r31, $44	# build/example.ml#1478:12->1478:30
	MVI	%r27, $min_caml_intersection_point	# build/example.ml#1478:12->1478:30
	MVI	%r28, $0	# build/example.ml#1478:32->1478:33
	FLDD	%fr8, %r27, $4, %r28	# build/example.ml#935:12->935:19
	SDR	%r6, %r31, $48	# build/example.ml#1478:38->1478:49
	SDR	%r5, %r31, $52	# build/example.ml#1478:38->1478:49
	SDR	%r4, %r31, $56	# build/example.ml#1478:38->1478:49
	SDR	%r3, %r31, $60	# build/example.ml#1478:38->1478:49
	SDR	%r2, %r31, $64	# build/example.ml#1478:38->1478:49
	SDR	%r1, %r31, $68	# build/example.ml#1478:38->1478:49
	ADDI	%r31, %r31, $72	# build/example.ml#1478:38->1478:49
	ADDI	%r31, %r31, $4	# build/example.ml#1478:38->1478:49
	SIP	# build/example.ml#1478:38->1478:49
	J	$o_param_x.2637	# build/example.ml#1478:38->1478:49
	ADDI	%r31, %r31, $-72	# build/example.ml#1478:38->1478:49
	FMV	%fr9, %fr0	# build/example.ml#1478:38->1478:49
	LDR	%r6, %r31, $48	# build/example.ml#1478:38->1478:49
	LDR	%r5, %r31, $52	# build/example.ml#1478:38->1478:49
	LDR	%r4, %r31, $56	# build/example.ml#1478:38->1478:49
	LDR	%r3, %r31, $60	# build/example.ml#1478:38->1478:49
	LDR	%r2, %r31, $64	# build/example.ml#1478:38->1478:49
	LDR	%r1, %r31, $68	# build/example.ml#1478:38->1478:49
	FSUB	%fr7, %fr8, %fr9	# build/example.ml#1478:12->1478:49
	MVI	%r28, $1	# build/example.ml#1479:32->1479:33
	FLDD	%fr8, %r27, $4, %r28	# build/example.ml#935:12->935:19
	SDR	%r6, %r31, $72	# build/example.ml#1479:38->1479:49
	SDR	%r5, %r31, $76	# build/example.ml#1479:38->1479:49
	SDR	%r4, %r31, $80	# build/example.ml#1479:38->1479:49
	SDR	%r3, %r31, $84	# build/example.ml#1479:38->1479:49
	SDR	%r2, %r31, $88	# build/example.ml#1479:38->1479:49
	SDR	%r1, %r31, $92	# build/example.ml#1479:38->1479:49
	ADDI	%r31, %r31, $96	# build/example.ml#1479:38->1479:49
	ADDI	%r31, %r31, $4	# build/example.ml#1479:38->1479:49
	SIP	# build/example.ml#1479:38->1479:49
	J	$o_param_y.2639	# build/example.ml#1479:38->1479:49
	ADDI	%r31, %r31, $-96	# build/example.ml#1479:38->1479:49
	FMV	%fr9, %fr0	# build/example.ml#1479:38->1479:49
	LDR	%r6, %r31, $72	# build/example.ml#1479:38->1479:49
	LDR	%r5, %r31, $76	# build/example.ml#1479:38->1479:49
	LDR	%r4, %r31, $80	# build/example.ml#1479:38->1479:49
	LDR	%r3, %r31, $84	# build/example.ml#1479:38->1479:49
	LDR	%r2, %r31, $88	# build/example.ml#1479:38->1479:49
	LDR	%r1, %r31, $92	# build/example.ml#1479:38->1479:49
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#1479:12->1479:49
	MVI	%r28, $2	# build/example.ml#1480:32->1480:33
	FLDD	%fr6, %r27, $4, %r28	# build/example.ml#935:12->935:19
	SDR	%r6, %r31, $96	# build/example.ml#1480:38->1480:49
	SDR	%r5, %r31, $100	# build/example.ml#1480:38->1480:49
	SDR	%r4, %r31, $104	# build/example.ml#1480:38->1480:49
	SDR	%r3, %r31, $108	# build/example.ml#1480:38->1480:49
	SDR	%r2, %r31, $112	# build/example.ml#1480:38->1480:49
	SDR	%r1, %r31, $116	# build/example.ml#1480:38->1480:49
	ADDI	%r31, %r31, $120	# build/example.ml#1480:38->1480:49
	ADDI	%r31, %r31, $4	# build/example.ml#1480:38->1480:49
	SIP	# build/example.ml#1480:38->1480:49
	J	$o_param_z.2641	# build/example.ml#1480:38->1480:49
	ADDI	%r31, %r31, $-120	# build/example.ml#1480:38->1480:49
	FMV	%fr9, %fr0	# build/example.ml#1480:38->1480:49
	LDR	%r6, %r31, $96	# build/example.ml#1480:38->1480:49
	LDR	%r5, %r31, $100	# build/example.ml#1480:38->1480:49
	LDR	%r4, %r31, $104	# build/example.ml#1480:38->1480:49
	LDR	%r3, %r31, $108	# build/example.ml#1480:38->1480:49
	LDR	%r2, %r31, $112	# build/example.ml#1480:38->1480:49
	LDR	%r1, %r31, $116	# build/example.ml#1480:38->1480:49
	FSUB	%fr9, %fr6, %fr9	# build/example.ml#1480:12->1480:49
	SDR	%r6, %r31, $120	# build/example.ml#1482:18->1482:29
	SDR	%r5, %r31, $124	# build/example.ml#1482:18->1482:29
	SDR	%r4, %r31, $128	# build/example.ml#1482:18->1482:29
	SDR	%r3, %r31, $132	# build/example.ml#1482:18->1482:29
	SDR	%r2, %r31, $136	# build/example.ml#1482:18->1482:29
	SDR	%r1, %r31, $140	# build/example.ml#1482:18->1482:29
	ADDI	%r31, %r31, $144	# build/example.ml#1482:18->1482:29
	ADDI	%r31, %r31, $4	# build/example.ml#1482:18->1482:29
	SIP	# build/example.ml#1482:18->1482:29
	J	$o_param_a.2629	# build/example.ml#1482:18->1482:29
	ADDI	%r31, %r31, $-144	# build/example.ml#1482:18->1482:29
	FMV	%fr6, %fr0	# build/example.ml#1482:18->1482:29
	LDR	%r6, %r31, $120	# build/example.ml#1482:18->1482:29
	LDR	%r5, %r31, $124	# build/example.ml#1482:18->1482:29
	LDR	%r4, %r31, $128	# build/example.ml#1482:18->1482:29
	LDR	%r3, %r31, $132	# build/example.ml#1482:18->1482:29
	LDR	%r2, %r31, $136	# build/example.ml#1482:18->1482:29
	LDR	%r1, %r31, $140	# build/example.ml#1482:18->1482:29
	FMUL	%fr4, %fr7, %fr6	# build/example.ml#1482:12->1482:29
	SDR	%r6, %r31, $144	# build/example.ml#1483:18->1483:29
	SDR	%r5, %r31, $148	# build/example.ml#1483:18->1483:29
	SDR	%r4, %r31, $152	# build/example.ml#1483:18->1483:29
	SDR	%r3, %r31, $156	# build/example.ml#1483:18->1483:29
	SDR	%r2, %r31, $160	# build/example.ml#1483:18->1483:29
	SDR	%r1, %r31, $164	# build/example.ml#1483:18->1483:29
	ADDI	%r31, %r31, $168	# build/example.ml#1483:18->1483:29
	ADDI	%r31, %r31, $4	# build/example.ml#1483:18->1483:29
	SIP	# build/example.ml#1483:18->1483:29
	J	$o_param_b.2631	# build/example.ml#1483:18->1483:29
	ADDI	%r31, %r31, $-168	# build/example.ml#1483:18->1483:29
	FMV	%fr6, %fr0	# build/example.ml#1483:18->1483:29
	LDR	%r6, %r31, $144	# build/example.ml#1483:18->1483:29
	LDR	%r5, %r31, $148	# build/example.ml#1483:18->1483:29
	LDR	%r4, %r31, $152	# build/example.ml#1483:18->1483:29
	LDR	%r3, %r31, $156	# build/example.ml#1483:18->1483:29
	LDR	%r2, %r31, $160	# build/example.ml#1483:18->1483:29
	LDR	%r1, %r31, $164	# build/example.ml#1483:18->1483:29
	FMUL	%fr5, %fr8, %fr6	# build/example.ml#1483:12->1483:29
	SDR	%r6, %r31, $168	# build/example.ml#1484:18->1484:29
	SDR	%r5, %r31, $172	# build/example.ml#1484:18->1484:29
	SDR	%r4, %r31, $176	# build/example.ml#1484:18->1484:29
	SDR	%r3, %r31, $180	# build/example.ml#1484:18->1484:29
	SDR	%r2, %r31, $184	# build/example.ml#1484:18->1484:29
	SDR	%r1, %r31, $188	# build/example.ml#1484:18->1484:29
	ADDI	%r31, %r31, $192	# build/example.ml#1484:18->1484:29
	ADDI	%r31, %r31, $4	# build/example.ml#1484:18->1484:29
	SIP	# build/example.ml#1484:18->1484:29
	J	$o_param_c.2633	# build/example.ml#1484:18->1484:29
	ADDI	%r31, %r31, $-192	# build/example.ml#1484:18->1484:29
	FMV	%fr6, %fr0	# build/example.ml#1484:18->1484:29
	LDR	%r6, %r31, $168	# build/example.ml#1484:18->1484:29
	LDR	%r5, %r31, $172	# build/example.ml#1484:18->1484:29
	LDR	%r4, %r31, $176	# build/example.ml#1484:18->1484:29
	LDR	%r3, %r31, $180	# build/example.ml#1484:18->1484:29
	LDR	%r2, %r31, $184	# build/example.ml#1484:18->1484:29
	LDR	%r1, %r31, $188	# build/example.ml#1484:18->1484:29
	FMUL	%fr6, %fr9, %fr6	# build/example.ml#1484:12->1484:29
	MV	%r28, %r4	# build/example.ml#188:3->192:10
	MVI	%r27, $0	# build/example.ml#1486:18->1486:19
	CEQ	%r28, %r27	# build/example.ml#1486:3->1494:5
	JZ	$if_eq.11619	# build/example.ml#1486:3->1494:5
	MVI	%r27, $min_caml_nvector	# build/example.ml#1491:5->1491:12
	MVI	%r28, $0	# build/example.ml#1491:14->1491:15
	SDR	%r6, %r31, $192	# build/example.ml#1491:39->1491:51
	SDR	%r5, %r31, $196	# build/example.ml#1491:39->1491:51
	SDR	%r4, %r31, $200	# build/example.ml#1491:39->1491:51
	SDR	%r3, %r31, $204	# build/example.ml#1491:39->1491:51
	SDR	%r2, %r31, $208	# build/example.ml#1491:39->1491:51
	SDR	%r1, %r31, $212	# build/example.ml#1491:39->1491:51
	ADDI	%r31, %r31, $216	# build/example.ml#1491:39->1491:51
	ADDI	%r31, %r31, $4	# build/example.ml#1491:39->1491:51
	SIP	# build/example.ml#1491:39->1491:51
	J	$o_param_r3.2657	# build/example.ml#1491:39->1491:51
	ADDI	%r31, %r31, $-216	# build/example.ml#1491:39->1491:51
	FMV	%fr31, %fr0	# build/example.ml#1491:39->1491:51
	LDR	%r6, %r31, $192	# build/example.ml#1491:39->1491:51
	LDR	%r5, %r31, $196	# build/example.ml#1491:39->1491:51
	LDR	%r4, %r31, $200	# build/example.ml#1491:39->1491:51
	LDR	%r3, %r31, $204	# build/example.ml#1491:39->1491:51
	LDR	%r2, %r31, $208	# build/example.ml#1491:39->1491:51
	LDR	%r1, %r31, $212	# build/example.ml#1491:39->1491:51
	FMUL	%fr30, %fr8, %fr31	# build/example.ml#1491:33->1491:51
	SDR	%r6, %r31, $216	# build/example.ml#1491:61->1491:73
	SDR	%r5, %r31, $220	# build/example.ml#1491:61->1491:73
	SDR	%r4, %r31, $224	# build/example.ml#1491:61->1491:73
	SDR	%r3, %r31, $228	# build/example.ml#1491:61->1491:73
	SDR	%r2, %r31, $232	# build/example.ml#1491:61->1491:73
	SDR	%r1, %r31, $236	# build/example.ml#1491:61->1491:73
	ADDI	%r31, %r31, $240	# build/example.ml#1491:61->1491:73
	ADDI	%r31, %r31, $4	# build/example.ml#1491:61->1491:73
	SIP	# build/example.ml#1491:61->1491:73
	J	$o_param_r2.2655	# build/example.ml#1491:61->1491:73
	ADDI	%r31, %r31, $-240	# build/example.ml#1491:61->1491:73
	FMV	%fr31, %fr0	# build/example.ml#1491:61->1491:73
	LDR	%r6, %r31, $216	# build/example.ml#1491:61->1491:73
	LDR	%r5, %r31, $220	# build/example.ml#1491:61->1491:73
	LDR	%r4, %r31, $224	# build/example.ml#1491:61->1491:73
	LDR	%r3, %r31, $228	# build/example.ml#1491:61->1491:73
	LDR	%r2, %r31, $232	# build/example.ml#1491:61->1491:73
	LDR	%r1, %r31, $236	# build/example.ml#1491:61->1491:73
	FMUL	%fr31, %fr9, %fr31	# build/example.ml#1491:55->1491:73
	FADD	%fr31, %fr30, %fr31	# build/example.ml#1491:33->1491:73
	SDR	%r6, %r31, $240	# build/example.ml#1491:26->1491:74
	SDR	%r5, %r31, $244	# build/example.ml#1491:26->1491:74
	SDR	%r4, %r31, $248	# build/example.ml#1491:26->1491:74
	SDR	%r3, %r31, $252	# build/example.ml#1491:26->1491:74
	SDR	%r2, %r31, $256	# build/example.ml#1491:26->1491:74
	SDR	%r1, %r31, $260	# build/example.ml#1491:26->1491:74
	FSDR	%fr6, %r31, $264	# build/example.ml#1491:26->1491:74
	FSDR	%fr5, %r31, $268	# build/example.ml#1491:26->1491:74
	FSDR	%fr4, %r31, $272	# build/example.ml#1491:26->1491:74
	FMV	%fr0, %fr31	# build/example.ml#1491:26->1491:74
	ADDI	%r31, %r31, $276	# build/example.ml#1491:26->1491:74
	ADDI	%r31, %r31, $4	# build/example.ml#1491:26->1491:74
	SIP	# build/example.ml#1491:26->1491:74
	J	$min_caml_fhalf	# build/example.ml#1491:26->1491:74
	ADDI	%r31, %r31, $-276	# build/example.ml#1491:26->1491:74
	FMV	%fr31, %fr0	# build/example.ml#1491:26->1491:74
	LDR	%r6, %r31, $240	# build/example.ml#1491:26->1491:74
	LDR	%r5, %r31, $244	# build/example.ml#1491:26->1491:74
	LDR	%r4, %r31, $248	# build/example.ml#1491:26->1491:74
	LDR	%r3, %r31, $252	# build/example.ml#1491:26->1491:74
	LDR	%r2, %r31, $256	# build/example.ml#1491:26->1491:74
	LDR	%r1, %r31, $260	# build/example.ml#1491:26->1491:74
	FLDR	%fr6, %r31, $264	# build/example.ml#1491:26->1491:74
	FLDR	%fr5, %r31, $268	# build/example.ml#1491:26->1491:74
	FLDR	%fr4, %r31, $272	# build/example.ml#1491:26->1491:74
	FADD	%fr4, %fr4, %fr31	# build/example.ml#1491:20->1491:74
	FSDD	%fr4, %r27, $4, %r28	# build/example.ml#1491:5->1491:74
	MVI	%r28, $1	# build/example.ml#1492:14->1492:15
	SDR	%r6, %r31, $276	# build/example.ml#1492:39->1492:51
	SDR	%r5, %r31, $280	# build/example.ml#1492:39->1492:51
	SDR	%r4, %r31, $284	# build/example.ml#1492:39->1492:51
	SDR	%r3, %r31, $288	# build/example.ml#1492:39->1492:51
	SDR	%r2, %r31, $292	# build/example.ml#1492:39->1492:51
	SDR	%r1, %r31, $296	# build/example.ml#1492:39->1492:51
	ADDI	%r31, %r31, $300	# build/example.ml#1492:39->1492:51
	ADDI	%r31, %r31, $4	# build/example.ml#1492:39->1492:51
	SIP	# build/example.ml#1492:39->1492:51
	J	$o_param_r3.2657	# build/example.ml#1492:39->1492:51
	ADDI	%r31, %r31, $-300	# build/example.ml#1492:39->1492:51
	FMV	%fr4, %fr0	# build/example.ml#1492:39->1492:51
	LDR	%r6, %r31, $276	# build/example.ml#1492:39->1492:51
	LDR	%r5, %r31, $280	# build/example.ml#1492:39->1492:51
	LDR	%r4, %r31, $284	# build/example.ml#1492:39->1492:51
	LDR	%r3, %r31, $288	# build/example.ml#1492:39->1492:51
	LDR	%r2, %r31, $292	# build/example.ml#1492:39->1492:51
	LDR	%r1, %r31, $296	# build/example.ml#1492:39->1492:51
	FMUL	%fr31, %fr7, %fr4	# build/example.ml#1492:33->1492:51
	SDR	%r6, %r31, $300	# build/example.ml#1492:61->1492:73
	SDR	%r5, %r31, $304	# build/example.ml#1492:61->1492:73
	SDR	%r4, %r31, $308	# build/example.ml#1492:61->1492:73
	SDR	%r3, %r31, $312	# build/example.ml#1492:61->1492:73
	SDR	%r2, %r31, $316	# build/example.ml#1492:61->1492:73
	SDR	%r1, %r31, $320	# build/example.ml#1492:61->1492:73
	ADDI	%r31, %r31, $324	# build/example.ml#1492:61->1492:73
	ADDI	%r31, %r31, $4	# build/example.ml#1492:61->1492:73
	SIP	# build/example.ml#1492:61->1492:73
	J	$o_param_r1.2653	# build/example.ml#1492:61->1492:73
	ADDI	%r31, %r31, $-324	# build/example.ml#1492:61->1492:73
	FMV	%fr4, %fr0	# build/example.ml#1492:61->1492:73
	LDR	%r6, %r31, $300	# build/example.ml#1492:61->1492:73
	LDR	%r5, %r31, $304	# build/example.ml#1492:61->1492:73
	LDR	%r4, %r31, $308	# build/example.ml#1492:61->1492:73
	LDR	%r3, %r31, $312	# build/example.ml#1492:61->1492:73
	LDR	%r2, %r31, $316	# build/example.ml#1492:61->1492:73
	LDR	%r1, %r31, $320	# build/example.ml#1492:61->1492:73
	FMUL	%fr9, %fr9, %fr4	# build/example.ml#1492:55->1492:73
	FADD	%fr9, %fr31, %fr9	# build/example.ml#1492:33->1492:73
	SDR	%r6, %r31, $324	# build/example.ml#1492:26->1492:74
	SDR	%r5, %r31, $328	# build/example.ml#1492:26->1492:74
	SDR	%r4, %r31, $332	# build/example.ml#1492:26->1492:74
	SDR	%r3, %r31, $336	# build/example.ml#1492:26->1492:74
	SDR	%r2, %r31, $340	# build/example.ml#1492:26->1492:74
	SDR	%r1, %r31, $344	# build/example.ml#1492:26->1492:74
	FSDR	%fr6, %r31, $348	# build/example.ml#1492:26->1492:74
	FSDR	%fr5, %r31, $352	# build/example.ml#1492:26->1492:74
	FSDR	%fr4, %r31, $356	# build/example.ml#1492:26->1492:74
	FMV	%fr0, %fr9	# build/example.ml#1492:26->1492:74
	ADDI	%r31, %r31, $360	# build/example.ml#1492:26->1492:74
	ADDI	%r31, %r31, $4	# build/example.ml#1492:26->1492:74
	SIP	# build/example.ml#1492:26->1492:74
	J	$min_caml_fhalf	# build/example.ml#1492:26->1492:74
	ADDI	%r31, %r31, $-360	# build/example.ml#1492:26->1492:74
	FMV	%fr9, %fr0	# build/example.ml#1492:26->1492:74
	LDR	%r6, %r31, $324	# build/example.ml#1492:26->1492:74
	LDR	%r5, %r31, $328	# build/example.ml#1492:26->1492:74
	LDR	%r4, %r31, $332	# build/example.ml#1492:26->1492:74
	LDR	%r3, %r31, $336	# build/example.ml#1492:26->1492:74
	LDR	%r2, %r31, $340	# build/example.ml#1492:26->1492:74
	LDR	%r1, %r31, $344	# build/example.ml#1492:26->1492:74
	FLDR	%fr6, %r31, $348	# build/example.ml#1492:26->1492:74
	FLDR	%fr5, %r31, $352	# build/example.ml#1492:26->1492:74
	FLDR	%fr4, %r31, $356	# build/example.ml#1492:26->1492:74
	FADD	%fr9, %fr5, %fr9	# build/example.ml#1492:20->1492:74
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1492:5->1492:74
	MVI	%r28, $2	# build/example.ml#1493:14->1493:15
	SDR	%r6, %r31, $360	# build/example.ml#1493:39->1493:51
	SDR	%r5, %r31, $364	# build/example.ml#1493:39->1493:51
	SDR	%r4, %r31, $368	# build/example.ml#1493:39->1493:51
	SDR	%r3, %r31, $372	# build/example.ml#1493:39->1493:51
	SDR	%r2, %r31, $376	# build/example.ml#1493:39->1493:51
	SDR	%r1, %r31, $380	# build/example.ml#1493:39->1493:51
	ADDI	%r31, %r31, $384	# build/example.ml#1493:39->1493:51
	ADDI	%r31, %r31, $4	# build/example.ml#1493:39->1493:51
	SIP	# build/example.ml#1493:39->1493:51
	J	$o_param_r2.2655	# build/example.ml#1493:39->1493:51
	ADDI	%r31, %r31, $-384	# build/example.ml#1493:39->1493:51
	FMV	%fr9, %fr0	# build/example.ml#1493:39->1493:51
	LDR	%r6, %r31, $360	# build/example.ml#1493:39->1493:51
	LDR	%r5, %r31, $364	# build/example.ml#1493:39->1493:51
	LDR	%r4, %r31, $368	# build/example.ml#1493:39->1493:51
	LDR	%r3, %r31, $372	# build/example.ml#1493:39->1493:51
	LDR	%r2, %r31, $376	# build/example.ml#1493:39->1493:51
	LDR	%r1, %r31, $380	# build/example.ml#1493:39->1493:51
	FMUL	%fr7, %fr7, %fr9	# build/example.ml#1493:33->1493:51
	SDR	%r6, %r31, $384	# build/example.ml#1493:61->1493:73
	SDR	%r5, %r31, $388	# build/example.ml#1493:61->1493:73
	SDR	%r4, %r31, $392	# build/example.ml#1493:61->1493:73
	SDR	%r3, %r31, $396	# build/example.ml#1493:61->1493:73
	SDR	%r2, %r31, $400	# build/example.ml#1493:61->1493:73
	SDR	%r1, %r31, $404	# build/example.ml#1493:61->1493:73
	ADDI	%r31, %r31, $408	# build/example.ml#1493:61->1493:73
	ADDI	%r31, %r31, $4	# build/example.ml#1493:61->1493:73
	SIP	# build/example.ml#1493:61->1493:73
	J	$o_param_r1.2653	# build/example.ml#1493:61->1493:73
	ADDI	%r31, %r31, $-408	# build/example.ml#1493:61->1493:73
	FMV	%fr9, %fr0	# build/example.ml#1493:61->1493:73
	LDR	%r6, %r31, $384	# build/example.ml#1493:61->1493:73
	LDR	%r5, %r31, $388	# build/example.ml#1493:61->1493:73
	LDR	%r4, %r31, $392	# build/example.ml#1493:61->1493:73
	LDR	%r3, %r31, $396	# build/example.ml#1493:61->1493:73
	LDR	%r2, %r31, $400	# build/example.ml#1493:61->1493:73
	LDR	%r1, %r31, $404	# build/example.ml#1493:61->1493:73
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1493:55->1493:73
	FADD	%fr9, %fr7, %fr9	# build/example.ml#1493:33->1493:73
	SDR	%r6, %r31, $408	# build/example.ml#1493:26->1493:74
	SDR	%r5, %r31, $412	# build/example.ml#1493:26->1493:74
	SDR	%r4, %r31, $416	# build/example.ml#1493:26->1493:74
	SDR	%r3, %r31, $420	# build/example.ml#1493:26->1493:74
	SDR	%r2, %r31, $424	# build/example.ml#1493:26->1493:74
	SDR	%r1, %r31, $428	# build/example.ml#1493:26->1493:74
	FSDR	%fr6, %r31, $432	# build/example.ml#1493:26->1493:74
	FSDR	%fr5, %r31, $436	# build/example.ml#1493:26->1493:74
	FSDR	%fr4, %r31, $440	# build/example.ml#1493:26->1493:74
	FMV	%fr0, %fr9	# build/example.ml#1493:26->1493:74
	ADDI	%r31, %r31, $444	# build/example.ml#1493:26->1493:74
	ADDI	%r31, %r31, $4	# build/example.ml#1493:26->1493:74
	SIP	# build/example.ml#1493:26->1493:74
	J	$min_caml_fhalf	# build/example.ml#1493:26->1493:74
	ADDI	%r31, %r31, $-444	# build/example.ml#1493:26->1493:74
	FMV	%fr9, %fr0	# build/example.ml#1493:26->1493:74
	LDR	%r6, %r31, $408	# build/example.ml#1493:26->1493:74
	LDR	%r5, %r31, $412	# build/example.ml#1493:26->1493:74
	LDR	%r4, %r31, $416	# build/example.ml#1493:26->1493:74
	LDR	%r3, %r31, $420	# build/example.ml#1493:26->1493:74
	LDR	%r2, %r31, $424	# build/example.ml#1493:26->1493:74
	LDR	%r1, %r31, $428	# build/example.ml#1493:26->1493:74
	FLDR	%fr6, %r31, $432	# build/example.ml#1493:26->1493:74
	FLDR	%fr5, %r31, $436	# build/example.ml#1493:26->1493:74
	FLDR	%fr4, %r31, $440	# build/example.ml#1493:26->1493:74
	FADD	%fr9, %fr6, %fr9	# build/example.ml#1493:20->1493:74
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1493:5->1493:74
	J	$if_eq_cont.11620	# build/example.ml#1486:3->1494:5
if_eq.11619:
	MVI	%r8, $min_caml_nvector	# build/example.ml#1487:5->1487:12
	MVI	%r9, $0	# build/example.ml#1487:14->1487:15
	FSDD	%fr4, %r8, $4, %r9	# build/example.ml#1487:5->1487:22
	MVI	%r9, $1	# build/example.ml#1488:14->1488:15
	FSDD	%fr5, %r8, $4, %r9	# build/example.ml#1488:5->1488:22
	MVI	%r9, $2	# build/example.ml#1489:14->1489:15
	FSDD	%fr6, %r8, $4, %r9	# build/example.ml#1489:5->1489:22
if_eq_cont.11620:
	MVI	%r9, $min_caml_nvector	# build/example.ml#1495:15->1495:22
	MV	%r8, %r7	# build/example.ml#179:3->183:11
	SDR	%r6, %r31, $444	# build/example.ml#1495:3->1495:37
	SDR	%r5, %r31, $448	# build/example.ml#1495:3->1495:37
	SDR	%r4, %r31, $452	# build/example.ml#1495:3->1495:37
	SDR	%r3, %r31, $456	# build/example.ml#1495:3->1495:37
	SDR	%r2, %r31, $460	# build/example.ml#1495:3->1495:37
	SDR	%r1, %r31, $464	# build/example.ml#1495:3->1495:37
	FSDR	%fr6, %r31, $468	# build/example.ml#1495:3->1495:37
	FSDR	%fr5, %r31, $472	# build/example.ml#1495:3->1495:37
	FSDR	%fr4, %r31, $476	# build/example.ml#1495:3->1495:37
	MV	%r2, %r8	# build/example.ml#1495:3->1495:37
	MV	%r1, %r9	# build/example.ml#1495:3->1495:37
	ADDI	%r31, %r31, $480	# build/example.ml#1495:3->1495:37
	ADDI	%r31, %r31, $4	# build/example.ml#1495:3->1495:37
	SIP	# build/example.ml#1495:3->1495:37
	J	$vecunit_sgn.2591	# build/example.ml#1495:3->1495:37
	ADDI	%r31, %r31, $-480	# build/example.ml#1495:3->1495:37
	LDR	%r6, %r31, $444	# build/example.ml#1495:3->1495:37
	LDR	%r5, %r31, $448	# build/example.ml#1495:3->1495:37
	LDR	%r4, %r31, $452	# build/example.ml#1495:3->1495:37
	LDR	%r3, %r31, $456	# build/example.ml#1495:3->1495:37
	LDR	%r2, %r31, $460	# build/example.ml#1495:3->1495:37
	LDR	%r1, %r31, $464	# build/example.ml#1495:3->1495:37
	FLDR	%fr6, %r31, $468	# build/example.ml#1495:3->1495:37
	FLDR	%fr5, %r31, $472	# build/example.ml#1495:3->1495:37
	FLDR	%fr4, %r31, $476	# build/example.ml#1495:3->1495:37
	LDR	%r9, %r31, $0	# build/example.ml#1478:12->1478:30
	LDR	%r8, %r31, $4	# build/example.ml#1478:12->1478:30
	LDR	%r7, %r31, $8	# build/example.ml#1478:12->1478:30
	LDR	%r28, %r31, $12	# build/example.ml#1478:12->1478:30
	LDR	%r27, %r31, $16	# build/example.ml#1478:12->1478:30
	LDR	%r11, %r31, $20	# build/example.ml#1478:12->1478:30
	LDR	%r10, %r31, $24	# build/example.ml#1478:12->1478:30
	FLDR	%fr9, %r31, $28	# build/example.ml#1478:12->1478:30
	FLDR	%fr8, %r31, $32	# build/example.ml#1478:12->1478:30
	FLDR	%fr7, %r31, $36	# build/example.ml#1478:12->1478:30
	FLDR	%fr31, %r31, $40	# build/example.ml#1478:12->1478:30
	FLDR	%fr30, %r31, $44	# build/example.ml#1478:12->1478:30
	LINK	# build/example.ml#1478:12->1478:30
get_nvector_plane.2881:
	SDR	%r9, %r31, $0	# build/example.ml#1471:3->1471:10
	SDR	%r8, %r31, $4	# build/example.ml#1471:3->1471:10
	SDR	%r7, %r31, $8	# build/example.ml#1471:3->1471:10
	SDR	%r28, %r31, $12	# build/example.ml#1471:3->1471:10
	SDR	%r27, %r31, $16	# build/example.ml#1471:3->1471:10
	SDR	%r11, %r31, $20	# build/example.ml#1471:3->1471:10
	SDR	%r10, %r31, $24	# build/example.ml#1471:3->1471:10
	FSDR	%fr9, %r31, $28	# build/example.ml#1471:3->1471:10
	MVI	%r27, $min_caml_nvector	# build/example.ml#1471:3->1471:10
	MVI	%r28, $0	# build/example.ml#1471:12->1471:13
	SDR	%r6, %r31, $32	# build/example.ml#1471:24->1471:35
	SDR	%r5, %r31, $36	# build/example.ml#1471:24->1471:35
	SDR	%r4, %r31, $40	# build/example.ml#1471:24->1471:35
	SDR	%r3, %r31, $44	# build/example.ml#1471:24->1471:35
	SDR	%r2, %r31, $48	# build/example.ml#1471:24->1471:35
	SDR	%r1, %r31, $52	# build/example.ml#1471:24->1471:35
	ADDI	%r31, %r31, $56	# build/example.ml#1471:24->1471:35
	ADDI	%r31, %r31, $4	# build/example.ml#1471:24->1471:35
	SIP	# build/example.ml#1471:24->1471:35
	J	$o_param_a.2629	# build/example.ml#1471:24->1471:35
	ADDI	%r31, %r31, $-56	# build/example.ml#1471:24->1471:35
	FMV	%fr9, %fr0	# build/example.ml#1471:24->1471:35
	LDR	%r6, %r31, $32	# build/example.ml#1471:24->1471:35
	LDR	%r5, %r31, $36	# build/example.ml#1471:24->1471:35
	LDR	%r4, %r31, $40	# build/example.ml#1471:24->1471:35
	LDR	%r3, %r31, $44	# build/example.ml#1471:24->1471:35
	LDR	%r2, %r31, $48	# build/example.ml#1471:24->1471:35
	LDR	%r1, %r31, $52	# build/example.ml#1471:24->1471:35
	SDR	%r6, %r31, $56	# build/example.ml#1471:18->1471:36
	SDR	%r5, %r31, $60	# build/example.ml#1471:18->1471:36
	SDR	%r4, %r31, $64	# build/example.ml#1471:18->1471:36
	SDR	%r3, %r31, $68	# build/example.ml#1471:18->1471:36
	SDR	%r2, %r31, $72	# build/example.ml#1471:18->1471:36
	SDR	%r1, %r31, $76	# build/example.ml#1471:18->1471:36
	FMV	%fr0, %fr9	# build/example.ml#1471:18->1471:36
	ADDI	%r31, %r31, $80	# build/example.ml#1471:18->1471:36
	ADDI	%r31, %r31, $4	# build/example.ml#1471:18->1471:36
	SIP	# build/example.ml#1471:18->1471:36
	J	$min_caml_fneg	# build/example.ml#1471:18->1471:36
	ADDI	%r31, %r31, $-80	# build/example.ml#1471:18->1471:36
	FMV	%fr9, %fr0	# build/example.ml#1471:18->1471:36
	LDR	%r6, %r31, $56	# build/example.ml#1471:18->1471:36
	LDR	%r5, %r31, $60	# build/example.ml#1471:18->1471:36
	LDR	%r4, %r31, $64	# build/example.ml#1471:18->1471:36
	LDR	%r3, %r31, $68	# build/example.ml#1471:18->1471:36
	LDR	%r2, %r31, $72	# build/example.ml#1471:18->1471:36
	LDR	%r1, %r31, $76	# build/example.ml#1471:18->1471:36
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1471:3->1471:36
	MVI	%r28, $1	# build/example.ml#1472:12->1472:13
	SDR	%r6, %r31, $80	# build/example.ml#1472:24->1472:35
	SDR	%r5, %r31, $84	# build/example.ml#1472:24->1472:35
	SDR	%r4, %r31, $88	# build/example.ml#1472:24->1472:35
	SDR	%r3, %r31, $92	# build/example.ml#1472:24->1472:35
	SDR	%r2, %r31, $96	# build/example.ml#1472:24->1472:35
	SDR	%r1, %r31, $100	# build/example.ml#1472:24->1472:35
	ADDI	%r31, %r31, $104	# build/example.ml#1472:24->1472:35
	ADDI	%r31, %r31, $4	# build/example.ml#1472:24->1472:35
	SIP	# build/example.ml#1472:24->1472:35
	J	$o_param_b.2631	# build/example.ml#1472:24->1472:35
	ADDI	%r31, %r31, $-104	# build/example.ml#1472:24->1472:35
	FMV	%fr9, %fr0	# build/example.ml#1472:24->1472:35
	LDR	%r6, %r31, $80	# build/example.ml#1472:24->1472:35
	LDR	%r5, %r31, $84	# build/example.ml#1472:24->1472:35
	LDR	%r4, %r31, $88	# build/example.ml#1472:24->1472:35
	LDR	%r3, %r31, $92	# build/example.ml#1472:24->1472:35
	LDR	%r2, %r31, $96	# build/example.ml#1472:24->1472:35
	LDR	%r1, %r31, $100	# build/example.ml#1472:24->1472:35
	SDR	%r6, %r31, $104	# build/example.ml#1472:18->1472:36
	SDR	%r5, %r31, $108	# build/example.ml#1472:18->1472:36
	SDR	%r4, %r31, $112	# build/example.ml#1472:18->1472:36
	SDR	%r3, %r31, $116	# build/example.ml#1472:18->1472:36
	SDR	%r2, %r31, $120	# build/example.ml#1472:18->1472:36
	SDR	%r1, %r31, $124	# build/example.ml#1472:18->1472:36
	FMV	%fr0, %fr9	# build/example.ml#1472:18->1472:36
	ADDI	%r31, %r31, $128	# build/example.ml#1472:18->1472:36
	ADDI	%r31, %r31, $4	# build/example.ml#1472:18->1472:36
	SIP	# build/example.ml#1472:18->1472:36
	J	$min_caml_fneg	# build/example.ml#1472:18->1472:36
	ADDI	%r31, %r31, $-128	# build/example.ml#1472:18->1472:36
	FMV	%fr9, %fr0	# build/example.ml#1472:18->1472:36
	LDR	%r6, %r31, $104	# build/example.ml#1472:18->1472:36
	LDR	%r5, %r31, $108	# build/example.ml#1472:18->1472:36
	LDR	%r4, %r31, $112	# build/example.ml#1472:18->1472:36
	LDR	%r3, %r31, $116	# build/example.ml#1472:18->1472:36
	LDR	%r2, %r31, $120	# build/example.ml#1472:18->1472:36
	LDR	%r1, %r31, $124	# build/example.ml#1472:18->1472:36
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1472:3->1472:36
	MVI	%r28, $2	# build/example.ml#1473:12->1473:13
	SDR	%r6, %r31, $128	# build/example.ml#1473:24->1473:35
	SDR	%r5, %r31, $132	# build/example.ml#1473:24->1473:35
	SDR	%r4, %r31, $136	# build/example.ml#1473:24->1473:35
	SDR	%r3, %r31, $140	# build/example.ml#1473:24->1473:35
	SDR	%r2, %r31, $144	# build/example.ml#1473:24->1473:35
	SDR	%r1, %r31, $148	# build/example.ml#1473:24->1473:35
	ADDI	%r31, %r31, $152	# build/example.ml#1473:24->1473:35
	ADDI	%r31, %r31, $4	# build/example.ml#1473:24->1473:35
	SIP	# build/example.ml#1473:24->1473:35
	J	$o_param_c.2633	# build/example.ml#1473:24->1473:35
	ADDI	%r31, %r31, $-152	# build/example.ml#1473:24->1473:35
	FMV	%fr9, %fr0	# build/example.ml#1473:24->1473:35
	LDR	%r6, %r31, $128	# build/example.ml#1473:24->1473:35
	LDR	%r5, %r31, $132	# build/example.ml#1473:24->1473:35
	LDR	%r4, %r31, $136	# build/example.ml#1473:24->1473:35
	LDR	%r3, %r31, $140	# build/example.ml#1473:24->1473:35
	LDR	%r2, %r31, $144	# build/example.ml#1473:24->1473:35
	LDR	%r1, %r31, $148	# build/example.ml#1473:24->1473:35
	SDR	%r6, %r31, $152	# build/example.ml#1473:18->1473:36
	SDR	%r5, %r31, $156	# build/example.ml#1473:18->1473:36
	SDR	%r4, %r31, $160	# build/example.ml#1473:18->1473:36
	SDR	%r3, %r31, $164	# build/example.ml#1473:18->1473:36
	SDR	%r2, %r31, $168	# build/example.ml#1473:18->1473:36
	SDR	%r1, %r31, $172	# build/example.ml#1473:18->1473:36
	FMV	%fr0, %fr9	# build/example.ml#1473:18->1473:36
	ADDI	%r31, %r31, $176	# build/example.ml#1473:18->1473:36
	ADDI	%r31, %r31, $4	# build/example.ml#1473:18->1473:36
	SIP	# build/example.ml#1473:18->1473:36
	J	$min_caml_fneg	# build/example.ml#1473:18->1473:36
	ADDI	%r31, %r31, $-176	# build/example.ml#1473:18->1473:36
	FMV	%fr9, %fr0	# build/example.ml#1473:18->1473:36
	LDR	%r6, %r31, $152	# build/example.ml#1473:18->1473:36
	LDR	%r5, %r31, $156	# build/example.ml#1473:18->1473:36
	LDR	%r4, %r31, $160	# build/example.ml#1473:18->1473:36
	LDR	%r3, %r31, $164	# build/example.ml#1473:18->1473:36
	LDR	%r2, %r31, $168	# build/example.ml#1473:18->1473:36
	LDR	%r1, %r31, $172	# build/example.ml#1473:18->1473:36
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1473:3->1473:36
	LDR	%r9, %r31, $0	# build/example.ml#1471:3->1471:10
	LDR	%r8, %r31, $4	# build/example.ml#1471:3->1471:10
	LDR	%r7, %r31, $8	# build/example.ml#1471:3->1471:10
	LDR	%r28, %r31, $12	# build/example.ml#1471:3->1471:10
	LDR	%r27, %r31, $16	# build/example.ml#1471:3->1471:10
	LDR	%r11, %r31, $20	# build/example.ml#1471:3->1471:10
	LDR	%r10, %r31, $24	# build/example.ml#1471:3->1471:10
	FLDR	%fr9, %r31, $28	# build/example.ml#1471:3->1471:10
	LINK	# build/example.ml#1471:3->1471:10
get_nvector_rect.2879:
	SDR	%r9, %r31, $0	# build/example.ml#1462:18->1462:33
	SDR	%r8, %r31, $4	# build/example.ml#1462:18->1462:33
	SDR	%r7, %r31, $8	# build/example.ml#1462:18->1462:33
	FSDR	%fr9, %r31, $12	# build/example.ml#1462:18->1462:33
	MVI	%r8, $min_caml_intsec_rectside	# build/example.ml#1462:18->1462:33
	MVI	%r9, $0	# build/example.ml#1462:35->1462:36
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1295:3->1295:28
	MVI	%r6, $min_caml_nvector	# build/example.ml#1464:12->1464:19
	FLDA	%fr9, $l.7787	# build/example.ml#66:13->66:16
	SDR	%r1, %r31, $16	# build/example.ml#66:3->66:16
	MV	%r1, %r6	# build/example.ml#66:3->66:16
	FMV	%fr0, %fr9	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $20	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $4	# build/example.ml#66:3->66:16
	SIP	# build/example.ml#66:3->66:16
	J	$vecfill.2578	# build/example.ml#66:3->66:16
	ADDI	%r31, %r31, $-20	# build/example.ml#66:3->66:16
	LDR	%r1, %r31, $16	# build/example.ml#66:3->66:16
	MVI	%r8, $1	# build/example.ml#1465:21->1465:22
	SUB	%r7, %r9, %r8	# build/example.ml#1465:12->1465:22
	MVI	%r8, $1	# build/example.ml#1465:55->1465:56
	SUB	%r9, %r9, %r8	# build/example.ml#1465:46->1465:56
	FLDD	%fr9, %r1, $4, %r9	# build/example.ml#1465:38->1465:57
	SDR	%r6, %r31, $20	# build/example.ml#1465:33->1465:58
	SDR	%r1, %r31, $24	# build/example.ml#1465:33->1465:58
	FMV	%fr0, %fr9	# build/example.ml#1465:33->1465:58
	ADDI	%r31, %r31, $28	# build/example.ml#1465:33->1465:58
	ADDI	%r31, %r31, $4	# build/example.ml#1465:33->1465:58
	SIP	# build/example.ml#1465:33->1465:58
	J	$sgn.2565	# build/example.ml#1465:33->1465:58
	ADDI	%r31, %r31, $-28	# build/example.ml#1465:33->1465:58
	FMV	%fr9, %fr0	# build/example.ml#1465:33->1465:58
	LDR	%r6, %r31, $20	# build/example.ml#1465:33->1465:58
	LDR	%r1, %r31, $24	# build/example.ml#1465:33->1465:58
	SDR	%r6, %r31, $28	# build/example.ml#1465:27->1465:59
	SDR	%r1, %r31, $32	# build/example.ml#1465:27->1465:59
	FMV	%fr0, %fr9	# build/example.ml#1465:27->1465:59
	ADDI	%r31, %r31, $36	# build/example.ml#1465:27->1465:59
	ADDI	%r31, %r31, $4	# build/example.ml#1465:27->1465:59
	SIP	# build/example.ml#1465:27->1465:59
	J	$min_caml_fneg	# build/example.ml#1465:27->1465:59
	ADDI	%r31, %r31, $-36	# build/example.ml#1465:27->1465:59
	FMV	%fr9, %fr0	# build/example.ml#1465:27->1465:59
	LDR	%r6, %r31, $28	# build/example.ml#1465:27->1465:59
	LDR	%r1, %r31, $32	# build/example.ml#1465:27->1465:59
	FSDD	%fr9, %r6, $4, %r7	# build/example.ml#1465:3->1465:59
	LDR	%r9, %r31, $0	# build/example.ml#1462:18->1462:33
	LDR	%r8, %r31, $4	# build/example.ml#1462:18->1462:33
	LDR	%r7, %r31, $8	# build/example.ml#1462:18->1462:33
	FLDR	%fr9, %r31, $12	# build/example.ml#1462:18->1462:33
	LINK	# build/example.ml#1462:18->1462:33
judge_intersection_fast.2877:
	SDR	%r9, %r31, $0	# build/example.ml#1442:3->1442:7
	SDR	%r8, %r31, $4	# build/example.ml#1442:3->1442:7
	SDR	%r7, %r31, $8	# build/example.ml#1442:3->1442:7
	FSDR	%fr9, %r31, $12	# build/example.ml#1442:3->1442:7
	FSDR	%fr8, %r31, $16	# build/example.ml#1442:3->1442:7
	MVI	%r6, $min_caml_tmin	# build/example.ml#1442:3->1442:7
	MVI	%r9, $0	# build/example.ml#1442:9->1442:10
	FLDA	%fr9, $l.7807	# build/example.ml#1442:16->1442:28
	FSDD	%fr9, %r6, $4, %r9	# build/example.ml#1442:3->1442:29
	MVI	%r8, $0	# build/example.ml#1443:24->1443:25
	MVI	%r7, $min_caml_or_net	# build/example.ml#1443:27->1443:33
	MVI	%r9, $0	# build/example.ml#1443:35->1443:36
	LDD	%r9, %r7, $4, %r9	# build/example.ml#714:4->714:35
	SDR	%r6, %r31, $20	# build/example.ml#1443:3->1443:45
	SDR	%r2, %r31, $24	# build/example.ml#1443:3->1443:45
	SDR	%r1, %r31, $28	# build/example.ml#1443:3->1443:45
	MV	%r4, %r2	# build/example.ml#1443:3->1443:45
	MV	%r3, %r1	# build/example.ml#1443:3->1443:45
	MV	%r2, %r9	# build/example.ml#1443:3->1443:45
	MV	%r1, %r8	# build/example.ml#1443:3->1443:45
	ADDI	%r31, %r31, $32	# build/example.ml#1443:3->1443:45
	ADDI	%r31, %r31, $4	# build/example.ml#1443:3->1443:45
	SIP	# build/example.ml#1443:3->1443:45
	J	$trace_or_matrix_fast.2873	# build/example.ml#1443:3->1443:45
	ADDI	%r31, %r31, $-32	# build/example.ml#1443:3->1443:45
	LDR	%r6, %r31, $20	# build/example.ml#1443:3->1443:45
	LDR	%r2, %r31, $24	# build/example.ml#1443:3->1443:45
	LDR	%r1, %r31, $28	# build/example.ml#1443:3->1443:45
	MVI	%r9, $0	# build/example.ml#1444:17->1444:18
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#1284:17->1284:25
	FLDA	%fr8, $l.7808	# build/example.ml#1446:14->1446:18
	SDR	%r6, %r31, $32	# build/example.ml#1446:7->1446:21
	SDR	%r2, %r31, $36	# build/example.ml#1446:7->1446:21
	SDR	%r1, %r31, $40	# build/example.ml#1446:7->1446:21
	FMV	%fr1, %fr9	# build/example.ml#1446:7->1446:21
	FMV	%fr0, %fr8	# build/example.ml#1446:7->1446:21
	ADDI	%r31, %r31, $44	# build/example.ml#1446:7->1446:21
	ADDI	%r31, %r31, $4	# build/example.ml#1446:7->1446:21
	SIP	# build/example.ml#1446:7->1446:21
	J	$min_caml_fless	# build/example.ml#1446:7->1446:21
	ADDI	%r31, %r31, $-44	# build/example.ml#1446:7->1446:21
	MV	%r8, %r0	# build/example.ml#1446:7->1446:21
	LDR	%r6, %r31, $32	# build/example.ml#1446:7->1446:21
	LDR	%r2, %r31, $36	# build/example.ml#1446:7->1446:21
	LDR	%r1, %r31, $40	# build/example.ml#1446:7->1446:21
	MVI	%r9, $0	# build/example.ml#1446:3->1448:13
	CEQ	%r8, %r9	# build/example.ml#1446:3->1448:13
	JZ	$if_eq.11621	# build/example.ml#1446:3->1448:13
	FLDA	%fr8, $l.7809	# build/example.ml#1447:14->1447:25
	SDR	%r6, %r31, $44	# build/example.ml#1447:6->1447:25
	SDR	%r2, %r31, $48	# build/example.ml#1447:6->1447:25
	SDR	%r1, %r31, $52	# build/example.ml#1447:6->1447:25
	FMV	%fr1, %fr8	# build/example.ml#1447:6->1447:25
	FMV	%fr0, %fr9	# build/example.ml#1447:6->1447:25
	ADDI	%r31, %r31, $56	# build/example.ml#1447:6->1447:25
	ADDI	%r31, %r31, $4	# build/example.ml#1447:6->1447:25
	SIP	# build/example.ml#1447:6->1447:25
	J	$min_caml_fless	# build/example.ml#1447:6->1447:25
	ADDI	%r31, %r31, $-56	# build/example.ml#1447:6->1447:25
	LDR	%r6, %r31, $44	# build/example.ml#1447:6->1447:25
	LDR	%r2, %r31, $48	# build/example.ml#1447:6->1447:25
	LDR	%r1, %r31, $52	# build/example.ml#1447:6->1447:25
	J	$if_eq_cont.11622	# build/example.ml#1446:3->1448:13
if_eq.11621:
	MVI	%r0, $0	# build/example.ml#1448:8->1448:13
if_eq_cont.11622:
	LDR	%r9, %r31, $0	# build/example.ml#1442:3->1442:7
	LDR	%r8, %r31, $4	# build/example.ml#1442:3->1442:7
	LDR	%r7, %r31, $8	# build/example.ml#1442:3->1442:7
	FLDR	%fr9, %r31, $12	# build/example.ml#1442:3->1442:7
	FLDR	%fr8, %r31, $16	# build/example.ml#1442:3->1442:7
	LINK	# build/example.ml#1442:3->1442:7
trace_or_matrix_fast.2873:
	SDR	%r9, %r31, $0	# build/example.ml#1417:14->1417:30
	SDR	%r8, %r31, $4	# build/example.ml#1417:14->1417:30
	SDR	%r7, %r31, $8	# build/example.ml#1417:14->1417:30
	FSDR	%fr9, %r31, $12	# build/example.ml#1417:14->1417:30
	FSDR	%fr8, %r31, $16	# build/example.ml#1417:14->1417:30
	LDD	%r8, %r2, $4, %r1	# build/example.ml#1417:14->1417:30
	MVI	%r9, $0	# build/example.ml#1418:31->1418:32
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1418:25->1418:33
	MVI	%r7, $-1	# build/example.ml#1419:24->1419:26
	CEQ	%r9, %r7	# build/example.ml#1419:3->1436:5
	JZ	$if_eq.11623	# build/example.ml#1419:3->1436:5
	MVI	%r7, $99	# build/example.ml#1422:26->1422:28
	CEQ	%r9, %r7	# build/example.ml#1422:5->1434:8
	JZ	$if_eq.11625	# build/example.ml#1422:5->1434:8
	SDR	%r4, %r31, $20	# build/example.ml#1427:16->1427:51
	SDR	%r3, %r31, $24	# build/example.ml#1427:16->1427:51
	SDR	%r2, %r31, $28	# build/example.ml#1427:16->1427:51
	SDR	%r1, %r31, $32	# build/example.ml#1427:16->1427:51
	MV	%r2, %r3	# build/example.ml#1427:16->1427:51
	MV	%r1, %r9	# build/example.ml#1427:16->1427:51
	MV	%r3, %r4	# build/example.ml#1427:16->1427:51
	ADDI	%r31, %r31, $36	# build/example.ml#1427:16->1427:51
	ADDI	%r31, %r31, $4	# build/example.ml#1427:16->1427:51
	SIP	# build/example.ml#1427:16->1427:51
	J	$solver_fast2.2794	# build/example.ml#1427:16->1427:51
	ADDI	%r31, %r31, $-36	# build/example.ml#1427:16->1427:51
	MV	%r9, %r0	# build/example.ml#1427:16->1427:51
	LDR	%r4, %r31, $20	# build/example.ml#1427:16->1427:51
	LDR	%r3, %r31, $24	# build/example.ml#1427:16->1427:51
	LDR	%r2, %r31, $28	# build/example.ml#1427:16->1427:51
	LDR	%r1, %r31, $32	# build/example.ml#1427:16->1427:51
	MVI	%r7, $0	# build/example.ml#1428:16->1428:17
	CEQ	%r9, %r7	# build/example.ml#1428:8->1433:15
	JZ	$if_eq.11627	# build/example.ml#1428:8->1433:15
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#1429:12->1429:23
	MVI	%r9, $0	# build/example.ml#1429:25->1429:26
	FLDD	%fr9, %r7, $4, %r9	# build/example.ml#742:8->742:29
	MVI	%r7, $min_caml_tmin	# build/example.ml#1430:15->1430:19
	MVI	%r9, $0	# build/example.ml#1430:21->1430:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#1284:17->1284:25
	SDR	%r4, %r31, $36	# build/example.ml#1430:6->1430:23
	SDR	%r3, %r31, $40	# build/example.ml#1430:6->1430:23
	SDR	%r2, %r31, $44	# build/example.ml#1430:6->1430:23
	SDR	%r1, %r31, $48	# build/example.ml#1430:6->1430:23
	FMV	%fr1, %fr8	# build/example.ml#1430:6->1430:23
	FMV	%fr0, %fr9	# build/example.ml#1430:6->1430:23
	ADDI	%r31, %r31, $52	# build/example.ml#1430:6->1430:23
	ADDI	%r31, %r31, $4	# build/example.ml#1430:6->1430:23
	SIP	# build/example.ml#1430:6->1430:23
	J	$min_caml_fless	# build/example.ml#1430:6->1430:23
	ADDI	%r31, %r31, $-52	# build/example.ml#1430:6->1430:23
	MV	%r7, %r0	# build/example.ml#1430:6->1430:23
	LDR	%r4, %r31, $36	# build/example.ml#1430:6->1430:23
	LDR	%r3, %r31, $40	# build/example.ml#1430:6->1430:23
	LDR	%r2, %r31, $44	# build/example.ml#1430:6->1430:23
	LDR	%r1, %r31, $48	# build/example.ml#1430:6->1430:23
	MVI	%r9, $0	# build/example.ml#1430:3->1432:10
	CEQ	%r7, %r9	# build/example.ml#1430:3->1432:10
	JZ	$if_eq.11629	# build/example.ml#1430:3->1432:10
	MVI	%r9, $1	# build/example.ml#1431:35->1431:36
	SDR	%r4, %r31, $52	# build/example.ml#1431:9->1431:48
	SDR	%r3, %r31, $56	# build/example.ml#1431:9->1431:48
	SDR	%r2, %r31, $60	# build/example.ml#1431:9->1431:48
	SDR	%r1, %r31, $64	# build/example.ml#1431:9->1431:48
	MV	%r2, %r8	# build/example.ml#1431:9->1431:48
	MV	%r1, %r9	# build/example.ml#1431:9->1431:48
	ADDI	%r31, %r31, $68	# build/example.ml#1431:9->1431:48
	ADDI	%r31, %r31, $4	# build/example.ml#1431:9->1431:48
	SIP	# build/example.ml#1431:9->1431:48
	J	$solve_one_or_network_fast.2869	# build/example.ml#1431:9->1431:48
	ADDI	%r31, %r31, $-68	# build/example.ml#1431:9->1431:48
	LDR	%r4, %r31, $52	# build/example.ml#1431:9->1431:48
	LDR	%r3, %r31, $56	# build/example.ml#1431:9->1431:48
	LDR	%r2, %r31, $60	# build/example.ml#1431:9->1431:48
	LDR	%r1, %r31, $64	# build/example.ml#1431:9->1431:48
	J	$if_eq_cont.11630	# build/example.ml#1430:3->1432:10
if_eq.11629:
if_eq_cont.11630:
	J	$if_eq_cont.11628	# build/example.ml#1428:8->1433:15
if_eq.11627:
if_eq_cont.11628:
	J	$if_eq_cont.11626	# build/example.ml#1422:5->1434:8
if_eq.11625:
	MVI	%r9, $1	# build/example.ml#1423:36->1423:37
	SDR	%r4, %r31, $68	# build/example.ml#1423:10->1423:49
	SDR	%r3, %r31, $72	# build/example.ml#1423:10->1423:49
	SDR	%r2, %r31, $76	# build/example.ml#1423:10->1423:49
	SDR	%r1, %r31, $80	# build/example.ml#1423:10->1423:49
	MV	%r2, %r8	# build/example.ml#1423:10->1423:49
	MV	%r1, %r9	# build/example.ml#1423:10->1423:49
	ADDI	%r31, %r31, $84	# build/example.ml#1423:10->1423:49
	ADDI	%r31, %r31, $4	# build/example.ml#1423:10->1423:49
	SIP	# build/example.ml#1423:10->1423:49
	J	$solve_one_or_network_fast.2869	# build/example.ml#1423:10->1423:49
	ADDI	%r31, %r31, $-84	# build/example.ml#1423:10->1423:49
	LDR	%r4, %r31, $68	# build/example.ml#1423:10->1423:49
	LDR	%r3, %r31, $72	# build/example.ml#1423:10->1423:49
	LDR	%r2, %r31, $76	# build/example.ml#1423:10->1423:49
	LDR	%r1, %r31, $80	# build/example.ml#1423:10->1423:49
if_eq_cont.11626:
	MVI	%r9, $1	# build/example.ml#1435:33->1435:34
	ADD	%r9, %r1, %r9	# build/example.ml#1435:27->1435:34
	SDR	%r4, %r31, $84	# build/example.ml#1435:5->1435:53
	SDR	%r3, %r31, $88	# build/example.ml#1435:5->1435:53
	SDR	%r2, %r31, $92	# build/example.ml#1435:5->1435:53
	SDR	%r1, %r31, $96	# build/example.ml#1435:5->1435:53
	MV	%r1, %r9	# build/example.ml#1435:5->1435:53
	ADDI	%r31, %r31, $100	# build/example.ml#1435:5->1435:53
	ADDI	%r31, %r31, $4	# build/example.ml#1435:5->1435:53
	SIP	# build/example.ml#1435:5->1435:53
	J	$trace_or_matrix_fast.2873	# build/example.ml#1435:5->1435:53
	ADDI	%r31, %r31, $-100	# build/example.ml#1435:5->1435:53
	LDR	%r4, %r31, $84	# build/example.ml#1435:5->1435:53
	LDR	%r3, %r31, $88	# build/example.ml#1435:5->1435:53
	LDR	%r2, %r31, $92	# build/example.ml#1435:5->1435:53
	LDR	%r1, %r31, $96	# build/example.ml#1435:5->1435:53
	J	$if_eq_cont.11624	# build/example.ml#1419:3->1436:5
if_eq.11623:
if_eq_cont.11624:
	LDR	%r9, %r31, $0	# build/example.ml#1417:14->1417:30
	LDR	%r8, %r31, $4	# build/example.ml#1417:14->1417:30
	LDR	%r7, %r31, $8	# build/example.ml#1417:14->1417:30
	FLDR	%fr9, %r31, $12	# build/example.ml#1417:14->1417:30
	FLDR	%fr8, %r31, $16	# build/example.ml#1417:14->1417:30
	LINK	# build/example.ml#1417:14->1417:30
solve_one_or_network_fast.2869:
	SDR	%r9, %r31, $0	# build/example.ml#1407:14->1407:28
	SDR	%r8, %r31, $4	# build/example.ml#1407:14->1407:28
	LDD	%r9, %r2, $4, %r1	# build/example.ml#1407:14->1407:28
	MVI	%r8, $-1	# build/example.ml#1408:14->1408:16
	CEQ	%r9, %r8	# build/example.ml#1408:3->1412:13
	JZ	$if_eq.11631	# build/example.ml#1408:3->1412:13
	MVI	%r8, $min_caml_and_net	# build/example.ml#1409:21->1409:28
	LDD	%r9, %r8, $4, %r9	# build/example.ml#703:5->703:23
	MVI	%r8, $0	# build/example.ml#1410:29->1410:30
	SDR	%r4, %r31, $8	# build/example.ml#1410:5->1410:47
	SDR	%r3, %r31, $12	# build/example.ml#1410:5->1410:47
	SDR	%r2, %r31, $16	# build/example.ml#1410:5->1410:47
	SDR	%r1, %r31, $20	# build/example.ml#1410:5->1410:47
	MV	%r2, %r9	# build/example.ml#1410:5->1410:47
	MV	%r1, %r8	# build/example.ml#1410:5->1410:47
	ADDI	%r31, %r31, $24	# build/example.ml#1410:5->1410:47
	ADDI	%r31, %r31, $4	# build/example.ml#1410:5->1410:47
	SIP	# build/example.ml#1410:5->1410:47
	J	$solve_each_element_fast.2865	# build/example.ml#1410:5->1410:47
	ADDI	%r31, %r31, $-24	# build/example.ml#1410:5->1410:47
	LDR	%r4, %r31, $8	# build/example.ml#1410:5->1410:47
	LDR	%r3, %r31, $12	# build/example.ml#1410:5->1410:47
	LDR	%r2, %r31, $16	# build/example.ml#1410:5->1410:47
	LDR	%r1, %r31, $20	# build/example.ml#1410:5->1410:47
	MVI	%r9, $1	# build/example.ml#1411:38->1411:39
	ADD	%r9, %r1, %r9	# build/example.ml#1411:32->1411:39
	SDR	%r4, %r31, $24	# build/example.ml#1411:5->1411:56
	SDR	%r3, %r31, $28	# build/example.ml#1411:5->1411:56
	SDR	%r2, %r31, $32	# build/example.ml#1411:5->1411:56
	SDR	%r1, %r31, $36	# build/example.ml#1411:5->1411:56
	MV	%r1, %r9	# build/example.ml#1411:5->1411:56
	ADDI	%r31, %r31, $40	# build/example.ml#1411:5->1411:56
	ADDI	%r31, %r31, $4	# build/example.ml#1411:5->1411:56
	SIP	# build/example.ml#1411:5->1411:56
	J	$solve_one_or_network_fast.2869	# build/example.ml#1411:5->1411:56
	ADDI	%r31, %r31, $-40	# build/example.ml#1411:5->1411:56
	LDR	%r4, %r31, $24	# build/example.ml#1411:5->1411:56
	LDR	%r3, %r31, $28	# build/example.ml#1411:5->1411:56
	LDR	%r2, %r31, $32	# build/example.ml#1411:5->1411:56
	LDR	%r1, %r31, $36	# build/example.ml#1411:5->1411:56
	J	$if_eq_cont.11632	# build/example.ml#1408:3->1412:13
if_eq.11631:
if_eq_cont.11632:
	LDR	%r9, %r31, $0	# build/example.ml#1407:14->1407:28
	LDR	%r8, %r31, $4	# build/example.ml#1407:14->1407:28
	LINK	# build/example.ml#1407:14->1407:28
solve_each_element_fast.2865:
	SDR	%r9, %r31, $0	# build/example.ml#445:3->446:8
	SDR	%r8, %r31, $4	# build/example.ml#445:3->446:8
	SDR	%r7, %r31, $8	# build/example.ml#445:3->446:8
	SDR	%r28, %r31, $12	# build/example.ml#445:3->446:8
	FSDR	%fr9, %r31, $16	# build/example.ml#445:3->446:8
	FSDR	%fr8, %r31, $20	# build/example.ml#445:3->446:8
	FSDR	%fr7, %r31, $24	# build/example.ml#445:3->446:8
	MV	%r8, %r3	# build/example.ml#445:3->446:8
	LDD	%r7, %r2, $4, %r1	# build/example.ml#1367:14->1367:34
	MVI	%r9, $-1	# build/example.ml#1368:13->1368:15
	CEQ	%r7, %r9	# build/example.ml#1368:3->1402:5
	JZ	$if_eq.11633	# build/example.ml#1368:3->1402:5
	SDR	%r6, %r31, $28	# build/example.ml#1370:14->1370:38
	SDR	%r5, %r31, $32	# build/example.ml#1370:14->1370:38
	SDR	%r4, %r31, $36	# build/example.ml#1370:14->1370:38
	SDR	%r3, %r31, $40	# build/example.ml#1370:14->1370:38
	SDR	%r2, %r31, $44	# build/example.ml#1370:14->1370:38
	SDR	%r1, %r31, $48	# build/example.ml#1370:14->1370:38
	FSDR	%fr6, %r31, $52	# build/example.ml#1370:14->1370:38
	FSDR	%fr5, %r31, $56	# build/example.ml#1370:14->1370:38
	MV	%r2, %r3	# build/example.ml#1370:14->1370:38
	MV	%r1, %r7	# build/example.ml#1370:14->1370:38
	MV	%r3, %r4	# build/example.ml#1370:14->1370:38
	ADDI	%r31, %r31, $60	# build/example.ml#1370:14->1370:38
	ADDI	%r31, %r31, $4	# build/example.ml#1370:14->1370:38
	SIP	# build/example.ml#1370:14->1370:38
	J	$solver_fast2.2794	# build/example.ml#1370:14->1370:38
	ADDI	%r31, %r31, $-60	# build/example.ml#1370:14->1370:38
	MV	%r9, %r0	# build/example.ml#1370:14->1370:38
	LDR	%r6, %r31, $28	# build/example.ml#1370:14->1370:38
	LDR	%r5, %r31, $32	# build/example.ml#1370:14->1370:38
	LDR	%r4, %r31, $36	# build/example.ml#1370:14->1370:38
	LDR	%r3, %r31, $40	# build/example.ml#1370:14->1370:38
	LDR	%r2, %r31, $44	# build/example.ml#1370:14->1370:38
	LDR	%r1, %r31, $48	# build/example.ml#1370:14->1370:38
	FLDR	%fr6, %r31, $52	# build/example.ml#1370:14->1370:38
	FLDR	%fr5, %r31, $56	# build/example.ml#1370:14->1370:38
	MVI	%r6, $0	# build/example.ml#1371:14->1371:15
	CEQ	%r9, %r6	# build/example.ml#1371:5->1401:15
	JZ	$if_eq.11635	# build/example.ml#1371:5->1401:15
	MVI	%r5, $min_caml_solver_dist	# build/example.ml#1375:18->1375:29
	MVI	%r6, $0	# build/example.ml#1375:31->1375:32
	FLDD	%fr9, %r5, $4, %r6	# build/example.ml#742:8->742:29
	FLDA	%fr8, $l.7787	# build/example.ml#1377:18->1377:21
	SDR	%r6, %r31, $60	# build/example.ml#1377:12->1377:25
	SDR	%r5, %r31, $64	# build/example.ml#1377:12->1377:25
	SDR	%r4, %r31, $68	# build/example.ml#1377:12->1377:25
	SDR	%r3, %r31, $72	# build/example.ml#1377:12->1377:25
	SDR	%r2, %r31, $76	# build/example.ml#1377:12->1377:25
	SDR	%r1, %r31, $80	# build/example.ml#1377:12->1377:25
	FSDR	%fr6, %r31, $84	# build/example.ml#1377:12->1377:25
	FSDR	%fr5, %r31, $88	# build/example.ml#1377:12->1377:25
	FMV	%fr1, %fr9	# build/example.ml#1377:12->1377:25
	FMV	%fr0, %fr8	# build/example.ml#1377:12->1377:25
	ADDI	%r31, %r31, $92	# build/example.ml#1377:12->1377:25
	ADDI	%r31, %r31, $4	# build/example.ml#1377:12->1377:25
	SIP	# build/example.ml#1377:12->1377:25
	J	$min_caml_fless	# build/example.ml#1377:12->1377:25
	ADDI	%r31, %r31, $-92	# build/example.ml#1377:12->1377:25
	MV	%r5, %r0	# build/example.ml#1377:12->1377:25
	LDR	%r6, %r31, $60	# build/example.ml#1377:12->1377:25
	LDR	%r5, %r31, $64	# build/example.ml#1377:12->1377:25
	LDR	%r4, %r31, $68	# build/example.ml#1377:12->1377:25
	LDR	%r3, %r31, $72	# build/example.ml#1377:12->1377:25
	LDR	%r2, %r31, $76	# build/example.ml#1377:12->1377:25
	LDR	%r1, %r31, $80	# build/example.ml#1377:12->1377:25
	FLDR	%fr6, %r31, $84	# build/example.ml#1377:12->1377:25
	FLDR	%fr5, %r31, $88	# build/example.ml#1377:12->1377:25
	MVI	%r6, $0	# build/example.ml#1377:8->1394:15
	CEQ	%r5, %r6	# build/example.ml#1377:8->1394:15
	JZ	$if_eq.11637	# build/example.ml#1377:8->1394:15
	MVI	%r28, $min_caml_tmin	# build/example.ml#1378:17->1378:21
	MVI	%r6, $0	# build/example.ml#1378:23->1378:24
	FLDD	%fr8, %r28, $4, %r6	# build/example.ml#1284:17->1284:25
	SDR	%r6, %r31, $92	# build/example.ml#1378:7->1378:25
	SDR	%r5, %r31, $96	# build/example.ml#1378:7->1378:25
	SDR	%r4, %r31, $100	# build/example.ml#1378:7->1378:25
	SDR	%r3, %r31, $104	# build/example.ml#1378:7->1378:25
	SDR	%r2, %r31, $108	# build/example.ml#1378:7->1378:25
	SDR	%r1, %r31, $112	# build/example.ml#1378:7->1378:25
	FSDR	%fr6, %r31, $116	# build/example.ml#1378:7->1378:25
	FSDR	%fr5, %r31, $120	# build/example.ml#1378:7->1378:25
	FMV	%fr1, %fr8	# build/example.ml#1378:7->1378:25
	FMV	%fr0, %fr9	# build/example.ml#1378:7->1378:25
	ADDI	%r31, %r31, $124	# build/example.ml#1378:7->1378:25
	ADDI	%r31, %r31, $4	# build/example.ml#1378:7->1378:25
	SIP	# build/example.ml#1378:7->1378:25
	J	$min_caml_fless	# build/example.ml#1378:7->1378:25
	ADDI	%r31, %r31, $-124	# build/example.ml#1378:7->1378:25
	MV	%r5, %r0	# build/example.ml#1378:7->1378:25
	LDR	%r6, %r31, $92	# build/example.ml#1378:7->1378:25
	LDR	%r5, %r31, $96	# build/example.ml#1378:7->1378:25
	LDR	%r4, %r31, $100	# build/example.ml#1378:7->1378:25
	LDR	%r3, %r31, $104	# build/example.ml#1378:7->1378:25
	LDR	%r2, %r31, $108	# build/example.ml#1378:7->1378:25
	LDR	%r1, %r31, $112	# build/example.ml#1378:7->1378:25
	FLDR	%fr6, %r31, $116	# build/example.ml#1378:7->1378:25
	FLDR	%fr5, %r31, $120	# build/example.ml#1378:7->1378:25
	MVI	%r6, $0	# build/example.ml#1378:3->1393:10
	CEQ	%r5, %r6	# build/example.ml#1378:3->1393:10
	JZ	$if_eq.11639	# build/example.ml#1378:3->1393:10
	FLDA	%fr8, $l.7810	# build/example.ml#1380:21->1380:25
	FADD	%fr9, %fr9, %fr8	# build/example.ml#1380:14->1380:25
	MVI	%r6, $0	# build/example.ml#1381:20->1381:21
	FLDD	%fr8, %r8, $4, %r6	# build/example.ml#874:27->874:32
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#1381:15->1381:27
	MVI	%r5, $min_caml_startp_fast	# build/example.ml#1381:31->1381:42
	MVI	%r6, $0	# build/example.ml#1381:44->1381:45
	FLDD	%fr8, %r5, $4, %r6	# build/example.ml#71:3->71:22
	FADD	%fr7, %fr7, %fr8	# build/example.ml#1381:15->1381:46
	MVI	%r6, $1	# build/example.ml#1382:20->1382:21
	FLDD	%fr8, %r8, $4, %r6	# build/example.ml#874:27->874:32
	FMUL	%fr6, %fr8, %fr9	# build/example.ml#1382:15->1382:27
	MVI	%r6, $1	# build/example.ml#1382:44->1382:45
	FLDD	%fr8, %r5, $4, %r6	# build/example.ml#71:3->71:22
	FADD	%fr8, %fr6, %fr8	# build/example.ml#1382:15->1382:46
	MVI	%r6, $2	# build/example.ml#1383:20->1383:21
	FLDD	%fr6, %r8, $4, %r6	# build/example.ml#874:27->874:32
	FMUL	%fr5, %fr6, %fr9	# build/example.ml#1383:15->1383:27
	MVI	%r8, $2	# build/example.ml#1383:44->1383:45
	FLDD	%fr6, %r5, $4, %r8	# build/example.ml#71:3->71:22
	FADD	%fr6, %fr5, %fr6	# build/example.ml#1383:15->1383:46
	MVI	%r8, $0	# build/example.ml#1384:26->1384:27
	SDR	%r6, %r31, $124	# build/example.ml#1384:9->1384:46
	SDR	%r5, %r31, $128	# build/example.ml#1384:9->1384:46
	SDR	%r4, %r31, $132	# build/example.ml#1384:9->1384:46
	SDR	%r3, %r31, $136	# build/example.ml#1384:9->1384:46
	SDR	%r2, %r31, $140	# build/example.ml#1384:9->1384:46
	SDR	%r1, %r31, $144	# build/example.ml#1384:9->1384:46
	FSDR	%fr6, %r31, $148	# build/example.ml#1384:9->1384:46
	FSDR	%fr5, %r31, $152	# build/example.ml#1384:9->1384:46
	MV	%r1, %r8	# build/example.ml#1384:9->1384:46
	FMV	%fr2, %fr6	# build/example.ml#1384:9->1384:46
	FMV	%fr1, %fr8	# build/example.ml#1384:9->1384:46
	FMV	%fr0, %fr7	# build/example.ml#1384:9->1384:46
	ADDI	%r31, %r31, $156	# build/example.ml#1384:9->1384:46
	ADDI	%r31, %r31, $4	# build/example.ml#1384:9->1384:46
	SIP	# build/example.ml#1384:9->1384:46
	J	$check_all_inside.2836	# build/example.ml#1384:9->1384:46
	ADDI	%r31, %r31, $-156	# build/example.ml#1384:9->1384:46
	MV	%r6, %r0	# build/example.ml#1384:9->1384:46
	LDR	%r6, %r31, $124	# build/example.ml#1384:9->1384:46
	LDR	%r5, %r31, $128	# build/example.ml#1384:9->1384:46
	LDR	%r4, %r31, $132	# build/example.ml#1384:9->1384:46
	LDR	%r3, %r31, $136	# build/example.ml#1384:9->1384:46
	LDR	%r2, %r31, $140	# build/example.ml#1384:9->1384:46
	LDR	%r1, %r31, $144	# build/example.ml#1384:9->1384:46
	FLDR	%fr6, %r31, $148	# build/example.ml#1384:9->1384:46
	FLDR	%fr5, %r31, $152	# build/example.ml#1384:9->1384:46
	MVI	%r8, $0	# build/example.ml#1384:6->1391:13
	CEQ	%r6, %r8	# build/example.ml#1384:6->1391:13
	JZ	$if_eq.11641	# build/example.ml#1384:6->1391:13
	MVI	%r8, $0	# build/example.ml#1386:9->1386:10
	FSDD	%fr9, %r28, $4, %r8	# build/example.ml#1386:3->1386:16
	MVI	%r8, $min_caml_intersection_point	# build/example.ml#1387:10->1387:28
	SDR	%r1, %r31, $156	# build/example.ml#1387:3->1387:37
	MV	%r1, %r8	# build/example.ml#1387:3->1387:37
	FMV	%fr2, %fr6	# build/example.ml#1387:3->1387:37
	FMV	%fr1, %fr8	# build/example.ml#1387:3->1387:37
	FMV	%fr0, %fr7	# build/example.ml#1387:3->1387:37
	ADDI	%r31, %r31, $160	# build/example.ml#1387:3->1387:37
	ADDI	%r31, %r31, $4	# build/example.ml#1387:3->1387:37
	SIP	# build/example.ml#1387:3->1387:37
	J	$vecset.2573	# build/example.ml#1387:3->1387:37
	ADDI	%r31, %r31, $-160	# build/example.ml#1387:3->1387:37
	LDR	%r1, %r31, $156	# build/example.ml#1387:3->1387:37
	MVI	%r6, $min_caml_intersected_object_id	# build/example.ml#1388:3->1388:24
	MVI	%r8, $0	# build/example.ml#1388:26->1388:27
	SDD	%r7, %r6, $4, %r8	# build/example.ml#1388:3->1388:36
	MVI	%r7, $min_caml_intsec_rectside	# build/example.ml#1389:3->1389:18
	MVI	%r8, $0	# build/example.ml#1389:20->1389:21
	SDD	%r9, %r7, $4, %r8	# build/example.ml#1389:3->1389:28
	J	$if_eq_cont.11642	# build/example.ml#1384:6->1391:13
if_eq.11641:
if_eq_cont.11642:
	J	$if_eq_cont.11640	# build/example.ml#1378:3->1393:10
if_eq.11639:
if_eq_cont.11640:
	J	$if_eq_cont.11638	# build/example.ml#1377:8->1394:15
if_eq.11637:
if_eq_cont.11638:
	MVI	%r9, $1	# build/example.ml#1395:44->1395:45
	ADD	%r9, %r1, %r9	# build/example.ml#1395:33->1395:45
	SDR	%r6, %r31, $160	# build/example.ml#1395:8->1395:63
	SDR	%r5, %r31, $164	# build/example.ml#1395:8->1395:63
	SDR	%r4, %r31, $168	# build/example.ml#1395:8->1395:63
	SDR	%r3, %r31, $172	# build/example.ml#1395:8->1395:63
	SDR	%r2, %r31, $176	# build/example.ml#1395:8->1395:63
	SDR	%r1, %r31, $180	# build/example.ml#1395:8->1395:63
	FSDR	%fr6, %r31, $184	# build/example.ml#1395:8->1395:63
	FSDR	%fr5, %r31, $188	# build/example.ml#1395:8->1395:63
	MV	%r1, %r9	# build/example.ml#1395:8->1395:63
	ADDI	%r31, %r31, $192	# build/example.ml#1395:8->1395:63
	ADDI	%r31, %r31, $4	# build/example.ml#1395:8->1395:63
	SIP	# build/example.ml#1395:8->1395:63
	J	$solve_each_element_fast.2865	# build/example.ml#1395:8->1395:63
	ADDI	%r31, %r31, $-192	# build/example.ml#1395:8->1395:63
	LDR	%r6, %r31, $160	# build/example.ml#1395:8->1395:63
	LDR	%r5, %r31, $164	# build/example.ml#1395:8->1395:63
	LDR	%r4, %r31, $168	# build/example.ml#1395:8->1395:63
	LDR	%r3, %r31, $172	# build/example.ml#1395:8->1395:63
	LDR	%r2, %r31, $176	# build/example.ml#1395:8->1395:63
	LDR	%r1, %r31, $180	# build/example.ml#1395:8->1395:63
	FLDR	%fr6, %r31, $184	# build/example.ml#1395:8->1395:63
	FLDR	%fr5, %r31, $188	# build/example.ml#1395:8->1395:63
	J	$if_eq_cont.11636	# build/example.ml#1371:5->1401:15
if_eq.11635:
	MVI	%r9, $min_caml_objects	# build/example.ml#1399:23->1399:30
	LDD	%r9, %r9, $4, %r7	# build/example.ml#637:7->637:25
	LDR	%r9, %r9, $24	# build/example.ml#1399:11->1399:38
	MVI	%r8, $0	# build/example.ml#1399:8->1401:15
	CEQ	%r9, %r8	# build/example.ml#1399:8->1401:15
	JZ	$if_eq.11643	# build/example.ml#1399:8->1401:15
	MVI	%r9, $1	# build/example.ml#1400:39->1400:40
	ADD	%r9, %r1, %r9	# build/example.ml#1400:28->1400:40
	SDR	%r6, %r31, $192	# build/example.ml#1400:3->1400:58
	SDR	%r5, %r31, $196	# build/example.ml#1400:3->1400:58
	SDR	%r4, %r31, $200	# build/example.ml#1400:3->1400:58
	SDR	%r3, %r31, $204	# build/example.ml#1400:3->1400:58
	SDR	%r2, %r31, $208	# build/example.ml#1400:3->1400:58
	SDR	%r1, %r31, $212	# build/example.ml#1400:3->1400:58
	FSDR	%fr6, %r31, $216	# build/example.ml#1400:3->1400:58
	FSDR	%fr5, %r31, $220	# build/example.ml#1400:3->1400:58
	MV	%r1, %r9	# build/example.ml#1400:3->1400:58
	ADDI	%r31, %r31, $224	# build/example.ml#1400:3->1400:58
	ADDI	%r31, %r31, $4	# build/example.ml#1400:3->1400:58
	SIP	# build/example.ml#1400:3->1400:58
	J	$solve_each_element_fast.2865	# build/example.ml#1400:3->1400:58
	ADDI	%r31, %r31, $-224	# build/example.ml#1400:3->1400:58
	LDR	%r6, %r31, $192	# build/example.ml#1400:3->1400:58
	LDR	%r5, %r31, $196	# build/example.ml#1400:3->1400:58
	LDR	%r4, %r31, $200	# build/example.ml#1400:3->1400:58
	LDR	%r3, %r31, $204	# build/example.ml#1400:3->1400:58
	LDR	%r2, %r31, $208	# build/example.ml#1400:3->1400:58
	LDR	%r1, %r31, $212	# build/example.ml#1400:3->1400:58
	FLDR	%fr6, %r31, $216	# build/example.ml#1400:3->1400:58
	FLDR	%fr5, %r31, $220	# build/example.ml#1400:3->1400:58
	J	$if_eq_cont.11644	# build/example.ml#1399:8->1401:15
if_eq.11643:
if_eq_cont.11644:
if_eq_cont.11636:
	J	$if_eq_cont.11634	# build/example.ml#1368:3->1402:5
if_eq.11633:
if_eq_cont.11634:
	LDR	%r9, %r31, $0	# build/example.ml#445:3->446:8
	LDR	%r8, %r31, $4	# build/example.ml#445:3->446:8
	LDR	%r7, %r31, $8	# build/example.ml#445:3->446:8
	LDR	%r28, %r31, $12	# build/example.ml#445:3->446:8
	FLDR	%fr9, %r31, $16	# build/example.ml#445:3->446:8
	FLDR	%fr8, %r31, $20	# build/example.ml#445:3->446:8
	FLDR	%fr7, %r31, $24	# build/example.ml#445:3->446:8
	LINK	# build/example.ml#445:3->446:8
judge_intersection.2863:
	SDR	%r9, %r31, $0	# build/example.ml#1351:3->1351:7
	SDR	%r8, %r31, $4	# build/example.ml#1351:3->1351:7
	SDR	%r7, %r31, $8	# build/example.ml#1351:3->1351:7
	FSDR	%fr9, %r31, $12	# build/example.ml#1351:3->1351:7
	FSDR	%fr8, %r31, $16	# build/example.ml#1351:3->1351:7
	MVI	%r6, $min_caml_tmin	# build/example.ml#1351:3->1351:7
	MVI	%r9, $0	# build/example.ml#1351:9->1351:10
	FLDA	%fr9, $l.7807	# build/example.ml#1351:16->1351:28
	FSDD	%fr9, %r6, $4, %r9	# build/example.ml#1351:3->1351:29
	MVI	%r8, $0	# build/example.ml#1352:19->1352:20
	MVI	%r7, $min_caml_or_net	# build/example.ml#1352:22->1352:28
	MVI	%r9, $0	# build/example.ml#1352:30->1352:31
	LDD	%r9, %r7, $4, %r9	# build/example.ml#714:4->714:35
	SDR	%r6, %r31, $20	# build/example.ml#1352:3->1352:40
	SDR	%r1, %r31, $24	# build/example.ml#1352:3->1352:40
	MV	%r3, %r1	# build/example.ml#1352:3->1352:40
	MV	%r2, %r9	# build/example.ml#1352:3->1352:40
	MV	%r1, %r8	# build/example.ml#1352:3->1352:40
	ADDI	%r31, %r31, $28	# build/example.ml#1352:3->1352:40
	ADDI	%r31, %r31, $4	# build/example.ml#1352:3->1352:40
	SIP	# build/example.ml#1352:3->1352:40
	J	$trace_or_matrix.2859	# build/example.ml#1352:3->1352:40
	ADDI	%r31, %r31, $-28	# build/example.ml#1352:3->1352:40
	LDR	%r6, %r31, $20	# build/example.ml#1352:3->1352:40
	LDR	%r1, %r31, $24	# build/example.ml#1352:3->1352:40
	MVI	%r9, $0	# build/example.ml#1353:17->1353:18
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#1284:17->1284:25
	FLDA	%fr8, $l.7808	# build/example.ml#1355:14->1355:18
	SDR	%r6, %r31, $28	# build/example.ml#1355:7->1355:21
	SDR	%r1, %r31, $32	# build/example.ml#1355:7->1355:21
	FMV	%fr1, %fr9	# build/example.ml#1355:7->1355:21
	FMV	%fr0, %fr8	# build/example.ml#1355:7->1355:21
	ADDI	%r31, %r31, $36	# build/example.ml#1355:7->1355:21
	ADDI	%r31, %r31, $4	# build/example.ml#1355:7->1355:21
	SIP	# build/example.ml#1355:7->1355:21
	J	$min_caml_fless	# build/example.ml#1355:7->1355:21
	ADDI	%r31, %r31, $-36	# build/example.ml#1355:7->1355:21
	MV	%r8, %r0	# build/example.ml#1355:7->1355:21
	LDR	%r6, %r31, $28	# build/example.ml#1355:7->1355:21
	LDR	%r1, %r31, $32	# build/example.ml#1355:7->1355:21
	MVI	%r9, $0	# build/example.ml#1355:3->1357:13
	CEQ	%r8, %r9	# build/example.ml#1355:3->1357:13
	JZ	$if_eq.11645	# build/example.ml#1355:3->1357:13
	FLDA	%fr8, $l.7809	# build/example.ml#1356:14->1356:25
	SDR	%r6, %r31, $36	# build/example.ml#1356:6->1356:25
	SDR	%r1, %r31, $40	# build/example.ml#1356:6->1356:25
	FMV	%fr1, %fr8	# build/example.ml#1356:6->1356:25
	FMV	%fr0, %fr9	# build/example.ml#1356:6->1356:25
	ADDI	%r31, %r31, $44	# build/example.ml#1356:6->1356:25
	ADDI	%r31, %r31, $4	# build/example.ml#1356:6->1356:25
	SIP	# build/example.ml#1356:6->1356:25
	J	$min_caml_fless	# build/example.ml#1356:6->1356:25
	ADDI	%r31, %r31, $-44	# build/example.ml#1356:6->1356:25
	LDR	%r6, %r31, $36	# build/example.ml#1356:6->1356:25
	LDR	%r1, %r31, $40	# build/example.ml#1356:6->1356:25
	J	$if_eq_cont.11646	# build/example.ml#1355:3->1357:13
if_eq.11645:
	MVI	%r0, $0	# build/example.ml#1357:8->1357:13
if_eq_cont.11646:
	LDR	%r9, %r31, $0	# build/example.ml#1351:3->1351:7
	LDR	%r8, %r31, $4	# build/example.ml#1351:3->1351:7
	LDR	%r7, %r31, $8	# build/example.ml#1351:3->1351:7
	FLDR	%fr9, %r31, $12	# build/example.ml#1351:3->1351:7
	FLDR	%fr8, %r31, $16	# build/example.ml#1351:3->1351:7
	LINK	# build/example.ml#1351:3->1351:7
trace_or_matrix.2859:
	SDR	%r9, %r31, $0	# build/example.ml#1324:14->1324:30
	SDR	%r8, %r31, $4	# build/example.ml#1324:14->1324:30
	SDR	%r7, %r31, $8	# build/example.ml#1324:14->1324:30
	FSDR	%fr9, %r31, $12	# build/example.ml#1324:14->1324:30
	FSDR	%fr8, %r31, $16	# build/example.ml#1324:14->1324:30
	LDD	%r8, %r2, $4, %r1	# build/example.ml#1324:14->1324:30
	MVI	%r9, $0	# build/example.ml#1325:31->1325:32
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1325:25->1325:33
	MVI	%r7, $-1	# build/example.ml#1326:24->1326:26
	CEQ	%r9, %r7	# build/example.ml#1326:3->1343:4
	JZ	$if_eq.11647	# build/example.ml#1326:3->1343:4
	MVI	%r7, $99	# build/example.ml#1329:26->1329:28
	CEQ	%r9, %r7	# build/example.ml#1329:5->1341:8
	JZ	$if_eq.11649	# build/example.ml#1329:5->1341:8
	MVI	%r7, $min_caml_startp	# build/example.ml#1334:46->1334:52
	SDR	%r3, %r31, $20	# build/example.ml#1334:16->1334:52
	SDR	%r2, %r31, $24	# build/example.ml#1334:16->1334:52
	SDR	%r1, %r31, $28	# build/example.ml#1334:16->1334:52
	MV	%r2, %r3	# build/example.ml#1334:16->1334:52
	MV	%r1, %r9	# build/example.ml#1334:16->1334:52
	MV	%r3, %r7	# build/example.ml#1334:16->1334:52
	ADDI	%r31, %r31, $32	# build/example.ml#1334:16->1334:52
	ADDI	%r31, %r31, $4	# build/example.ml#1334:16->1334:52
	SIP	# build/example.ml#1334:16->1334:52
	J	$solver.2753	# build/example.ml#1334:16->1334:52
	ADDI	%r31, %r31, $-32	# build/example.ml#1334:16->1334:52
	MV	%r9, %r0	# build/example.ml#1334:16->1334:52
	LDR	%r3, %r31, $20	# build/example.ml#1334:16->1334:52
	LDR	%r2, %r31, $24	# build/example.ml#1334:16->1334:52
	LDR	%r1, %r31, $28	# build/example.ml#1334:16->1334:52
	MVI	%r7, $0	# build/example.ml#1335:16->1335:17
	CEQ	%r9, %r7	# build/example.ml#1335:8->1340:15
	JZ	$if_eq.11651	# build/example.ml#1335:8->1340:15
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#1336:12->1336:23
	MVI	%r9, $0	# build/example.ml#1336:25->1336:26
	FLDD	%fr9, %r7, $4, %r9	# build/example.ml#742:8->742:29
	MVI	%r7, $min_caml_tmin	# build/example.ml#1337:15->1337:19
	MVI	%r9, $0	# build/example.ml#1337:21->1337:22
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#1284:17->1284:25
	SDR	%r3, %r31, $32	# build/example.ml#1337:6->1337:23
	SDR	%r2, %r31, $36	# build/example.ml#1337:6->1337:23
	SDR	%r1, %r31, $40	# build/example.ml#1337:6->1337:23
	FMV	%fr1, %fr8	# build/example.ml#1337:6->1337:23
	FMV	%fr0, %fr9	# build/example.ml#1337:6->1337:23
	ADDI	%r31, %r31, $44	# build/example.ml#1337:6->1337:23
	ADDI	%r31, %r31, $4	# build/example.ml#1337:6->1337:23
	SIP	# build/example.ml#1337:6->1337:23
	J	$min_caml_fless	# build/example.ml#1337:6->1337:23
	ADDI	%r31, %r31, $-44	# build/example.ml#1337:6->1337:23
	MV	%r7, %r0	# build/example.ml#1337:6->1337:23
	LDR	%r3, %r31, $32	# build/example.ml#1337:6->1337:23
	LDR	%r2, %r31, $36	# build/example.ml#1337:6->1337:23
	LDR	%r1, %r31, $40	# build/example.ml#1337:6->1337:23
	MVI	%r9, $0	# build/example.ml#1337:3->1339:10
	CEQ	%r7, %r9	# build/example.ml#1337:3->1339:10
	JZ	$if_eq.11653	# build/example.ml#1337:3->1339:10
	MVI	%r9, $1	# build/example.ml#1338:30->1338:31
	SDR	%r3, %r31, $44	# build/example.ml#1338:9->1338:43
	SDR	%r2, %r31, $48	# build/example.ml#1338:9->1338:43
	SDR	%r1, %r31, $52	# build/example.ml#1338:9->1338:43
	MV	%r2, %r8	# build/example.ml#1338:9->1338:43
	MV	%r1, %r9	# build/example.ml#1338:9->1338:43
	ADDI	%r31, %r31, $56	# build/example.ml#1338:9->1338:43
	ADDI	%r31, %r31, $4	# build/example.ml#1338:9->1338:43
	SIP	# build/example.ml#1338:9->1338:43
	J	$solve_one_or_network.2855	# build/example.ml#1338:9->1338:43
	ADDI	%r31, %r31, $-56	# build/example.ml#1338:9->1338:43
	LDR	%r3, %r31, $44	# build/example.ml#1338:9->1338:43
	LDR	%r2, %r31, $48	# build/example.ml#1338:9->1338:43
	LDR	%r1, %r31, $52	# build/example.ml#1338:9->1338:43
	J	$if_eq_cont.11654	# build/example.ml#1337:3->1339:10
if_eq.11653:
if_eq_cont.11654:
	J	$if_eq_cont.11652	# build/example.ml#1335:8->1340:15
if_eq.11651:
if_eq_cont.11652:
	J	$if_eq_cont.11650	# build/example.ml#1329:5->1341:8
if_eq.11649:
	MVI	%r9, $1	# build/example.ml#1330:32->1330:33
	SDR	%r3, %r31, $56	# build/example.ml#1330:11->1330:45
	SDR	%r2, %r31, $60	# build/example.ml#1330:11->1330:45
	SDR	%r1, %r31, $64	# build/example.ml#1330:11->1330:45
	MV	%r2, %r8	# build/example.ml#1330:11->1330:45
	MV	%r1, %r9	# build/example.ml#1330:11->1330:45
	ADDI	%r31, %r31, $68	# build/example.ml#1330:11->1330:45
	ADDI	%r31, %r31, $4	# build/example.ml#1330:11->1330:45
	SIP	# build/example.ml#1330:11->1330:45
	J	$solve_one_or_network.2855	# build/example.ml#1330:11->1330:45
	ADDI	%r31, %r31, $-68	# build/example.ml#1330:11->1330:45
	LDR	%r3, %r31, $56	# build/example.ml#1330:11->1330:45
	LDR	%r2, %r31, $60	# build/example.ml#1330:11->1330:45
	LDR	%r1, %r31, $64	# build/example.ml#1330:11->1330:45
if_eq_cont.11650:
	MVI	%r9, $1	# build/example.ml#1342:28->1342:29
	ADD	%r9, %r1, %r9	# build/example.ml#1342:22->1342:29
	SDR	%r3, %r31, $68	# build/example.ml#1342:5->1342:48
	SDR	%r2, %r31, $72	# build/example.ml#1342:5->1342:48
	SDR	%r1, %r31, $76	# build/example.ml#1342:5->1342:48
	MV	%r1, %r9	# build/example.ml#1342:5->1342:48
	ADDI	%r31, %r31, $80	# build/example.ml#1342:5->1342:48
	ADDI	%r31, %r31, $4	# build/example.ml#1342:5->1342:48
	SIP	# build/example.ml#1342:5->1342:48
	J	$trace_or_matrix.2859	# build/example.ml#1342:5->1342:48
	ADDI	%r31, %r31, $-80	# build/example.ml#1342:5->1342:48
	LDR	%r3, %r31, $68	# build/example.ml#1342:5->1342:48
	LDR	%r2, %r31, $72	# build/example.ml#1342:5->1342:48
	LDR	%r1, %r31, $76	# build/example.ml#1342:5->1342:48
	J	$if_eq_cont.11648	# build/example.ml#1326:3->1343:4
if_eq.11647:
if_eq_cont.11648:
	LDR	%r9, %r31, $0	# build/example.ml#1324:14->1324:30
	LDR	%r8, %r31, $4	# build/example.ml#1324:14->1324:30
	LDR	%r7, %r31, $8	# build/example.ml#1324:14->1324:30
	FLDR	%fr9, %r31, $12	# build/example.ml#1324:14->1324:30
	FLDR	%fr8, %r31, $16	# build/example.ml#1324:14->1324:30
	LINK	# build/example.ml#1324:14->1324:30
solve_one_or_network.2855:
	SDR	%r9, %r31, $0	# build/example.ml#1314:14->1314:28
	SDR	%r8, %r31, $4	# build/example.ml#1314:14->1314:28
	LDD	%r9, %r2, $4, %r1	# build/example.ml#1314:14->1314:28
	MVI	%r8, $-1	# build/example.ml#1315:14->1315:16
	CEQ	%r9, %r8	# build/example.ml#1315:3->1319:13
	JZ	$if_eq.11655	# build/example.ml#1315:3->1319:13
	MVI	%r8, $min_caml_and_net	# build/example.ml#1316:21->1316:28
	LDD	%r9, %r8, $4, %r9	# build/example.ml#703:5->703:23
	MVI	%r8, $0	# build/example.ml#1317:24->1317:25
	SDR	%r3, %r31, $8	# build/example.ml#1317:5->1317:42
	SDR	%r2, %r31, $12	# build/example.ml#1317:5->1317:42
	SDR	%r1, %r31, $16	# build/example.ml#1317:5->1317:42
	MV	%r2, %r9	# build/example.ml#1317:5->1317:42
	MV	%r1, %r8	# build/example.ml#1317:5->1317:42
	ADDI	%r31, %r31, $20	# build/example.ml#1317:5->1317:42
	ADDI	%r31, %r31, $4	# build/example.ml#1317:5->1317:42
	SIP	# build/example.ml#1317:5->1317:42
	J	$solve_each_element.2851	# build/example.ml#1317:5->1317:42
	ADDI	%r31, %r31, $-20	# build/example.ml#1317:5->1317:42
	LDR	%r3, %r31, $8	# build/example.ml#1317:5->1317:42
	LDR	%r2, %r31, $12	# build/example.ml#1317:5->1317:42
	LDR	%r1, %r31, $16	# build/example.ml#1317:5->1317:42
	MVI	%r9, $1	# build/example.ml#1318:33->1318:34
	ADD	%r9, %r1, %r9	# build/example.ml#1318:27->1318:34
	SDR	%r3, %r31, $20	# build/example.ml#1318:5->1318:51
	SDR	%r2, %r31, $24	# build/example.ml#1318:5->1318:51
	SDR	%r1, %r31, $28	# build/example.ml#1318:5->1318:51
	MV	%r1, %r9	# build/example.ml#1318:5->1318:51
	ADDI	%r31, %r31, $32	# build/example.ml#1318:5->1318:51
	ADDI	%r31, %r31, $4	# build/example.ml#1318:5->1318:51
	SIP	# build/example.ml#1318:5->1318:51
	J	$solve_one_or_network.2855	# build/example.ml#1318:5->1318:51
	ADDI	%r31, %r31, $-32	# build/example.ml#1318:5->1318:51
	LDR	%r3, %r31, $20	# build/example.ml#1318:5->1318:51
	LDR	%r2, %r31, $24	# build/example.ml#1318:5->1318:51
	LDR	%r1, %r31, $28	# build/example.ml#1318:5->1318:51
	J	$if_eq_cont.11656	# build/example.ml#1315:3->1319:13
if_eq.11655:
if_eq_cont.11656:
	LDR	%r9, %r31, $0	# build/example.ml#1314:14->1314:28
	LDR	%r8, %r31, $4	# build/example.ml#1314:14->1314:28
	LINK	# build/example.ml#1314:14->1314:28
solve_each_element.2851:
	SDR	%r9, %r31, $0	# build/example.ml#1273:14->1273:34
	SDR	%r8, %r31, $4	# build/example.ml#1273:14->1273:34
	SDR	%r7, %r31, $8	# build/example.ml#1273:14->1273:34
	FSDR	%fr9, %r31, $12	# build/example.ml#1273:14->1273:34
	FSDR	%fr8, %r31, $16	# build/example.ml#1273:14->1273:34
	FSDR	%fr7, %r31, $20	# build/example.ml#1273:14->1273:34
	LDD	%r8, %r2, $4, %r1	# build/example.ml#1273:14->1273:34
	MVI	%r9, $-1	# build/example.ml#1274:13->1274:15
	CEQ	%r8, %r9	# build/example.ml#1274:3->1309:5
	JZ	$if_eq.11657	# build/example.ml#1274:3->1309:5
	MVI	%r4, $min_caml_startp	# build/example.ml#1276:33->1276:39
	SDR	%r6, %r31, $24	# build/example.ml#1276:14->1276:39
	SDR	%r5, %r31, $28	# build/example.ml#1276:14->1276:39
	SDR	%r4, %r31, $32	# build/example.ml#1276:14->1276:39
	SDR	%r3, %r31, $36	# build/example.ml#1276:14->1276:39
	SDR	%r2, %r31, $40	# build/example.ml#1276:14->1276:39
	SDR	%r1, %r31, $44	# build/example.ml#1276:14->1276:39
	FSDR	%fr6, %r31, $48	# build/example.ml#1276:14->1276:39
	FSDR	%fr5, %r31, $52	# build/example.ml#1276:14->1276:39
	MV	%r2, %r3	# build/example.ml#1276:14->1276:39
	MV	%r1, %r8	# build/example.ml#1276:14->1276:39
	MV	%r3, %r4	# build/example.ml#1276:14->1276:39
	ADDI	%r31, %r31, $56	# build/example.ml#1276:14->1276:39
	ADDI	%r31, %r31, $4	# build/example.ml#1276:14->1276:39
	SIP	# build/example.ml#1276:14->1276:39
	J	$solver.2753	# build/example.ml#1276:14->1276:39
	ADDI	%r31, %r31, $-56	# build/example.ml#1276:14->1276:39
	MV	%r9, %r0	# build/example.ml#1276:14->1276:39
	LDR	%r6, %r31, $24	# build/example.ml#1276:14->1276:39
	LDR	%r5, %r31, $28	# build/example.ml#1276:14->1276:39
	LDR	%r4, %r31, $32	# build/example.ml#1276:14->1276:39
	LDR	%r3, %r31, $36	# build/example.ml#1276:14->1276:39
	LDR	%r2, %r31, $40	# build/example.ml#1276:14->1276:39
	LDR	%r1, %r31, $44	# build/example.ml#1276:14->1276:39
	FLDR	%fr6, %r31, $48	# build/example.ml#1276:14->1276:39
	FLDR	%fr5, %r31, $52	# build/example.ml#1276:14->1276:39
	MVI	%r7, $0	# build/example.ml#1277:14->1277:15
	CEQ	%r9, %r7	# build/example.ml#1277:5->1307:14
	JZ	$if_eq.11659	# build/example.ml#1277:5->1307:14
	MVI	%r6, $min_caml_solver_dist	# build/example.ml#1281:18->1281:29
	MVI	%r7, $0	# build/example.ml#1281:31->1281:32
	FLDD	%fr9, %r6, $4, %r7	# build/example.ml#742:8->742:29
	FLDA	%fr8, $l.7787	# build/example.ml#1283:18->1283:21
	SDR	%r6, %r31, $56	# build/example.ml#1283:12->1283:25
	SDR	%r5, %r31, $60	# build/example.ml#1283:12->1283:25
	SDR	%r4, %r31, $64	# build/example.ml#1283:12->1283:25
	SDR	%r3, %r31, $68	# build/example.ml#1283:12->1283:25
	SDR	%r2, %r31, $72	# build/example.ml#1283:12->1283:25
	SDR	%r1, %r31, $76	# build/example.ml#1283:12->1283:25
	FSDR	%fr6, %r31, $80	# build/example.ml#1283:12->1283:25
	FSDR	%fr5, %r31, $84	# build/example.ml#1283:12->1283:25
	FMV	%fr1, %fr9	# build/example.ml#1283:12->1283:25
	FMV	%fr0, %fr8	# build/example.ml#1283:12->1283:25
	ADDI	%r31, %r31, $88	# build/example.ml#1283:12->1283:25
	ADDI	%r31, %r31, $4	# build/example.ml#1283:12->1283:25
	SIP	# build/example.ml#1283:12->1283:25
	J	$min_caml_fless	# build/example.ml#1283:12->1283:25
	ADDI	%r31, %r31, $-88	# build/example.ml#1283:12->1283:25
	MV	%r6, %r0	# build/example.ml#1283:12->1283:25
	LDR	%r6, %r31, $56	# build/example.ml#1283:12->1283:25
	LDR	%r5, %r31, $60	# build/example.ml#1283:12->1283:25
	LDR	%r4, %r31, $64	# build/example.ml#1283:12->1283:25
	LDR	%r3, %r31, $68	# build/example.ml#1283:12->1283:25
	LDR	%r2, %r31, $72	# build/example.ml#1283:12->1283:25
	LDR	%r1, %r31, $76	# build/example.ml#1283:12->1283:25
	FLDR	%fr6, %r31, $80	# build/example.ml#1283:12->1283:25
	FLDR	%fr5, %r31, $84	# build/example.ml#1283:12->1283:25
	MVI	%r7, $0	# build/example.ml#1283:8->1300:15
	CEQ	%r6, %r7	# build/example.ml#1283:8->1300:15
	JZ	$if_eq.11661	# build/example.ml#1283:8->1300:15
	MVI	%r5, $min_caml_tmin	# build/example.ml#1284:17->1284:21
	MVI	%r7, $0	# build/example.ml#1284:23->1284:24
	FLDD	%fr8, %r5, $4, %r7	# build/example.ml#1284:17->1284:25
	SDR	%r6, %r31, $88	# build/example.ml#1284:7->1284:25
	SDR	%r5, %r31, $92	# build/example.ml#1284:7->1284:25
	SDR	%r4, %r31, $96	# build/example.ml#1284:7->1284:25
	SDR	%r3, %r31, $100	# build/example.ml#1284:7->1284:25
	SDR	%r2, %r31, $104	# build/example.ml#1284:7->1284:25
	SDR	%r1, %r31, $108	# build/example.ml#1284:7->1284:25
	FSDR	%fr6, %r31, $112	# build/example.ml#1284:7->1284:25
	FSDR	%fr5, %r31, $116	# build/example.ml#1284:7->1284:25
	FMV	%fr1, %fr8	# build/example.ml#1284:7->1284:25
	FMV	%fr0, %fr9	# build/example.ml#1284:7->1284:25
	ADDI	%r31, %r31, $120	# build/example.ml#1284:7->1284:25
	ADDI	%r31, %r31, $4	# build/example.ml#1284:7->1284:25
	SIP	# build/example.ml#1284:7->1284:25
	J	$min_caml_fless	# build/example.ml#1284:7->1284:25
	ADDI	%r31, %r31, $-120	# build/example.ml#1284:7->1284:25
	MV	%r6, %r0	# build/example.ml#1284:7->1284:25
	LDR	%r6, %r31, $88	# build/example.ml#1284:7->1284:25
	LDR	%r5, %r31, $92	# build/example.ml#1284:7->1284:25
	LDR	%r4, %r31, $96	# build/example.ml#1284:7->1284:25
	LDR	%r3, %r31, $100	# build/example.ml#1284:7->1284:25
	LDR	%r2, %r31, $104	# build/example.ml#1284:7->1284:25
	LDR	%r1, %r31, $108	# build/example.ml#1284:7->1284:25
	FLDR	%fr6, %r31, $112	# build/example.ml#1284:7->1284:25
	FLDR	%fr5, %r31, $116	# build/example.ml#1284:7->1284:25
	MVI	%r7, $0	# build/example.ml#1284:3->1299:10
	CEQ	%r6, %r7	# build/example.ml#1284:3->1299:10
	JZ	$if_eq.11663	# build/example.ml#1284:3->1299:10
	FLDA	%fr8, $l.7810	# build/example.ml#1286:21->1286:25
	FADD	%fr9, %fr9, %fr8	# build/example.ml#1286:14->1286:25
	MVI	%r7, $0	# build/example.ml#1287:23->1287:24
	FLDD	%fr8, %r3, $4, %r7	# build/example.ml#735:14->735:25
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#1287:15->1287:30
	MVI	%r7, $0	# build/example.ml#1287:42->1287:43
	FLDD	%fr8, %r4, $4, %r7	# build/example.ml#842:13->842:20
	FADD	%fr7, %fr7, %fr8	# build/example.ml#1287:15->1287:44
	MVI	%r7, $1	# build/example.ml#1288:23->1288:24
	FLDD	%fr8, %r3, $4, %r7	# build/example.ml#735:14->735:25
	FMUL	%fr6, %fr8, %fr9	# build/example.ml#1288:15->1288:30
	MVI	%r7, $1	# build/example.ml#1288:42->1288:43
	FLDD	%fr8, %r4, $4, %r7	# build/example.ml#842:13->842:20
	FADD	%fr8, %fr6, %fr8	# build/example.ml#1288:15->1288:44
	MVI	%r7, $2	# build/example.ml#1289:23->1289:24
	FLDD	%fr6, %r3, $4, %r7	# build/example.ml#735:14->735:25
	FMUL	%fr5, %fr6, %fr9	# build/example.ml#1289:15->1289:30
	MVI	%r7, $2	# build/example.ml#1289:42->1289:43
	FLDD	%fr6, %r4, $4, %r7	# build/example.ml#842:13->842:20
	FADD	%fr6, %fr5, %fr6	# build/example.ml#1289:15->1289:44
	MVI	%r7, $0	# build/example.ml#1290:26->1290:27
	SDR	%r6, %r31, $120	# build/example.ml#1290:9->1290:46
	SDR	%r5, %r31, $124	# build/example.ml#1290:9->1290:46
	SDR	%r4, %r31, $128	# build/example.ml#1290:9->1290:46
	SDR	%r3, %r31, $132	# build/example.ml#1290:9->1290:46
	SDR	%r2, %r31, $136	# build/example.ml#1290:9->1290:46
	SDR	%r1, %r31, $140	# build/example.ml#1290:9->1290:46
	FSDR	%fr6, %r31, $144	# build/example.ml#1290:9->1290:46
	FSDR	%fr5, %r31, $148	# build/example.ml#1290:9->1290:46
	MV	%r1, %r7	# build/example.ml#1290:9->1290:46
	FMV	%fr2, %fr6	# build/example.ml#1290:9->1290:46
	FMV	%fr1, %fr8	# build/example.ml#1290:9->1290:46
	FMV	%fr0, %fr7	# build/example.ml#1290:9->1290:46
	ADDI	%r31, %r31, $152	# build/example.ml#1290:9->1290:46
	ADDI	%r31, %r31, $4	# build/example.ml#1290:9->1290:46
	SIP	# build/example.ml#1290:9->1290:46
	J	$check_all_inside.2836	# build/example.ml#1290:9->1290:46
	ADDI	%r31, %r31, $-152	# build/example.ml#1290:9->1290:46
	MV	%r6, %r0	# build/example.ml#1290:9->1290:46
	LDR	%r6, %r31, $120	# build/example.ml#1290:9->1290:46
	LDR	%r5, %r31, $124	# build/example.ml#1290:9->1290:46
	LDR	%r4, %r31, $128	# build/example.ml#1290:9->1290:46
	LDR	%r3, %r31, $132	# build/example.ml#1290:9->1290:46
	LDR	%r2, %r31, $136	# build/example.ml#1290:9->1290:46
	LDR	%r1, %r31, $140	# build/example.ml#1290:9->1290:46
	FLDR	%fr6, %r31, $144	# build/example.ml#1290:9->1290:46
	FLDR	%fr5, %r31, $148	# build/example.ml#1290:9->1290:46
	MVI	%r7, $0	# build/example.ml#1290:6->1297:13
	CEQ	%r6, %r7	# build/example.ml#1290:6->1297:13
	JZ	$if_eq.11665	# build/example.ml#1290:6->1297:13
	MVI	%r7, $0	# build/example.ml#1292:9->1292:10
	FSDD	%fr9, %r5, $4, %r7	# build/example.ml#1292:3->1292:16
	MVI	%r7, $min_caml_intersection_point	# build/example.ml#1293:10->1293:28
	SDR	%r1, %r31, $152	# build/example.ml#1293:3->1293:37
	MV	%r1, %r7	# build/example.ml#1293:3->1293:37
	FMV	%fr2, %fr6	# build/example.ml#1293:3->1293:37
	FMV	%fr1, %fr8	# build/example.ml#1293:3->1293:37
	FMV	%fr0, %fr7	# build/example.ml#1293:3->1293:37
	ADDI	%r31, %r31, $156	# build/example.ml#1293:3->1293:37
	ADDI	%r31, %r31, $4	# build/example.ml#1293:3->1293:37
	SIP	# build/example.ml#1293:3->1293:37
	J	$vecset.2573	# build/example.ml#1293:3->1293:37
	ADDI	%r31, %r31, $-156	# build/example.ml#1293:3->1293:37
	LDR	%r1, %r31, $152	# build/example.ml#1293:3->1293:37
	MVI	%r6, $min_caml_intersected_object_id	# build/example.ml#1294:3->1294:24
	MVI	%r7, $0	# build/example.ml#1294:26->1294:27
	SDD	%r8, %r6, $4, %r7	# build/example.ml#1294:3->1294:36
	MVI	%r7, $min_caml_intsec_rectside	# build/example.ml#1295:3->1295:18
	MVI	%r8, $0	# build/example.ml#1295:20->1295:21
	SDD	%r9, %r7, $4, %r8	# build/example.ml#1295:3->1295:28
	J	$if_eq_cont.11666	# build/example.ml#1290:6->1297:13
if_eq.11665:
if_eq_cont.11666:
	J	$if_eq_cont.11664	# build/example.ml#1284:3->1299:10
if_eq.11663:
if_eq_cont.11664:
	J	$if_eq_cont.11662	# build/example.ml#1283:8->1300:15
if_eq.11661:
if_eq_cont.11662:
	MVI	%r9, $1	# build/example.ml#1301:39->1301:40
	ADD	%r9, %r1, %r9	# build/example.ml#1301:28->1301:40
	SDR	%r6, %r31, $156	# build/example.ml#1301:8->1301:58
	SDR	%r5, %r31, $160	# build/example.ml#1301:8->1301:58
	SDR	%r4, %r31, $164	# build/example.ml#1301:8->1301:58
	SDR	%r3, %r31, $168	# build/example.ml#1301:8->1301:58
	SDR	%r2, %r31, $172	# build/example.ml#1301:8->1301:58
	SDR	%r1, %r31, $176	# build/example.ml#1301:8->1301:58
	FSDR	%fr6, %r31, $180	# build/example.ml#1301:8->1301:58
	FSDR	%fr5, %r31, $184	# build/example.ml#1301:8->1301:58
	MV	%r1, %r9	# build/example.ml#1301:8->1301:58
	ADDI	%r31, %r31, $188	# build/example.ml#1301:8->1301:58
	ADDI	%r31, %r31, $4	# build/example.ml#1301:8->1301:58
	SIP	# build/example.ml#1301:8->1301:58
	J	$solve_each_element.2851	# build/example.ml#1301:8->1301:58
	ADDI	%r31, %r31, $-188	# build/example.ml#1301:8->1301:58
	LDR	%r6, %r31, $156	# build/example.ml#1301:8->1301:58
	LDR	%r5, %r31, $160	# build/example.ml#1301:8->1301:58
	LDR	%r4, %r31, $164	# build/example.ml#1301:8->1301:58
	LDR	%r3, %r31, $168	# build/example.ml#1301:8->1301:58
	LDR	%r2, %r31, $172	# build/example.ml#1301:8->1301:58
	LDR	%r1, %r31, $176	# build/example.ml#1301:8->1301:58
	FLDR	%fr6, %r31, $180	# build/example.ml#1301:8->1301:58
	FLDR	%fr5, %r31, $184	# build/example.ml#1301:8->1301:58
	J	$if_eq_cont.11660	# build/example.ml#1277:5->1307:14
if_eq.11659:
	MVI	%r9, $min_caml_objects	# build/example.ml#1305:22->1305:29
	LDD	%r9, %r9, $4, %r8	# build/example.ml#637:7->637:25
	LDR	%r9, %r9, $24	# build/example.ml#1305:10->1305:37
	MVI	%r8, $0	# build/example.ml#1305:7->1307:14
	CEQ	%r9, %r8	# build/example.ml#1305:7->1307:14
	JZ	$if_eq.11667	# build/example.ml#1305:7->1307:14
	MVI	%r9, $1	# build/example.ml#1306:33->1306:34
	ADD	%r9, %r1, %r9	# build/example.ml#1306:22->1306:34
	SDR	%r6, %r31, $188	# build/example.ml#1306:2->1306:52
	SDR	%r5, %r31, $192	# build/example.ml#1306:2->1306:52
	SDR	%r4, %r31, $196	# build/example.ml#1306:2->1306:52
	SDR	%r3, %r31, $200	# build/example.ml#1306:2->1306:52
	SDR	%r2, %r31, $204	# build/example.ml#1306:2->1306:52
	SDR	%r1, %r31, $208	# build/example.ml#1306:2->1306:52
	FSDR	%fr6, %r31, $212	# build/example.ml#1306:2->1306:52
	FSDR	%fr5, %r31, $216	# build/example.ml#1306:2->1306:52
	MV	%r1, %r9	# build/example.ml#1306:2->1306:52
	ADDI	%r31, %r31, $220	# build/example.ml#1306:2->1306:52
	ADDI	%r31, %r31, $4	# build/example.ml#1306:2->1306:52
	SIP	# build/example.ml#1306:2->1306:52
	J	$solve_each_element.2851	# build/example.ml#1306:2->1306:52
	ADDI	%r31, %r31, $-220	# build/example.ml#1306:2->1306:52
	LDR	%r6, %r31, $188	# build/example.ml#1306:2->1306:52
	LDR	%r5, %r31, $192	# build/example.ml#1306:2->1306:52
	LDR	%r4, %r31, $196	# build/example.ml#1306:2->1306:52
	LDR	%r3, %r31, $200	# build/example.ml#1306:2->1306:52
	LDR	%r2, %r31, $204	# build/example.ml#1306:2->1306:52
	LDR	%r1, %r31, $208	# build/example.ml#1306:2->1306:52
	FLDR	%fr6, %r31, $212	# build/example.ml#1306:2->1306:52
	FLDR	%fr5, %r31, $216	# build/example.ml#1306:2->1306:52
	J	$if_eq_cont.11668	# build/example.ml#1305:7->1307:14
if_eq.11667:
if_eq_cont.11668:
if_eq_cont.11660:
	J	$if_eq_cont.11658	# build/example.ml#1274:3->1309:5
if_eq.11657:
if_eq_cont.11658:
	LDR	%r9, %r31, $0	# build/example.ml#1273:14->1273:34
	LDR	%r8, %r31, $4	# build/example.ml#1273:14->1273:34
	LDR	%r7, %r31, $8	# build/example.ml#1273:14->1273:34
	FLDR	%fr9, %r31, $12	# build/example.ml#1273:14->1273:34
	FLDR	%fr8, %r31, $16	# build/example.ml#1273:14->1273:34
	FLDR	%fr7, %r31, $20	# build/example.ml#1273:14->1273:34
	LINK	# build/example.ml#1273:14->1273:34
shadow_check_one_or_matrix.2848:
	SDR	%r9, %r31, $0	# build/example.ml#1237:14->1237:29
	SDR	%r8, %r31, $4	# build/example.ml#1237:14->1237:29
	SDR	%r7, %r31, $8	# build/example.ml#1237:14->1237:29
	FSDR	%fr9, %r31, $12	# build/example.ml#1237:14->1237:29
	FSDR	%fr8, %r31, $16	# build/example.ml#1237:14->1237:29
	LDD	%r8, %r2, $4, %r1	# build/example.ml#1237:14->1237:29
	MVI	%r9, $0	# build/example.ml#1238:31->1238:32
	LDD	%r9, %r8, $4, %r9	# build/example.ml#1238:25->1238:33
	MVI	%r7, $-1	# build/example.ml#1239:24->1239:26
	CEQ	%r9, %r7	# build/example.ml#1239:3->1262:53
	JZ	$if_eq.11669	# build/example.ml#1239:3->1262:53
	MVI	%r7, $99	# build/example.ml#1243:28->1243:30
	CEQ	%r9, %r7	# build/example.ml#1243:7->1255:12
	JZ	$if_eq.11671	# build/example.ml#1243:7->1255:12
	MVI	%r6, $min_caml_light_dirvec	# build/example.ml#1246:38->1246:50
	LDR	%r7, %r6, $4	# build/example.ml#1246:10->1246:69
	LDR	%r6, %r6, $0	# build/example.ml#1246:10->1246:69
	MVI	%r5, $min_caml_intersection_point	# build/example.ml#1246:51->1246:69
	SDR	%r6, %r31, $20	# build/example.ml#1246:10->1246:69
	SDR	%r5, %r31, $24	# build/example.ml#1246:10->1246:69
	SDR	%r2, %r31, $28	# build/example.ml#1246:10->1246:69
	SDR	%r1, %r31, $32	# build/example.ml#1246:10->1246:69
	MV	%r4, %r5	# build/example.ml#1246:10->1246:69
	MV	%r3, %r7	# build/example.ml#1246:10->1246:69
	MV	%r2, %r6	# build/example.ml#1246:10->1246:69
	MV	%r1, %r9	# build/example.ml#1246:10->1246:69
	ADDI	%r31, %r31, $36	# build/example.ml#1246:10->1246:69
	ADDI	%r31, %r31, $4	# build/example.ml#1246:10->1246:69
	SIP	# build/example.ml#1246:10->1246:69
	J	$solver_fast.2776	# build/example.ml#1246:10->1246:69
	ADDI	%r31, %r31, $-36	# build/example.ml#1246:10->1246:69
	MV	%r9, %r0	# build/example.ml#1246:10->1246:69
	LDR	%r6, %r31, $20	# build/example.ml#1246:10->1246:69
	LDR	%r5, %r31, $24	# build/example.ml#1246:10->1246:69
	LDR	%r2, %r31, $28	# build/example.ml#1246:10->1246:69
	LDR	%r1, %r31, $32	# build/example.ml#1246:10->1246:69
	MVI	%r7, $0	# build/example.ml#1249:10->1249:11
	CEQ	%r9, %r7	# build/example.ml#1249:2->1255:12
	JZ	$if_eq.11673	# build/example.ml#1249:2->1255:12
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#1250:20->1250:31
	MVI	%r9, $0	# build/example.ml#1250:33->1250:34
	FLDD	%fr8, %r7, $4, %r9	# build/example.ml#742:8->742:29
	FLDA	%fr9, $l.7808	# build/example.ml#1250:37->1250:41
	SDR	%r6, %r31, $36	# build/example.ml#1250:14->1250:42
	SDR	%r5, %r31, $40	# build/example.ml#1250:14->1250:42
	SDR	%r2, %r31, $44	# build/example.ml#1250:14->1250:42
	SDR	%r1, %r31, $48	# build/example.ml#1250:14->1250:42
	FMV	%fr1, %fr9	# build/example.ml#1250:14->1250:42
	FMV	%fr0, %fr8	# build/example.ml#1250:14->1250:42
	ADDI	%r31, %r31, $52	# build/example.ml#1250:14->1250:42
	ADDI	%r31, %r31, $4	# build/example.ml#1250:14->1250:42
	SIP	# build/example.ml#1250:14->1250:42
	J	$min_caml_fless	# build/example.ml#1250:14->1250:42
	ADDI	%r31, %r31, $-52	# build/example.ml#1250:14->1250:42
	MV	%r7, %r0	# build/example.ml#1250:14->1250:42
	LDR	%r6, %r31, $36	# build/example.ml#1250:14->1250:42
	LDR	%r5, %r31, $40	# build/example.ml#1250:14->1250:42
	LDR	%r2, %r31, $44	# build/example.ml#1250:14->1250:42
	LDR	%r1, %r31, $48	# build/example.ml#1250:14->1250:42
	MVI	%r9, $0	# build/example.ml#1250:11->1254:14
	CEQ	%r7, %r9	# build/example.ml#1250:11->1254:14
	JZ	$if_eq.11675	# build/example.ml#1250:11->1254:14
	MVI	%r9, $1	# build/example.ml#1251:42->1251:43
	SDR	%r6, %r31, $52	# build/example.ml#1251:16->1251:48
	SDR	%r5, %r31, $56	# build/example.ml#1251:16->1251:48
	SDR	%r2, %r31, $60	# build/example.ml#1251:16->1251:48
	SDR	%r1, %r31, $64	# build/example.ml#1251:16->1251:48
	MV	%r2, %r8	# build/example.ml#1251:16->1251:48
	MV	%r1, %r9	# build/example.ml#1251:16->1251:48
	ADDI	%r31, %r31, $68	# build/example.ml#1251:16->1251:48
	ADDI	%r31, %r31, $4	# build/example.ml#1251:16->1251:48
	SIP	# build/example.ml#1251:16->1251:48
	J	$shadow_check_one_or_group.2845	# build/example.ml#1251:16->1251:48
	ADDI	%r31, %r31, $-68	# build/example.ml#1251:16->1251:48
	MV	%r7, %r0	# build/example.ml#1251:16->1251:48
	LDR	%r6, %r31, $52	# build/example.ml#1251:16->1251:48
	LDR	%r5, %r31, $56	# build/example.ml#1251:16->1251:48
	LDR	%r2, %r31, $60	# build/example.ml#1251:16->1251:48
	LDR	%r1, %r31, $64	# build/example.ml#1251:16->1251:48
	MVI	%r9, $0	# build/example.ml#1251:13->1253:16
	CEQ	%r7, %r9	# build/example.ml#1251:13->1253:16
	JZ	$if_eq.11677	# build/example.ml#1251:13->1253:16
	MVI	%r0, $1	# build/example.ml#1252:15->1252:19
	J	$if_eq_cont.11678	# build/example.ml#1251:13->1253:16
if_eq.11677:
	MVI	%r0, $0	# build/example.ml#1253:11->1253:16
if_eq_cont.11678:
	J	$if_eq_cont.11676	# build/example.ml#1250:11->1254:14
if_eq.11675:
	MVI	%r0, $0	# build/example.ml#1254:9->1254:14
if_eq_cont.11676:
	J	$if_eq_cont.11674	# build/example.ml#1249:2->1255:12
if_eq.11673:
	MVI	%r0, $0	# build/example.ml#1255:7->1255:12
if_eq_cont.11674:
	MV	%r7, %r0	# build/example.ml#1249:2->1255:12
	J	$if_eq_cont.11672	# build/example.ml#1243:7->1255:12
if_eq.11671:
	MVI	%r0, $1	# build/example.ml#1244:2->1244:6
	MV	%r7, %r0	# build/example.ml#1244:2->1244:6
if_eq_cont.11672:
	MVI	%r9, $0	# build/example.ml#1242:5->1262:53
	CEQ	%r7, %r9	# build/example.ml#1242:5->1262:53
	JZ	$if_eq.11679	# build/example.ml#1242:5->1262:53
	MVI	%r9, $1	# build/example.ml#1257:37->1257:38
	SDR	%r6, %r31, $68	# build/example.ml#1257:11->1257:43
	SDR	%r5, %r31, $72	# build/example.ml#1257:11->1257:43
	SDR	%r2, %r31, $76	# build/example.ml#1257:11->1257:43
	SDR	%r1, %r31, $80	# build/example.ml#1257:11->1257:43
	MV	%r2, %r8	# build/example.ml#1257:11->1257:43
	MV	%r1, %r9	# build/example.ml#1257:11->1257:43
	ADDI	%r31, %r31, $84	# build/example.ml#1257:11->1257:43
	ADDI	%r31, %r31, $4	# build/example.ml#1257:11->1257:43
	SIP	# build/example.ml#1257:11->1257:43
	J	$shadow_check_one_or_group.2845	# build/example.ml#1257:11->1257:43
	ADDI	%r31, %r31, $-84	# build/example.ml#1257:11->1257:43
	MV	%r8, %r0	# build/example.ml#1257:11->1257:43
	LDR	%r6, %r31, $68	# build/example.ml#1257:11->1257:43
	LDR	%r5, %r31, $72	# build/example.ml#1257:11->1257:43
	LDR	%r2, %r31, $76	# build/example.ml#1257:11->1257:43
	LDR	%r1, %r31, $80	# build/example.ml#1257:11->1257:43
	MVI	%r9, $0	# build/example.ml#1257:7->1260:48
	CEQ	%r8, %r9	# build/example.ml#1257:7->1260:48
	JZ	$if_eq.11681	# build/example.ml#1257:7->1260:48
	MVI	%r0, $1	# build/example.ml#1258:2->1258:6
	J	$if_eq_cont.11682	# build/example.ml#1257:7->1260:48
if_eq.11681:
	MVI	%r9, $1	# build/example.ml#1260:36->1260:37
	ADD	%r9, %r1, %r9	# build/example.ml#1260:30->1260:37
	SDR	%r6, %r31, $84	# build/example.ml#1260:2->1260:48
	SDR	%r5, %r31, $88	# build/example.ml#1260:2->1260:48
	SDR	%r2, %r31, $92	# build/example.ml#1260:2->1260:48
	SDR	%r1, %r31, $96	# build/example.ml#1260:2->1260:48
	MV	%r1, %r9	# build/example.ml#1260:2->1260:48
	ADDI	%r31, %r31, $100	# build/example.ml#1260:2->1260:48
	ADDI	%r31, %r31, $4	# build/example.ml#1260:2->1260:48
	SIP	# build/example.ml#1260:2->1260:48
	J	$shadow_check_one_or_matrix.2848	# build/example.ml#1260:2->1260:48
	ADDI	%r31, %r31, $-100	# build/example.ml#1260:2->1260:48
	LDR	%r6, %r31, $84	# build/example.ml#1260:2->1260:48
	LDR	%r5, %r31, $88	# build/example.ml#1260:2->1260:48
	LDR	%r2, %r31, $92	# build/example.ml#1260:2->1260:48
	LDR	%r1, %r31, $96	# build/example.ml#1260:2->1260:48
if_eq_cont.11682:
	J	$if_eq_cont.11680	# build/example.ml#1242:5->1262:53
if_eq.11679:
	MVI	%r9, $1	# build/example.ml#1262:41->1262:42
	ADD	%r9, %r1, %r9	# build/example.ml#1262:35->1262:42
	SDR	%r6, %r31, $100	# build/example.ml#1262:7->1262:53
	SDR	%r5, %r31, $104	# build/example.ml#1262:7->1262:53
	SDR	%r2, %r31, $108	# build/example.ml#1262:7->1262:53
	SDR	%r1, %r31, $112	# build/example.ml#1262:7->1262:53
	MV	%r1, %r9	# build/example.ml#1262:7->1262:53
	ADDI	%r31, %r31, $116	# build/example.ml#1262:7->1262:53
	ADDI	%r31, %r31, $4	# build/example.ml#1262:7->1262:53
	SIP	# build/example.ml#1262:7->1262:53
	J	$shadow_check_one_or_matrix.2848	# build/example.ml#1262:7->1262:53
	ADDI	%r31, %r31, $-116	# build/example.ml#1262:7->1262:53
	LDR	%r6, %r31, $100	# build/example.ml#1262:7->1262:53
	LDR	%r5, %r31, $104	# build/example.ml#1262:7->1262:53
	LDR	%r2, %r31, $108	# build/example.ml#1262:7->1262:53
	LDR	%r1, %r31, $112	# build/example.ml#1262:7->1262:53
if_eq_cont.11680:
	J	$if_eq_cont.11670	# build/example.ml#1239:3->1262:53
if_eq.11669:
	MVI	%r0, $0	# build/example.ml#1240:5->1240:10
if_eq_cont.11670:
	LDR	%r9, %r31, $0	# build/example.ml#1237:14->1237:29
	LDR	%r8, %r31, $4	# build/example.ml#1237:14->1237:29
	LDR	%r7, %r31, $8	# build/example.ml#1237:14->1237:29
	FLDR	%fr9, %r31, $12	# build/example.ml#1237:14->1237:29
	FLDR	%fr8, %r31, $16	# build/example.ml#1237:14->1237:29
	LINK	# build/example.ml#1237:14->1237:29
shadow_check_one_or_group.2845:
	SDR	%r9, %r31, $0	# build/example.ml#1222:14->1222:28
	SDR	%r8, %r31, $4	# build/example.ml#1222:14->1222:28
	LDD	%r9, %r2, $4, %r1	# build/example.ml#1222:14->1222:28
	MVI	%r8, $-1	# build/example.ml#1223:13->1223:15
	CEQ	%r9, %r8	# build/example.ml#1223:3->1232:5
	JZ	$if_eq.11683	# build/example.ml#1223:3->1232:5
	MVI	%r8, $min_caml_and_net	# build/example.ml#1226:21->1226:28
	LDD	%r9, %r8, $4, %r9	# build/example.ml#703:5->703:23
	MVI	%r8, $0	# build/example.ml#1227:43->1227:44
	SDR	%r2, %r31, $8	# build/example.ml#1227:20->1227:54
	SDR	%r1, %r31, $12	# build/example.ml#1227:20->1227:54
	MV	%r2, %r9	# build/example.ml#1227:20->1227:54
	MV	%r1, %r8	# build/example.ml#1227:20->1227:54
	ADDI	%r31, %r31, $16	# build/example.ml#1227:20->1227:54
	ADDI	%r31, %r31, $4	# build/example.ml#1227:20->1227:54
	SIP	# build/example.ml#1227:20->1227:54
	J	$shadow_check_and_group.2842	# build/example.ml#1227:20->1227:54
	ADDI	%r31, %r31, $-16	# build/example.ml#1227:20->1227:54
	MV	%r9, %r0	# build/example.ml#1227:20->1227:54
	LDR	%r2, %r31, $8	# build/example.ml#1227:20->1227:54
	LDR	%r1, %r31, $12	# build/example.ml#1227:20->1227:54
	MVI	%r8, $0	# build/example.ml#1228:5->1231:51
	CEQ	%r9, %r8	# build/example.ml#1228:5->1231:51
	JZ	$if_eq.11685	# build/example.ml#1228:5->1231:51
	MVI	%r0, $1	# build/example.ml#1229:7->1229:11
	J	$if_eq_cont.11686	# build/example.ml#1228:5->1231:51
if_eq.11685:
	MVI	%r9, $1	# build/example.ml#1231:40->1231:41
	ADD	%r9, %r1, %r9	# build/example.ml#1231:34->1231:41
	SDR	%r2, %r31, $16	# build/example.ml#1231:7->1231:51
	SDR	%r1, %r31, $20	# build/example.ml#1231:7->1231:51
	MV	%r1, %r9	# build/example.ml#1231:7->1231:51
	ADDI	%r31, %r31, $24	# build/example.ml#1231:7->1231:51
	ADDI	%r31, %r31, $4	# build/example.ml#1231:7->1231:51
	SIP	# build/example.ml#1231:7->1231:51
	J	$shadow_check_one_or_group.2845	# build/example.ml#1231:7->1231:51
	ADDI	%r31, %r31, $-24	# build/example.ml#1231:7->1231:51
	LDR	%r2, %r31, $16	# build/example.ml#1231:7->1231:51
	LDR	%r1, %r31, $20	# build/example.ml#1231:7->1231:51
if_eq_cont.11686:
	J	$if_eq_cont.11684	# build/example.ml#1223:3->1232:5
if_eq.11683:
	MVI	%r0, $0	# build/example.ml#1224:5->1224:10
if_eq_cont.11684:
	LDR	%r9, %r31, $0	# build/example.ml#1222:14->1222:28
	LDR	%r8, %r31, $4	# build/example.ml#1222:14->1222:28
	LINK	# build/example.ml#1222:14->1222:28
shadow_check_and_group.2842:
	SDR	%r9, %r31, $0	# build/example.ml#1192:6->1192:26
	SDR	%r8, %r31, $4	# build/example.ml#1192:6->1192:26
	SDR	%r7, %r31, $8	# build/example.ml#1192:6->1192:26
	FSDR	%fr9, %r31, $12	# build/example.ml#1192:6->1192:26
	FSDR	%fr8, %r31, $16	# build/example.ml#1192:6->1192:26
	FSDR	%fr7, %r31, $20	# build/example.ml#1192:6->1192:26
	LDD	%r7, %r2, $4, %r1	# build/example.ml#1192:6->1192:26
	MVI	%r9, $-1	# build/example.ml#1192:29->1192:31
	CEQ	%r7, %r9	# build/example.ml#1192:3->1217:7
	JZ	$if_eq.11687	# build/example.ml#1192:3->1217:7
	MVI	%r8, $min_caml_light_dirvec	# build/example.ml#1196:30->1196:42
	LDR	%r9, %r8, $4	# build/example.ml#1196:14->1196:61
	LDR	%r8, %r8, $0	# build/example.ml#1196:14->1196:61
	MVI	%r5, $min_caml_intersection_point	# build/example.ml#1196:43->1196:61
	SDR	%r6, %r31, $24	# build/example.ml#1196:14->1196:61
	SDR	%r5, %r31, $28	# build/example.ml#1196:14->1196:61
	SDR	%r2, %r31, $32	# build/example.ml#1196:14->1196:61
	SDR	%r1, %r31, $36	# build/example.ml#1196:14->1196:61
	FSDR	%fr6, %r31, $40	# build/example.ml#1196:14->1196:61
	MV	%r4, %r5	# build/example.ml#1196:14->1196:61
	MV	%r3, %r9	# build/example.ml#1196:14->1196:61
	MV	%r2, %r8	# build/example.ml#1196:14->1196:61
	MV	%r1, %r7	# build/example.ml#1196:14->1196:61
	ADDI	%r31, %r31, $44	# build/example.ml#1196:14->1196:61
	ADDI	%r31, %r31, $4	# build/example.ml#1196:14->1196:61
	SIP	# build/example.ml#1196:14->1196:61
	J	$solver_fast.2776	# build/example.ml#1196:14->1196:61
	ADDI	%r31, %r31, $-44	# build/example.ml#1196:14->1196:61
	MV	%r9, %r0	# build/example.ml#1196:14->1196:61
	LDR	%r6, %r31, $24	# build/example.ml#1196:14->1196:61
	LDR	%r5, %r31, $28	# build/example.ml#1196:14->1196:61
	LDR	%r2, %r31, $32	# build/example.ml#1196:14->1196:61
	LDR	%r1, %r31, $36	# build/example.ml#1196:14->1196:61
	FLDR	%fr6, %r31, $40	# build/example.ml#1196:14->1196:61
	MVI	%r6, $min_caml_solver_dist	# build/example.ml#1197:15->1197:26
	MVI	%r8, $0	# build/example.ml#1197:28->1197:29
	FLDD	%fr9, %r6, $4, %r8	# build/example.ml#742:8->742:29
	MVI	%r8, $0	# build/example.ml#1198:18->1198:19
	CEQ	%r9, %r8	# build/example.ml#1198:9->1198:52
	JZ	$if_eq.11689	# build/example.ml#1198:9->1198:52
	FLDA	%fr8, $l.7811	# build/example.ml#1198:36->1198:40
	SDR	%r6, %r31, $44	# build/example.ml#1198:25->1198:41
	SDR	%r5, %r31, $48	# build/example.ml#1198:25->1198:41
	SDR	%r2, %r31, $52	# build/example.ml#1198:25->1198:41
	SDR	%r1, %r31, $56	# build/example.ml#1198:25->1198:41
	FSDR	%fr6, %r31, $60	# build/example.ml#1198:25->1198:41
	FMV	%fr1, %fr8	# build/example.ml#1198:25->1198:41
	FMV	%fr0, %fr9	# build/example.ml#1198:25->1198:41
	ADDI	%r31, %r31, $64	# build/example.ml#1198:25->1198:41
	ADDI	%r31, %r31, $4	# build/example.ml#1198:25->1198:41
	SIP	# build/example.ml#1198:25->1198:41
	J	$min_caml_fless	# build/example.ml#1198:25->1198:41
	ADDI	%r31, %r31, $-64	# build/example.ml#1198:25->1198:41
	LDR	%r6, %r31, $44	# build/example.ml#1198:25->1198:41
	LDR	%r5, %r31, $48	# build/example.ml#1198:25->1198:41
	LDR	%r2, %r31, $52	# build/example.ml#1198:25->1198:41
	LDR	%r1, %r31, $56	# build/example.ml#1198:25->1198:41
	FLDR	%fr6, %r31, $60	# build/example.ml#1198:25->1198:41
	MV	%r8, %r0	# build/example.ml#1198:25->1198:41
	J	$if_eq_cont.11690	# build/example.ml#1198:9->1198:52
if_eq.11689:
	MVI	%r0, $0	# build/example.ml#1198:47->1198:52
	MV	%r8, %r0	# build/example.ml#1198:47->1198:52
if_eq_cont.11690:
	MVI	%r9, $0	# build/example.ml#1198:5->1217:7
	CEQ	%r8, %r9	# build/example.ml#1198:5->1217:7
	JZ	$if_eq.11691	# build/example.ml#1198:5->1217:7
	FLDA	%fr8, $l.7810	# build/example.ml#1201:22->1201:26
	FADD	%fr7, %fr9, %fr8	# build/example.ml#1201:15->1201:26
	MVI	%r8, $min_caml_light	# build/example.ml#1202:16->1202:21
	MVI	%r9, $0	# build/example.ml#1202:23->1202:24
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#527:3->527:24
	FMUL	%fr8, %fr9, %fr7	# build/example.ml#1202:16->1202:30
	MVI	%r9, $0	# build/example.ml#1202:54->1202:55
	FLDD	%fr9, %r5, $4, %r9	# build/example.ml#935:12->935:19
	FADD	%fr8, %fr8, %fr9	# build/example.ml#1202:16->1202:56
	MVI	%r9, $1	# build/example.ml#1203:23->1203:24
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#527:3->527:24
	FMUL	%fr6, %fr9, %fr7	# build/example.ml#1203:16->1203:30
	MVI	%r9, $1	# build/example.ml#1203:54->1203:55
	FLDD	%fr9, %r5, $4, %r9	# build/example.ml#935:12->935:19
	FADD	%fr9, %fr6, %fr9	# build/example.ml#1203:16->1203:56
	MVI	%r9, $2	# build/example.ml#1204:23->1204:24
	FLDD	%fr6, %r8, $4, %r9	# build/example.ml#527:3->527:24
	FMUL	%fr6, %fr6, %fr7	# build/example.ml#1204:16->1204:30
	MVI	%r9, $2	# build/example.ml#1204:54->1204:55
	FLDD	%fr7, %r5, $4, %r9	# build/example.ml#935:12->935:19
	FADD	%fr7, %fr6, %fr7	# build/example.ml#1204:16->1204:56
	MVI	%r9, $0	# build/example.ml#1205:27->1205:28
	SDR	%r6, %r31, $64	# build/example.ml#1205:10->1205:47
	SDR	%r5, %r31, $68	# build/example.ml#1205:10->1205:47
	SDR	%r2, %r31, $72	# build/example.ml#1205:10->1205:47
	SDR	%r1, %r31, $76	# build/example.ml#1205:10->1205:47
	FSDR	%fr6, %r31, $80	# build/example.ml#1205:10->1205:47
	MV	%r1, %r9	# build/example.ml#1205:10->1205:47
	FMV	%fr2, %fr7	# build/example.ml#1205:10->1205:47
	FMV	%fr1, %fr9	# build/example.ml#1205:10->1205:47
	FMV	%fr0, %fr8	# build/example.ml#1205:10->1205:47
	ADDI	%r31, %r31, $84	# build/example.ml#1205:10->1205:47
	ADDI	%r31, %r31, $4	# build/example.ml#1205:10->1205:47
	SIP	# build/example.ml#1205:10->1205:47
	J	$check_all_inside.2836	# build/example.ml#1205:10->1205:47
	ADDI	%r31, %r31, $-84	# build/example.ml#1205:10->1205:47
	MV	%r8, %r0	# build/example.ml#1205:10->1205:47
	LDR	%r6, %r31, $64	# build/example.ml#1205:10->1205:47
	LDR	%r5, %r31, $68	# build/example.ml#1205:10->1205:47
	LDR	%r2, %r31, $72	# build/example.ml#1205:10->1205:47
	LDR	%r1, %r31, $76	# build/example.ml#1205:10->1205:47
	FLDR	%fr6, %r31, $80	# build/example.ml#1205:10->1205:47
	MVI	%r9, $0	# build/example.ml#1205:7->1208:49
	CEQ	%r8, %r9	# build/example.ml#1205:7->1208:49
	JZ	$if_eq.11693	# build/example.ml#1205:7->1208:49
	MVI	%r0, $1	# build/example.ml#1206:2->1206:6
	J	$if_eq_cont.11694	# build/example.ml#1205:7->1208:49
if_eq.11693:
	MVI	%r9, $1	# build/example.ml#1208:37->1208:38
	ADD	%r9, %r1, %r9	# build/example.ml#1208:26->1208:38
	SDR	%r6, %r31, $84	# build/example.ml#1208:2->1208:49
	SDR	%r5, %r31, $88	# build/example.ml#1208:2->1208:49
	SDR	%r2, %r31, $92	# build/example.ml#1208:2->1208:49
	SDR	%r1, %r31, $96	# build/example.ml#1208:2->1208:49
	FSDR	%fr6, %r31, $100	# build/example.ml#1208:2->1208:49
	MV	%r1, %r9	# build/example.ml#1208:2->1208:49
	ADDI	%r31, %r31, $104	# build/example.ml#1208:2->1208:49
	ADDI	%r31, %r31, $4	# build/example.ml#1208:2->1208:49
	SIP	# build/example.ml#1208:2->1208:49
	J	$shadow_check_and_group.2842	# build/example.ml#1208:2->1208:49
	ADDI	%r31, %r31, $-104	# build/example.ml#1208:2->1208:49
	LDR	%r6, %r31, $84	# build/example.ml#1208:2->1208:49
	LDR	%r5, %r31, $88	# build/example.ml#1208:2->1208:49
	LDR	%r2, %r31, $92	# build/example.ml#1208:2->1208:49
	LDR	%r1, %r31, $96	# build/example.ml#1208:2->1208:49
	FLDR	%fr6, %r31, $100	# build/example.ml#1208:2->1208:49
if_eq_cont.11694:
	J	$if_eq_cont.11692	# build/example.ml#1198:5->1217:7
if_eq.11691:
	MVI	%r9, $min_caml_objects	# build/example.ml#1214:22->1214:29
	LDD	%r9, %r9, $4, %r7	# build/example.ml#637:7->637:25
	LDR	%r9, %r9, $24	# build/example.ml#1214:10->1214:36
	MVI	%r8, $0	# build/example.ml#1214:7->1217:7
	CEQ	%r9, %r8	# build/example.ml#1214:7->1217:7
	JZ	$if_eq.11695	# build/example.ml#1214:7->1217:7
	MVI	%r9, $1	# build/example.ml#1215:37->1215:38
	ADD	%r9, %r1, %r9	# build/example.ml#1215:26->1215:38
	SDR	%r6, %r31, $104	# build/example.ml#1215:2->1215:49
	SDR	%r5, %r31, $108	# build/example.ml#1215:2->1215:49
	SDR	%r2, %r31, $112	# build/example.ml#1215:2->1215:49
	SDR	%r1, %r31, $116	# build/example.ml#1215:2->1215:49
	FSDR	%fr6, %r31, $120	# build/example.ml#1215:2->1215:49
	MV	%r1, %r9	# build/example.ml#1215:2->1215:49
	ADDI	%r31, %r31, $124	# build/example.ml#1215:2->1215:49
	ADDI	%r31, %r31, $4	# build/example.ml#1215:2->1215:49
	SIP	# build/example.ml#1215:2->1215:49
	J	$shadow_check_and_group.2842	# build/example.ml#1215:2->1215:49
	ADDI	%r31, %r31, $-124	# build/example.ml#1215:2->1215:49
	LDR	%r6, %r31, $104	# build/example.ml#1215:2->1215:49
	LDR	%r5, %r31, $108	# build/example.ml#1215:2->1215:49
	LDR	%r2, %r31, $112	# build/example.ml#1215:2->1215:49
	LDR	%r1, %r31, $116	# build/example.ml#1215:2->1215:49
	FLDR	%fr6, %r31, $120	# build/example.ml#1215:2->1215:49
	J	$if_eq_cont.11696	# build/example.ml#1214:7->1217:7
if_eq.11695:
	MVI	%r0, $0	# build/example.ml#1217:2->1217:7
if_eq_cont.11696:
if_eq_cont.11692:
	J	$if_eq_cont.11688	# build/example.ml#1192:3->1217:7
if_eq.11687:
	MVI	%r0, $0	# build/example.ml#1193:5->1193:10
if_eq_cont.11688:
	LDR	%r9, %r31, $0	# build/example.ml#1192:6->1192:26
	LDR	%r8, %r31, $4	# build/example.ml#1192:6->1192:26
	LDR	%r7, %r31, $8	# build/example.ml#1192:6->1192:26
	FLDR	%fr9, %r31, $12	# build/example.ml#1192:6->1192:26
	FLDR	%fr8, %r31, $16	# build/example.ml#1192:6->1192:26
	FLDR	%fr7, %r31, $20	# build/example.ml#1192:6->1192:26
	LINK	# build/example.ml#1192:6->1192:26
check_all_inside.2836:
	SDR	%r9, %r31, $0	# build/example.ml#1172:14->1172:24
	SDR	%r8, %r31, $4	# build/example.ml#1172:14->1172:24
	SDR	%r7, %r31, $8	# build/example.ml#1172:14->1172:24
	SDR	%r28, %r31, $12	# build/example.ml#1172:14->1172:24
	SDR	%r27, %r31, $16	# build/example.ml#1172:14->1172:24
	SDR	%r26, %r31, $20	# build/example.ml#1172:14->1172:24
	SDR	%r25, %r31, $24	# build/example.ml#1172:14->1172:24
	LDD	%r9, %r2, $4, %r1	# build/example.ml#1172:14->1172:24
	MVI	%r8, $-1	# build/example.ml#1173:13->1173:15
	CEQ	%r9, %r8	# build/example.ml#1173:3->1180:5
	JZ	$if_eq.11697	# build/example.ml#1173:3->1180:5
	MVI	%r8, $min_caml_objects	# build/example.ml#1176:19->1176:26
	LDD	%r25, %r8, $4, %r9	# build/example.ml#637:7->637:25
	LDR	%r9, %r25, $40	# build/example.ml#1176:8->1176:42
	LDR	%r8, %r25, $36	# build/example.ml#1176:8->1176:42
	LDR	%r7, %r25, $32	# build/example.ml#1176:8->1176:42
	LDR	%r6, %r25, $28	# build/example.ml#1176:8->1176:42
	LDR	%r5, %r25, $24	# build/example.ml#1176:8->1176:42
	LDR	%r4, %r25, $20	# build/example.ml#1176:8->1176:42
	LDR	%r3, %r25, $16	# build/example.ml#1176:8->1176:42
	LDR	%r28, %r25, $12	# build/example.ml#1176:8->1176:42
	LDR	%r27, %r25, $8	# build/example.ml#1176:8->1176:42
	LDR	%r26, %r25, $4	# build/example.ml#1176:8->1176:42
	LDR	%r25, %r25, $0	# build/example.ml#1176:8->1176:42
	SDR	%r6, %r31, $28	# build/example.ml#1176:8->1176:42
	SDR	%r5, %r31, $32	# build/example.ml#1176:8->1176:42
	SDR	%r4, %r31, $36	# build/example.ml#1176:8->1176:42
	SDR	%r3, %r31, $40	# build/example.ml#1176:8->1176:42
	SDR	%r2, %r31, $44	# build/example.ml#1176:8->1176:42
	SDR	%r1, %r31, $48	# build/example.ml#1176:8->1176:42
	FSDR	%fr2, %r31, $52	# build/example.ml#1176:8->1176:42
	FSDR	%fr1, %r31, $56	# build/example.ml#1176:8->1176:42
	MV	%r11, %r9	# build/example.ml#1176:8->1176:42
	MV	%r10, %r8	# build/example.ml#1176:8->1176:42
	MV	%r2, %r26	# build/example.ml#1176:8->1176:42
	MV	%r1, %r25	# build/example.ml#1176:8->1176:42
	MV	%r9, %r7	# build/example.ml#1176:8->1176:42
	MV	%r8, %r6	# build/example.ml#1176:8->1176:42
	MV	%r7, %r5	# build/example.ml#1176:8->1176:42
	MV	%r6, %r4	# build/example.ml#1176:8->1176:42
	MV	%r5, %r3	# build/example.ml#1176:8->1176:42
	MV	%r4, %r28	# build/example.ml#1176:8->1176:42
	MV	%r3, %r27	# build/example.ml#1176:8->1176:42
	ADDI	%r31, %r31, $60	# build/example.ml#1176:8->1176:42
	ADDI	%r31, %r31, $4	# build/example.ml#1176:8->1176:42
	SIP	# build/example.ml#1176:8->1176:42
	J	$is_outside.2831	# build/example.ml#1176:8->1176:42
	ADDI	%r31, %r31, $-60	# build/example.ml#1176:8->1176:42
	MV	%r8, %r0	# build/example.ml#1176:8->1176:42
	LDR	%r6, %r31, $28	# build/example.ml#1176:8->1176:42
	LDR	%r5, %r31, $32	# build/example.ml#1176:8->1176:42
	LDR	%r4, %r31, $36	# build/example.ml#1176:8->1176:42
	LDR	%r3, %r31, $40	# build/example.ml#1176:8->1176:42
	LDR	%r2, %r31, $44	# build/example.ml#1176:8->1176:42
	LDR	%r1, %r31, $48	# build/example.ml#1176:8->1176:42
	FLDR	%fr2, %r31, $52	# build/example.ml#1176:8->1176:42
	FLDR	%fr1, %r31, $56	# build/example.ml#1176:8->1176:42
	MVI	%r9, $0	# build/example.ml#1176:5->1179:47
	CEQ	%r8, %r9	# build/example.ml#1176:5->1179:47
	JZ	$if_eq.11699	# build/example.ml#1176:5->1179:47
	MVI	%r0, $0	# build/example.ml#1177:7->1177:12
	J	$if_eq_cont.11700	# build/example.ml#1176:5->1179:47
if_eq.11699:
	MVI	%r9, $1	# build/example.ml#1179:31->1179:32
	ADD	%r9, %r1, %r9	# build/example.ml#1179:25->1179:32
	SDR	%r6, %r31, $60	# build/example.ml#1179:7->1179:47
	SDR	%r5, %r31, $64	# build/example.ml#1179:7->1179:47
	SDR	%r4, %r31, $68	# build/example.ml#1179:7->1179:47
	SDR	%r3, %r31, $72	# build/example.ml#1179:7->1179:47
	SDR	%r2, %r31, $76	# build/example.ml#1179:7->1179:47
	SDR	%r1, %r31, $80	# build/example.ml#1179:7->1179:47
	FSDR	%fr2, %r31, $84	# build/example.ml#1179:7->1179:47
	FSDR	%fr1, %r31, $88	# build/example.ml#1179:7->1179:47
	MV	%r1, %r9	# build/example.ml#1179:7->1179:47
	ADDI	%r31, %r31, $92	# build/example.ml#1179:7->1179:47
	ADDI	%r31, %r31, $4	# build/example.ml#1179:7->1179:47
	SIP	# build/example.ml#1179:7->1179:47
	J	$check_all_inside.2836	# build/example.ml#1179:7->1179:47
	ADDI	%r31, %r31, $-92	# build/example.ml#1179:7->1179:47
	LDR	%r6, %r31, $60	# build/example.ml#1179:7->1179:47
	LDR	%r5, %r31, $64	# build/example.ml#1179:7->1179:47
	LDR	%r4, %r31, $68	# build/example.ml#1179:7->1179:47
	LDR	%r3, %r31, $72	# build/example.ml#1179:7->1179:47
	LDR	%r2, %r31, $76	# build/example.ml#1179:7->1179:47
	LDR	%r1, %r31, $80	# build/example.ml#1179:7->1179:47
	FLDR	%fr2, %r31, $84	# build/example.ml#1179:7->1179:47
	FLDR	%fr1, %r31, $88	# build/example.ml#1179:7->1179:47
if_eq_cont.11700:
	J	$if_eq_cont.11698	# build/example.ml#1173:3->1180:5
if_eq.11697:
	MVI	%r0, $1	# build/example.ml#1174:5->1174:9
if_eq_cont.11698:
	LDR	%r9, %r31, $0	# build/example.ml#1172:14->1172:24
	LDR	%r8, %r31, $4	# build/example.ml#1172:14->1172:24
	LDR	%r7, %r31, $8	# build/example.ml#1172:14->1172:24
	LDR	%r28, %r31, $12	# build/example.ml#1172:14->1172:24
	LDR	%r27, %r31, $16	# build/example.ml#1172:14->1172:24
	LDR	%r26, %r31, $20	# build/example.ml#1172:14->1172:24
	LDR	%r25, %r31, $24	# build/example.ml#1172:14->1172:24
	LINK	# build/example.ml#1172:14->1172:24
is_outside.2831:
	SDR	%r9, %r31, $0	# build/example.ml#1158:18->1158:29
	SDR	%r8, %r31, $4	# build/example.ml#1158:18->1158:29
	SDR	%r7, %r31, $8	# build/example.ml#1158:18->1158:29
	SDR	%r28, %r31, $12	# build/example.ml#1158:18->1158:29
	SDR	%r27, %r31, $16	# build/example.ml#1158:18->1158:29
	SDR	%r11, %r31, $20	# build/example.ml#1158:18->1158:29
	SDR	%r10, %r31, $24	# build/example.ml#1158:18->1158:29
	FSDR	%fr9, %r31, $28	# build/example.ml#1158:18->1158:29
	FSDR	%fr8, %r31, $32	# build/example.ml#1158:18->1158:29
	FSDR	%fr7, %r31, $36	# build/example.ml#1158:18->1158:29
	SDR	%r6, %r31, $40	# build/example.ml#1158:18->1158:29
	SDR	%r5, %r31, $44	# build/example.ml#1158:18->1158:29
	SDR	%r4, %r31, $48	# build/example.ml#1158:18->1158:29
	SDR	%r3, %r31, $52	# build/example.ml#1158:18->1158:29
	SDR	%r2, %r31, $56	# build/example.ml#1158:18->1158:29
	SDR	%r1, %r31, $60	# build/example.ml#1158:18->1158:29
	ADDI	%r31, %r31, $64	# build/example.ml#1158:18->1158:29
	ADDI	%r31, %r31, $4	# build/example.ml#1158:18->1158:29
	SIP	# build/example.ml#1158:18->1158:29
	J	$o_param_x.2637	# build/example.ml#1158:18->1158:29
	ADDI	%r31, %r31, $-64	# build/example.ml#1158:18->1158:29
	FMV	%fr9, %fr0	# build/example.ml#1158:18->1158:29
	LDR	%r6, %r31, $40	# build/example.ml#1158:18->1158:29
	LDR	%r5, %r31, $44	# build/example.ml#1158:18->1158:29
	LDR	%r4, %r31, $48	# build/example.ml#1158:18->1158:29
	LDR	%r3, %r31, $52	# build/example.ml#1158:18->1158:29
	LDR	%r2, %r31, $56	# build/example.ml#1158:18->1158:29
	LDR	%r1, %r31, $60	# build/example.ml#1158:18->1158:29
	FSUB	%fr8, %fr0, %fr9	# build/example.ml#1158:12->1158:29
	SDR	%r6, %r31, $64	# build/example.ml#1159:18->1159:29
	SDR	%r5, %r31, $68	# build/example.ml#1159:18->1159:29
	SDR	%r4, %r31, $72	# build/example.ml#1159:18->1159:29
	SDR	%r3, %r31, $76	# build/example.ml#1159:18->1159:29
	SDR	%r2, %r31, $80	# build/example.ml#1159:18->1159:29
	SDR	%r1, %r31, $84	# build/example.ml#1159:18->1159:29
	ADDI	%r31, %r31, $88	# build/example.ml#1159:18->1159:29
	ADDI	%r31, %r31, $4	# build/example.ml#1159:18->1159:29
	SIP	# build/example.ml#1159:18->1159:29
	J	$o_param_y.2639	# build/example.ml#1159:18->1159:29
	ADDI	%r31, %r31, $-88	# build/example.ml#1159:18->1159:29
	FMV	%fr9, %fr0	# build/example.ml#1159:18->1159:29
	LDR	%r6, %r31, $64	# build/example.ml#1159:18->1159:29
	LDR	%r5, %r31, $68	# build/example.ml#1159:18->1159:29
	LDR	%r4, %r31, $72	# build/example.ml#1159:18->1159:29
	LDR	%r3, %r31, $76	# build/example.ml#1159:18->1159:29
	LDR	%r2, %r31, $80	# build/example.ml#1159:18->1159:29
	LDR	%r1, %r31, $84	# build/example.ml#1159:18->1159:29
	FSUB	%fr9, %fr1, %fr9	# build/example.ml#1159:12->1159:29
	SDR	%r6, %r31, $88	# build/example.ml#1160:18->1160:29
	SDR	%r5, %r31, $92	# build/example.ml#1160:18->1160:29
	SDR	%r4, %r31, $96	# build/example.ml#1160:18->1160:29
	SDR	%r3, %r31, $100	# build/example.ml#1160:18->1160:29
	SDR	%r2, %r31, $104	# build/example.ml#1160:18->1160:29
	SDR	%r1, %r31, $108	# build/example.ml#1160:18->1160:29
	ADDI	%r31, %r31, $112	# build/example.ml#1160:18->1160:29
	ADDI	%r31, %r31, $4	# build/example.ml#1160:18->1160:29
	SIP	# build/example.ml#1160:18->1160:29
	J	$o_param_z.2641	# build/example.ml#1160:18->1160:29
	ADDI	%r31, %r31, $-112	# build/example.ml#1160:18->1160:29
	FMV	%fr7, %fr0	# build/example.ml#1160:18->1160:29
	LDR	%r6, %r31, $88	# build/example.ml#1160:18->1160:29
	LDR	%r5, %r31, $92	# build/example.ml#1160:18->1160:29
	LDR	%r4, %r31, $96	# build/example.ml#1160:18->1160:29
	LDR	%r3, %r31, $100	# build/example.ml#1160:18->1160:29
	LDR	%r2, %r31, $104	# build/example.ml#1160:18->1160:29
	LDR	%r1, %r31, $108	# build/example.ml#1160:18->1160:29
	FSUB	%fr7, %fr2, %fr7	# build/example.ml#1160:12->1160:29
	MV	%r28, %r2	# build/example.ml#159:3->164:10
	MVI	%r27, $1	# build/example.ml#1162:16->1162:17
	CEQ	%r28, %r27	# build/example.ml#1162:3->1167:33
	JZ	$if_eq.11701	# build/example.ml#1162:3->1167:33
	MVI	%r27, $2	# build/example.ml#1164:21->1164:22
	CEQ	%r28, %r27	# build/example.ml#1164:8->1167:33
	JZ	$if_eq.11703	# build/example.ml#1164:8->1167:33
	SDR	%r6, %r31, $112	# build/example.ml#1167:5->1167:33
	SDR	%r5, %r31, $116	# build/example.ml#1167:5->1167:33
	SDR	%r4, %r31, $120	# build/example.ml#1167:5->1167:33
	SDR	%r3, %r31, $124	# build/example.ml#1167:5->1167:33
	SDR	%r2, %r31, $128	# build/example.ml#1167:5->1167:33
	SDR	%r1, %r31, $132	# build/example.ml#1167:5->1167:33
	FSDR	%fr2, %r31, $136	# build/example.ml#1167:5->1167:33
	FSDR	%fr1, %r31, $140	# build/example.ml#1167:5->1167:33
	FMV	%fr2, %fr7	# build/example.ml#1167:5->1167:33
	FMV	%fr1, %fr9	# build/example.ml#1167:5->1167:33
	FMV	%fr0, %fr8	# build/example.ml#1167:5->1167:33
	ADDI	%r31, %r31, $144	# build/example.ml#1167:5->1167:33
	ADDI	%r31, %r31, $4	# build/example.ml#1167:5->1167:33
	SIP	# build/example.ml#1167:5->1167:33
	J	$is_second_outside.2826	# build/example.ml#1167:5->1167:33
	ADDI	%r31, %r31, $-144	# build/example.ml#1167:5->1167:33
	LDR	%r6, %r31, $112	# build/example.ml#1167:5->1167:33
	LDR	%r5, %r31, $116	# build/example.ml#1167:5->1167:33
	LDR	%r4, %r31, $120	# build/example.ml#1167:5->1167:33
	LDR	%r3, %r31, $124	# build/example.ml#1167:5->1167:33
	LDR	%r2, %r31, $128	# build/example.ml#1167:5->1167:33
	LDR	%r1, %r31, $132	# build/example.ml#1167:5->1167:33
	FLDR	%fr2, %r31, $136	# build/example.ml#1167:5->1167:33
	FLDR	%fr1, %r31, $140	# build/example.ml#1167:5->1167:33
	J	$if_eq_cont.11704	# build/example.ml#1164:8->1167:33
if_eq.11703:
	SDR	%r6, %r31, $144	# build/example.ml#1165:5->1165:32
	SDR	%r5, %r31, $148	# build/example.ml#1165:5->1165:32
	SDR	%r4, %r31, $152	# build/example.ml#1165:5->1165:32
	SDR	%r3, %r31, $156	# build/example.ml#1165:5->1165:32
	SDR	%r2, %r31, $160	# build/example.ml#1165:5->1165:32
	SDR	%r1, %r31, $164	# build/example.ml#1165:5->1165:32
	FSDR	%fr2, %r31, $168	# build/example.ml#1165:5->1165:32
	FSDR	%fr1, %r31, $172	# build/example.ml#1165:5->1165:32
	FMV	%fr2, %fr7	# build/example.ml#1165:5->1165:32
	FMV	%fr1, %fr9	# build/example.ml#1165:5->1165:32
	FMV	%fr0, %fr8	# build/example.ml#1165:5->1165:32
	ADDI	%r31, %r31, $176	# build/example.ml#1165:5->1165:32
	ADDI	%r31, %r31, $4	# build/example.ml#1165:5->1165:32
	SIP	# build/example.ml#1165:5->1165:32
	J	$is_plane_outside.2821	# build/example.ml#1165:5->1165:32
	ADDI	%r31, %r31, $-176	# build/example.ml#1165:5->1165:32
	LDR	%r6, %r31, $144	# build/example.ml#1165:5->1165:32
	LDR	%r5, %r31, $148	# build/example.ml#1165:5->1165:32
	LDR	%r4, %r31, $152	# build/example.ml#1165:5->1165:32
	LDR	%r3, %r31, $156	# build/example.ml#1165:5->1165:32
	LDR	%r2, %r31, $160	# build/example.ml#1165:5->1165:32
	LDR	%r1, %r31, $164	# build/example.ml#1165:5->1165:32
	FLDR	%fr2, %r31, $168	# build/example.ml#1165:5->1165:32
	FLDR	%fr1, %r31, $172	# build/example.ml#1165:5->1165:32
if_eq_cont.11704:
	J	$if_eq_cont.11702	# build/example.ml#1162:3->1167:33
if_eq.11701:
	SDR	%r6, %r31, $176	# build/example.ml#1163:5->1163:31
	SDR	%r5, %r31, $180	# build/example.ml#1163:5->1163:31
	SDR	%r4, %r31, $184	# build/example.ml#1163:5->1163:31
	SDR	%r3, %r31, $188	# build/example.ml#1163:5->1163:31
	SDR	%r2, %r31, $192	# build/example.ml#1163:5->1163:31
	SDR	%r1, %r31, $196	# build/example.ml#1163:5->1163:31
	FSDR	%fr2, %r31, $200	# build/example.ml#1163:5->1163:31
	FSDR	%fr1, %r31, $204	# build/example.ml#1163:5->1163:31
	FMV	%fr2, %fr7	# build/example.ml#1163:5->1163:31
	FMV	%fr1, %fr9	# build/example.ml#1163:5->1163:31
	FMV	%fr0, %fr8	# build/example.ml#1163:5->1163:31
	ADDI	%r31, %r31, $208	# build/example.ml#1163:5->1163:31
	ADDI	%r31, %r31, $4	# build/example.ml#1163:5->1163:31
	SIP	# build/example.ml#1163:5->1163:31
	J	$is_rect_outside.2816	# build/example.ml#1163:5->1163:31
	ADDI	%r31, %r31, $-208	# build/example.ml#1163:5->1163:31
	LDR	%r6, %r31, $176	# build/example.ml#1163:5->1163:31
	LDR	%r5, %r31, $180	# build/example.ml#1163:5->1163:31
	LDR	%r4, %r31, $184	# build/example.ml#1163:5->1163:31
	LDR	%r3, %r31, $188	# build/example.ml#1163:5->1163:31
	LDR	%r2, %r31, $192	# build/example.ml#1163:5->1163:31
	LDR	%r1, %r31, $196	# build/example.ml#1163:5->1163:31
	FLDR	%fr2, %r31, $200	# build/example.ml#1163:5->1163:31
	FLDR	%fr1, %r31, $204	# build/example.ml#1163:5->1163:31
if_eq_cont.11702:
	LDR	%r9, %r31, $0	# build/example.ml#1158:18->1158:29
	LDR	%r8, %r31, $4	# build/example.ml#1158:18->1158:29
	LDR	%r7, %r31, $8	# build/example.ml#1158:18->1158:29
	LDR	%r28, %r31, $12	# build/example.ml#1158:18->1158:29
	LDR	%r27, %r31, $16	# build/example.ml#1158:18->1158:29
	LDR	%r11, %r31, $20	# build/example.ml#1158:18->1158:29
	LDR	%r10, %r31, $24	# build/example.ml#1158:18->1158:29
	FLDR	%fr9, %r31, $28	# build/example.ml#1158:18->1158:29
	FLDR	%fr8, %r31, $32	# build/example.ml#1158:18->1158:29
	FLDR	%fr7, %r31, $36	# build/example.ml#1158:18->1158:29
	LINK	# build/example.ml#1158:18->1158:29
is_second_outside.2826:
	SDR	%r9, %r31, $0	# build/example.ml#1151:11->1151:31
	SDR	%r8, %r31, $4	# build/example.ml#1151:11->1151:31
	SDR	%r7, %r31, $8	# build/example.ml#1151:11->1151:31
	SDR	%r11, %r31, $12	# build/example.ml#1151:11->1151:31
	SDR	%r10, %r31, $16	# build/example.ml#1151:11->1151:31
	FSDR	%fr9, %r31, $20	# build/example.ml#1151:11->1151:31
	FSDR	%fr8, %r31, $24	# build/example.ml#1151:11->1151:31
	SDR	%r6, %r31, $28	# build/example.ml#1151:11->1151:31
	SDR	%r5, %r31, $32	# build/example.ml#1151:11->1151:31
	SDR	%r4, %r31, $36	# build/example.ml#1151:11->1151:31
	SDR	%r3, %r31, $40	# build/example.ml#1151:11->1151:31
	SDR	%r2, %r31, $44	# build/example.ml#1151:11->1151:31
	SDR	%r1, %r31, $48	# build/example.ml#1151:11->1151:31
	FSDR	%fr2, %r31, $52	# build/example.ml#1151:11->1151:31
	FSDR	%fr1, %r31, $56	# build/example.ml#1151:11->1151:31
	ADDI	%r31, %r31, $60	# build/example.ml#1151:11->1151:31
	ADDI	%r31, %r31, $4	# build/example.ml#1151:11->1151:31
	SIP	# build/example.ml#1151:11->1151:31
	J	$quadratic.2734	# build/example.ml#1151:11->1151:31
	ADDI	%r31, %r31, $-60	# build/example.ml#1151:11->1151:31
	FMV	%fr9, %fr0	# build/example.ml#1151:11->1151:31
	LDR	%r6, %r31, $28	# build/example.ml#1151:11->1151:31
	LDR	%r5, %r31, $32	# build/example.ml#1151:11->1151:31
	LDR	%r4, %r31, $36	# build/example.ml#1151:11->1151:31
	LDR	%r3, %r31, $40	# build/example.ml#1151:11->1151:31
	LDR	%r2, %r31, $44	# build/example.ml#1151:11->1151:31
	LDR	%r1, %r31, $48	# build/example.ml#1151:11->1151:31
	FLDR	%fr2, %r31, $52	# build/example.ml#1151:11->1151:31
	FLDR	%fr1, %r31, $56	# build/example.ml#1151:11->1151:31
	MV	%r9, %r2	# build/example.ml#159:3->164:10
	MVI	%r8, $3	# build/example.ml#1152:26->1152:27
	CEQ	%r9, %r8	# build/example.ml#1152:12->1152:48
	JZ	$if_eq.11705	# build/example.ml#1152:12->1152:48
	FMV	%r0, %fr9	# build/example.ml#1152:47->1152:48
	MV	%fr9, %r0	# build/example.ml#1152:47->1152:48
	J	$if_eq_cont.11706	# build/example.ml#1152:12->1152:48
if_eq.11705:
	FLDA	%fr8, $l.7785	# build/example.ml#1152:38->1152:41
	FSUB	%r0, %fr9, %fr8	# build/example.ml#1152:33->1152:41
	MV	%fr9, %r0	# build/example.ml#1152:33->1152:41
if_eq_cont.11706:
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	SDR	%r6, %r31, $60	# build/example.ml#1153:28->1153:37
	SDR	%r5, %r31, $64	# build/example.ml#1153:28->1153:37
	SDR	%r4, %r31, $68	# build/example.ml#1153:28->1153:37
	SDR	%r3, %r31, $72	# build/example.ml#1153:28->1153:37
	SDR	%r2, %r31, $76	# build/example.ml#1153:28->1153:37
	SDR	%r1, %r31, $80	# build/example.ml#1153:28->1153:37
	FSDR	%fr2, %r31, $84	# build/example.ml#1153:28->1153:37
	FSDR	%fr1, %r31, $88	# build/example.ml#1153:28->1153:37
	FMV	%fr0, %fr9	# build/example.ml#1153:28->1153:37
	ADDI	%r31, %r31, $92	# build/example.ml#1153:28->1153:37
	ADDI	%r31, %r31, $4	# build/example.ml#1153:28->1153:37
	SIP	# build/example.ml#1153:28->1153:37
	J	$min_caml_fisneg	# build/example.ml#1153:28->1153:37
	ADDI	%r31, %r31, $-92	# build/example.ml#1153:28->1153:37
	MV	%r8, %r0	# build/example.ml#1153:28->1153:37
	LDR	%r6, %r31, $60	# build/example.ml#1153:28->1153:37
	LDR	%r5, %r31, $64	# build/example.ml#1153:28->1153:37
	LDR	%r4, %r31, $68	# build/example.ml#1153:28->1153:37
	LDR	%r3, %r31, $72	# build/example.ml#1153:28->1153:37
	LDR	%r2, %r31, $76	# build/example.ml#1153:28->1153:37
	LDR	%r1, %r31, $80	# build/example.ml#1153:28->1153:37
	FLDR	%fr2, %r31, $84	# build/example.ml#1153:28->1153:37
	FLDR	%fr1, %r31, $88	# build/example.ml#1153:28->1153:37
	SDR	%r2, %r31, $92	# build/example.ml#1153:8->1153:38
	SDR	%r1, %r31, $96	# build/example.ml#1153:8->1153:38
	MV	%r2, %r8	# build/example.ml#1153:8->1153:38
	MV	%r1, %r9	# build/example.ml#1153:8->1153:38
	ADDI	%r31, %r31, $100	# build/example.ml#1153:8->1153:38
	ADDI	%r31, %r31, $4	# build/example.ml#1153:8->1153:38
	SIP	# build/example.ml#1153:8->1153:38
	J	$xor.2562	# build/example.ml#1153:8->1153:38
	ADDI	%r31, %r31, $-100	# build/example.ml#1153:8->1153:38
	MV	%r8, %r0	# build/example.ml#1153:8->1153:38
	LDR	%r2, %r31, $92	# build/example.ml#1153:8->1153:38
	LDR	%r1, %r31, $96	# build/example.ml#1153:8->1153:38
	MVI	%r9, $0	# build/example.ml#1153:3->1153:39
	CEQ	%r8, %r9	# build/example.ml#1153:3->1153:39
	JZ	$if_eq.11707	# build/example.ml#1153:3->1153:39
	MVI	%r0, $0	# build/example.ml#1153:3->1153:39
	J	$if_eq_cont.11708	# build/example.ml#1153:3->1153:39
if_eq.11707:
	MVI	%r0, $1	# build/example.ml#1153:3->1153:39
if_eq_cont.11708:
	LDR	%r9, %r31, $0	# build/example.ml#1151:11->1151:31
	LDR	%r8, %r31, $4	# build/example.ml#1151:11->1151:31
	LDR	%r7, %r31, $8	# build/example.ml#1151:11->1151:31
	LDR	%r11, %r31, $12	# build/example.ml#1151:11->1151:31
	LDR	%r10, %r31, $16	# build/example.ml#1151:11->1151:31
	FLDR	%fr9, %r31, $20	# build/example.ml#1151:11->1151:31
	FLDR	%fr8, %r31, $24	# build/example.ml#1151:11->1151:31
	LINK	# build/example.ml#1151:11->1151:31
is_plane_outside.2821:
	SDR	%r9, %r31, $0	# build/example.ml#227:3->232:8
	SDR	%r8, %r31, $4	# build/example.ml#227:3->232:8
	SDR	%r7, %r31, $8	# build/example.ml#227:3->232:8
	SDR	%r11, %r31, $12	# build/example.ml#227:3->232:8
	SDR	%r10, %r31, $16	# build/example.ml#227:3->232:8
	FSDR	%fr9, %r31, $20	# build/example.ml#227:3->232:8
	MV	%r9, %r5	# build/example.ml#227:3->232:8
	SDR	%r1, %r31, $24	# build/example.ml#1145:11->1145:45
	FSDR	%fr2, %r31, $28	# build/example.ml#1145:11->1145:45
	FSDR	%fr1, %r31, $32	# build/example.ml#1145:11->1145:45
	MV	%r1, %r9	# build/example.ml#1145:11->1145:45
	ADDI	%r31, %r31, $36	# build/example.ml#1145:11->1145:45
	ADDI	%r31, %r31, $4	# build/example.ml#1145:11->1145:45
	SIP	# build/example.ml#1145:11->1145:45
	J	$veciprod2.2597	# build/example.ml#1145:11->1145:45
	ADDI	%r31, %r31, $-36	# build/example.ml#1145:11->1145:45
	FMV	%fr9, %fr0	# build/example.ml#1145:11->1145:45
	LDR	%r1, %r31, $24	# build/example.ml#1145:11->1145:45
	FLDR	%fr2, %r31, $28	# build/example.ml#1145:11->1145:45
	FLDR	%fr1, %r31, $32	# build/example.ml#1145:11->1145:45
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	SDR	%r6, %r31, $36	# build/example.ml#1146:28->1146:36
	SDR	%r5, %r31, $40	# build/example.ml#1146:28->1146:36
	SDR	%r4, %r31, $44	# build/example.ml#1146:28->1146:36
	SDR	%r3, %r31, $48	# build/example.ml#1146:28->1146:36
	SDR	%r2, %r31, $52	# build/example.ml#1146:28->1146:36
	SDR	%r1, %r31, $56	# build/example.ml#1146:28->1146:36
	FSDR	%fr2, %r31, $60	# build/example.ml#1146:28->1146:36
	FSDR	%fr1, %r31, $64	# build/example.ml#1146:28->1146:36
	FMV	%fr0, %fr9	# build/example.ml#1146:28->1146:36
	ADDI	%r31, %r31, $68	# build/example.ml#1146:28->1146:36
	ADDI	%r31, %r31, $4	# build/example.ml#1146:28->1146:36
	SIP	# build/example.ml#1146:28->1146:36
	J	$min_caml_fisneg	# build/example.ml#1146:28->1146:36
	ADDI	%r31, %r31, $-68	# build/example.ml#1146:28->1146:36
	MV	%r8, %r0	# build/example.ml#1146:28->1146:36
	LDR	%r6, %r31, $36	# build/example.ml#1146:28->1146:36
	LDR	%r5, %r31, $40	# build/example.ml#1146:28->1146:36
	LDR	%r4, %r31, $44	# build/example.ml#1146:28->1146:36
	LDR	%r3, %r31, $48	# build/example.ml#1146:28->1146:36
	LDR	%r2, %r31, $52	# build/example.ml#1146:28->1146:36
	LDR	%r1, %r31, $56	# build/example.ml#1146:28->1146:36
	FLDR	%fr2, %r31, $60	# build/example.ml#1146:28->1146:36
	FLDR	%fr1, %r31, $64	# build/example.ml#1146:28->1146:36
	SDR	%r2, %r31, $68	# build/example.ml#1146:8->1146:37
	SDR	%r1, %r31, $72	# build/example.ml#1146:8->1146:37
	MV	%r2, %r8	# build/example.ml#1146:8->1146:37
	MV	%r1, %r9	# build/example.ml#1146:8->1146:37
	ADDI	%r31, %r31, $76	# build/example.ml#1146:8->1146:37
	ADDI	%r31, %r31, $4	# build/example.ml#1146:8->1146:37
	SIP	# build/example.ml#1146:8->1146:37
	J	$xor.2562	# build/example.ml#1146:8->1146:37
	ADDI	%r31, %r31, $-76	# build/example.ml#1146:8->1146:37
	MV	%r8, %r0	# build/example.ml#1146:8->1146:37
	LDR	%r2, %r31, $68	# build/example.ml#1146:8->1146:37
	LDR	%r1, %r31, $72	# build/example.ml#1146:8->1146:37
	MVI	%r9, $0	# build/example.ml#1146:3->1146:38
	CEQ	%r8, %r9	# build/example.ml#1146:3->1146:38
	JZ	$if_eq.11709	# build/example.ml#1146:3->1146:38
	MVI	%r0, $0	# build/example.ml#1146:3->1146:38
	J	$if_eq_cont.11710	# build/example.ml#1146:3->1146:38
if_eq.11709:
	MVI	%r0, $1	# build/example.ml#1146:3->1146:38
if_eq_cont.11710:
	LDR	%r9, %r31, $0	# build/example.ml#227:3->232:8
	LDR	%r8, %r31, $4	# build/example.ml#227:3->232:8
	LDR	%r7, %r31, $8	# build/example.ml#227:3->232:8
	LDR	%r11, %r31, $12	# build/example.ml#227:3->232:8
	LDR	%r10, %r31, $16	# build/example.ml#227:3->232:8
	FLDR	%fr9, %r31, $20	# build/example.ml#227:3->232:8
	LINK	# build/example.ml#227:3->232:8
is_rect_outside.2816:
	SDR	%r9, %r31, $0	# build/example.ml#1135:16->1135:23
	SDR	%r8, %r31, $4	# build/example.ml#1135:16->1135:23
	SDR	%r7, %r31, $8	# build/example.ml#1135:16->1135:23
	SDR	%r28, %r31, $12	# build/example.ml#1135:16->1135:23
	SDR	%r27, %r31, $16	# build/example.ml#1135:16->1135:23
	SDR	%r11, %r31, $20	# build/example.ml#1135:16->1135:23
	SDR	%r10, %r31, $24	# build/example.ml#1135:16->1135:23
	FSDR	%fr9, %r31, $28	# build/example.ml#1135:16->1135:23
	FSDR	%fr8, %r31, $32	# build/example.ml#1135:16->1135:23
	FABS	%fr8, %fr0	# build/example.ml#1135:16->1135:23
	SDR	%r6, %r31, $36	# build/example.ml#1135:26->1135:37
	SDR	%r5, %r31, $40	# build/example.ml#1135:26->1135:37
	SDR	%r4, %r31, $44	# build/example.ml#1135:26->1135:37
	SDR	%r3, %r31, $48	# build/example.ml#1135:26->1135:37
	SDR	%r2, %r31, $52	# build/example.ml#1135:26->1135:37
	SDR	%r1, %r31, $56	# build/example.ml#1135:26->1135:37
	ADDI	%r31, %r31, $60	# build/example.ml#1135:26->1135:37
	ADDI	%r31, %r31, $4	# build/example.ml#1135:26->1135:37
	SIP	# build/example.ml#1135:26->1135:37
	J	$o_param_a.2629	# build/example.ml#1135:26->1135:37
	ADDI	%r31, %r31, $-60	# build/example.ml#1135:26->1135:37
	FMV	%fr9, %fr0	# build/example.ml#1135:26->1135:37
	LDR	%r6, %r31, $36	# build/example.ml#1135:26->1135:37
	LDR	%r5, %r31, $40	# build/example.ml#1135:26->1135:37
	LDR	%r4, %r31, $44	# build/example.ml#1135:26->1135:37
	LDR	%r3, %r31, $48	# build/example.ml#1135:26->1135:37
	LDR	%r2, %r31, $52	# build/example.ml#1135:26->1135:37
	LDR	%r1, %r31, $56	# build/example.ml#1135:26->1135:37
	SDR	%r6, %r31, $60	# build/example.ml#1135:9->1135:38
	SDR	%r5, %r31, $64	# build/example.ml#1135:9->1135:38
	SDR	%r4, %r31, $68	# build/example.ml#1135:9->1135:38
	SDR	%r3, %r31, $72	# build/example.ml#1135:9->1135:38
	SDR	%r2, %r31, $76	# build/example.ml#1135:9->1135:38
	SDR	%r1, %r31, $80	# build/example.ml#1135:9->1135:38
	FSDR	%fr2, %r31, $84	# build/example.ml#1135:9->1135:38
	FSDR	%fr1, %r31, $88	# build/example.ml#1135:9->1135:38
	FMV	%fr1, %fr9	# build/example.ml#1135:9->1135:38
	FMV	%fr0, %fr8	# build/example.ml#1135:9->1135:38
	ADDI	%r31, %r31, $92	# build/example.ml#1135:9->1135:38
	ADDI	%r31, %r31, $4	# build/example.ml#1135:9->1135:38
	SIP	# build/example.ml#1135:9->1135:38
	J	$min_caml_fless	# build/example.ml#1135:9->1135:38
	ADDI	%r31, %r31, $-92	# build/example.ml#1135:9->1135:38
	MV	%r27, %r0	# build/example.ml#1135:9->1135:38
	LDR	%r6, %r31, $60	# build/example.ml#1135:9->1135:38
	LDR	%r5, %r31, $64	# build/example.ml#1135:9->1135:38
	LDR	%r4, %r31, $68	# build/example.ml#1135:9->1135:38
	LDR	%r3, %r31, $72	# build/example.ml#1135:9->1135:38
	LDR	%r2, %r31, $76	# build/example.ml#1135:9->1135:38
	LDR	%r1, %r31, $80	# build/example.ml#1135:9->1135:38
	FLDR	%fr2, %r31, $84	# build/example.ml#1135:9->1135:38
	FLDR	%fr1, %r31, $88	# build/example.ml#1135:9->1135:38
	MVI	%r28, $0	# build/example.ml#1135:5->1139:15
	CEQ	%r27, %r28	# build/example.ml#1135:5->1139:15
	JZ	$if_eq.11711	# build/example.ml#1135:5->1139:15
	FABS	%fr8, %fr1	# build/example.ml#1136:18->1136:25
	SDR	%r6, %r31, $92	# build/example.ml#1136:28->1136:39
	SDR	%r5, %r31, $96	# build/example.ml#1136:28->1136:39
	SDR	%r4, %r31, $100	# build/example.ml#1136:28->1136:39
	SDR	%r3, %r31, $104	# build/example.ml#1136:28->1136:39
	SDR	%r2, %r31, $108	# build/example.ml#1136:28->1136:39
	SDR	%r1, %r31, $112	# build/example.ml#1136:28->1136:39
	ADDI	%r31, %r31, $116	# build/example.ml#1136:28->1136:39
	ADDI	%r31, %r31, $4	# build/example.ml#1136:28->1136:39
	SIP	# build/example.ml#1136:28->1136:39
	J	$o_param_b.2631	# build/example.ml#1136:28->1136:39
	ADDI	%r31, %r31, $-116	# build/example.ml#1136:28->1136:39
	FMV	%fr9, %fr0	# build/example.ml#1136:28->1136:39
	LDR	%r6, %r31, $92	# build/example.ml#1136:28->1136:39
	LDR	%r5, %r31, $96	# build/example.ml#1136:28->1136:39
	LDR	%r4, %r31, $100	# build/example.ml#1136:28->1136:39
	LDR	%r3, %r31, $104	# build/example.ml#1136:28->1136:39
	LDR	%r2, %r31, $108	# build/example.ml#1136:28->1136:39
	LDR	%r1, %r31, $112	# build/example.ml#1136:28->1136:39
	SDR	%r6, %r31, $116	# build/example.ml#1136:11->1136:40
	SDR	%r5, %r31, $120	# build/example.ml#1136:11->1136:40
	SDR	%r4, %r31, $124	# build/example.ml#1136:11->1136:40
	SDR	%r3, %r31, $128	# build/example.ml#1136:11->1136:40
	SDR	%r2, %r31, $132	# build/example.ml#1136:11->1136:40
	SDR	%r1, %r31, $136	# build/example.ml#1136:11->1136:40
	FSDR	%fr2, %r31, $140	# build/example.ml#1136:11->1136:40
	FSDR	%fr1, %r31, $144	# build/example.ml#1136:11->1136:40
	FMV	%fr1, %fr9	# build/example.ml#1136:11->1136:40
	FMV	%fr0, %fr8	# build/example.ml#1136:11->1136:40
	ADDI	%r31, %r31, $148	# build/example.ml#1136:11->1136:40
	ADDI	%r31, %r31, $4	# build/example.ml#1136:11->1136:40
	SIP	# build/example.ml#1136:11->1136:40
	J	$min_caml_fless	# build/example.ml#1136:11->1136:40
	ADDI	%r31, %r31, $-148	# build/example.ml#1136:11->1136:40
	MV	%r27, %r0	# build/example.ml#1136:11->1136:40
	LDR	%r6, %r31, $116	# build/example.ml#1136:11->1136:40
	LDR	%r5, %r31, $120	# build/example.ml#1136:11->1136:40
	LDR	%r4, %r31, $124	# build/example.ml#1136:11->1136:40
	LDR	%r3, %r31, $128	# build/example.ml#1136:11->1136:40
	LDR	%r2, %r31, $132	# build/example.ml#1136:11->1136:40
	LDR	%r1, %r31, $136	# build/example.ml#1136:11->1136:40
	FLDR	%fr2, %r31, $140	# build/example.ml#1136:11->1136:40
	FLDR	%fr1, %r31, $144	# build/example.ml#1136:11->1136:40
	MVI	%r28, $0	# build/example.ml#1136:7->1138:17
	CEQ	%r27, %r28	# build/example.ml#1136:7->1138:17
	JZ	$if_eq.11713	# build/example.ml#1136:7->1138:17
	FABS	%fr8, %fr2	# build/example.ml#1137:9->1137:16
	SDR	%r6, %r31, $148	# build/example.ml#1137:19->1137:30
	SDR	%r5, %r31, $152	# build/example.ml#1137:19->1137:30
	SDR	%r4, %r31, $156	# build/example.ml#1137:19->1137:30
	SDR	%r3, %r31, $160	# build/example.ml#1137:19->1137:30
	SDR	%r2, %r31, $164	# build/example.ml#1137:19->1137:30
	SDR	%r1, %r31, $168	# build/example.ml#1137:19->1137:30
	ADDI	%r31, %r31, $172	# build/example.ml#1137:19->1137:30
	ADDI	%r31, %r31, $4	# build/example.ml#1137:19->1137:30
	SIP	# build/example.ml#1137:19->1137:30
	J	$o_param_c.2633	# build/example.ml#1137:19->1137:30
	ADDI	%r31, %r31, $-172	# build/example.ml#1137:19->1137:30
	FMV	%fr9, %fr0	# build/example.ml#1137:19->1137:30
	LDR	%r6, %r31, $148	# build/example.ml#1137:19->1137:30
	LDR	%r5, %r31, $152	# build/example.ml#1137:19->1137:30
	LDR	%r4, %r31, $156	# build/example.ml#1137:19->1137:30
	LDR	%r3, %r31, $160	# build/example.ml#1137:19->1137:30
	LDR	%r2, %r31, $164	# build/example.ml#1137:19->1137:30
	LDR	%r1, %r31, $168	# build/example.ml#1137:19->1137:30
	SDR	%r6, %r31, $172	# build/example.ml#1137:2->1137:31
	SDR	%r5, %r31, $176	# build/example.ml#1137:2->1137:31
	SDR	%r4, %r31, $180	# build/example.ml#1137:2->1137:31
	SDR	%r3, %r31, $184	# build/example.ml#1137:2->1137:31
	SDR	%r2, %r31, $188	# build/example.ml#1137:2->1137:31
	SDR	%r1, %r31, $192	# build/example.ml#1137:2->1137:31
	FSDR	%fr2, %r31, $196	# build/example.ml#1137:2->1137:31
	FSDR	%fr1, %r31, $200	# build/example.ml#1137:2->1137:31
	FMV	%fr1, %fr9	# build/example.ml#1137:2->1137:31
	FMV	%fr0, %fr8	# build/example.ml#1137:2->1137:31
	ADDI	%r31, %r31, $204	# build/example.ml#1137:2->1137:31
	ADDI	%r31, %r31, $4	# build/example.ml#1137:2->1137:31
	SIP	# build/example.ml#1137:2->1137:31
	J	$min_caml_fless	# build/example.ml#1137:2->1137:31
	ADDI	%r31, %r31, $-204	# build/example.ml#1137:2->1137:31
	LDR	%r6, %r31, $172	# build/example.ml#1137:2->1137:31
	LDR	%r5, %r31, $176	# build/example.ml#1137:2->1137:31
	LDR	%r4, %r31, $180	# build/example.ml#1137:2->1137:31
	LDR	%r3, %r31, $184	# build/example.ml#1137:2->1137:31
	LDR	%r2, %r31, $188	# build/example.ml#1137:2->1137:31
	LDR	%r1, %r31, $192	# build/example.ml#1137:2->1137:31
	FLDR	%fr2, %r31, $196	# build/example.ml#1137:2->1137:31
	FLDR	%fr1, %r31, $200	# build/example.ml#1137:2->1137:31
	J	$if_eq_cont.11714	# build/example.ml#1136:7->1138:17
if_eq.11713:
	MVI	%r0, $0	# build/example.ml#1138:12->1138:17
if_eq_cont.11714:
	MV	%r8, %r0	# build/example.ml#1136:7->1138:17
	J	$if_eq_cont.11712	# build/example.ml#1135:5->1139:15
if_eq.11711:
	MVI	%r0, $0	# build/example.ml#1139:10->1139:15
	MV	%r8, %r0	# build/example.ml#1139:10->1139:15
if_eq_cont.11712:
	MVI	%r9, $0	# build/example.ml#1134:3->1140:44
	CEQ	%r8, %r9	# build/example.ml#1134:3->1140:44
	JZ	$if_eq.11715	# build/example.ml#1134:3->1140:44
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	MV	%r0, %r9	# build/example.ml#183:3->183:11
	J	$if_eq_cont.11716	# build/example.ml#1134:3->1140:44
if_eq.11715:
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	MVI	%r8, $0	# build/example.ml#1140:26->1140:44
	CEQ	%r9, %r8	# build/example.ml#1140:26->1140:44
	JZ	$if_eq.11717	# build/example.ml#1140:26->1140:44
	MVI	%r0, $0	# build/example.ml#1140:26->1140:44
	J	$if_eq_cont.11718	# build/example.ml#1140:26->1140:44
if_eq.11717:
	MVI	%r0, $1	# build/example.ml#1140:26->1140:44
if_eq_cont.11718:
if_eq_cont.11716:
	LDR	%r9, %r31, $0	# build/example.ml#1135:16->1135:23
	LDR	%r8, %r31, $4	# build/example.ml#1135:16->1135:23
	LDR	%r7, %r31, $8	# build/example.ml#1135:16->1135:23
	LDR	%r28, %r31, $12	# build/example.ml#1135:16->1135:23
	LDR	%r27, %r31, $16	# build/example.ml#1135:16->1135:23
	LDR	%r11, %r31, $20	# build/example.ml#1135:16->1135:23
	LDR	%r10, %r31, $24	# build/example.ml#1135:16->1135:23
	FLDR	%fr9, %r31, $28	# build/example.ml#1135:16->1135:23
	FLDR	%fr8, %r31, $32	# build/example.ml#1135:16->1135:23
	LINK	# build/example.ml#1135:16->1135:23
setup_startp.2814:
	SDR	%r9, %r31, $0	# build/example.ml#1122:10->1122:21
	SDR	%r8, %r31, $4	# build/example.ml#1122:10->1122:21
	MVI	%r9, $min_caml_startp_fast	# build/example.ml#1122:10->1122:21
	SDR	%r1, %r31, $8	# build/example.ml#1122:3->1122:23
	MV	%r2, %r1	# build/example.ml#1122:3->1122:23
	MV	%r1, %r9	# build/example.ml#1122:3->1122:23
	ADDI	%r31, %r31, $12	# build/example.ml#1122:3->1122:23
	ADDI	%r31, %r31, $4	# build/example.ml#1122:3->1122:23
	SIP	# build/example.ml#1122:3->1122:23
	J	$veccpy.2583	# build/example.ml#1122:3->1122:23
	ADDI	%r31, %r31, $-12	# build/example.ml#1122:3->1122:23
	LDR	%r1, %r31, $8	# build/example.ml#1122:3->1122:23
	MVI	%r8, $min_caml_n_objects	# build/example.ml#1123:29->1123:38
	MVI	%r9, $0	# build/example.ml#1123:40->1123:41
	LDD	%r8, %r8, $4, %r9	# build/example.ml#671:7->671:25
	MVI	%r9, $1	# build/example.ml#1123:45->1123:46
	SUB	%r9, %r8, %r9	# build/example.ml#1123:29->1123:46
	SDR	%r1, %r31, $12	# build/example.ml#1123:3->1123:47
	MV	%r2, %r9	# build/example.ml#1123:3->1123:47
	ADDI	%r31, %r31, $16	# build/example.ml#1123:3->1123:47
	ADDI	%r31, %r31, $4	# build/example.ml#1123:3->1123:47
	SIP	# build/example.ml#1123:3->1123:47
	J	$setup_startp_constants.2811	# build/example.ml#1123:3->1123:47
	ADDI	%r31, %r31, $-16	# build/example.ml#1123:3->1123:47
	LDR	%r1, %r31, $12	# build/example.ml#1123:3->1123:47
	LDR	%r9, %r31, $0	# build/example.ml#1122:10->1122:21
	LDR	%r8, %r31, $4	# build/example.ml#1122:10->1122:21
	LINK	# build/example.ml#1122:10->1122:21
setup_startp_constants.2811:
	SDR	%r9, %r31, $0	# build/example.ml#1103:15->1103:16
	SDR	%r8, %r31, $4	# build/example.ml#1103:15->1103:16
	SDR	%r7, %r31, $8	# build/example.ml#1103:15->1103:16
	SDR	%r28, %r31, $12	# build/example.ml#1103:15->1103:16
	SDR	%r27, %r31, $16	# build/example.ml#1103:15->1103:16
	SDR	%r26, %r31, $20	# build/example.ml#1103:15->1103:16
	SDR	%r25, %r31, $24	# build/example.ml#1103:15->1103:16
	SDR	%r24, %r31, $28	# build/example.ml#1103:15->1103:16
	SDR	%r23, %r31, $32	# build/example.ml#1103:15->1103:16
	SDR	%r22, %r31, $36	# build/example.ml#1103:15->1103:16
	SDR	%r21, %r31, $40	# build/example.ml#1103:15->1103:16
	FSDR	%fr9, %r31, $44	# build/example.ml#1103:15->1103:16
	FSDR	%fr8, %r31, $48	# build/example.ml#1103:15->1103:16
	FSDR	%fr7, %r31, $52	# build/example.ml#1103:15->1103:16
	MVI	%r9, $0	# build/example.ml#1103:15->1103:16
	CMP	%r2, %r9	# build/example.ml#1103:3->1118:13
	JZ	$if_lt.11719	# build/example.ml#1103:3->1118:13
	MVI	%r9, $min_caml_objects	# build/example.ml#1104:15->1104:22
	LDD	%r25, %r9, $4, %r2	# build/example.ml#637:7->637:25
	LDR	%r9, %r25, $40	# build/example.ml#1104:5->1117:41
	LDR	%r8, %r25, $36	# build/example.ml#1104:5->1117:41
	LDR	%r7, %r25, $32	# build/example.ml#1104:5->1117:41
	LDR	%r6, %r25, $28	# build/example.ml#1104:5->1117:41
	LDR	%r5, %r25, $24	# build/example.ml#1104:5->1117:41
	LDR	%r4, %r25, $20	# build/example.ml#1104:5->1117:41
	LDR	%r3, %r25, $16	# build/example.ml#1104:5->1117:41
	LDR	%r28, %r25, $12	# build/example.ml#1104:5->1117:41
	LDR	%r27, %r25, $8	# build/example.ml#1104:5->1117:41
	LDR	%r26, %r25, $4	# build/example.ml#1104:5->1117:41
	LDR	%r25, %r25, $0	# build/example.ml#1104:5->1117:41
	MV	%r23, %r9	# build/example.ml#354:3->359:9
	MV	%r24, %r26	# build/example.ml#159:3->164:10
	MVI	%r21, $0	# build/example.ml#1107:13->1107:14
	MVI	%r22, $0	# build/example.ml#1107:22->1107:23
	FLDD	%fr8, %r1, $4, %r22	# build/example.ml#1107:19->1107:24
	SDR	%r6, %r31, $56	# build/example.ml#1107:28->1107:41
	SDR	%r5, %r31, $60	# build/example.ml#1107:28->1107:41
	SDR	%r4, %r31, $64	# build/example.ml#1107:28->1107:41
	SDR	%r3, %r31, $68	# build/example.ml#1107:28->1107:41
	SDR	%r2, %r31, $72	# build/example.ml#1107:28->1107:41
	SDR	%r1, %r31, $76	# build/example.ml#1107:28->1107:41
	MV	%r11, %r9	# build/example.ml#1107:28->1107:41
	MV	%r10, %r8	# build/example.ml#1107:28->1107:41
	MV	%r2, %r26	# build/example.ml#1107:28->1107:41
	MV	%r1, %r25	# build/example.ml#1107:28->1107:41
	MV	%r9, %r7	# build/example.ml#1107:28->1107:41
	MV	%r8, %r6	# build/example.ml#1107:28->1107:41
	MV	%r7, %r5	# build/example.ml#1107:28->1107:41
	MV	%r6, %r4	# build/example.ml#1107:28->1107:41
	MV	%r5, %r3	# build/example.ml#1107:28->1107:41
	MV	%r4, %r28	# build/example.ml#1107:28->1107:41
	MV	%r3, %r27	# build/example.ml#1107:28->1107:41
	ADDI	%r31, %r31, $80	# build/example.ml#1107:28->1107:41
	ADDI	%r31, %r31, $4	# build/example.ml#1107:28->1107:41
	SIP	# build/example.ml#1107:28->1107:41
	J	$o_param_x.2637	# build/example.ml#1107:28->1107:41
	ADDI	%r31, %r31, $-80	# build/example.ml#1107:28->1107:41
	FMV	%fr9, %fr0	# build/example.ml#1107:28->1107:41
	LDR	%r6, %r31, $56	# build/example.ml#1107:28->1107:41
	LDR	%r5, %r31, $60	# build/example.ml#1107:28->1107:41
	LDR	%r4, %r31, $64	# build/example.ml#1107:28->1107:41
	LDR	%r3, %r31, $68	# build/example.ml#1107:28->1107:41
	LDR	%r2, %r31, $72	# build/example.ml#1107:28->1107:41
	LDR	%r1, %r31, $76	# build/example.ml#1107:28->1107:41
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1107:19->1107:41
	FSDD	%fr9, %r23, $4, %r21	# build/example.ml#1107:5->1107:41
	MVI	%r21, $1	# build/example.ml#1108:13->1108:14
	MVI	%r22, $1	# build/example.ml#1108:22->1108:23
	FLDD	%fr8, %r1, $4, %r22	# build/example.ml#1107:19->1107:24
	SDR	%r6, %r31, $80	# build/example.ml#1108:28->1108:41
	SDR	%r5, %r31, $84	# build/example.ml#1108:28->1108:41
	SDR	%r4, %r31, $88	# build/example.ml#1108:28->1108:41
	SDR	%r3, %r31, $92	# build/example.ml#1108:28->1108:41
	SDR	%r2, %r31, $96	# build/example.ml#1108:28->1108:41
	SDR	%r1, %r31, $100	# build/example.ml#1108:28->1108:41
	MV	%r11, %r9	# build/example.ml#1108:28->1108:41
	MV	%r10, %r8	# build/example.ml#1108:28->1108:41
	MV	%r2, %r26	# build/example.ml#1108:28->1108:41
	MV	%r1, %r25	# build/example.ml#1108:28->1108:41
	MV	%r9, %r7	# build/example.ml#1108:28->1108:41
	MV	%r8, %r6	# build/example.ml#1108:28->1108:41
	MV	%r7, %r5	# build/example.ml#1108:28->1108:41
	MV	%r6, %r4	# build/example.ml#1108:28->1108:41
	MV	%r5, %r3	# build/example.ml#1108:28->1108:41
	MV	%r4, %r28	# build/example.ml#1108:28->1108:41
	MV	%r3, %r27	# build/example.ml#1108:28->1108:41
	ADDI	%r31, %r31, $104	# build/example.ml#1108:28->1108:41
	ADDI	%r31, %r31, $4	# build/example.ml#1108:28->1108:41
	SIP	# build/example.ml#1108:28->1108:41
	J	$o_param_y.2639	# build/example.ml#1108:28->1108:41
	ADDI	%r31, %r31, $-104	# build/example.ml#1108:28->1108:41
	FMV	%fr9, %fr0	# build/example.ml#1108:28->1108:41
	LDR	%r6, %r31, $80	# build/example.ml#1108:28->1108:41
	LDR	%r5, %r31, $84	# build/example.ml#1108:28->1108:41
	LDR	%r4, %r31, $88	# build/example.ml#1108:28->1108:41
	LDR	%r3, %r31, $92	# build/example.ml#1108:28->1108:41
	LDR	%r2, %r31, $96	# build/example.ml#1108:28->1108:41
	LDR	%r1, %r31, $100	# build/example.ml#1108:28->1108:41
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1108:19->1108:41
	FSDD	%fr9, %r23, $4, %r21	# build/example.ml#1108:5->1108:41
	MVI	%r21, $2	# build/example.ml#1109:13->1109:14
	MVI	%r22, $2	# build/example.ml#1109:22->1109:23
	FLDD	%fr8, %r1, $4, %r22	# build/example.ml#1107:19->1107:24
	SDR	%r6, %r31, $104	# build/example.ml#1109:28->1109:41
	SDR	%r5, %r31, $108	# build/example.ml#1109:28->1109:41
	SDR	%r4, %r31, $112	# build/example.ml#1109:28->1109:41
	SDR	%r3, %r31, $116	# build/example.ml#1109:28->1109:41
	SDR	%r2, %r31, $120	# build/example.ml#1109:28->1109:41
	SDR	%r1, %r31, $124	# build/example.ml#1109:28->1109:41
	MV	%r11, %r9	# build/example.ml#1109:28->1109:41
	MV	%r10, %r8	# build/example.ml#1109:28->1109:41
	MV	%r2, %r26	# build/example.ml#1109:28->1109:41
	MV	%r1, %r25	# build/example.ml#1109:28->1109:41
	MV	%r9, %r7	# build/example.ml#1109:28->1109:41
	MV	%r8, %r6	# build/example.ml#1109:28->1109:41
	MV	%r7, %r5	# build/example.ml#1109:28->1109:41
	MV	%r6, %r4	# build/example.ml#1109:28->1109:41
	MV	%r5, %r3	# build/example.ml#1109:28->1109:41
	MV	%r4, %r28	# build/example.ml#1109:28->1109:41
	MV	%r3, %r27	# build/example.ml#1109:28->1109:41
	ADDI	%r31, %r31, $128	# build/example.ml#1109:28->1109:41
	ADDI	%r31, %r31, $4	# build/example.ml#1109:28->1109:41
	SIP	# build/example.ml#1109:28->1109:41
	J	$o_param_z.2641	# build/example.ml#1109:28->1109:41
	ADDI	%r31, %r31, $-128	# build/example.ml#1109:28->1109:41
	FMV	%fr9, %fr0	# build/example.ml#1109:28->1109:41
	LDR	%r6, %r31, $104	# build/example.ml#1109:28->1109:41
	LDR	%r5, %r31, $108	# build/example.ml#1109:28->1109:41
	LDR	%r4, %r31, $112	# build/example.ml#1109:28->1109:41
	LDR	%r3, %r31, $116	# build/example.ml#1109:28->1109:41
	LDR	%r2, %r31, $120	# build/example.ml#1109:28->1109:41
	LDR	%r1, %r31, $124	# build/example.ml#1109:28->1109:41
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#1109:19->1109:41
	FSDD	%fr9, %r23, $4, %r21	# build/example.ml#1109:5->1109:41
	MVI	%r22, $2	# build/example.ml#1110:18->1110:19
	CEQ	%r24, %r22	# build/example.ml#1110:5->1116:12
	JZ	$if_eq.11721	# build/example.ml#1110:5->1116:12
	MVI	%r22, $2	# build/example.ml#1113:23->1113:24
	CMP	%r22, %r24	# build/example.ml#1113:10->1116:12
	JZ	$if_lt.11723	# build/example.ml#1113:10->1116:12
	J	$if_lt_cont.11724	# build/example.ml#1113:10->1116:12
if_lt.11723:
	MVI	%r22, $0	# build/example.ml#1114:39->1114:40
	FLDD	%fr7, %r23, $4, %r22	# build/example.ml#626:18->626:36
	MVI	%r22, $1	# build/example.ml#1114:50->1114:51
	FLDD	%fr8, %r23, $4, %r22	# build/example.ml#626:18->626:36
	MVI	%r22, $2	# build/example.ml#1114:61->1114:62
	FLDD	%fr9, %r23, $4, %r22	# build/example.ml#626:18->626:36
	SDR	%r6, %r31, $128	# build/example.ml#1114:17->1114:63
	SDR	%r5, %r31, $132	# build/example.ml#1114:17->1114:63
	SDR	%r4, %r31, $136	# build/example.ml#1114:17->1114:63
	SDR	%r3, %r31, $140	# build/example.ml#1114:17->1114:63
	SDR	%r2, %r31, $144	# build/example.ml#1114:17->1114:63
	SDR	%r1, %r31, $148	# build/example.ml#1114:17->1114:63
	MV	%r11, %r9	# build/example.ml#1114:17->1114:63
	MV	%r10, %r8	# build/example.ml#1114:17->1114:63
	MV	%r2, %r26	# build/example.ml#1114:17->1114:63
	MV	%r1, %r25	# build/example.ml#1114:17->1114:63
	MV	%r9, %r7	# build/example.ml#1114:17->1114:63
	MV	%r8, %r6	# build/example.ml#1114:17->1114:63
	MV	%r7, %r5	# build/example.ml#1114:17->1114:63
	MV	%r6, %r4	# build/example.ml#1114:17->1114:63
	MV	%r5, %r3	# build/example.ml#1114:17->1114:63
	MV	%r4, %r28	# build/example.ml#1114:17->1114:63
	MV	%r3, %r27	# build/example.ml#1114:17->1114:63
	FMV	%fr2, %fr9	# build/example.ml#1114:17->1114:63
	FMV	%fr1, %fr8	# build/example.ml#1114:17->1114:63
	FMV	%fr0, %fr7	# build/example.ml#1114:17->1114:63
	ADDI	%r31, %r31, $152	# build/example.ml#1114:17->1114:63
	ADDI	%r31, %r31, $4	# build/example.ml#1114:17->1114:63
	SIP	# build/example.ml#1114:17->1114:63
	J	$quadratic.2734	# build/example.ml#1114:17->1114:63
	ADDI	%r31, %r31, $-152	# build/example.ml#1114:17->1114:63
	FMV	%fr9, %fr0	# build/example.ml#1114:17->1114:63
	LDR	%r6, %r31, $128	# build/example.ml#1114:17->1114:63
	LDR	%r5, %r31, $132	# build/example.ml#1114:17->1114:63
	LDR	%r4, %r31, $136	# build/example.ml#1114:17->1114:63
	LDR	%r3, %r31, $140	# build/example.ml#1114:17->1114:63
	LDR	%r2, %r31, $144	# build/example.ml#1114:17->1114:63
	LDR	%r1, %r31, $148	# build/example.ml#1114:17->1114:63
	MVI	%r8, $3	# build/example.ml#1115:15->1115:16
	MVI	%r9, $3	# build/example.ml#1115:34->1115:35
	CEQ	%r24, %r9	# build/example.ml#1115:21->1115:60
	JZ	$if_eq.11725	# build/example.ml#1115:21->1115:60
	J	$if_eq_cont.11726	# build/example.ml#1115:21->1115:60
if_eq.11725:
	FLDA	%fr8, $l.7785	# build/example.ml#1115:48->1115:51
	FSUB	%rd, %fr9, %fr8	# build/example.ml#1115:41->1115:51
if_eq_cont.11726:
	FSDD	%fr9, %r23, $4, %r8	# build/example.ml#1115:7->1115:60
if_lt_cont.11724:
	J	$if_eq_cont.11722	# build/example.ml#1110:5->1116:12
if_eq.11721:
	MVI	%r9, $3	# build/example.ml#1111:15->1111:16
	MV	%r8, %r3	# build/example.ml#227:3->232:8
	MVI	%r7, $0	# build/example.ml#1112:38->1112:39
	FLDD	%fr7, %r23, $4, %r7	# build/example.ml#626:18->626:36
	MVI	%r7, $1	# build/example.ml#1112:49->1112:50
	FLDD	%fr8, %r23, $4, %r7	# build/example.ml#626:18->626:36
	MVI	%r7, $2	# build/example.ml#1112:60->1112:61
	FLDD	%fr9, %r23, $4, %r7	# build/example.ml#626:18->626:36
	SDR	%r1, %r31, $152	# build/example.ml#1112:2->1112:62
	MV	%r1, %r8	# build/example.ml#1112:2->1112:62
	FMV	%fr2, %fr9	# build/example.ml#1112:2->1112:62
	FMV	%fr1, %fr8	# build/example.ml#1112:2->1112:62
	FMV	%fr0, %fr7	# build/example.ml#1112:2->1112:62
	ADDI	%r31, %r31, $156	# build/example.ml#1112:2->1112:62
	ADDI	%r31, %r31, $4	# build/example.ml#1112:2->1112:62
	SIP	# build/example.ml#1112:2->1112:62
	J	$veciprod2.2597	# build/example.ml#1112:2->1112:62
	ADDI	%r31, %r31, $-156	# build/example.ml#1112:2->1112:62
	FMV	%fr9, %fr0	# build/example.ml#1112:2->1112:62
	LDR	%r1, %r31, $152	# build/example.ml#1112:2->1112:62
	FSDD	%fr9, %r23, $4, %r9	# build/example.ml#1111:7->1112:62
if_eq_cont.11722:
	MVI	%r9, $1	# build/example.ml#1117:39->1117:40
	SUB	%r9, %r2, %r9	# build/example.ml#1117:31->1117:40
	SDR	%r6, %r31, $156	# build/example.ml#1117:5->1117:41
	SDR	%r5, %r31, $160	# build/example.ml#1117:5->1117:41
	SDR	%r4, %r31, $164	# build/example.ml#1117:5->1117:41
	SDR	%r3, %r31, $168	# build/example.ml#1117:5->1117:41
	SDR	%r2, %r31, $172	# build/example.ml#1117:5->1117:41
	SDR	%r1, %r31, $176	# build/example.ml#1117:5->1117:41
	MV	%r2, %r9	# build/example.ml#1117:5->1117:41
	ADDI	%r31, %r31, $180	# build/example.ml#1117:5->1117:41
	ADDI	%r31, %r31, $4	# build/example.ml#1117:5->1117:41
	SIP	# build/example.ml#1117:5->1117:41
	J	$setup_startp_constants.2811	# build/example.ml#1117:5->1117:41
	ADDI	%r31, %r31, $-180	# build/example.ml#1117:5->1117:41
	LDR	%r6, %r31, $156	# build/example.ml#1117:5->1117:41
	LDR	%r5, %r31, $160	# build/example.ml#1117:5->1117:41
	LDR	%r4, %r31, $164	# build/example.ml#1117:5->1117:41
	LDR	%r3, %r31, $168	# build/example.ml#1117:5->1117:41
	LDR	%r2, %r31, $172	# build/example.ml#1117:5->1117:41
	LDR	%r1, %r31, $176	# build/example.ml#1117:5->1117:41
	J	$if_lt_cont.11720	# build/example.ml#1103:3->1118:13
if_lt.11719:
if_lt_cont.11720:
	LDR	%r9, %r31, $0	# build/example.ml#1103:15->1103:16
	LDR	%r8, %r31, $4	# build/example.ml#1103:15->1103:16
	LDR	%r7, %r31, $8	# build/example.ml#1103:15->1103:16
	LDR	%r28, %r31, $12	# build/example.ml#1103:15->1103:16
	LDR	%r27, %r31, $16	# build/example.ml#1103:15->1103:16
	LDR	%r26, %r31, $20	# build/example.ml#1103:15->1103:16
	LDR	%r25, %r31, $24	# build/example.ml#1103:15->1103:16
	LDR	%r24, %r31, $28	# build/example.ml#1103:15->1103:16
	LDR	%r23, %r31, $32	# build/example.ml#1103:15->1103:16
	LDR	%r22, %r31, $36	# build/example.ml#1103:15->1103:16
	LDR	%r21, %r31, $40	# build/example.ml#1103:15->1103:16
	FLDR	%fr9, %r31, $44	# build/example.ml#1103:15->1103:16
	FLDR	%fr8, %r31, $48	# build/example.ml#1103:15->1103:16
	FLDR	%fr7, %r31, $52	# build/example.ml#1103:15->1103:16
	LINK	# build/example.ml#1103:15->1103:16
setup_dirvec_constants.2809:
	SDR	%r9, %r31, $0	# build/example.ml#1095:39->1095:48
	SDR	%r8, %r31, $4	# build/example.ml#1095:39->1095:48
	MVI	%r8, $min_caml_n_objects	# build/example.ml#1095:39->1095:48
	MVI	%r9, $0	# build/example.ml#1095:50->1095:51
	LDD	%r8, %r8, $4, %r9	# build/example.ml#671:7->671:25
	MVI	%r9, $1	# build/example.ml#1095:55->1095:56
	SUB	%r9, %r8, %r9	# build/example.ml#1095:39->1095:56
	SDR	%r2, %r31, $8	# build/example.ml#1095:3->1095:57
	SDR	%r1, %r31, $12	# build/example.ml#1095:3->1095:57
	MV	%r3, %r9	# build/example.ml#1095:3->1095:57
	ADDI	%r31, %r31, $16	# build/example.ml#1095:3->1095:57
	ADDI	%r31, %r31, $4	# build/example.ml#1095:3->1095:57
	SIP	# build/example.ml#1095:3->1095:57
	J	$iter_setup_dirvec_constants.2806	# build/example.ml#1095:3->1095:57
	ADDI	%r31, %r31, $-16	# build/example.ml#1095:3->1095:57
	LDR	%r2, %r31, $8	# build/example.ml#1095:3->1095:57
	LDR	%r1, %r31, $12	# build/example.ml#1095:3->1095:57
	LDR	%r9, %r31, $0	# build/example.ml#1095:39->1095:48
	LDR	%r8, %r31, $4	# build/example.ml#1095:39->1095:48
	LINK	# build/example.ml#1095:39->1095:48
iter_setup_dirvec_constants.2806:
	SDR	%r9, %r31, $0	# build/example.ml#1078:15->1078:16
	SDR	%r8, %r31, $4	# build/example.ml#1078:15->1078:16
	SDR	%r7, %r31, $8	# build/example.ml#1078:15->1078:16
	SDR	%r28, %r31, $12	# build/example.ml#1078:15->1078:16
	SDR	%r27, %r31, $16	# build/example.ml#1078:15->1078:16
	SDR	%r26, %r31, $20	# build/example.ml#1078:15->1078:16
	SDR	%r25, %r31, $24	# build/example.ml#1078:15->1078:16
	SDR	%r24, %r31, $28	# build/example.ml#1078:15->1078:16
	SDR	%r23, %r31, $32	# build/example.ml#1078:15->1078:16
	SDR	%r22, %r31, $36	# build/example.ml#1078:15->1078:16
	SDR	%r21, %r31, $40	# build/example.ml#1078:15->1078:16
	SDR	%r20, %r31, $44	# build/example.ml#1078:15->1078:16
	MVI	%r9, $0	# build/example.ml#1078:15->1078:16
	CMP	%r3, %r9	# build/example.ml#1078:3->1091:12
	JZ	$if_lt.11727	# build/example.ml#1078:3->1091:12
	MVI	%r9, $min_caml_objects	# build/example.ml#1079:13->1079:20
	LDD	%r9, %r9, $4, %r3	# build/example.ml#637:7->637:25
	LDR	%r6, %r9, $40	# build/example.ml#1079:5->1090:51
	LDR	%r5, %r9, $36	# build/example.ml#1079:5->1090:51
	LDR	%r4, %r9, $32	# build/example.ml#1079:5->1090:51
	LDR	%r28, %r9, $28	# build/example.ml#1079:5->1090:51
	LDR	%r27, %r9, $24	# build/example.ml#1079:5->1090:51
	LDR	%r26, %r9, $20	# build/example.ml#1079:5->1090:51
	LDR	%r25, %r9, $16	# build/example.ml#1079:5->1090:51
	LDR	%r24, %r9, $12	# build/example.ml#1079:5->1090:51
	LDR	%r23, %r9, $8	# build/example.ml#1079:5->1090:51
	LDR	%r22, %r9, $4	# build/example.ml#1079:5->1090:51
	LDR	%r21, %r9, $0	# build/example.ml#1079:5->1090:51
	MV	%r7, %r2	# build/example.ml#451:3->452:10
	MV	%r9, %r1	# build/example.ml#445:3->446:8
	MV	%r8, %r22	# build/example.ml#159:3->164:10
	MVI	%r20, $1	# build/example.ml#1083:18->1083:19
	CEQ	%r8, %r20	# build/example.ml#1083:5->1088:47
	JZ	$if_eq.11729	# build/example.ml#1083:5->1088:47
	MVI	%r20, $2	# build/example.ml#1085:23->1085:24
	CEQ	%r8, %r20	# build/example.ml#1085:10->1088:47
	JZ	$if_eq.11731	# build/example.ml#1085:10->1088:47
	SDR	%r6, %r31, $48	# build/example.ml#1088:25->1088:47
	SDR	%r5, %r31, $52	# build/example.ml#1088:25->1088:47
	SDR	%r4, %r31, $56	# build/example.ml#1088:25->1088:47
	SDR	%r3, %r31, $60	# build/example.ml#1088:25->1088:47
	SDR	%r2, %r31, $64	# build/example.ml#1088:25->1088:47
	SDR	%r1, %r31, $68	# build/example.ml#1088:25->1088:47
	MV	%r12, %r6	# build/example.ml#1088:25->1088:47
	MV	%r11, %r5	# build/example.ml#1088:25->1088:47
	MV	%r10, %r4	# build/example.ml#1088:25->1088:47
	MV	%r8, %r27	# build/example.ml#1088:25->1088:47
	MV	%r7, %r26	# build/example.ml#1088:25->1088:47
	MV	%r3, %r22	# build/example.ml#1088:25->1088:47
	MV	%r2, %r21	# build/example.ml#1088:25->1088:47
	MV	%r1, %r9	# build/example.ml#1088:25->1088:47
	MV	%r9, %r28	# build/example.ml#1088:25->1088:47
	MV	%r6, %r25	# build/example.ml#1088:25->1088:47
	MV	%r5, %r24	# build/example.ml#1088:25->1088:47
	MV	%r4, %r23	# build/example.ml#1088:25->1088:47
	ADDI	%r31, %r31, $72	# build/example.ml#1088:25->1088:47
	ADDI	%r31, %r31, $4	# build/example.ml#1088:25->1088:47
	SIP	# build/example.ml#1088:25->1088:47
	J	$setup_second_table.2803	# build/example.ml#1088:25->1088:47
	ADDI	%r31, %r31, $-72	# build/example.ml#1088:25->1088:47
	MV	%r9, %r0	# build/example.ml#1088:25->1088:47
	LDR	%r6, %r31, $48	# build/example.ml#1088:25->1088:47
	LDR	%r5, %r31, $52	# build/example.ml#1088:25->1088:47
	LDR	%r4, %r31, $56	# build/example.ml#1088:25->1088:47
	LDR	%r3, %r31, $60	# build/example.ml#1088:25->1088:47
	LDR	%r2, %r31, $64	# build/example.ml#1088:25->1088:47
	LDR	%r1, %r31, $68	# build/example.ml#1088:25->1088:47
	SDD	%r9, %r7, $4, %r3	# build/example.ml#1088:7->1088:47
	J	$if_eq_cont.11732	# build/example.ml#1085:10->1088:47
if_eq.11731:
	SDR	%r6, %r31, $72	# build/example.ml#1086:25->1086:48
	SDR	%r5, %r31, $76	# build/example.ml#1086:25->1086:48
	SDR	%r4, %r31, $80	# build/example.ml#1086:25->1086:48
	SDR	%r3, %r31, $84	# build/example.ml#1086:25->1086:48
	SDR	%r2, %r31, $88	# build/example.ml#1086:25->1086:48
	SDR	%r1, %r31, $92	# build/example.ml#1086:25->1086:48
	MV	%r12, %r6	# build/example.ml#1086:25->1086:48
	MV	%r11, %r5	# build/example.ml#1086:25->1086:48
	MV	%r10, %r4	# build/example.ml#1086:25->1086:48
	MV	%r8, %r27	# build/example.ml#1086:25->1086:48
	MV	%r7, %r26	# build/example.ml#1086:25->1086:48
	MV	%r3, %r22	# build/example.ml#1086:25->1086:48
	MV	%r2, %r21	# build/example.ml#1086:25->1086:48
	MV	%r1, %r9	# build/example.ml#1086:25->1086:48
	MV	%r9, %r28	# build/example.ml#1086:25->1086:48
	MV	%r6, %r25	# build/example.ml#1086:25->1086:48
	MV	%r5, %r24	# build/example.ml#1086:25->1086:48
	MV	%r4, %r23	# build/example.ml#1086:25->1086:48
	ADDI	%r31, %r31, $96	# build/example.ml#1086:25->1086:48
	ADDI	%r31, %r31, $4	# build/example.ml#1086:25->1086:48
	SIP	# build/example.ml#1086:25->1086:48
	J	$setup_surface_table.2800	# build/example.ml#1086:25->1086:48
	ADDI	%r31, %r31, $-96	# build/example.ml#1086:25->1086:48
	MV	%r9, %r0	# build/example.ml#1086:25->1086:48
	LDR	%r6, %r31, $72	# build/example.ml#1086:25->1086:48
	LDR	%r5, %r31, $76	# build/example.ml#1086:25->1086:48
	LDR	%r4, %r31, $80	# build/example.ml#1086:25->1086:48
	LDR	%r3, %r31, $84	# build/example.ml#1086:25->1086:48
	LDR	%r2, %r31, $88	# build/example.ml#1086:25->1086:48
	LDR	%r1, %r31, $92	# build/example.ml#1086:25->1086:48
	SDD	%r9, %r7, $4, %r3	# build/example.ml#1086:7->1086:48
if_eq_cont.11732:
	J	$if_eq_cont.11730	# build/example.ml#1083:5->1088:47
if_eq.11729:
	SDR	%r6, %r31, $96	# build/example.ml#1084:25->1084:45
	SDR	%r5, %r31, $100	# build/example.ml#1084:25->1084:45
	SDR	%r4, %r31, $104	# build/example.ml#1084:25->1084:45
	SDR	%r3, %r31, $108	# build/example.ml#1084:25->1084:45
	SDR	%r2, %r31, $112	# build/example.ml#1084:25->1084:45
	SDR	%r1, %r31, $116	# build/example.ml#1084:25->1084:45
	MV	%r12, %r6	# build/example.ml#1084:25->1084:45
	MV	%r11, %r5	# build/example.ml#1084:25->1084:45
	MV	%r10, %r4	# build/example.ml#1084:25->1084:45
	MV	%r8, %r27	# build/example.ml#1084:25->1084:45
	MV	%r7, %r26	# build/example.ml#1084:25->1084:45
	MV	%r3, %r22	# build/example.ml#1084:25->1084:45
	MV	%r2, %r21	# build/example.ml#1084:25->1084:45
	MV	%r1, %r9	# build/example.ml#1084:25->1084:45
	MV	%r9, %r28	# build/example.ml#1084:25->1084:45
	MV	%r6, %r25	# build/example.ml#1084:25->1084:45
	MV	%r5, %r24	# build/example.ml#1084:25->1084:45
	MV	%r4, %r23	# build/example.ml#1084:25->1084:45
	ADDI	%r31, %r31, $120	# build/example.ml#1084:25->1084:45
	ADDI	%r31, %r31, $4	# build/example.ml#1084:25->1084:45
	SIP	# build/example.ml#1084:25->1084:45
	J	$setup_rect_table.2797	# build/example.ml#1084:25->1084:45
	ADDI	%r31, %r31, $-120	# build/example.ml#1084:25->1084:45
	MV	%r9, %r0	# build/example.ml#1084:25->1084:45
	LDR	%r6, %r31, $96	# build/example.ml#1084:25->1084:45
	LDR	%r5, %r31, $100	# build/example.ml#1084:25->1084:45
	LDR	%r4, %r31, $104	# build/example.ml#1084:25->1084:45
	LDR	%r3, %r31, $108	# build/example.ml#1084:25->1084:45
	LDR	%r2, %r31, $112	# build/example.ml#1084:25->1084:45
	LDR	%r1, %r31, $116	# build/example.ml#1084:25->1084:45
	SDD	%r9, %r7, $4, %r3	# build/example.ml#1084:7->1084:45
if_eq_cont.11730:
	MVI	%r9, $1	# build/example.ml#1090:49->1090:50
	SUB	%r9, %r3, %r9	# build/example.ml#1090:41->1090:50
	SDR	%r6, %r31, $120	# build/example.ml#1090:5->1090:51
	SDR	%r5, %r31, $124	# build/example.ml#1090:5->1090:51
	SDR	%r4, %r31, $128	# build/example.ml#1090:5->1090:51
	SDR	%r3, %r31, $132	# build/example.ml#1090:5->1090:51
	SDR	%r2, %r31, $136	# build/example.ml#1090:5->1090:51
	SDR	%r1, %r31, $140	# build/example.ml#1090:5->1090:51
	MV	%r3, %r9	# build/example.ml#1090:5->1090:51
	ADDI	%r31, %r31, $144	# build/example.ml#1090:5->1090:51
	ADDI	%r31, %r31, $4	# build/example.ml#1090:5->1090:51
	SIP	# build/example.ml#1090:5->1090:51
	J	$iter_setup_dirvec_constants.2806	# build/example.ml#1090:5->1090:51
	ADDI	%r31, %r31, $-144	# build/example.ml#1090:5->1090:51
	LDR	%r6, %r31, $120	# build/example.ml#1090:5->1090:51
	LDR	%r5, %r31, $124	# build/example.ml#1090:5->1090:51
	LDR	%r4, %r31, $128	# build/example.ml#1090:5->1090:51
	LDR	%r3, %r31, $132	# build/example.ml#1090:5->1090:51
	LDR	%r2, %r31, $136	# build/example.ml#1090:5->1090:51
	LDR	%r1, %r31, $140	# build/example.ml#1090:5->1090:51
	J	$if_lt_cont.11728	# build/example.ml#1078:3->1091:12
if_lt.11727:
if_lt_cont.11728:
	LDR	%r9, %r31, $0	# build/example.ml#1078:15->1078:16
	LDR	%r8, %r31, $4	# build/example.ml#1078:15->1078:16
	LDR	%r7, %r31, $8	# build/example.ml#1078:15->1078:16
	LDR	%r28, %r31, $12	# build/example.ml#1078:15->1078:16
	LDR	%r27, %r31, $16	# build/example.ml#1078:15->1078:16
	LDR	%r26, %r31, $20	# build/example.ml#1078:15->1078:16
	LDR	%r25, %r31, $24	# build/example.ml#1078:15->1078:16
	LDR	%r24, %r31, $28	# build/example.ml#1078:15->1078:16
	LDR	%r23, %r31, $32	# build/example.ml#1078:15->1078:16
	LDR	%r22, %r31, $36	# build/example.ml#1078:15->1078:16
	LDR	%r21, %r31, $40	# build/example.ml#1078:15->1078:16
	LDR	%r20, %r31, $44	# build/example.ml#1078:15->1078:16
	LINK	# build/example.ml#1078:15->1078:16
setup_second_table.2803:
	SDR	%r9, %r31, $0	# build/example.ml#1049:28->1049:29
	SDR	%r8, %r31, $4	# build/example.ml#1049:28->1049:29
	SDR	%r7, %r31, $8	# build/example.ml#1049:28->1049:29
	SDR	%r28, %r31, $12	# build/example.ml#1049:28->1049:29
	SDR	%r27, %r31, $16	# build/example.ml#1049:28->1049:29
	SDR	%r26, %r31, $20	# build/example.ml#1049:28->1049:29
	SDR	%r12, %r31, $24	# build/example.ml#1049:28->1049:29
	SDR	%r11, %r31, $28	# build/example.ml#1049:28->1049:29
	SDR	%r10, %r31, $32	# build/example.ml#1049:28->1049:29
	FSDR	%fr9, %r31, $36	# build/example.ml#1049:28->1049:29
	FSDR	%fr8, %r31, $40	# build/example.ml#1049:28->1049:29
	FSDR	%fr7, %r31, $44	# build/example.ml#1049:28->1049:29
	FSDR	%fr31, %r31, $48	# build/example.ml#1049:28->1049:29
	MVI	%r28, $5	# build/example.ml#1049:28->1049:29
	FLDA	%fr9, $l.7787	# build/example.ml#1049:30->1049:33
	SDR	%r6, %r31, $52	# build/example.ml#1049:15->1049:33
	SDR	%r5, %r31, $56	# build/example.ml#1049:15->1049:33
	SDR	%r4, %r31, $60	# build/example.ml#1049:15->1049:33
	SDR	%r3, %r31, $64	# build/example.ml#1049:15->1049:33
	SDR	%r2, %r31, $68	# build/example.ml#1049:15->1049:33
	SDR	%r1, %r31, $72	# build/example.ml#1049:15->1049:33
	FSDR	%fr6, %r31, $76	# build/example.ml#1049:15->1049:33
	FSDR	%fr5, %r31, $80	# build/example.ml#1049:15->1049:33
	FSDR	%fr4, %r31, $84	# build/example.ml#1049:15->1049:33
	MV	%r1, %r28	# build/example.ml#1049:15->1049:33
	FMV	%fr0, %fr9	# build/example.ml#1049:15->1049:33
	ADDI	%r31, %r31, $88	# build/example.ml#1049:15->1049:33
	ADDI	%r31, %r31, $4	# build/example.ml#1049:15->1049:33
	SIP	# build/example.ml#1049:15->1049:33
	J	$min_caml_create_float_array	# build/example.ml#1049:15->1049:33
	ADDI	%r31, %r31, $-88	# build/example.ml#1049:15->1049:33
	MV	%r28, %r0	# build/example.ml#1049:15->1049:33
	LDR	%r6, %r31, $52	# build/example.ml#1049:15->1049:33
	LDR	%r5, %r31, $56	# build/example.ml#1049:15->1049:33
	LDR	%r4, %r31, $60	# build/example.ml#1049:15->1049:33
	LDR	%r3, %r31, $64	# build/example.ml#1049:15->1049:33
	LDR	%r2, %r31, $68	# build/example.ml#1049:15->1049:33
	LDR	%r1, %r31, $72	# build/example.ml#1049:15->1049:33
	FLDR	%fr6, %r31, $76	# build/example.ml#1049:15->1049:33
	FLDR	%fr5, %r31, $80	# build/example.ml#1049:15->1049:33
	FLDR	%fr4, %r31, $84	# build/example.ml#1049:15->1049:33
	MVI	%r27, $0	# build/example.ml#1051:27->1051:28
	FLDD	%fr7, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	MVI	%r27, $1	# build/example.ml#1051:33->1051:34
	FLDD	%fr8, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	MVI	%r27, $2	# build/example.ml#1051:39->1051:40
	FLDD	%fr9, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $88	# build/example.ml#1051:12->1051:41
	SDR	%r5, %r31, $92	# build/example.ml#1051:12->1051:41
	SDR	%r4, %r31, $96	# build/example.ml#1051:12->1051:41
	SDR	%r3, %r31, $100	# build/example.ml#1051:12->1051:41
	SDR	%r2, %r31, $104	# build/example.ml#1051:12->1051:41
	SDR	%r1, %r31, $108	# build/example.ml#1051:12->1051:41
	FSDR	%fr6, %r31, $112	# build/example.ml#1051:12->1051:41
	FSDR	%fr5, %r31, $116	# build/example.ml#1051:12->1051:41
	FSDR	%fr4, %r31, $120	# build/example.ml#1051:12->1051:41
	MV	%r1, %r2	# build/example.ml#1051:12->1051:41
	MV	%r2, %r3	# build/example.ml#1051:12->1051:41
	MV	%r3, %r4	# build/example.ml#1051:12->1051:41
	MV	%r4, %r5	# build/example.ml#1051:12->1051:41
	MV	%r5, %r6	# build/example.ml#1051:12->1051:41
	MV	%r6, %r7	# build/example.ml#1051:12->1051:41
	MV	%r7, %r8	# build/example.ml#1051:12->1051:41
	MV	%r8, %r9	# build/example.ml#1051:12->1051:41
	MV	%r9, %r10	# build/example.ml#1051:12->1051:41
	MV	%r10, %r11	# build/example.ml#1051:12->1051:41
	MV	%r11, %r12	# build/example.ml#1051:12->1051:41
	FMV	%fr2, %fr9	# build/example.ml#1051:12->1051:41
	FMV	%fr1, %fr8	# build/example.ml#1051:12->1051:41
	FMV	%fr0, %fr7	# build/example.ml#1051:12->1051:41
	ADDI	%r31, %r31, $124	# build/example.ml#1051:12->1051:41
	ADDI	%r31, %r31, $4	# build/example.ml#1051:12->1051:41
	SIP	# build/example.ml#1051:12->1051:41
	J	$quadratic.2734	# build/example.ml#1051:12->1051:41
	ADDI	%r31, %r31, $-124	# build/example.ml#1051:12->1051:41
	FMV	%fr6, %fr0	# build/example.ml#1051:12->1051:41
	LDR	%r6, %r31, $88	# build/example.ml#1051:12->1051:41
	LDR	%r5, %r31, $92	# build/example.ml#1051:12->1051:41
	LDR	%r4, %r31, $96	# build/example.ml#1051:12->1051:41
	LDR	%r3, %r31, $100	# build/example.ml#1051:12->1051:41
	LDR	%r2, %r31, $104	# build/example.ml#1051:12->1051:41
	LDR	%r1, %r31, $108	# build/example.ml#1051:12->1051:41
	FLDR	%fr6, %r31, $112	# build/example.ml#1051:12->1051:41
	FLDR	%fr5, %r31, $116	# build/example.ml#1051:12->1051:41
	FLDR	%fr4, %r31, $120	# build/example.ml#1051:12->1051:41
	MVI	%r27, $0	# build/example.ml#1052:21->1052:22
	FLDD	%fr8, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $124	# build/example.ml#1052:27->1052:38
	SDR	%r5, %r31, $128	# build/example.ml#1052:27->1052:38
	SDR	%r4, %r31, $132	# build/example.ml#1052:27->1052:38
	SDR	%r3, %r31, $136	# build/example.ml#1052:27->1052:38
	SDR	%r2, %r31, $140	# build/example.ml#1052:27->1052:38
	SDR	%r1, %r31, $144	# build/example.ml#1052:27->1052:38
	MV	%r1, %r2	# build/example.ml#1052:27->1052:38
	MV	%r2, %r3	# build/example.ml#1052:27->1052:38
	MV	%r3, %r4	# build/example.ml#1052:27->1052:38
	MV	%r4, %r5	# build/example.ml#1052:27->1052:38
	MV	%r5, %r6	# build/example.ml#1052:27->1052:38
	MV	%r6, %r7	# build/example.ml#1052:27->1052:38
	MV	%r7, %r8	# build/example.ml#1052:27->1052:38
	MV	%r8, %r9	# build/example.ml#1052:27->1052:38
	MV	%r9, %r10	# build/example.ml#1052:27->1052:38
	MV	%r10, %r11	# build/example.ml#1052:27->1052:38
	MV	%r11, %r12	# build/example.ml#1052:27->1052:38
	ADDI	%r31, %r31, $148	# build/example.ml#1052:27->1052:38
	ADDI	%r31, %r31, $4	# build/example.ml#1052:27->1052:38
	SIP	# build/example.ml#1052:27->1052:38
	J	$o_param_a.2629	# build/example.ml#1052:27->1052:38
	ADDI	%r31, %r31, $-148	# build/example.ml#1052:27->1052:38
	FMV	%fr9, %fr0	# build/example.ml#1052:27->1052:38
	LDR	%r6, %r31, $124	# build/example.ml#1052:27->1052:38
	LDR	%r5, %r31, $128	# build/example.ml#1052:27->1052:38
	LDR	%r4, %r31, $132	# build/example.ml#1052:27->1052:38
	LDR	%r3, %r31, $136	# build/example.ml#1052:27->1052:38
	LDR	%r2, %r31, $140	# build/example.ml#1052:27->1052:38
	LDR	%r1, %r31, $144	# build/example.ml#1052:27->1052:38
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1052:18->1052:38
	SDR	%r6, %r31, $148	# build/example.ml#1052:12->1052:39
	SDR	%r5, %r31, $152	# build/example.ml#1052:12->1052:39
	SDR	%r4, %r31, $156	# build/example.ml#1052:12->1052:39
	SDR	%r3, %r31, $160	# build/example.ml#1052:12->1052:39
	SDR	%r2, %r31, $164	# build/example.ml#1052:12->1052:39
	SDR	%r1, %r31, $168	# build/example.ml#1052:12->1052:39
	FSDR	%fr6, %r31, $172	# build/example.ml#1052:12->1052:39
	FSDR	%fr5, %r31, $176	# build/example.ml#1052:12->1052:39
	FSDR	%fr4, %r31, $180	# build/example.ml#1052:12->1052:39
	FMV	%fr0, %fr9	# build/example.ml#1052:12->1052:39
	ADDI	%r31, %r31, $184	# build/example.ml#1052:12->1052:39
	ADDI	%r31, %r31, $4	# build/example.ml#1052:12->1052:39
	SIP	# build/example.ml#1052:12->1052:39
	J	$min_caml_fneg	# build/example.ml#1052:12->1052:39
	ADDI	%r31, %r31, $-184	# build/example.ml#1052:12->1052:39
	FMV	%fr7, %fr0	# build/example.ml#1052:12->1052:39
	LDR	%r6, %r31, $148	# build/example.ml#1052:12->1052:39
	LDR	%r5, %r31, $152	# build/example.ml#1052:12->1052:39
	LDR	%r4, %r31, $156	# build/example.ml#1052:12->1052:39
	LDR	%r3, %r31, $160	# build/example.ml#1052:12->1052:39
	LDR	%r2, %r31, $164	# build/example.ml#1052:12->1052:39
	LDR	%r1, %r31, $168	# build/example.ml#1052:12->1052:39
	FLDR	%fr6, %r31, $172	# build/example.ml#1052:12->1052:39
	FLDR	%fr5, %r31, $176	# build/example.ml#1052:12->1052:39
	FLDR	%fr4, %r31, $180	# build/example.ml#1052:12->1052:39
	MVI	%r27, $1	# build/example.ml#1053:21->1053:22
	FLDD	%fr8, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $184	# build/example.ml#1053:27->1053:38
	SDR	%r5, %r31, $188	# build/example.ml#1053:27->1053:38
	SDR	%r4, %r31, $192	# build/example.ml#1053:27->1053:38
	SDR	%r3, %r31, $196	# build/example.ml#1053:27->1053:38
	SDR	%r2, %r31, $200	# build/example.ml#1053:27->1053:38
	SDR	%r1, %r31, $204	# build/example.ml#1053:27->1053:38
	MV	%r1, %r2	# build/example.ml#1053:27->1053:38
	MV	%r2, %r3	# build/example.ml#1053:27->1053:38
	MV	%r3, %r4	# build/example.ml#1053:27->1053:38
	MV	%r4, %r5	# build/example.ml#1053:27->1053:38
	MV	%r5, %r6	# build/example.ml#1053:27->1053:38
	MV	%r6, %r7	# build/example.ml#1053:27->1053:38
	MV	%r7, %r8	# build/example.ml#1053:27->1053:38
	MV	%r8, %r9	# build/example.ml#1053:27->1053:38
	MV	%r9, %r10	# build/example.ml#1053:27->1053:38
	MV	%r10, %r11	# build/example.ml#1053:27->1053:38
	MV	%r11, %r12	# build/example.ml#1053:27->1053:38
	ADDI	%r31, %r31, $208	# build/example.ml#1053:27->1053:38
	ADDI	%r31, %r31, $4	# build/example.ml#1053:27->1053:38
	SIP	# build/example.ml#1053:27->1053:38
	J	$o_param_b.2631	# build/example.ml#1053:27->1053:38
	ADDI	%r31, %r31, $-208	# build/example.ml#1053:27->1053:38
	FMV	%fr9, %fr0	# build/example.ml#1053:27->1053:38
	LDR	%r6, %r31, $184	# build/example.ml#1053:27->1053:38
	LDR	%r5, %r31, $188	# build/example.ml#1053:27->1053:38
	LDR	%r4, %r31, $192	# build/example.ml#1053:27->1053:38
	LDR	%r3, %r31, $196	# build/example.ml#1053:27->1053:38
	LDR	%r2, %r31, $200	# build/example.ml#1053:27->1053:38
	LDR	%r1, %r31, $204	# build/example.ml#1053:27->1053:38
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1053:18->1053:38
	SDR	%r6, %r31, $208	# build/example.ml#1053:12->1053:39
	SDR	%r5, %r31, $212	# build/example.ml#1053:12->1053:39
	SDR	%r4, %r31, $216	# build/example.ml#1053:12->1053:39
	SDR	%r3, %r31, $220	# build/example.ml#1053:12->1053:39
	SDR	%r2, %r31, $224	# build/example.ml#1053:12->1053:39
	SDR	%r1, %r31, $228	# build/example.ml#1053:12->1053:39
	FSDR	%fr6, %r31, $232	# build/example.ml#1053:12->1053:39
	FSDR	%fr5, %r31, $236	# build/example.ml#1053:12->1053:39
	FSDR	%fr4, %r31, $240	# build/example.ml#1053:12->1053:39
	FMV	%fr0, %fr9	# build/example.ml#1053:12->1053:39
	ADDI	%r31, %r31, $244	# build/example.ml#1053:12->1053:39
	ADDI	%r31, %r31, $4	# build/example.ml#1053:12->1053:39
	SIP	# build/example.ml#1053:12->1053:39
	J	$min_caml_fneg	# build/example.ml#1053:12->1053:39
	ADDI	%r31, %r31, $-244	# build/example.ml#1053:12->1053:39
	FMV	%fr8, %fr0	# build/example.ml#1053:12->1053:39
	LDR	%r6, %r31, $208	# build/example.ml#1053:12->1053:39
	LDR	%r5, %r31, $212	# build/example.ml#1053:12->1053:39
	LDR	%r4, %r31, $216	# build/example.ml#1053:12->1053:39
	LDR	%r3, %r31, $220	# build/example.ml#1053:12->1053:39
	LDR	%r2, %r31, $224	# build/example.ml#1053:12->1053:39
	LDR	%r1, %r31, $228	# build/example.ml#1053:12->1053:39
	FLDR	%fr6, %r31, $232	# build/example.ml#1053:12->1053:39
	FLDR	%fr5, %r31, $236	# build/example.ml#1053:12->1053:39
	FLDR	%fr4, %r31, $240	# build/example.ml#1053:12->1053:39
	MVI	%r27, $2	# build/example.ml#1054:21->1054:22
	FLDD	%fr5, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $244	# build/example.ml#1054:27->1054:38
	SDR	%r5, %r31, $248	# build/example.ml#1054:27->1054:38
	SDR	%r4, %r31, $252	# build/example.ml#1054:27->1054:38
	SDR	%r3, %r31, $256	# build/example.ml#1054:27->1054:38
	SDR	%r2, %r31, $260	# build/example.ml#1054:27->1054:38
	SDR	%r1, %r31, $264	# build/example.ml#1054:27->1054:38
	MV	%r1, %r2	# build/example.ml#1054:27->1054:38
	MV	%r2, %r3	# build/example.ml#1054:27->1054:38
	MV	%r3, %r4	# build/example.ml#1054:27->1054:38
	MV	%r4, %r5	# build/example.ml#1054:27->1054:38
	MV	%r5, %r6	# build/example.ml#1054:27->1054:38
	MV	%r6, %r7	# build/example.ml#1054:27->1054:38
	MV	%r7, %r8	# build/example.ml#1054:27->1054:38
	MV	%r8, %r9	# build/example.ml#1054:27->1054:38
	MV	%r9, %r10	# build/example.ml#1054:27->1054:38
	MV	%r10, %r11	# build/example.ml#1054:27->1054:38
	MV	%r11, %r12	# build/example.ml#1054:27->1054:38
	ADDI	%r31, %r31, $268	# build/example.ml#1054:27->1054:38
	ADDI	%r31, %r31, $4	# build/example.ml#1054:27->1054:38
	SIP	# build/example.ml#1054:27->1054:38
	J	$o_param_c.2633	# build/example.ml#1054:27->1054:38
	ADDI	%r31, %r31, $-268	# build/example.ml#1054:27->1054:38
	FMV	%fr9, %fr0	# build/example.ml#1054:27->1054:38
	LDR	%r6, %r31, $244	# build/example.ml#1054:27->1054:38
	LDR	%r5, %r31, $248	# build/example.ml#1054:27->1054:38
	LDR	%r4, %r31, $252	# build/example.ml#1054:27->1054:38
	LDR	%r3, %r31, $256	# build/example.ml#1054:27->1054:38
	LDR	%r2, %r31, $260	# build/example.ml#1054:27->1054:38
	LDR	%r1, %r31, $264	# build/example.ml#1054:27->1054:38
	FMUL	%fr9, %fr5, %fr9	# build/example.ml#1054:18->1054:38
	SDR	%r6, %r31, $268	# build/example.ml#1054:12->1054:39
	SDR	%r5, %r31, $272	# build/example.ml#1054:12->1054:39
	SDR	%r4, %r31, $276	# build/example.ml#1054:12->1054:39
	SDR	%r3, %r31, $280	# build/example.ml#1054:12->1054:39
	SDR	%r2, %r31, $284	# build/example.ml#1054:12->1054:39
	SDR	%r1, %r31, $288	# build/example.ml#1054:12->1054:39
	FSDR	%fr6, %r31, $292	# build/example.ml#1054:12->1054:39
	FSDR	%fr5, %r31, $296	# build/example.ml#1054:12->1054:39
	FSDR	%fr4, %r31, $300	# build/example.ml#1054:12->1054:39
	FMV	%fr0, %fr9	# build/example.ml#1054:12->1054:39
	ADDI	%r31, %r31, $304	# build/example.ml#1054:12->1054:39
	ADDI	%r31, %r31, $4	# build/example.ml#1054:12->1054:39
	SIP	# build/example.ml#1054:12->1054:39
	J	$min_caml_fneg	# build/example.ml#1054:12->1054:39
	ADDI	%r31, %r31, $-304	# build/example.ml#1054:12->1054:39
	FMV	%fr9, %fr0	# build/example.ml#1054:12->1054:39
	LDR	%r6, %r31, $268	# build/example.ml#1054:12->1054:39
	LDR	%r5, %r31, $272	# build/example.ml#1054:12->1054:39
	LDR	%r4, %r31, $276	# build/example.ml#1054:12->1054:39
	LDR	%r3, %r31, $280	# build/example.ml#1054:12->1054:39
	LDR	%r2, %r31, $284	# build/example.ml#1054:12->1054:39
	LDR	%r1, %r31, $288	# build/example.ml#1054:12->1054:39
	FLDR	%fr6, %r31, $292	# build/example.ml#1054:12->1054:39
	FLDR	%fr5, %r31, $296	# build/example.ml#1054:12->1054:39
	FLDR	%fr4, %r31, $300	# build/example.ml#1054:12->1054:39
	MVI	%r27, $0	# build/example.ml#1056:10->1056:11
	FSDD	%fr6, %r28, $4, %r27	# build/example.ml#1056:3->1056:18
	MV	%r27, %r5	# build/example.ml#188:3->192:10
	MVI	%r26, $0	# build/example.ml#1060:19->1060:20
	CEQ	%r27, %r26	# build/example.ml#1060:3->1068:5
	JZ	$if_eq.11733	# build/example.ml#1060:3->1068:5
	MVI	%r26, $1	# build/example.ml#1061:12->1061:13
	MVI	%r27, $2	# build/example.ml#1061:34->1061:35
	FLDD	%fr4, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $304	# build/example.ml#1061:40->1061:52
	SDR	%r5, %r31, $308	# build/example.ml#1061:40->1061:52
	SDR	%r4, %r31, $312	# build/example.ml#1061:40->1061:52
	SDR	%r3, %r31, $316	# build/example.ml#1061:40->1061:52
	SDR	%r2, %r31, $320	# build/example.ml#1061:40->1061:52
	SDR	%r1, %r31, $324	# build/example.ml#1061:40->1061:52
	MV	%r1, %r2	# build/example.ml#1061:40->1061:52
	MV	%r2, %r3	# build/example.ml#1061:40->1061:52
	MV	%r3, %r4	# build/example.ml#1061:40->1061:52
	MV	%r4, %r5	# build/example.ml#1061:40->1061:52
	MV	%r5, %r6	# build/example.ml#1061:40->1061:52
	MV	%r6, %r7	# build/example.ml#1061:40->1061:52
	MV	%r7, %r8	# build/example.ml#1061:40->1061:52
	MV	%r8, %r9	# build/example.ml#1061:40->1061:52
	MV	%r9, %r10	# build/example.ml#1061:40->1061:52
	MV	%r10, %r11	# build/example.ml#1061:40->1061:52
	MV	%r11, %r12	# build/example.ml#1061:40->1061:52
	ADDI	%r31, %r31, $328	# build/example.ml#1061:40->1061:52
	ADDI	%r31, %r31, $4	# build/example.ml#1061:40->1061:52
	SIP	# build/example.ml#1061:40->1061:52
	J	$o_param_r2.2655	# build/example.ml#1061:40->1061:52
	ADDI	%r31, %r31, $-328	# build/example.ml#1061:40->1061:52
	FMV	%fr5, %fr0	# build/example.ml#1061:40->1061:52
	LDR	%r6, %r31, $304	# build/example.ml#1061:40->1061:52
	LDR	%r5, %r31, $308	# build/example.ml#1061:40->1061:52
	LDR	%r4, %r31, $312	# build/example.ml#1061:40->1061:52
	LDR	%r3, %r31, $316	# build/example.ml#1061:40->1061:52
	LDR	%r2, %r31, $320	# build/example.ml#1061:40->1061:52
	LDR	%r1, %r31, $324	# build/example.ml#1061:40->1061:52
	FMUL	%fr31, %fr4, %fr5	# build/example.ml#1061:31->1061:52
	MVI	%r27, $1	# build/example.ml#1061:59->1061:60
	FLDD	%fr4, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $328	# build/example.ml#1061:65->1061:77
	SDR	%r5, %r31, $332	# build/example.ml#1061:65->1061:77
	SDR	%r4, %r31, $336	# build/example.ml#1061:65->1061:77
	SDR	%r3, %r31, $340	# build/example.ml#1061:65->1061:77
	SDR	%r2, %r31, $344	# build/example.ml#1061:65->1061:77
	SDR	%r1, %r31, $348	# build/example.ml#1061:65->1061:77
	MV	%r1, %r2	# build/example.ml#1061:65->1061:77
	MV	%r2, %r3	# build/example.ml#1061:65->1061:77
	MV	%r3, %r4	# build/example.ml#1061:65->1061:77
	MV	%r4, %r5	# build/example.ml#1061:65->1061:77
	MV	%r5, %r6	# build/example.ml#1061:65->1061:77
	MV	%r6, %r7	# build/example.ml#1061:65->1061:77
	MV	%r7, %r8	# build/example.ml#1061:65->1061:77
	MV	%r8, %r9	# build/example.ml#1061:65->1061:77
	MV	%r9, %r10	# build/example.ml#1061:65->1061:77
	MV	%r10, %r11	# build/example.ml#1061:65->1061:77
	MV	%r11, %r12	# build/example.ml#1061:65->1061:77
	ADDI	%r31, %r31, $352	# build/example.ml#1061:65->1061:77
	ADDI	%r31, %r31, $4	# build/example.ml#1061:65->1061:77
	SIP	# build/example.ml#1061:65->1061:77
	J	$o_param_r3.2657	# build/example.ml#1061:65->1061:77
	ADDI	%r31, %r31, $-352	# build/example.ml#1061:65->1061:77
	FMV	%fr5, %fr0	# build/example.ml#1061:65->1061:77
	LDR	%r6, %r31, $328	# build/example.ml#1061:65->1061:77
	LDR	%r5, %r31, $332	# build/example.ml#1061:65->1061:77
	LDR	%r4, %r31, $336	# build/example.ml#1061:65->1061:77
	LDR	%r3, %r31, $340	# build/example.ml#1061:65->1061:77
	LDR	%r2, %r31, $344	# build/example.ml#1061:65->1061:77
	LDR	%r1, %r31, $348	# build/example.ml#1061:65->1061:77
	FMUL	%fr5, %fr4, %fr5	# build/example.ml#1061:56->1061:77
	FADD	%fr5, %fr31, %fr5	# build/example.ml#1061:31->1061:77
	SDR	%r6, %r31, $352	# build/example.ml#1061:24->1061:78
	SDR	%r5, %r31, $356	# build/example.ml#1061:24->1061:78
	SDR	%r4, %r31, $360	# build/example.ml#1061:24->1061:78
	SDR	%r3, %r31, $364	# build/example.ml#1061:24->1061:78
	SDR	%r2, %r31, $368	# build/example.ml#1061:24->1061:78
	SDR	%r1, %r31, $372	# build/example.ml#1061:24->1061:78
	FSDR	%fr6, %r31, $376	# build/example.ml#1061:24->1061:78
	FSDR	%fr5, %r31, $380	# build/example.ml#1061:24->1061:78
	FSDR	%fr4, %r31, $384	# build/example.ml#1061:24->1061:78
	FMV	%fr0, %fr5	# build/example.ml#1061:24->1061:78
	ADDI	%r31, %r31, $388	# build/example.ml#1061:24->1061:78
	ADDI	%r31, %r31, $4	# build/example.ml#1061:24->1061:78
	SIP	# build/example.ml#1061:24->1061:78
	J	$min_caml_fhalf	# build/example.ml#1061:24->1061:78
	ADDI	%r31, %r31, $-388	# build/example.ml#1061:24->1061:78
	FMV	%fr5, %fr0	# build/example.ml#1061:24->1061:78
	LDR	%r6, %r31, $352	# build/example.ml#1061:24->1061:78
	LDR	%r5, %r31, $356	# build/example.ml#1061:24->1061:78
	LDR	%r4, %r31, $360	# build/example.ml#1061:24->1061:78
	LDR	%r3, %r31, $364	# build/example.ml#1061:24->1061:78
	LDR	%r2, %r31, $368	# build/example.ml#1061:24->1061:78
	LDR	%r1, %r31, $372	# build/example.ml#1061:24->1061:78
	FLDR	%fr6, %r31, $376	# build/example.ml#1061:24->1061:78
	FLDR	%fr5, %r31, $380	# build/example.ml#1061:24->1061:78
	FLDR	%fr4, %r31, $384	# build/example.ml#1061:24->1061:78
	FSUB	%fr7, %fr7, %fr5	# build/example.ml#1061:18->1061:78
	FSDD	%fr7, %r28, $4, %r26	# build/example.ml#1061:5->1061:78
	MVI	%r26, $2	# build/example.ml#1062:12->1062:13
	MVI	%r27, $2	# build/example.ml#1062:34->1062:35
	FLDD	%fr5, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $388	# build/example.ml#1062:40->1062:52
	SDR	%r5, %r31, $392	# build/example.ml#1062:40->1062:52
	SDR	%r4, %r31, $396	# build/example.ml#1062:40->1062:52
	SDR	%r3, %r31, $400	# build/example.ml#1062:40->1062:52
	SDR	%r2, %r31, $404	# build/example.ml#1062:40->1062:52
	SDR	%r1, %r31, $408	# build/example.ml#1062:40->1062:52
	MV	%r1, %r2	# build/example.ml#1062:40->1062:52
	MV	%r2, %r3	# build/example.ml#1062:40->1062:52
	MV	%r3, %r4	# build/example.ml#1062:40->1062:52
	MV	%r4, %r5	# build/example.ml#1062:40->1062:52
	MV	%r5, %r6	# build/example.ml#1062:40->1062:52
	MV	%r6, %r7	# build/example.ml#1062:40->1062:52
	MV	%r7, %r8	# build/example.ml#1062:40->1062:52
	MV	%r8, %r9	# build/example.ml#1062:40->1062:52
	MV	%r9, %r10	# build/example.ml#1062:40->1062:52
	MV	%r10, %r11	# build/example.ml#1062:40->1062:52
	MV	%r11, %r12	# build/example.ml#1062:40->1062:52
	ADDI	%r31, %r31, $412	# build/example.ml#1062:40->1062:52
	ADDI	%r31, %r31, $4	# build/example.ml#1062:40->1062:52
	SIP	# build/example.ml#1062:40->1062:52
	J	$o_param_r1.2653	# build/example.ml#1062:40->1062:52
	ADDI	%r31, %r31, $-412	# build/example.ml#1062:40->1062:52
	FMV	%fr7, %fr0	# build/example.ml#1062:40->1062:52
	LDR	%r6, %r31, $388	# build/example.ml#1062:40->1062:52
	LDR	%r5, %r31, $392	# build/example.ml#1062:40->1062:52
	LDR	%r4, %r31, $396	# build/example.ml#1062:40->1062:52
	LDR	%r3, %r31, $400	# build/example.ml#1062:40->1062:52
	LDR	%r2, %r31, $404	# build/example.ml#1062:40->1062:52
	LDR	%r1, %r31, $408	# build/example.ml#1062:40->1062:52
	FMUL	%fr4, %fr5, %fr7	# build/example.ml#1062:31->1062:52
	MVI	%r27, $0	# build/example.ml#1062:59->1062:60
	FLDD	%fr5, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $412	# build/example.ml#1062:65->1062:77
	SDR	%r5, %r31, $416	# build/example.ml#1062:65->1062:77
	SDR	%r4, %r31, $420	# build/example.ml#1062:65->1062:77
	SDR	%r3, %r31, $424	# build/example.ml#1062:65->1062:77
	SDR	%r2, %r31, $428	# build/example.ml#1062:65->1062:77
	SDR	%r1, %r31, $432	# build/example.ml#1062:65->1062:77
	MV	%r1, %r2	# build/example.ml#1062:65->1062:77
	MV	%r2, %r3	# build/example.ml#1062:65->1062:77
	MV	%r3, %r4	# build/example.ml#1062:65->1062:77
	MV	%r4, %r5	# build/example.ml#1062:65->1062:77
	MV	%r5, %r6	# build/example.ml#1062:65->1062:77
	MV	%r6, %r7	# build/example.ml#1062:65->1062:77
	MV	%r7, %r8	# build/example.ml#1062:65->1062:77
	MV	%r8, %r9	# build/example.ml#1062:65->1062:77
	MV	%r9, %r10	# build/example.ml#1062:65->1062:77
	MV	%r10, %r11	# build/example.ml#1062:65->1062:77
	MV	%r11, %r12	# build/example.ml#1062:65->1062:77
	ADDI	%r31, %r31, $436	# build/example.ml#1062:65->1062:77
	ADDI	%r31, %r31, $4	# build/example.ml#1062:65->1062:77
	SIP	# build/example.ml#1062:65->1062:77
	J	$o_param_r3.2657	# build/example.ml#1062:65->1062:77
	ADDI	%r31, %r31, $-436	# build/example.ml#1062:65->1062:77
	FMV	%fr7, %fr0	# build/example.ml#1062:65->1062:77
	LDR	%r6, %r31, $412	# build/example.ml#1062:65->1062:77
	LDR	%r5, %r31, $416	# build/example.ml#1062:65->1062:77
	LDR	%r4, %r31, $420	# build/example.ml#1062:65->1062:77
	LDR	%r3, %r31, $424	# build/example.ml#1062:65->1062:77
	LDR	%r2, %r31, $428	# build/example.ml#1062:65->1062:77
	LDR	%r1, %r31, $432	# build/example.ml#1062:65->1062:77
	FMUL	%fr7, %fr5, %fr7	# build/example.ml#1062:56->1062:77
	FADD	%fr7, %fr4, %fr7	# build/example.ml#1062:31->1062:77
	SDR	%r6, %r31, $436	# build/example.ml#1062:24->1062:78
	SDR	%r5, %r31, $440	# build/example.ml#1062:24->1062:78
	SDR	%r4, %r31, $444	# build/example.ml#1062:24->1062:78
	SDR	%r3, %r31, $448	# build/example.ml#1062:24->1062:78
	SDR	%r2, %r31, $452	# build/example.ml#1062:24->1062:78
	SDR	%r1, %r31, $456	# build/example.ml#1062:24->1062:78
	FSDR	%fr6, %r31, $460	# build/example.ml#1062:24->1062:78
	FSDR	%fr5, %r31, $464	# build/example.ml#1062:24->1062:78
	FSDR	%fr4, %r31, $468	# build/example.ml#1062:24->1062:78
	FMV	%fr0, %fr7	# build/example.ml#1062:24->1062:78
	ADDI	%r31, %r31, $472	# build/example.ml#1062:24->1062:78
	ADDI	%r31, %r31, $4	# build/example.ml#1062:24->1062:78
	SIP	# build/example.ml#1062:24->1062:78
	J	$min_caml_fhalf	# build/example.ml#1062:24->1062:78
	ADDI	%r31, %r31, $-472	# build/example.ml#1062:24->1062:78
	FMV	%fr7, %fr0	# build/example.ml#1062:24->1062:78
	LDR	%r6, %r31, $436	# build/example.ml#1062:24->1062:78
	LDR	%r5, %r31, $440	# build/example.ml#1062:24->1062:78
	LDR	%r4, %r31, $444	# build/example.ml#1062:24->1062:78
	LDR	%r3, %r31, $448	# build/example.ml#1062:24->1062:78
	LDR	%r2, %r31, $452	# build/example.ml#1062:24->1062:78
	LDR	%r1, %r31, $456	# build/example.ml#1062:24->1062:78
	FLDR	%fr6, %r31, $460	# build/example.ml#1062:24->1062:78
	FLDR	%fr5, %r31, $464	# build/example.ml#1062:24->1062:78
	FLDR	%fr4, %r31, $468	# build/example.ml#1062:24->1062:78
	FSUB	%fr8, %fr8, %fr7	# build/example.ml#1062:18->1062:78
	FSDD	%fr8, %r28, $4, %r26	# build/example.ml#1062:5->1062:78
	MVI	%r26, $3	# build/example.ml#1063:12->1063:13
	MVI	%r27, $1	# build/example.ml#1063:34->1063:35
	FLDD	%fr7, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $472	# build/example.ml#1063:40->1063:52
	SDR	%r5, %r31, $476	# build/example.ml#1063:40->1063:52
	SDR	%r4, %r31, $480	# build/example.ml#1063:40->1063:52
	SDR	%r3, %r31, $484	# build/example.ml#1063:40->1063:52
	SDR	%r2, %r31, $488	# build/example.ml#1063:40->1063:52
	SDR	%r1, %r31, $492	# build/example.ml#1063:40->1063:52
	MV	%r1, %r2	# build/example.ml#1063:40->1063:52
	MV	%r2, %r3	# build/example.ml#1063:40->1063:52
	MV	%r3, %r4	# build/example.ml#1063:40->1063:52
	MV	%r4, %r5	# build/example.ml#1063:40->1063:52
	MV	%r5, %r6	# build/example.ml#1063:40->1063:52
	MV	%r6, %r7	# build/example.ml#1063:40->1063:52
	MV	%r7, %r8	# build/example.ml#1063:40->1063:52
	MV	%r8, %r9	# build/example.ml#1063:40->1063:52
	MV	%r9, %r10	# build/example.ml#1063:40->1063:52
	MV	%r10, %r11	# build/example.ml#1063:40->1063:52
	MV	%r11, %r12	# build/example.ml#1063:40->1063:52
	ADDI	%r31, %r31, $496	# build/example.ml#1063:40->1063:52
	ADDI	%r31, %r31, $4	# build/example.ml#1063:40->1063:52
	SIP	# build/example.ml#1063:40->1063:52
	J	$o_param_r1.2653	# build/example.ml#1063:40->1063:52
	ADDI	%r31, %r31, $-496	# build/example.ml#1063:40->1063:52
	FMV	%fr8, %fr0	# build/example.ml#1063:40->1063:52
	LDR	%r6, %r31, $472	# build/example.ml#1063:40->1063:52
	LDR	%r5, %r31, $476	# build/example.ml#1063:40->1063:52
	LDR	%r4, %r31, $480	# build/example.ml#1063:40->1063:52
	LDR	%r3, %r31, $484	# build/example.ml#1063:40->1063:52
	LDR	%r2, %r31, $488	# build/example.ml#1063:40->1063:52
	LDR	%r1, %r31, $492	# build/example.ml#1063:40->1063:52
	FMUL	%fr5, %fr7, %fr8	# build/example.ml#1063:31->1063:52
	MVI	%r27, $0	# build/example.ml#1063:59->1063:60
	FLDD	%fr7, %r1, $4, %r27	# build/example.ml#1051:24->1051:29
	SDR	%r6, %r31, $496	# build/example.ml#1063:65->1063:77
	SDR	%r5, %r31, $500	# build/example.ml#1063:65->1063:77
	SDR	%r4, %r31, $504	# build/example.ml#1063:65->1063:77
	SDR	%r3, %r31, $508	# build/example.ml#1063:65->1063:77
	SDR	%r2, %r31, $512	# build/example.ml#1063:65->1063:77
	SDR	%r1, %r31, $516	# build/example.ml#1063:65->1063:77
	MV	%r1, %r2	# build/example.ml#1063:65->1063:77
	MV	%r2, %r3	# build/example.ml#1063:65->1063:77
	MV	%r3, %r4	# build/example.ml#1063:65->1063:77
	MV	%r4, %r5	# build/example.ml#1063:65->1063:77
	MV	%r5, %r6	# build/example.ml#1063:65->1063:77
	MV	%r6, %r7	# build/example.ml#1063:65->1063:77
	MV	%r7, %r8	# build/example.ml#1063:65->1063:77
	MV	%r8, %r9	# build/example.ml#1063:65->1063:77
	MV	%r9, %r10	# build/example.ml#1063:65->1063:77
	MV	%r10, %r11	# build/example.ml#1063:65->1063:77
	MV	%r11, %r12	# build/example.ml#1063:65->1063:77
	ADDI	%r31, %r31, $520	# build/example.ml#1063:65->1063:77
	ADDI	%r31, %r31, $4	# build/example.ml#1063:65->1063:77
	SIP	# build/example.ml#1063:65->1063:77
	J	$o_param_r2.2655	# build/example.ml#1063:65->1063:77
	ADDI	%r31, %r31, $-520	# build/example.ml#1063:65->1063:77
	FMV	%fr8, %fr0	# build/example.ml#1063:65->1063:77
	LDR	%r6, %r31, $496	# build/example.ml#1063:65->1063:77
	LDR	%r5, %r31, $500	# build/example.ml#1063:65->1063:77
	LDR	%r4, %r31, $504	# build/example.ml#1063:65->1063:77
	LDR	%r3, %r31, $508	# build/example.ml#1063:65->1063:77
	LDR	%r2, %r31, $512	# build/example.ml#1063:65->1063:77
	LDR	%r1, %r31, $516	# build/example.ml#1063:65->1063:77
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#1063:56->1063:77
	FADD	%fr8, %fr5, %fr8	# build/example.ml#1063:31->1063:77
	SDR	%r6, %r31, $520	# build/example.ml#1063:24->1063:78
	SDR	%r5, %r31, $524	# build/example.ml#1063:24->1063:78
	SDR	%r4, %r31, $528	# build/example.ml#1063:24->1063:78
	SDR	%r3, %r31, $532	# build/example.ml#1063:24->1063:78
	SDR	%r2, %r31, $536	# build/example.ml#1063:24->1063:78
	SDR	%r1, %r31, $540	# build/example.ml#1063:24->1063:78
	FSDR	%fr6, %r31, $544	# build/example.ml#1063:24->1063:78
	FSDR	%fr5, %r31, $548	# build/example.ml#1063:24->1063:78
	FSDR	%fr4, %r31, $552	# build/example.ml#1063:24->1063:78
	FMV	%fr0, %fr8	# build/example.ml#1063:24->1063:78
	ADDI	%r31, %r31, $556	# build/example.ml#1063:24->1063:78
	ADDI	%r31, %r31, $4	# build/example.ml#1063:24->1063:78
	SIP	# build/example.ml#1063:24->1063:78
	J	$min_caml_fhalf	# build/example.ml#1063:24->1063:78
	ADDI	%r31, %r31, $-556	# build/example.ml#1063:24->1063:78
	FMV	%fr8, %fr0	# build/example.ml#1063:24->1063:78
	LDR	%r6, %r31, $520	# build/example.ml#1063:24->1063:78
	LDR	%r5, %r31, $524	# build/example.ml#1063:24->1063:78
	LDR	%r4, %r31, $528	# build/example.ml#1063:24->1063:78
	LDR	%r3, %r31, $532	# build/example.ml#1063:24->1063:78
	LDR	%r2, %r31, $536	# build/example.ml#1063:24->1063:78
	LDR	%r1, %r31, $540	# build/example.ml#1063:24->1063:78
	FLDR	%fr6, %r31, $544	# build/example.ml#1063:24->1063:78
	FLDR	%fr5, %r31, $548	# build/example.ml#1063:24->1063:78
	FLDR	%fr4, %r31, $552	# build/example.ml#1063:24->1063:78
	FSUB	%fr9, %fr9, %fr8	# build/example.ml#1063:18->1063:78
	FSDD	%fr9, %r28, $4, %r26	# build/example.ml#1063:5->1063:78
	J	$if_eq_cont.11734	# build/example.ml#1060:3->1068:5
if_eq.11733:
	MVI	%r9, $1	# build/example.ml#1065:12->1065:13
	FSDD	%fr7, %r28, $4, %r9	# build/example.ml#1065:5->1065:20
	MVI	%r9, $2	# build/example.ml#1066:12->1066:13
	FSDD	%fr8, %r28, $4, %r9	# build/example.ml#1066:5->1066:20
	MVI	%r9, $3	# build/example.ml#1067:12->1067:13
	FSDD	%fr9, %r28, $4, %r9	# build/example.ml#1067:5->1067:20
if_eq_cont.11734:
	SDR	%r6, %r31, $556	# build/example.ml#1069:11->1069:21
	SDR	%r5, %r31, $560	# build/example.ml#1069:11->1069:21
	SDR	%r4, %r31, $564	# build/example.ml#1069:11->1069:21
	SDR	%r3, %r31, $568	# build/example.ml#1069:11->1069:21
	SDR	%r2, %r31, $572	# build/example.ml#1069:11->1069:21
	SDR	%r1, %r31, $576	# build/example.ml#1069:11->1069:21
	FSDR	%fr6, %r31, $580	# build/example.ml#1069:11->1069:21
	FSDR	%fr5, %r31, $584	# build/example.ml#1069:11->1069:21
	FSDR	%fr4, %r31, $588	# build/example.ml#1069:11->1069:21
	FMV	%fr0, %fr6	# build/example.ml#1069:11->1069:21
	ADDI	%r31, %r31, $592	# build/example.ml#1069:11->1069:21
	ADDI	%r31, %r31, $4	# build/example.ml#1069:11->1069:21
	SIP	# build/example.ml#1069:11->1069:21
	J	$min_caml_fiszero	# build/example.ml#1069:11->1069:21
	ADDI	%r31, %r31, $-592	# build/example.ml#1069:11->1069:21
	MV	%r8, %r0	# build/example.ml#1069:11->1069:21
	LDR	%r6, %r31, $556	# build/example.ml#1069:11->1069:21
	LDR	%r5, %r31, $560	# build/example.ml#1069:11->1069:21
	LDR	%r4, %r31, $564	# build/example.ml#1069:11->1069:21
	LDR	%r3, %r31, $568	# build/example.ml#1069:11->1069:21
	LDR	%r2, %r31, $572	# build/example.ml#1069:11->1069:21
	LDR	%r1, %r31, $576	# build/example.ml#1069:11->1069:21
	FLDR	%fr6, %r31, $580	# build/example.ml#1069:11->1069:21
	FLDR	%fr5, %r31, $584	# build/example.ml#1069:11->1069:21
	FLDR	%fr4, %r31, $588	# build/example.ml#1069:11->1069:21
	MVI	%r9, $0	# build/example.ml#1069:3->1071:10
	CEQ	%r8, %r9	# build/example.ml#1069:3->1071:10
	JZ	$if_eq.11735	# build/example.ml#1069:3->1071:10
	J	$if_eq_cont.11736	# build/example.ml#1069:3->1071:10
if_eq.11735:
	MVI	%r9, $4	# build/example.ml#1070:12->1070:13
	FLDA	%fr9, $l.7785	# build/example.ml#1070:18->1070:21
	FDIV	%fr9, %fr9, %fr6	# build/example.ml#1070:18->1070:27
	FSDD	%fr9, %r28, $4, %r9	# build/example.ml#1070:5->1070:27
if_eq_cont.11736:
	MV	%r0, %r28	# build/example.ml#1072:3->1072:8
	LDR	%r9, %r31, $0	# build/example.ml#1049:28->1049:29
	LDR	%r8, %r31, $4	# build/example.ml#1049:28->1049:29
	LDR	%r7, %r31, $8	# build/example.ml#1049:28->1049:29
	LDR	%r28, %r31, $12	# build/example.ml#1049:28->1049:29
	LDR	%r27, %r31, $16	# build/example.ml#1049:28->1049:29
	LDR	%r26, %r31, $20	# build/example.ml#1049:28->1049:29
	LDR	%r12, %r31, $24	# build/example.ml#1049:28->1049:29
	LDR	%r11, %r31, $28	# build/example.ml#1049:28->1049:29
	LDR	%r10, %r31, $32	# build/example.ml#1049:28->1049:29
	FLDR	%fr9, %r31, $36	# build/example.ml#1049:28->1049:29
	FLDR	%fr8, %r31, $40	# build/example.ml#1049:28->1049:29
	FLDR	%fr7, %r31, $44	# build/example.ml#1049:28->1049:29
	FLDR	%fr31, %r31, $48	# build/example.ml#1049:28->1049:29
	LINK	# build/example.ml#1049:28->1049:29
setup_surface_table.2800:
	SDR	%r9, %r31, $0	# build/example.ml#1030:28->1030:29
	SDR	%r8, %r31, $4	# build/example.ml#1030:28->1030:29
	SDR	%r7, %r31, $8	# build/example.ml#1030:28->1030:29
	SDR	%r28, %r31, $12	# build/example.ml#1030:28->1030:29
	SDR	%r27, %r31, $16	# build/example.ml#1030:28->1030:29
	SDR	%r26, %r31, $20	# build/example.ml#1030:28->1030:29
	SDR	%r12, %r31, $24	# build/example.ml#1030:28->1030:29
	SDR	%r11, %r31, $28	# build/example.ml#1030:28->1030:29
	SDR	%r10, %r31, $32	# build/example.ml#1030:28->1030:29
	FSDR	%fr9, %r31, $36	# build/example.ml#1030:28->1030:29
	FSDR	%fr8, %r31, $40	# build/example.ml#1030:28->1030:29
	FSDR	%fr7, %r31, $44	# build/example.ml#1030:28->1030:29
	MVI	%r28, $4	# build/example.ml#1030:28->1030:29
	FLDA	%fr9, $l.7787	# build/example.ml#1030:30->1030:33
	SDR	%r6, %r31, $48	# build/example.ml#1030:15->1030:33
	SDR	%r5, %r31, $52	# build/example.ml#1030:15->1030:33
	SDR	%r4, %r31, $56	# build/example.ml#1030:15->1030:33
	SDR	%r3, %r31, $60	# build/example.ml#1030:15->1030:33
	SDR	%r2, %r31, $64	# build/example.ml#1030:15->1030:33
	SDR	%r1, %r31, $68	# build/example.ml#1030:15->1030:33
	MV	%r1, %r28	# build/example.ml#1030:15->1030:33
	FMV	%fr0, %fr9	# build/example.ml#1030:15->1030:33
	ADDI	%r31, %r31, $72	# build/example.ml#1030:15->1030:33
	ADDI	%r31, %r31, $4	# build/example.ml#1030:15->1030:33
	SIP	# build/example.ml#1030:15->1030:33
	J	$min_caml_create_float_array	# build/example.ml#1030:15->1030:33
	ADDI	%r31, %r31, $-72	# build/example.ml#1030:15->1030:33
	MV	%r28, %r0	# build/example.ml#1030:15->1030:33
	LDR	%r6, %r31, $48	# build/example.ml#1030:15->1030:33
	LDR	%r5, %r31, $52	# build/example.ml#1030:15->1030:33
	LDR	%r4, %r31, $56	# build/example.ml#1030:15->1030:33
	LDR	%r3, %r31, $60	# build/example.ml#1030:15->1030:33
	LDR	%r2, %r31, $64	# build/example.ml#1030:15->1030:33
	LDR	%r1, %r31, $68	# build/example.ml#1030:15->1030:33
	MVI	%r27, $0	# build/example.ml#1032:10->1032:11
	FLDD	%fr8, %r1, $4, %r27	# build/example.ml#1032:5->1032:12
	SDR	%r6, %r31, $72	# build/example.ml#1032:16->1032:27
	SDR	%r5, %r31, $76	# build/example.ml#1032:16->1032:27
	SDR	%r4, %r31, $80	# build/example.ml#1032:16->1032:27
	SDR	%r3, %r31, $84	# build/example.ml#1032:16->1032:27
	SDR	%r2, %r31, $88	# build/example.ml#1032:16->1032:27
	SDR	%r1, %r31, $92	# build/example.ml#1032:16->1032:27
	MV	%r1, %r2	# build/example.ml#1032:16->1032:27
	MV	%r2, %r3	# build/example.ml#1032:16->1032:27
	MV	%r3, %r4	# build/example.ml#1032:16->1032:27
	MV	%r4, %r5	# build/example.ml#1032:16->1032:27
	MV	%r5, %r6	# build/example.ml#1032:16->1032:27
	MV	%r6, %r7	# build/example.ml#1032:16->1032:27
	MV	%r7, %r8	# build/example.ml#1032:16->1032:27
	MV	%r8, %r9	# build/example.ml#1032:16->1032:27
	MV	%r9, %r10	# build/example.ml#1032:16->1032:27
	MV	%r10, %r11	# build/example.ml#1032:16->1032:27
	MV	%r11, %r12	# build/example.ml#1032:16->1032:27
	ADDI	%r31, %r31, $96	# build/example.ml#1032:16->1032:27
	ADDI	%r31, %r31, $4	# build/example.ml#1032:16->1032:27
	SIP	# build/example.ml#1032:16->1032:27
	J	$o_param_a.2629	# build/example.ml#1032:16->1032:27
	ADDI	%r31, %r31, $-96	# build/example.ml#1032:16->1032:27
	FMV	%fr9, %fr0	# build/example.ml#1032:16->1032:27
	LDR	%r6, %r31, $72	# build/example.ml#1032:16->1032:27
	LDR	%r5, %r31, $76	# build/example.ml#1032:16->1032:27
	LDR	%r4, %r31, $80	# build/example.ml#1032:16->1032:27
	LDR	%r3, %r31, $84	# build/example.ml#1032:16->1032:27
	LDR	%r2, %r31, $88	# build/example.ml#1032:16->1032:27
	LDR	%r1, %r31, $92	# build/example.ml#1032:16->1032:27
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#1032:5->1032:27
	MVI	%r27, $1	# build/example.ml#1032:36->1032:37
	FLDD	%fr8, %r1, $4, %r27	# build/example.ml#1032:5->1032:12
	SDR	%r6, %r31, $96	# build/example.ml#1032:42->1032:53
	SDR	%r5, %r31, $100	# build/example.ml#1032:42->1032:53
	SDR	%r4, %r31, $104	# build/example.ml#1032:42->1032:53
	SDR	%r3, %r31, $108	# build/example.ml#1032:42->1032:53
	SDR	%r2, %r31, $112	# build/example.ml#1032:42->1032:53
	SDR	%r1, %r31, $116	# build/example.ml#1032:42->1032:53
	MV	%r1, %r2	# build/example.ml#1032:42->1032:53
	MV	%r2, %r3	# build/example.ml#1032:42->1032:53
	MV	%r3, %r4	# build/example.ml#1032:42->1032:53
	MV	%r4, %r5	# build/example.ml#1032:42->1032:53
	MV	%r5, %r6	# build/example.ml#1032:42->1032:53
	MV	%r6, %r7	# build/example.ml#1032:42->1032:53
	MV	%r7, %r8	# build/example.ml#1032:42->1032:53
	MV	%r8, %r9	# build/example.ml#1032:42->1032:53
	MV	%r9, %r10	# build/example.ml#1032:42->1032:53
	MV	%r10, %r11	# build/example.ml#1032:42->1032:53
	MV	%r11, %r12	# build/example.ml#1032:42->1032:53
	ADDI	%r31, %r31, $120	# build/example.ml#1032:42->1032:53
	ADDI	%r31, %r31, $4	# build/example.ml#1032:42->1032:53
	SIP	# build/example.ml#1032:42->1032:53
	J	$o_param_b.2631	# build/example.ml#1032:42->1032:53
	ADDI	%r31, %r31, $-120	# build/example.ml#1032:42->1032:53
	FMV	%fr9, %fr0	# build/example.ml#1032:42->1032:53
	LDR	%r6, %r31, $96	# build/example.ml#1032:42->1032:53
	LDR	%r5, %r31, $100	# build/example.ml#1032:42->1032:53
	LDR	%r4, %r31, $104	# build/example.ml#1032:42->1032:53
	LDR	%r3, %r31, $108	# build/example.ml#1032:42->1032:53
	LDR	%r2, %r31, $112	# build/example.ml#1032:42->1032:53
	LDR	%r1, %r31, $116	# build/example.ml#1032:42->1032:53
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1032:31->1032:53
	FADD	%fr7, %fr7, %fr9	# build/example.ml#1032:5->1032:53
	MVI	%r27, $2	# build/example.ml#1032:62->1032:63
	FLDD	%fr8, %r1, $4, %r27	# build/example.ml#1032:5->1032:12
	SDR	%r6, %r31, $120	# build/example.ml#1032:68->1032:79
	SDR	%r5, %r31, $124	# build/example.ml#1032:68->1032:79
	SDR	%r4, %r31, $128	# build/example.ml#1032:68->1032:79
	SDR	%r3, %r31, $132	# build/example.ml#1032:68->1032:79
	SDR	%r2, %r31, $136	# build/example.ml#1032:68->1032:79
	SDR	%r1, %r31, $140	# build/example.ml#1032:68->1032:79
	MV	%r1, %r2	# build/example.ml#1032:68->1032:79
	MV	%r2, %r3	# build/example.ml#1032:68->1032:79
	MV	%r3, %r4	# build/example.ml#1032:68->1032:79
	MV	%r4, %r5	# build/example.ml#1032:68->1032:79
	MV	%r5, %r6	# build/example.ml#1032:68->1032:79
	MV	%r6, %r7	# build/example.ml#1032:68->1032:79
	MV	%r7, %r8	# build/example.ml#1032:68->1032:79
	MV	%r8, %r9	# build/example.ml#1032:68->1032:79
	MV	%r9, %r10	# build/example.ml#1032:68->1032:79
	MV	%r10, %r11	# build/example.ml#1032:68->1032:79
	MV	%r11, %r12	# build/example.ml#1032:68->1032:79
	ADDI	%r31, %r31, $144	# build/example.ml#1032:68->1032:79
	ADDI	%r31, %r31, $4	# build/example.ml#1032:68->1032:79
	SIP	# build/example.ml#1032:68->1032:79
	J	$o_param_c.2633	# build/example.ml#1032:68->1032:79
	ADDI	%r31, %r31, $-144	# build/example.ml#1032:68->1032:79
	FMV	%fr9, %fr0	# build/example.ml#1032:68->1032:79
	LDR	%r6, %r31, $120	# build/example.ml#1032:68->1032:79
	LDR	%r5, %r31, $124	# build/example.ml#1032:68->1032:79
	LDR	%r4, %r31, $128	# build/example.ml#1032:68->1032:79
	LDR	%r3, %r31, $132	# build/example.ml#1032:68->1032:79
	LDR	%r2, %r31, $136	# build/example.ml#1032:68->1032:79
	LDR	%r1, %r31, $140	# build/example.ml#1032:68->1032:79
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#1032:57->1032:79
	FADD	%fr9, %fr7, %fr9	# build/example.ml#1032:5->1032:79
	SDR	%r6, %r31, $144	# build/example.ml#1034:6->1034:14
	SDR	%r5, %r31, $148	# build/example.ml#1034:6->1034:14
	SDR	%r4, %r31, $152	# build/example.ml#1034:6->1034:14
	SDR	%r3, %r31, $156	# build/example.ml#1034:6->1034:14
	SDR	%r2, %r31, $160	# build/example.ml#1034:6->1034:14
	SDR	%r1, %r31, $164	# build/example.ml#1034:6->1034:14
	FMV	%fr0, %fr9	# build/example.ml#1034:6->1034:14
	ADDI	%r31, %r31, $168	# build/example.ml#1034:6->1034:14
	ADDI	%r31, %r31, $4	# build/example.ml#1034:6->1034:14
	SIP	# build/example.ml#1034:6->1034:14
	J	$min_caml_fispos	# build/example.ml#1034:6->1034:14
	ADDI	%r31, %r31, $-168	# build/example.ml#1034:6->1034:14
	MV	%r26, %r0	# build/example.ml#1034:6->1034:14
	LDR	%r6, %r31, $144	# build/example.ml#1034:6->1034:14
	LDR	%r5, %r31, $148	# build/example.ml#1034:6->1034:14
	LDR	%r4, %r31, $152	# build/example.ml#1034:6->1034:14
	LDR	%r3, %r31, $156	# build/example.ml#1034:6->1034:14
	LDR	%r2, %r31, $160	# build/example.ml#1034:6->1034:14
	LDR	%r1, %r31, $164	# build/example.ml#1034:6->1034:14
	MVI	%r27, $0	# build/example.ml#1034:3->1042:21
	CEQ	%r26, %r27	# build/example.ml#1034:3->1042:21
	JZ	$if_eq.11737	# build/example.ml#1034:3->1042:21
	MVI	%r27, $0	# build/example.ml#1036:12->1036:13
	FLDA	%fr8, $l.7812	# build/example.ml#1036:18->1036:22
	FDIV	%fr8, %fr8, %fr9	# build/example.ml#1036:18->1036:27
	FSDD	%fr8, %r28, $4, %r27	# build/example.ml#1036:5->1036:27
	MVI	%r27, $1	# build/example.ml#1038:12->1038:13
	SDR	%r6, %r31, $168	# build/example.ml#1038:24->1038:35
	SDR	%r5, %r31, $172	# build/example.ml#1038:24->1038:35
	SDR	%r4, %r31, $176	# build/example.ml#1038:24->1038:35
	SDR	%r3, %r31, $180	# build/example.ml#1038:24->1038:35
	SDR	%r2, %r31, $184	# build/example.ml#1038:24->1038:35
	SDR	%r1, %r31, $188	# build/example.ml#1038:24->1038:35
	MV	%r1, %r2	# build/example.ml#1038:24->1038:35
	MV	%r2, %r3	# build/example.ml#1038:24->1038:35
	MV	%r3, %r4	# build/example.ml#1038:24->1038:35
	MV	%r4, %r5	# build/example.ml#1038:24->1038:35
	MV	%r5, %r6	# build/example.ml#1038:24->1038:35
	MV	%r6, %r7	# build/example.ml#1038:24->1038:35
	MV	%r7, %r8	# build/example.ml#1038:24->1038:35
	MV	%r8, %r9	# build/example.ml#1038:24->1038:35
	MV	%r9, %r10	# build/example.ml#1038:24->1038:35
	MV	%r10, %r11	# build/example.ml#1038:24->1038:35
	MV	%r11, %r12	# build/example.ml#1038:24->1038:35
	ADDI	%r31, %r31, $192	# build/example.ml#1038:24->1038:35
	ADDI	%r31, %r31, $4	# build/example.ml#1038:24->1038:35
	SIP	# build/example.ml#1038:24->1038:35
	J	$o_param_a.2629	# build/example.ml#1038:24->1038:35
	ADDI	%r31, %r31, $-192	# build/example.ml#1038:24->1038:35
	FMV	%fr8, %fr0	# build/example.ml#1038:24->1038:35
	LDR	%r6, %r31, $168	# build/example.ml#1038:24->1038:35
	LDR	%r5, %r31, $172	# build/example.ml#1038:24->1038:35
	LDR	%r4, %r31, $176	# build/example.ml#1038:24->1038:35
	LDR	%r3, %r31, $180	# build/example.ml#1038:24->1038:35
	LDR	%r2, %r31, $184	# build/example.ml#1038:24->1038:35
	LDR	%r1, %r31, $188	# build/example.ml#1038:24->1038:35
	FDIV	%fr8, %fr8, %fr9	# build/example.ml#1038:24->1038:40
	SDR	%r6, %r31, $192	# build/example.ml#1038:18->1038:41
	SDR	%r5, %r31, $196	# build/example.ml#1038:18->1038:41
	SDR	%r4, %r31, $200	# build/example.ml#1038:18->1038:41
	SDR	%r3, %r31, $204	# build/example.ml#1038:18->1038:41
	SDR	%r2, %r31, $208	# build/example.ml#1038:18->1038:41
	SDR	%r1, %r31, $212	# build/example.ml#1038:18->1038:41
	FMV	%fr0, %fr8	# build/example.ml#1038:18->1038:41
	ADDI	%r31, %r31, $216	# build/example.ml#1038:18->1038:41
	ADDI	%r31, %r31, $4	# build/example.ml#1038:18->1038:41
	SIP	# build/example.ml#1038:18->1038:41
	J	$min_caml_fneg	# build/example.ml#1038:18->1038:41
	ADDI	%r31, %r31, $-216	# build/example.ml#1038:18->1038:41
	FMV	%fr8, %fr0	# build/example.ml#1038:18->1038:41
	LDR	%r6, %r31, $192	# build/example.ml#1038:18->1038:41
	LDR	%r5, %r31, $196	# build/example.ml#1038:18->1038:41
	LDR	%r4, %r31, $200	# build/example.ml#1038:18->1038:41
	LDR	%r3, %r31, $204	# build/example.ml#1038:18->1038:41
	LDR	%r2, %r31, $208	# build/example.ml#1038:18->1038:41
	LDR	%r1, %r31, $212	# build/example.ml#1038:18->1038:41
	FSDD	%fr8, %r28, $4, %r27	# build/example.ml#1038:5->1038:41
	MVI	%r27, $2	# build/example.ml#1039:12->1039:13
	SDR	%r6, %r31, $216	# build/example.ml#1039:24->1039:35
	SDR	%r5, %r31, $220	# build/example.ml#1039:24->1039:35
	SDR	%r4, %r31, $224	# build/example.ml#1039:24->1039:35
	SDR	%r3, %r31, $228	# build/example.ml#1039:24->1039:35
	SDR	%r2, %r31, $232	# build/example.ml#1039:24->1039:35
	SDR	%r1, %r31, $236	# build/example.ml#1039:24->1039:35
	MV	%r1, %r2	# build/example.ml#1039:24->1039:35
	MV	%r2, %r3	# build/example.ml#1039:24->1039:35
	MV	%r3, %r4	# build/example.ml#1039:24->1039:35
	MV	%r4, %r5	# build/example.ml#1039:24->1039:35
	MV	%r5, %r6	# build/example.ml#1039:24->1039:35
	MV	%r6, %r7	# build/example.ml#1039:24->1039:35
	MV	%r7, %r8	# build/example.ml#1039:24->1039:35
	MV	%r8, %r9	# build/example.ml#1039:24->1039:35
	MV	%r9, %r10	# build/example.ml#1039:24->1039:35
	MV	%r10, %r11	# build/example.ml#1039:24->1039:35
	MV	%r11, %r12	# build/example.ml#1039:24->1039:35
	ADDI	%r31, %r31, $240	# build/example.ml#1039:24->1039:35
	ADDI	%r31, %r31, $4	# build/example.ml#1039:24->1039:35
	SIP	# build/example.ml#1039:24->1039:35
	J	$o_param_b.2631	# build/example.ml#1039:24->1039:35
	ADDI	%r31, %r31, $-240	# build/example.ml#1039:24->1039:35
	FMV	%fr8, %fr0	# build/example.ml#1039:24->1039:35
	LDR	%r6, %r31, $216	# build/example.ml#1039:24->1039:35
	LDR	%r5, %r31, $220	# build/example.ml#1039:24->1039:35
	LDR	%r4, %r31, $224	# build/example.ml#1039:24->1039:35
	LDR	%r3, %r31, $228	# build/example.ml#1039:24->1039:35
	LDR	%r2, %r31, $232	# build/example.ml#1039:24->1039:35
	LDR	%r1, %r31, $236	# build/example.ml#1039:24->1039:35
	FDIV	%fr8, %fr8, %fr9	# build/example.ml#1039:24->1039:40
	SDR	%r6, %r31, $240	# build/example.ml#1039:18->1039:41
	SDR	%r5, %r31, $244	# build/example.ml#1039:18->1039:41
	SDR	%r4, %r31, $248	# build/example.ml#1039:18->1039:41
	SDR	%r3, %r31, $252	# build/example.ml#1039:18->1039:41
	SDR	%r2, %r31, $256	# build/example.ml#1039:18->1039:41
	SDR	%r1, %r31, $260	# build/example.ml#1039:18->1039:41
	FMV	%fr0, %fr8	# build/example.ml#1039:18->1039:41
	ADDI	%r31, %r31, $264	# build/example.ml#1039:18->1039:41
	ADDI	%r31, %r31, $4	# build/example.ml#1039:18->1039:41
	SIP	# build/example.ml#1039:18->1039:41
	J	$min_caml_fneg	# build/example.ml#1039:18->1039:41
	ADDI	%r31, %r31, $-264	# build/example.ml#1039:18->1039:41
	FMV	%fr8, %fr0	# build/example.ml#1039:18->1039:41
	LDR	%r6, %r31, $240	# build/example.ml#1039:18->1039:41
	LDR	%r5, %r31, $244	# build/example.ml#1039:18->1039:41
	LDR	%r4, %r31, $248	# build/example.ml#1039:18->1039:41
	LDR	%r3, %r31, $252	# build/example.ml#1039:18->1039:41
	LDR	%r2, %r31, $256	# build/example.ml#1039:18->1039:41
	LDR	%r1, %r31, $260	# build/example.ml#1039:18->1039:41
	FSDD	%fr8, %r28, $4, %r27	# build/example.ml#1039:5->1039:41
	MVI	%r27, $3	# build/example.ml#1040:12->1040:13
	SDR	%r6, %r31, $264	# build/example.ml#1040:24->1040:35
	SDR	%r5, %r31, $268	# build/example.ml#1040:24->1040:35
	SDR	%r4, %r31, $272	# build/example.ml#1040:24->1040:35
	SDR	%r3, %r31, $276	# build/example.ml#1040:24->1040:35
	SDR	%r2, %r31, $280	# build/example.ml#1040:24->1040:35
	SDR	%r1, %r31, $284	# build/example.ml#1040:24->1040:35
	MV	%r1, %r2	# build/example.ml#1040:24->1040:35
	MV	%r2, %r3	# build/example.ml#1040:24->1040:35
	MV	%r3, %r4	# build/example.ml#1040:24->1040:35
	MV	%r4, %r5	# build/example.ml#1040:24->1040:35
	MV	%r5, %r6	# build/example.ml#1040:24->1040:35
	MV	%r6, %r7	# build/example.ml#1040:24->1040:35
	MV	%r7, %r8	# build/example.ml#1040:24->1040:35
	MV	%r8, %r9	# build/example.ml#1040:24->1040:35
	MV	%r9, %r10	# build/example.ml#1040:24->1040:35
	MV	%r10, %r11	# build/example.ml#1040:24->1040:35
	MV	%r11, %r12	# build/example.ml#1040:24->1040:35
	ADDI	%r31, %r31, $288	# build/example.ml#1040:24->1040:35
	ADDI	%r31, %r31, $4	# build/example.ml#1040:24->1040:35
	SIP	# build/example.ml#1040:24->1040:35
	J	$o_param_c.2633	# build/example.ml#1040:24->1040:35
	ADDI	%r31, %r31, $-288	# build/example.ml#1040:24->1040:35
	FMV	%fr8, %fr0	# build/example.ml#1040:24->1040:35
	LDR	%r6, %r31, $264	# build/example.ml#1040:24->1040:35
	LDR	%r5, %r31, $268	# build/example.ml#1040:24->1040:35
	LDR	%r4, %r31, $272	# build/example.ml#1040:24->1040:35
	LDR	%r3, %r31, $276	# build/example.ml#1040:24->1040:35
	LDR	%r2, %r31, $280	# build/example.ml#1040:24->1040:35
	LDR	%r1, %r31, $284	# build/example.ml#1040:24->1040:35
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#1040:24->1040:40
	SDR	%r6, %r31, $288	# build/example.ml#1040:18->1040:41
	SDR	%r5, %r31, $292	# build/example.ml#1040:18->1040:41
	SDR	%r4, %r31, $296	# build/example.ml#1040:18->1040:41
	SDR	%r3, %r31, $300	# build/example.ml#1040:18->1040:41
	SDR	%r2, %r31, $304	# build/example.ml#1040:18->1040:41
	SDR	%r1, %r31, $308	# build/example.ml#1040:18->1040:41
	FMV	%fr0, %fr9	# build/example.ml#1040:18->1040:41
	ADDI	%r31, %r31, $312	# build/example.ml#1040:18->1040:41
	ADDI	%r31, %r31, $4	# build/example.ml#1040:18->1040:41
	SIP	# build/example.ml#1040:18->1040:41
	J	$min_caml_fneg	# build/example.ml#1040:18->1040:41
	ADDI	%r31, %r31, $-312	# build/example.ml#1040:18->1040:41
	FMV	%fr9, %fr0	# build/example.ml#1040:18->1040:41
	LDR	%r6, %r31, $288	# build/example.ml#1040:18->1040:41
	LDR	%r5, %r31, $292	# build/example.ml#1040:18->1040:41
	LDR	%r4, %r31, $296	# build/example.ml#1040:18->1040:41
	LDR	%r3, %r31, $300	# build/example.ml#1040:18->1040:41
	LDR	%r2, %r31, $304	# build/example.ml#1040:18->1040:41
	LDR	%r1, %r31, $308	# build/example.ml#1040:18->1040:41
	FSDD	%fr9, %r28, $4, %r27	# build/example.ml#1040:5->1040:41
	J	$if_eq_cont.11738	# build/example.ml#1034:3->1042:21
if_eq.11737:
	MVI	%r9, $0	# build/example.ml#1042:12->1042:13
	FLDA	%fr9, $l.7787	# build/example.ml#1042:18->1042:21
	FSDD	%fr9, %r28, $4, %r9	# build/example.ml#1042:5->1042:21
if_eq_cont.11738:
	MV	%r0, %r28	# build/example.ml#1043:3->1043:8
	LDR	%r9, %r31, $0	# build/example.ml#1030:28->1030:29
	LDR	%r8, %r31, $4	# build/example.ml#1030:28->1030:29
	LDR	%r7, %r31, $8	# build/example.ml#1030:28->1030:29
	LDR	%r28, %r31, $12	# build/example.ml#1030:28->1030:29
	LDR	%r27, %r31, $16	# build/example.ml#1030:28->1030:29
	LDR	%r26, %r31, $20	# build/example.ml#1030:28->1030:29
	LDR	%r12, %r31, $24	# build/example.ml#1030:28->1030:29
	LDR	%r11, %r31, $28	# build/example.ml#1030:28->1030:29
	LDR	%r10, %r31, $32	# build/example.ml#1030:28->1030:29
	FLDR	%fr9, %r31, $36	# build/example.ml#1030:28->1030:29
	FLDR	%fr8, %r31, $40	# build/example.ml#1030:28->1030:29
	FLDR	%fr7, %r31, $44	# build/example.ml#1030:28->1030:29
	LINK	# build/example.ml#1030:28->1030:29
setup_rect_table.2797:
	SDR	%r9, %r31, $0	# build/example.ml#1003:28->1003:29
	SDR	%r8, %r31, $4	# build/example.ml#1003:28->1003:29
	SDR	%r7, %r31, $8	# build/example.ml#1003:28->1003:29
	SDR	%r28, %r31, $12	# build/example.ml#1003:28->1003:29
	SDR	%r27, %r31, $16	# build/example.ml#1003:28->1003:29
	SDR	%r26, %r31, $20	# build/example.ml#1003:28->1003:29
	SDR	%r25, %r31, $24	# build/example.ml#1003:28->1003:29
	SDR	%r12, %r31, $28	# build/example.ml#1003:28->1003:29
	SDR	%r11, %r31, $32	# build/example.ml#1003:28->1003:29
	SDR	%r10, %r31, $36	# build/example.ml#1003:28->1003:29
	FSDR	%fr9, %r31, $40	# build/example.ml#1003:28->1003:29
	FSDR	%fr8, %r31, $44	# build/example.ml#1003:28->1003:29
	MVI	%r28, $6	# build/example.ml#1003:28->1003:29
	FLDA	%fr9, $l.7787	# build/example.ml#1003:30->1003:33
	SDR	%r6, %r31, $48	# build/example.ml#1003:15->1003:33
	SDR	%r5, %r31, $52	# build/example.ml#1003:15->1003:33
	SDR	%r4, %r31, $56	# build/example.ml#1003:15->1003:33
	SDR	%r3, %r31, $60	# build/example.ml#1003:15->1003:33
	SDR	%r2, %r31, $64	# build/example.ml#1003:15->1003:33
	SDR	%r1, %r31, $68	# build/example.ml#1003:15->1003:33
	MV	%r1, %r28	# build/example.ml#1003:15->1003:33
	FMV	%fr0, %fr9	# build/example.ml#1003:15->1003:33
	ADDI	%r31, %r31, $72	# build/example.ml#1003:15->1003:33
	ADDI	%r31, %r31, $4	# build/example.ml#1003:15->1003:33
	SIP	# build/example.ml#1003:15->1003:33
	J	$min_caml_create_float_array	# build/example.ml#1003:15->1003:33
	ADDI	%r31, %r31, $-72	# build/example.ml#1003:15->1003:33
	MV	%r27, %r0	# build/example.ml#1003:15->1003:33
	LDR	%r6, %r31, $48	# build/example.ml#1003:15->1003:33
	LDR	%r5, %r31, $52	# build/example.ml#1003:15->1003:33
	LDR	%r4, %r31, $56	# build/example.ml#1003:15->1003:33
	LDR	%r3, %r31, $60	# build/example.ml#1003:15->1003:33
	LDR	%r2, %r31, $64	# build/example.ml#1003:15->1003:33
	LDR	%r1, %r31, $68	# build/example.ml#1003:15->1003:33
	MVI	%r28, $0	# build/example.ml#1005:19->1005:20
	FLDD	%fr9, %r1, $4, %r28	# build/example.ml#1005:14->1005:21
	SDR	%r6, %r31, $72	# build/example.ml#1005:6->1005:21
	SDR	%r5, %r31, $76	# build/example.ml#1005:6->1005:21
	SDR	%r4, %r31, $80	# build/example.ml#1005:6->1005:21
	SDR	%r3, %r31, $84	# build/example.ml#1005:6->1005:21
	SDR	%r2, %r31, $88	# build/example.ml#1005:6->1005:21
	SDR	%r1, %r31, $92	# build/example.ml#1005:6->1005:21
	FMV	%fr0, %fr9	# build/example.ml#1005:6->1005:21
	ADDI	%r31, %r31, $96	# build/example.ml#1005:6->1005:21
	ADDI	%r31, %r31, $4	# build/example.ml#1005:6->1005:21
	SIP	# build/example.ml#1005:6->1005:21
	J	$min_caml_fiszero	# build/example.ml#1005:6->1005:21
	ADDI	%r31, %r31, $-96	# build/example.ml#1005:6->1005:21
	MV	%r26, %r0	# build/example.ml#1005:6->1005:21
	LDR	%r6, %r31, $72	# build/example.ml#1005:6->1005:21
	LDR	%r5, %r31, $76	# build/example.ml#1005:6->1005:21
	LDR	%r4, %r31, $80	# build/example.ml#1005:6->1005:21
	LDR	%r3, %r31, $84	# build/example.ml#1005:6->1005:21
	LDR	%r2, %r31, $88	# build/example.ml#1005:6->1005:21
	LDR	%r1, %r31, $92	# build/example.ml#1005:6->1005:21
	MVI	%r28, $0	# build/example.ml#1005:3->1012:4
	CEQ	%r26, %r28	# build/example.ml#1005:3->1012:4
	JZ	$if_eq.11739	# build/example.ml#1005:3->1012:4
	MVI	%r28, $1	# build/example.ml#1006:12->1006:13
	FLDA	%fr9, $l.7787	# build/example.ml#1006:18->1006:21
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1006:5->1006:21
	J	$if_eq_cont.11740	# build/example.ml#1005:3->1012:4
if_eq.11739:
	MVI	%r25, $0	# build/example.ml#1009:12->1009:13
	MV	%r28, %r8	# build/example.ml#179:3->183:11
	MVI	%r26, $0	# build/example.ml#1009:61->1009:62
	FLDD	%fr9, %r1, $4, %r26	# build/example.ml#1005:14->1005:21
	SDR	%r6, %r31, $96	# build/example.ml#1009:49->1009:63
	SDR	%r5, %r31, $100	# build/example.ml#1009:49->1009:63
	SDR	%r4, %r31, $104	# build/example.ml#1009:49->1009:63
	SDR	%r3, %r31, $108	# build/example.ml#1009:49->1009:63
	SDR	%r2, %r31, $112	# build/example.ml#1009:49->1009:63
	SDR	%r1, %r31, $116	# build/example.ml#1009:49->1009:63
	FMV	%fr0, %fr9	# build/example.ml#1009:49->1009:63
	ADDI	%r31, %r31, $120	# build/example.ml#1009:49->1009:63
	ADDI	%r31, %r31, $4	# build/example.ml#1009:49->1009:63
	SIP	# build/example.ml#1009:49->1009:63
	J	$min_caml_fisneg	# build/example.ml#1009:49->1009:63
	ADDI	%r31, %r31, $-120	# build/example.ml#1009:49->1009:63
	MV	%r26, %r0	# build/example.ml#1009:49->1009:63
	LDR	%r6, %r31, $96	# build/example.ml#1009:49->1009:63
	LDR	%r5, %r31, $100	# build/example.ml#1009:49->1009:63
	LDR	%r4, %r31, $104	# build/example.ml#1009:49->1009:63
	LDR	%r3, %r31, $108	# build/example.ml#1009:49->1009:63
	LDR	%r2, %r31, $112	# build/example.ml#1009:49->1009:63
	LDR	%r1, %r31, $116	# build/example.ml#1009:49->1009:63
	SDR	%r2, %r31, $120	# build/example.ml#1009:29->1009:64
	SDR	%r1, %r31, $124	# build/example.ml#1009:29->1009:64
	MV	%r2, %r26	# build/example.ml#1009:29->1009:64
	MV	%r1, %r28	# build/example.ml#1009:29->1009:64
	ADDI	%r31, %r31, $128	# build/example.ml#1009:29->1009:64
	ADDI	%r31, %r31, $4	# build/example.ml#1009:29->1009:64
	SIP	# build/example.ml#1009:29->1009:64
	J	$xor.2562	# build/example.ml#1009:29->1009:64
	ADDI	%r31, %r31, $-128	# build/example.ml#1009:29->1009:64
	MV	%r28, %r0	# build/example.ml#1009:29->1009:64
	LDR	%r2, %r31, $120	# build/example.ml#1009:29->1009:64
	LDR	%r1, %r31, $124	# build/example.ml#1009:29->1009:64
	SDR	%r6, %r31, $128	# build/example.ml#1009:67->1009:78
	SDR	%r5, %r31, $132	# build/example.ml#1009:67->1009:78
	SDR	%r4, %r31, $136	# build/example.ml#1009:67->1009:78
	SDR	%r3, %r31, $140	# build/example.ml#1009:67->1009:78
	SDR	%r2, %r31, $144	# build/example.ml#1009:67->1009:78
	SDR	%r1, %r31, $148	# build/example.ml#1009:67->1009:78
	MV	%r1, %r2	# build/example.ml#1009:67->1009:78
	MV	%r2, %r3	# build/example.ml#1009:67->1009:78
	MV	%r3, %r4	# build/example.ml#1009:67->1009:78
	MV	%r4, %r5	# build/example.ml#1009:67->1009:78
	MV	%r5, %r6	# build/example.ml#1009:67->1009:78
	MV	%r6, %r7	# build/example.ml#1009:67->1009:78
	MV	%r7, %r8	# build/example.ml#1009:67->1009:78
	MV	%r8, %r9	# build/example.ml#1009:67->1009:78
	MV	%r9, %r10	# build/example.ml#1009:67->1009:78
	MV	%r10, %r11	# build/example.ml#1009:67->1009:78
	MV	%r11, %r12	# build/example.ml#1009:67->1009:78
	ADDI	%r31, %r31, $152	# build/example.ml#1009:67->1009:78
	ADDI	%r31, %r31, $4	# build/example.ml#1009:67->1009:78
	SIP	# build/example.ml#1009:67->1009:78
	J	$o_param_a.2629	# build/example.ml#1009:67->1009:78
	ADDI	%r31, %r31, $-152	# build/example.ml#1009:67->1009:78
	FMV	%fr9, %fr0	# build/example.ml#1009:67->1009:78
	LDR	%r6, %r31, $128	# build/example.ml#1009:67->1009:78
	LDR	%r5, %r31, $132	# build/example.ml#1009:67->1009:78
	LDR	%r4, %r31, $136	# build/example.ml#1009:67->1009:78
	LDR	%r3, %r31, $140	# build/example.ml#1009:67->1009:78
	LDR	%r2, %r31, $144	# build/example.ml#1009:67->1009:78
	LDR	%r1, %r31, $148	# build/example.ml#1009:67->1009:78
	SDR	%r6, %r31, $152	# build/example.ml#1009:18->1009:79
	SDR	%r5, %r31, $156	# build/example.ml#1009:18->1009:79
	SDR	%r4, %r31, $160	# build/example.ml#1009:18->1009:79
	SDR	%r3, %r31, $164	# build/example.ml#1009:18->1009:79
	SDR	%r2, %r31, $168	# build/example.ml#1009:18->1009:79
	SDR	%r1, %r31, $172	# build/example.ml#1009:18->1009:79
	MV	%r1, %r28	# build/example.ml#1009:18->1009:79
	FMV	%fr0, %fr9	# build/example.ml#1009:18->1009:79
	ADDI	%r31, %r31, $176	# build/example.ml#1009:18->1009:79
	ADDI	%r31, %r31, $4	# build/example.ml#1009:18->1009:79
	SIP	# build/example.ml#1009:18->1009:79
	J	$fneg_cond.2567	# build/example.ml#1009:18->1009:79
	ADDI	%r31, %r31, $-176	# build/example.ml#1009:18->1009:79
	FMV	%fr9, %fr0	# build/example.ml#1009:18->1009:79
	LDR	%r6, %r31, $152	# build/example.ml#1009:18->1009:79
	LDR	%r5, %r31, $156	# build/example.ml#1009:18->1009:79
	LDR	%r4, %r31, $160	# build/example.ml#1009:18->1009:79
	LDR	%r3, %r31, $164	# build/example.ml#1009:18->1009:79
	LDR	%r2, %r31, $168	# build/example.ml#1009:18->1009:79
	LDR	%r1, %r31, $172	# build/example.ml#1009:18->1009:79
	FSDD	%fr9, %r27, $4, %r25	# build/example.ml#1009:5->1009:79
	MVI	%r26, $1	# build/example.ml#1011:12->1011:13
	FLDA	%fr8, $l.7785	# build/example.ml#1011:18->1011:21
	MVI	%r28, $0	# build/example.ml#1011:30->1011:31
	FLDD	%fr9, %r1, $4, %r28	# build/example.ml#1005:14->1005:21
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#1011:18->1011:32
	FSDD	%fr9, %r27, $4, %r26	# build/example.ml#1011:5->1011:32
if_eq_cont.11740:
	MVI	%r28, $1	# build/example.ml#1013:19->1013:20
	FLDD	%fr9, %r1, $4, %r28	# build/example.ml#1005:14->1005:21
	SDR	%r6, %r31, $176	# build/example.ml#1013:6->1013:21
	SDR	%r5, %r31, $180	# build/example.ml#1013:6->1013:21
	SDR	%r4, %r31, $184	# build/example.ml#1013:6->1013:21
	SDR	%r3, %r31, $188	# build/example.ml#1013:6->1013:21
	SDR	%r2, %r31, $192	# build/example.ml#1013:6->1013:21
	SDR	%r1, %r31, $196	# build/example.ml#1013:6->1013:21
	FMV	%fr0, %fr9	# build/example.ml#1013:6->1013:21
	ADDI	%r31, %r31, $200	# build/example.ml#1013:6->1013:21
	ADDI	%r31, %r31, $4	# build/example.ml#1013:6->1013:21
	SIP	# build/example.ml#1013:6->1013:21
	J	$min_caml_fiszero	# build/example.ml#1013:6->1013:21
	ADDI	%r31, %r31, $-200	# build/example.ml#1013:6->1013:21
	MV	%r26, %r0	# build/example.ml#1013:6->1013:21
	LDR	%r6, %r31, $176	# build/example.ml#1013:6->1013:21
	LDR	%r5, %r31, $180	# build/example.ml#1013:6->1013:21
	LDR	%r4, %r31, $184	# build/example.ml#1013:6->1013:21
	LDR	%r3, %r31, $188	# build/example.ml#1013:6->1013:21
	LDR	%r2, %r31, $192	# build/example.ml#1013:6->1013:21
	LDR	%r1, %r31, $196	# build/example.ml#1013:6->1013:21
	MVI	%r28, $0	# build/example.ml#1013:3->1018:4
	CEQ	%r26, %r28	# build/example.ml#1013:3->1018:4
	JZ	$if_eq.11741	# build/example.ml#1013:3->1018:4
	MVI	%r28, $3	# build/example.ml#1014:12->1014:13
	FLDA	%fr9, $l.7787	# build/example.ml#1014:18->1014:21
	FSDD	%fr9, %r27, $4, %r28	# build/example.ml#1014:5->1014:21
	J	$if_eq_cont.11742	# build/example.ml#1013:3->1018:4
if_eq.11741:
	MVI	%r25, $2	# build/example.ml#1016:12->1016:13
	MV	%r28, %r8	# build/example.ml#179:3->183:11
	MVI	%r26, $1	# build/example.ml#1016:61->1016:62
	FLDD	%fr9, %r1, $4, %r26	# build/example.ml#1005:14->1005:21
	SDR	%r6, %r31, $200	# build/example.ml#1016:49->1016:63
	SDR	%r5, %r31, $204	# build/example.ml#1016:49->1016:63
	SDR	%r4, %r31, $208	# build/example.ml#1016:49->1016:63
	SDR	%r3, %r31, $212	# build/example.ml#1016:49->1016:63
	SDR	%r2, %r31, $216	# build/example.ml#1016:49->1016:63
	SDR	%r1, %r31, $220	# build/example.ml#1016:49->1016:63
	FMV	%fr0, %fr9	# build/example.ml#1016:49->1016:63
	ADDI	%r31, %r31, $224	# build/example.ml#1016:49->1016:63
	ADDI	%r31, %r31, $4	# build/example.ml#1016:49->1016:63
	SIP	# build/example.ml#1016:49->1016:63
	J	$min_caml_fisneg	# build/example.ml#1016:49->1016:63
	ADDI	%r31, %r31, $-224	# build/example.ml#1016:49->1016:63
	MV	%r26, %r0	# build/example.ml#1016:49->1016:63
	LDR	%r6, %r31, $200	# build/example.ml#1016:49->1016:63
	LDR	%r5, %r31, $204	# build/example.ml#1016:49->1016:63
	LDR	%r4, %r31, $208	# build/example.ml#1016:49->1016:63
	LDR	%r3, %r31, $212	# build/example.ml#1016:49->1016:63
	LDR	%r2, %r31, $216	# build/example.ml#1016:49->1016:63
	LDR	%r1, %r31, $220	# build/example.ml#1016:49->1016:63
	SDR	%r2, %r31, $224	# build/example.ml#1016:29->1016:64
	SDR	%r1, %r31, $228	# build/example.ml#1016:29->1016:64
	MV	%r2, %r26	# build/example.ml#1016:29->1016:64
	MV	%r1, %r28	# build/example.ml#1016:29->1016:64
	ADDI	%r31, %r31, $232	# build/example.ml#1016:29->1016:64
	ADDI	%r31, %r31, $4	# build/example.ml#1016:29->1016:64
	SIP	# build/example.ml#1016:29->1016:64
	J	$xor.2562	# build/example.ml#1016:29->1016:64
	ADDI	%r31, %r31, $-232	# build/example.ml#1016:29->1016:64
	MV	%r28, %r0	# build/example.ml#1016:29->1016:64
	LDR	%r2, %r31, $224	# build/example.ml#1016:29->1016:64
	LDR	%r1, %r31, $228	# build/example.ml#1016:29->1016:64
	SDR	%r6, %r31, $232	# build/example.ml#1016:67->1016:78
	SDR	%r5, %r31, $236	# build/example.ml#1016:67->1016:78
	SDR	%r4, %r31, $240	# build/example.ml#1016:67->1016:78
	SDR	%r3, %r31, $244	# build/example.ml#1016:67->1016:78
	SDR	%r2, %r31, $248	# build/example.ml#1016:67->1016:78
	SDR	%r1, %r31, $252	# build/example.ml#1016:67->1016:78
	MV	%r1, %r2	# build/example.ml#1016:67->1016:78
	MV	%r2, %r3	# build/example.ml#1016:67->1016:78
	MV	%r3, %r4	# build/example.ml#1016:67->1016:78
	MV	%r4, %r5	# build/example.ml#1016:67->1016:78
	MV	%r5, %r6	# build/example.ml#1016:67->1016:78
	MV	%r6, %r7	# build/example.ml#1016:67->1016:78
	MV	%r7, %r8	# build/example.ml#1016:67->1016:78
	MV	%r8, %r9	# build/example.ml#1016:67->1016:78
	MV	%r9, %r10	# build/example.ml#1016:67->1016:78
	MV	%r10, %r11	# build/example.ml#1016:67->1016:78
	MV	%r11, %r12	# build/example.ml#1016:67->1016:78
	ADDI	%r31, %r31, $256	# build/example.ml#1016:67->1016:78
	ADDI	%r31, %r31, $4	# build/example.ml#1016:67->1016:78
	SIP	# build/example.ml#1016:67->1016:78
	J	$o_param_b.2631	# build/example.ml#1016:67->1016:78
	ADDI	%r31, %r31, $-256	# build/example.ml#1016:67->1016:78
	FMV	%fr9, %fr0	# build/example.ml#1016:67->1016:78
	LDR	%r6, %r31, $232	# build/example.ml#1016:67->1016:78
	LDR	%r5, %r31, $236	# build/example.ml#1016:67->1016:78
	LDR	%r4, %r31, $240	# build/example.ml#1016:67->1016:78
	LDR	%r3, %r31, $244	# build/example.ml#1016:67->1016:78
	LDR	%r2, %r31, $248	# build/example.ml#1016:67->1016:78
	LDR	%r1, %r31, $252	# build/example.ml#1016:67->1016:78
	SDR	%r6, %r31, $256	# build/example.ml#1016:18->1016:79
	SDR	%r5, %r31, $260	# build/example.ml#1016:18->1016:79
	SDR	%r4, %r31, $264	# build/example.ml#1016:18->1016:79
	SDR	%r3, %r31, $268	# build/example.ml#1016:18->1016:79
	SDR	%r2, %r31, $272	# build/example.ml#1016:18->1016:79
	SDR	%r1, %r31, $276	# build/example.ml#1016:18->1016:79
	MV	%r1, %r28	# build/example.ml#1016:18->1016:79
	FMV	%fr0, %fr9	# build/example.ml#1016:18->1016:79
	ADDI	%r31, %r31, $280	# build/example.ml#1016:18->1016:79
	ADDI	%r31, %r31, $4	# build/example.ml#1016:18->1016:79
	SIP	# build/example.ml#1016:18->1016:79
	J	$fneg_cond.2567	# build/example.ml#1016:18->1016:79
	ADDI	%r31, %r31, $-280	# build/example.ml#1016:18->1016:79
	FMV	%fr9, %fr0	# build/example.ml#1016:18->1016:79
	LDR	%r6, %r31, $256	# build/example.ml#1016:18->1016:79
	LDR	%r5, %r31, $260	# build/example.ml#1016:18->1016:79
	LDR	%r4, %r31, $264	# build/example.ml#1016:18->1016:79
	LDR	%r3, %r31, $268	# build/example.ml#1016:18->1016:79
	LDR	%r2, %r31, $272	# build/example.ml#1016:18->1016:79
	LDR	%r1, %r31, $276	# build/example.ml#1016:18->1016:79
	FSDD	%fr9, %r27, $4, %r25	# build/example.ml#1016:5->1016:79
	MVI	%r26, $3	# build/example.ml#1017:12->1017:13
	FLDA	%fr8, $l.7785	# build/example.ml#1017:18->1017:21
	MVI	%r28, $1	# build/example.ml#1017:30->1017:31
	FLDD	%fr9, %r1, $4, %r28	# build/example.ml#1005:14->1005:21
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#1017:18->1017:32
	FSDD	%fr9, %r27, $4, %r26	# build/example.ml#1017:5->1017:32
if_eq_cont.11742:
	MVI	%r28, $2	# build/example.ml#1019:19->1019:20
	FLDD	%fr9, %r1, $4, %r28	# build/example.ml#1005:14->1005:21
	SDR	%r6, %r31, $280	# build/example.ml#1019:6->1019:21
	SDR	%r5, %r31, $284	# build/example.ml#1019:6->1019:21
	SDR	%r4, %r31, $288	# build/example.ml#1019:6->1019:21
	SDR	%r3, %r31, $292	# build/example.ml#1019:6->1019:21
	SDR	%r2, %r31, $296	# build/example.ml#1019:6->1019:21
	SDR	%r1, %r31, $300	# build/example.ml#1019:6->1019:21
	FMV	%fr0, %fr9	# build/example.ml#1019:6->1019:21
	ADDI	%r31, %r31, $304	# build/example.ml#1019:6->1019:21
	ADDI	%r31, %r31, $4	# build/example.ml#1019:6->1019:21
	SIP	# build/example.ml#1019:6->1019:21
	J	$min_caml_fiszero	# build/example.ml#1019:6->1019:21
	ADDI	%r31, %r31, $-304	# build/example.ml#1019:6->1019:21
	MV	%r26, %r0	# build/example.ml#1019:6->1019:21
	LDR	%r6, %r31, $280	# build/example.ml#1019:6->1019:21
	LDR	%r5, %r31, $284	# build/example.ml#1019:6->1019:21
	LDR	%r4, %r31, $288	# build/example.ml#1019:6->1019:21
	LDR	%r3, %r31, $292	# build/example.ml#1019:6->1019:21
	LDR	%r2, %r31, $296	# build/example.ml#1019:6->1019:21
	LDR	%r1, %r31, $300	# build/example.ml#1019:6->1019:21
	MVI	%r28, $0	# build/example.ml#1019:3->1024:4
	CEQ	%r26, %r28	# build/example.ml#1019:3->1024:4
	JZ	$if_eq.11743	# build/example.ml#1019:3->1024:4
	MVI	%r9, $5	# build/example.ml#1020:12->1020:13
	FLDA	%fr9, $l.7787	# build/example.ml#1020:18->1020:21
	FSDD	%fr9, %r27, $4, %r9	# build/example.ml#1020:5->1020:21
	J	$if_eq_cont.11744	# build/example.ml#1019:3->1024:4
if_eq.11743:
	MVI	%r25, $4	# build/example.ml#1022:12->1022:13
	MV	%r28, %r8	# build/example.ml#179:3->183:11
	MVI	%r26, $2	# build/example.ml#1022:61->1022:62
	FLDD	%fr9, %r1, $4, %r26	# build/example.ml#1005:14->1005:21
	SDR	%r6, %r31, $304	# build/example.ml#1022:49->1022:63
	SDR	%r5, %r31, $308	# build/example.ml#1022:49->1022:63
	SDR	%r4, %r31, $312	# build/example.ml#1022:49->1022:63
	SDR	%r3, %r31, $316	# build/example.ml#1022:49->1022:63
	SDR	%r2, %r31, $320	# build/example.ml#1022:49->1022:63
	SDR	%r1, %r31, $324	# build/example.ml#1022:49->1022:63
	FMV	%fr0, %fr9	# build/example.ml#1022:49->1022:63
	ADDI	%r31, %r31, $328	# build/example.ml#1022:49->1022:63
	ADDI	%r31, %r31, $4	# build/example.ml#1022:49->1022:63
	SIP	# build/example.ml#1022:49->1022:63
	J	$min_caml_fisneg	# build/example.ml#1022:49->1022:63
	ADDI	%r31, %r31, $-328	# build/example.ml#1022:49->1022:63
	MV	%r26, %r0	# build/example.ml#1022:49->1022:63
	LDR	%r6, %r31, $304	# build/example.ml#1022:49->1022:63
	LDR	%r5, %r31, $308	# build/example.ml#1022:49->1022:63
	LDR	%r4, %r31, $312	# build/example.ml#1022:49->1022:63
	LDR	%r3, %r31, $316	# build/example.ml#1022:49->1022:63
	LDR	%r2, %r31, $320	# build/example.ml#1022:49->1022:63
	LDR	%r1, %r31, $324	# build/example.ml#1022:49->1022:63
	SDR	%r2, %r31, $328	# build/example.ml#1022:29->1022:64
	SDR	%r1, %r31, $332	# build/example.ml#1022:29->1022:64
	MV	%r2, %r26	# build/example.ml#1022:29->1022:64
	MV	%r1, %r28	# build/example.ml#1022:29->1022:64
	ADDI	%r31, %r31, $336	# build/example.ml#1022:29->1022:64
	ADDI	%r31, %r31, $4	# build/example.ml#1022:29->1022:64
	SIP	# build/example.ml#1022:29->1022:64
	J	$xor.2562	# build/example.ml#1022:29->1022:64
	ADDI	%r31, %r31, $-336	# build/example.ml#1022:29->1022:64
	MV	%r28, %r0	# build/example.ml#1022:29->1022:64
	LDR	%r2, %r31, $328	# build/example.ml#1022:29->1022:64
	LDR	%r1, %r31, $332	# build/example.ml#1022:29->1022:64
	SDR	%r6, %r31, $336	# build/example.ml#1022:67->1022:78
	SDR	%r5, %r31, $340	# build/example.ml#1022:67->1022:78
	SDR	%r4, %r31, $344	# build/example.ml#1022:67->1022:78
	SDR	%r3, %r31, $348	# build/example.ml#1022:67->1022:78
	SDR	%r2, %r31, $352	# build/example.ml#1022:67->1022:78
	SDR	%r1, %r31, $356	# build/example.ml#1022:67->1022:78
	MV	%r1, %r2	# build/example.ml#1022:67->1022:78
	MV	%r2, %r3	# build/example.ml#1022:67->1022:78
	MV	%r3, %r4	# build/example.ml#1022:67->1022:78
	MV	%r4, %r5	# build/example.ml#1022:67->1022:78
	MV	%r5, %r6	# build/example.ml#1022:67->1022:78
	MV	%r6, %r7	# build/example.ml#1022:67->1022:78
	MV	%r7, %r8	# build/example.ml#1022:67->1022:78
	MV	%r8, %r9	# build/example.ml#1022:67->1022:78
	MV	%r9, %r10	# build/example.ml#1022:67->1022:78
	MV	%r10, %r11	# build/example.ml#1022:67->1022:78
	MV	%r11, %r12	# build/example.ml#1022:67->1022:78
	ADDI	%r31, %r31, $360	# build/example.ml#1022:67->1022:78
	ADDI	%r31, %r31, $4	# build/example.ml#1022:67->1022:78
	SIP	# build/example.ml#1022:67->1022:78
	J	$o_param_c.2633	# build/example.ml#1022:67->1022:78
	ADDI	%r31, %r31, $-360	# build/example.ml#1022:67->1022:78
	FMV	%fr9, %fr0	# build/example.ml#1022:67->1022:78
	LDR	%r6, %r31, $336	# build/example.ml#1022:67->1022:78
	LDR	%r5, %r31, $340	# build/example.ml#1022:67->1022:78
	LDR	%r4, %r31, $344	# build/example.ml#1022:67->1022:78
	LDR	%r3, %r31, $348	# build/example.ml#1022:67->1022:78
	LDR	%r2, %r31, $352	# build/example.ml#1022:67->1022:78
	LDR	%r1, %r31, $356	# build/example.ml#1022:67->1022:78
	SDR	%r6, %r31, $360	# build/example.ml#1022:18->1022:79
	SDR	%r5, %r31, $364	# build/example.ml#1022:18->1022:79
	SDR	%r4, %r31, $368	# build/example.ml#1022:18->1022:79
	SDR	%r3, %r31, $372	# build/example.ml#1022:18->1022:79
	SDR	%r2, %r31, $376	# build/example.ml#1022:18->1022:79
	SDR	%r1, %r31, $380	# build/example.ml#1022:18->1022:79
	MV	%r1, %r28	# build/example.ml#1022:18->1022:79
	FMV	%fr0, %fr9	# build/example.ml#1022:18->1022:79
	ADDI	%r31, %r31, $384	# build/example.ml#1022:18->1022:79
	ADDI	%r31, %r31, $4	# build/example.ml#1022:18->1022:79
	SIP	# build/example.ml#1022:18->1022:79
	J	$fneg_cond.2567	# build/example.ml#1022:18->1022:79
	ADDI	%r31, %r31, $-384	# build/example.ml#1022:18->1022:79
	FMV	%fr9, %fr0	# build/example.ml#1022:18->1022:79
	LDR	%r6, %r31, $360	# build/example.ml#1022:18->1022:79
	LDR	%r5, %r31, $364	# build/example.ml#1022:18->1022:79
	LDR	%r4, %r31, $368	# build/example.ml#1022:18->1022:79
	LDR	%r3, %r31, $372	# build/example.ml#1022:18->1022:79
	LDR	%r2, %r31, $376	# build/example.ml#1022:18->1022:79
	LDR	%r1, %r31, $380	# build/example.ml#1022:18->1022:79
	FSDD	%fr9, %r27, $4, %r25	# build/example.ml#1022:5->1022:79
	MVI	%r8, $5	# build/example.ml#1023:12->1023:13
	FLDA	%fr8, $l.7785	# build/example.ml#1023:18->1023:21
	MVI	%r9, $2	# build/example.ml#1023:30->1023:31
	FLDD	%fr9, %r1, $4, %r9	# build/example.ml#1005:14->1005:21
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#1023:18->1023:32
	FSDD	%fr9, %r27, $4, %r8	# build/example.ml#1023:5->1023:32
if_eq_cont.11744:
	MV	%r0, %r27	# build/example.ml#1025:3->1025:8
	LDR	%r9, %r31, $0	# build/example.ml#1003:28->1003:29
	LDR	%r8, %r31, $4	# build/example.ml#1003:28->1003:29
	LDR	%r7, %r31, $8	# build/example.ml#1003:28->1003:29
	LDR	%r28, %r31, $12	# build/example.ml#1003:28->1003:29
	LDR	%r27, %r31, $16	# build/example.ml#1003:28->1003:29
	LDR	%r26, %r31, $20	# build/example.ml#1003:28->1003:29
	LDR	%r25, %r31, $24	# build/example.ml#1003:28->1003:29
	LDR	%r12, %r31, $28	# build/example.ml#1003:28->1003:29
	LDR	%r11, %r31, $32	# build/example.ml#1003:28->1003:29
	LDR	%r10, %r31, $36	# build/example.ml#1003:28->1003:29
	FLDR	%fr9, %r31, $40	# build/example.ml#1003:28->1003:29
	FLDR	%fr8, %r31, $44	# build/example.ml#1003:28->1003:29
	LINK	# build/example.ml#1003:28->1003:29
solver_fast2.2794:
	SDR	%r9, %r31, $0	# build/example.ml#981:11->981:18
	SDR	%r8, %r31, $4	# build/example.ml#981:11->981:18
	SDR	%r7, %r31, $8	# build/example.ml#981:11->981:18
	SDR	%r28, %r31, $12	# build/example.ml#981:11->981:18
	SDR	%r27, %r31, $16	# build/example.ml#981:11->981:18
	SDR	%r26, %r31, $20	# build/example.ml#981:11->981:18
	SDR	%r25, %r31, $24	# build/example.ml#981:11->981:18
	SDR	%r24, %r31, $28	# build/example.ml#981:11->981:18
	SDR	%r23, %r31, $32	# build/example.ml#981:11->981:18
	SDR	%r22, %r31, $36	# build/example.ml#981:11->981:18
	SDR	%r21, %r31, $40	# build/example.ml#981:11->981:18
	FSDR	%fr9, %r31, $44	# build/example.ml#981:11->981:18
	FSDR	%fr8, %r31, $48	# build/example.ml#981:11->981:18
	FSDR	%fr7, %r31, $52	# build/example.ml#981:11->981:18
	MVI	%r9, $min_caml_objects	# build/example.ml#981:11->981:18
	LDD	%r9, %r9, $4, %r1	# build/example.ml#637:7->637:25
	LDR	%r7, %r9, $40	# build/example.ml#981:3->994:49
	LDR	%r6, %r9, $36	# build/example.ml#981:3->994:49
	LDR	%r5, %r9, $32	# build/example.ml#981:3->994:49
	LDR	%r4, %r9, $28	# build/example.ml#981:3->994:49
	LDR	%r28, %r9, $24	# build/example.ml#981:3->994:49
	LDR	%r27, %r9, $20	# build/example.ml#981:3->994:49
	LDR	%r26, %r9, $16	# build/example.ml#981:3->994:49
	LDR	%r25, %r9, $12	# build/example.ml#981:3->994:49
	LDR	%r24, %r9, $8	# build/example.ml#981:3->994:49
	LDR	%r23, %r9, $4	# build/example.ml#981:3->994:49
	LDR	%r22, %r9, $0	# build/example.ml#981:3->994:49
	MV	%r8, %r7	# build/example.ml#354:3->359:9
	MVI	%r9, $0	# build/example.ml#983:20->983:21
	FLDD	%fr7, %r8, $4, %r9	# build/example.ml#626:18->626:36
	MVI	%r9, $1	# build/example.ml#984:20->984:21
	FLDD	%fr8, %r8, $4, %r9	# build/example.ml#626:18->626:36
	MVI	%r9, $2	# build/example.ml#985:20->985:21
	FLDD	%fr9, %r8, $4, %r9	# build/example.ml#626:18->626:36
	MV	%r9, %r3	# build/example.ml#451:3->452:10
	LDD	%r3, %r9, $4, %r1	# build/example.ml#939:16->939:31
	MV	%r9, %r23	# build/example.ml#159:3->164:10
	MVI	%r21, $1	# build/example.ml#989:16->989:17
	CEQ	%r9, %r21	# build/example.ml#989:3->994:49
	JZ	$if_eq.11745	# build/example.ml#989:3->994:49
	MVI	%r21, $2	# build/example.ml#991:21->991:22
	CEQ	%r9, %r21	# build/example.ml#991:8->994:49
	JZ	$if_eq.11747	# build/example.ml#991:8->994:49
	SDR	%r6, %r31, $56	# build/example.ml#994:5->994:49
	SDR	%r5, %r31, $60	# build/example.ml#994:5->994:49
	SDR	%r4, %r31, $64	# build/example.ml#994:5->994:49
	SDR	%r3, %r31, $68	# build/example.ml#994:5->994:49
	SDR	%r2, %r31, $72	# build/example.ml#994:5->994:49
	SDR	%r1, %r31, $76	# build/example.ml#994:5->994:49
	MV	%r13, %r8	# build/example.ml#994:5->994:49
	MV	%r12, %r3	# build/example.ml#994:5->994:49
	MV	%r11, %r7	# build/example.ml#994:5->994:49
	MV	%r10, %r6	# build/example.ml#994:5->994:49
	MV	%r9, %r5	# build/example.ml#994:5->994:49
	MV	%r2, %r23	# build/example.ml#994:5->994:49
	MV	%r1, %r22	# build/example.ml#994:5->994:49
	MV	%r8, %r4	# build/example.ml#994:5->994:49
	MV	%r7, %r28	# build/example.ml#994:5->994:49
	MV	%r6, %r27	# build/example.ml#994:5->994:49
	MV	%r5, %r26	# build/example.ml#994:5->994:49
	MV	%r3, %r24	# build/example.ml#994:5->994:49
	MV	%r4, %r25	# build/example.ml#994:5->994:49
	FMV	%fr2, %fr9	# build/example.ml#994:5->994:49
	FMV	%fr1, %fr8	# build/example.ml#994:5->994:49
	FMV	%fr0, %fr7	# build/example.ml#994:5->994:49
	ADDI	%r31, %r31, $80	# build/example.ml#994:5->994:49
	ADDI	%r31, %r31, $4	# build/example.ml#994:5->994:49
	SIP	# build/example.ml#994:5->994:49
	J	$solver_second_fast2.2787	# build/example.ml#994:5->994:49
	ADDI	%r31, %r31, $-80	# build/example.ml#994:5->994:49
	LDR	%r6, %r31, $56	# build/example.ml#994:5->994:49
	LDR	%r5, %r31, $60	# build/example.ml#994:5->994:49
	LDR	%r4, %r31, $64	# build/example.ml#994:5->994:49
	LDR	%r3, %r31, $68	# build/example.ml#994:5->994:49
	LDR	%r2, %r31, $72	# build/example.ml#994:5->994:49
	LDR	%r1, %r31, $76	# build/example.ml#994:5->994:49
	J	$if_eq_cont.11748	# build/example.ml#991:8->994:49
if_eq.11747:
	SDR	%r6, %r31, $80	# build/example.ml#992:5->992:50
	SDR	%r5, %r31, $84	# build/example.ml#992:5->992:50
	SDR	%r4, %r31, $88	# build/example.ml#992:5->992:50
	SDR	%r3, %r31, $92	# build/example.ml#992:5->992:50
	SDR	%r2, %r31, $96	# build/example.ml#992:5->992:50
	SDR	%r1, %r31, $100	# build/example.ml#992:5->992:50
	MV	%r13, %r8	# build/example.ml#992:5->992:50
	MV	%r12, %r3	# build/example.ml#992:5->992:50
	MV	%r11, %r7	# build/example.ml#992:5->992:50
	MV	%r10, %r6	# build/example.ml#992:5->992:50
	MV	%r9, %r5	# build/example.ml#992:5->992:50
	MV	%r2, %r23	# build/example.ml#992:5->992:50
	MV	%r1, %r22	# build/example.ml#992:5->992:50
	MV	%r8, %r4	# build/example.ml#992:5->992:50
	MV	%r7, %r28	# build/example.ml#992:5->992:50
	MV	%r6, %r27	# build/example.ml#992:5->992:50
	MV	%r5, %r26	# build/example.ml#992:5->992:50
	MV	%r3, %r24	# build/example.ml#992:5->992:50
	MV	%r4, %r25	# build/example.ml#992:5->992:50
	FMV	%fr2, %fr9	# build/example.ml#992:5->992:50
	FMV	%fr1, %fr8	# build/example.ml#992:5->992:50
	FMV	%fr0, %fr7	# build/example.ml#992:5->992:50
	ADDI	%r31, %r31, $104	# build/example.ml#992:5->992:50
	ADDI	%r31, %r31, $4	# build/example.ml#992:5->992:50
	SIP	# build/example.ml#992:5->992:50
	J	$solver_surface_fast2.2780	# build/example.ml#992:5->992:50
	ADDI	%r31, %r31, $-104	# build/example.ml#992:5->992:50
	LDR	%r6, %r31, $80	# build/example.ml#992:5->992:50
	LDR	%r5, %r31, $84	# build/example.ml#992:5->992:50
	LDR	%r4, %r31, $88	# build/example.ml#992:5->992:50
	LDR	%r3, %r31, $92	# build/example.ml#992:5->992:50
	LDR	%r2, %r31, $96	# build/example.ml#992:5->992:50
	LDR	%r1, %r31, $100	# build/example.ml#992:5->992:50
if_eq_cont.11748:
	J	$if_eq_cont.11746	# build/example.ml#989:3->994:49
if_eq.11745:
	MV	%r9, %r2	# build/example.ml#445:3->446:8
	SDR	%r6, %r31, $104	# build/example.ml#990:5->990:54
	SDR	%r5, %r31, $108	# build/example.ml#990:5->990:54
	SDR	%r4, %r31, $112	# build/example.ml#990:5->990:54
	SDR	%r3, %r31, $116	# build/example.ml#990:5->990:54
	SDR	%r2, %r31, $120	# build/example.ml#990:5->990:54
	SDR	%r1, %r31, $124	# build/example.ml#990:5->990:54
	MV	%r13, %r3	# build/example.ml#990:5->990:54
	MV	%r12, %r9	# build/example.ml#990:5->990:54
	MV	%r11, %r7	# build/example.ml#990:5->990:54
	MV	%r10, %r6	# build/example.ml#990:5->990:54
	MV	%r8, %r4	# build/example.ml#990:5->990:54
	MV	%r2, %r23	# build/example.ml#990:5->990:54
	MV	%r1, %r22	# build/example.ml#990:5->990:54
	MV	%r9, %r5	# build/example.ml#990:5->990:54
	MV	%r7, %r28	# build/example.ml#990:5->990:54
	MV	%r6, %r27	# build/example.ml#990:5->990:54
	MV	%r4, %r25	# build/example.ml#990:5->990:54
	MV	%r3, %r24	# build/example.ml#990:5->990:54
	MV	%r5, %r26	# build/example.ml#990:5->990:54
	FMV	%fr2, %fr9	# build/example.ml#990:5->990:54
	FMV	%fr1, %fr8	# build/example.ml#990:5->990:54
	FMV	%fr0, %fr7	# build/example.ml#990:5->990:54
	ADDI	%r31, %r31, $128	# build/example.ml#990:5->990:54
	ADDI	%r31, %r31, $4	# build/example.ml#990:5->990:54
	SIP	# build/example.ml#990:5->990:54
	J	$solver_rect_fast.2757	# build/example.ml#990:5->990:54
	ADDI	%r31, %r31, $-128	# build/example.ml#990:5->990:54
	LDR	%r6, %r31, $104	# build/example.ml#990:5->990:54
	LDR	%r5, %r31, $108	# build/example.ml#990:5->990:54
	LDR	%r4, %r31, $112	# build/example.ml#990:5->990:54
	LDR	%r3, %r31, $116	# build/example.ml#990:5->990:54
	LDR	%r2, %r31, $120	# build/example.ml#990:5->990:54
	LDR	%r1, %r31, $124	# build/example.ml#990:5->990:54
if_eq_cont.11746:
	LDR	%r9, %r31, $0	# build/example.ml#981:11->981:18
	LDR	%r8, %r31, $4	# build/example.ml#981:11->981:18
	LDR	%r7, %r31, $8	# build/example.ml#981:11->981:18
	LDR	%r28, %r31, $12	# build/example.ml#981:11->981:18
	LDR	%r27, %r31, $16	# build/example.ml#981:11->981:18
	LDR	%r26, %r31, $20	# build/example.ml#981:11->981:18
	LDR	%r25, %r31, $24	# build/example.ml#981:11->981:18
	LDR	%r24, %r31, $28	# build/example.ml#981:11->981:18
	LDR	%r23, %r31, $32	# build/example.ml#981:11->981:18
	LDR	%r22, %r31, $36	# build/example.ml#981:11->981:18
	LDR	%r21, %r31, $40	# build/example.ml#981:11->981:18
	FLDR	%fr9, %r31, $44	# build/example.ml#981:11->981:18
	FLDR	%fr8, %r31, $48	# build/example.ml#981:11->981:18
	FLDR	%fr7, %r31, $52	# build/example.ml#981:11->981:18
	LINK	# build/example.ml#981:11->981:18
solver_second_fast2.2787:
	SDR	%r9, %r31, $0	# build/example.ml#963:20->963:21
	SDR	%r8, %r31, $4	# build/example.ml#963:20->963:21
	SDR	%r7, %r31, $8	# build/example.ml#963:20->963:21
	SDR	%r13, %r31, $12	# build/example.ml#963:20->963:21
	SDR	%r12, %r31, $16	# build/example.ml#963:20->963:21
	SDR	%r11, %r31, $20	# build/example.ml#963:20->963:21
	SDR	%r10, %r31, $24	# build/example.ml#963:20->963:21
	FSDR	%fr9, %r31, $28	# build/example.ml#963:20->963:21
	FSDR	%fr8, %r31, $32	# build/example.ml#963:20->963:21
	FSDR	%fr7, %r31, $36	# build/example.ml#963:20->963:21
	MVI	%r9, $0	# build/example.ml#963:20->963:21
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#963:12->963:22
	SDR	%r6, %r31, $40	# build/example.ml#964:6->964:16
	SDR	%r5, %r31, $44	# build/example.ml#964:6->964:16
	SDR	%r4, %r31, $48	# build/example.ml#964:6->964:16
	SDR	%r3, %r31, $52	# build/example.ml#964:6->964:16
	SDR	%r2, %r31, $56	# build/example.ml#964:6->964:16
	SDR	%r1, %r31, $60	# build/example.ml#964:6->964:16
	FSDR	%fr6, %r31, $64	# build/example.ml#964:6->964:16
	FSDR	%fr2, %r31, $68	# build/example.ml#964:6->964:16
	FSDR	%fr1, %r31, $72	# build/example.ml#964:6->964:16
	FMV	%fr0, %fr9	# build/example.ml#964:6->964:16
	ADDI	%r31, %r31, $76	# build/example.ml#964:6->964:16
	ADDI	%r31, %r31, $4	# build/example.ml#964:6->964:16
	SIP	# build/example.ml#964:6->964:16
	J	$min_caml_fiszero	# build/example.ml#964:6->964:16
	ADDI	%r31, %r31, $-76	# build/example.ml#964:6->964:16
	MV	%r8, %r0	# build/example.ml#964:6->964:16
	LDR	%r6, %r31, $40	# build/example.ml#964:6->964:16
	LDR	%r5, %r31, $44	# build/example.ml#964:6->964:16
	LDR	%r4, %r31, $48	# build/example.ml#964:6->964:16
	LDR	%r3, %r31, $52	# build/example.ml#964:6->964:16
	LDR	%r2, %r31, $56	# build/example.ml#964:6->964:16
	LDR	%r1, %r31, $60	# build/example.ml#964:6->964:16
	FLDR	%fr6, %r31, $64	# build/example.ml#964:6->964:16
	FLDR	%fr2, %r31, $68	# build/example.ml#964:6->964:16
	FLDR	%fr1, %r31, $72	# build/example.ml#964:6->964:16
	MVI	%r9, $0	# build/example.ml#964:3->976:11
	CEQ	%r8, %r9	# build/example.ml#964:3->976:11
	JZ	$if_eq.11749	# build/example.ml#964:3->976:11
	MVI	%r0, $0	# build/example.ml#965:5->965:6
	J	$if_eq_cont.11750	# build/example.ml#964:3->976:11
if_eq.11749:
	MVI	%r9, $1	# build/example.ml#967:26->967:27
	FLDD	%fr8, %r12, $4, %r9	# build/example.ml#963:12->963:22
	FMUL	%fr7, %fr8, %fr0	# build/example.ml#967:18->967:34
	MVI	%r9, $2	# build/example.ml#967:46->967:47
	FLDD	%fr8, %r12, $4, %r9	# build/example.ml#963:12->963:22
	FMUL	%fr8, %fr8, %fr1	# build/example.ml#967:38->967:54
	FADD	%fr7, %fr7, %fr8	# build/example.ml#967:18->967:54
	MVI	%r9, $3	# build/example.ml#967:66->967:67
	FLDD	%fr8, %r12, $4, %r9	# build/example.ml#963:12->963:22
	FMUL	%fr8, %fr8, %fr2	# build/example.ml#967:58->967:74
	FADD	%fr8, %fr7, %fr8	# build/example.ml#967:18->967:74
	MVI	%r9, $3	# build/example.ml#968:22->968:23
	FLDD	%fr7, %r13, $4, %r9	# build/example.ml#968:14->968:24
	SDR	%r6, %r31, $76	# build/example.ml#969:14->969:25
	SDR	%r5, %r31, $80	# build/example.ml#969:14->969:25
	SDR	%r4, %r31, $84	# build/example.ml#969:14->969:25
	SDR	%r3, %r31, $88	# build/example.ml#969:14->969:25
	SDR	%r2, %r31, $92	# build/example.ml#969:14->969:25
	SDR	%r1, %r31, $96	# build/example.ml#969:14->969:25
	FSDR	%fr6, %r31, $100	# build/example.ml#969:14->969:25
	FSDR	%fr2, %r31, $104	# build/example.ml#969:14->969:25
	FSDR	%fr1, %r31, $108	# build/example.ml#969:14->969:25
	FMV	%fr0, %fr8	# build/example.ml#969:14->969:25
	ADDI	%r31, %r31, $112	# build/example.ml#969:14->969:25
	ADDI	%r31, %r31, $4	# build/example.ml#969:14->969:25
	SIP	# build/example.ml#969:14->969:25
	J	$min_caml_fsqr	# build/example.ml#969:14->969:25
	ADDI	%r31, %r31, $-112	# build/example.ml#969:14->969:25
	FMV	%fr6, %fr0	# build/example.ml#969:14->969:25
	LDR	%r6, %r31, $76	# build/example.ml#969:14->969:25
	LDR	%r5, %r31, $80	# build/example.ml#969:14->969:25
	LDR	%r4, %r31, $84	# build/example.ml#969:14->969:25
	LDR	%r3, %r31, $88	# build/example.ml#969:14->969:25
	LDR	%r2, %r31, $92	# build/example.ml#969:14->969:25
	LDR	%r1, %r31, $96	# build/example.ml#969:14->969:25
	FLDR	%fr6, %r31, $100	# build/example.ml#969:14->969:25
	FLDR	%fr2, %r31, $104	# build/example.ml#969:14->969:25
	FLDR	%fr1, %r31, $108	# build/example.ml#969:14->969:25
	FMUL	%fr9, %fr9, %fr7	# build/example.ml#969:30->969:38
	FSUB	%fr9, %fr6, %fr9	# build/example.ml#969:13->969:38
	SDR	%r6, %r31, $112	# build/example.ml#970:8->970:16
	SDR	%r5, %r31, $116	# build/example.ml#970:8->970:16
	SDR	%r4, %r31, $120	# build/example.ml#970:8->970:16
	SDR	%r3, %r31, $124	# build/example.ml#970:8->970:16
	SDR	%r2, %r31, $128	# build/example.ml#970:8->970:16
	SDR	%r1, %r31, $132	# build/example.ml#970:8->970:16
	FSDR	%fr6, %r31, $136	# build/example.ml#970:8->970:16
	FSDR	%fr2, %r31, $140	# build/example.ml#970:8->970:16
	FSDR	%fr1, %r31, $144	# build/example.ml#970:8->970:16
	FMV	%fr0, %fr9	# build/example.ml#970:8->970:16
	ADDI	%r31, %r31, $148	# build/example.ml#970:8->970:16
	ADDI	%r31, %r31, $4	# build/example.ml#970:8->970:16
	SIP	# build/example.ml#970:8->970:16
	J	$min_caml_fispos	# build/example.ml#970:8->970:16
	ADDI	%r31, %r31, $-148	# build/example.ml#970:8->970:16
	MV	%r8, %r0	# build/example.ml#970:8->970:16
	LDR	%r6, %r31, $112	# build/example.ml#970:8->970:16
	LDR	%r5, %r31, $116	# build/example.ml#970:8->970:16
	LDR	%r4, %r31, $120	# build/example.ml#970:8->970:16
	LDR	%r3, %r31, $124	# build/example.ml#970:8->970:16
	LDR	%r2, %r31, $128	# build/example.ml#970:8->970:16
	LDR	%r1, %r31, $132	# build/example.ml#970:8->970:16
	FLDR	%fr6, %r31, $136	# build/example.ml#970:8->970:16
	FLDR	%fr2, %r31, $140	# build/example.ml#970:8->970:16
	FLDR	%fr1, %r31, $144	# build/example.ml#970:8->970:16
	MVI	%r9, $0	# build/example.ml#970:5->976:11
	CEQ	%r8, %r9	# build/example.ml#970:5->976:11
	JZ	$if_eq.11751	# build/example.ml#970:5->976:11
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	MVI	%r8, $0	# build/example.ml#971:7->974:53
	CEQ	%r9, %r8	# build/example.ml#971:7->974:53
	JZ	$if_eq.11753	# build/example.ml#971:7->974:53
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#972:2->972:13
	MVI	%r8, $0	# build/example.ml#972:15->972:16
	SDR	%r6, %r31, $148	# build/example.ml#972:32->972:38
	SDR	%r5, %r31, $152	# build/example.ml#972:32->972:38
	SDR	%r4, %r31, $156	# build/example.ml#972:32->972:38
	SDR	%r3, %r31, $160	# build/example.ml#972:32->972:38
	SDR	%r2, %r31, $164	# build/example.ml#972:32->972:38
	SDR	%r1, %r31, $168	# build/example.ml#972:32->972:38
	FSDR	%fr6, %r31, $172	# build/example.ml#972:32->972:38
	FSDR	%fr2, %r31, $176	# build/example.ml#972:32->972:38
	FSDR	%fr1, %r31, $180	# build/example.ml#972:32->972:38
	FMV	%fr0, %fr9	# build/example.ml#972:32->972:38
	ADDI	%r31, %r31, $184	# build/example.ml#972:32->972:38
	ADDI	%r31, %r31, $4	# build/example.ml#972:32->972:38
	SIP	# build/example.ml#972:32->972:38
	J	$min_caml_sqrt	# build/example.ml#972:32->972:38
	ADDI	%r31, %r31, $-184	# build/example.ml#972:32->972:38
	FMV	%fr9, %fr0	# build/example.ml#972:32->972:38
	LDR	%r6, %r31, $148	# build/example.ml#972:32->972:38
	LDR	%r5, %r31, $152	# build/example.ml#972:32->972:38
	LDR	%r4, %r31, $156	# build/example.ml#972:32->972:38
	LDR	%r3, %r31, $160	# build/example.ml#972:32->972:38
	LDR	%r2, %r31, $164	# build/example.ml#972:32->972:38
	LDR	%r1, %r31, $168	# build/example.ml#972:32->972:38
	FLDR	%fr6, %r31, $172	# build/example.ml#972:32->972:38
	FLDR	%fr2, %r31, $176	# build/example.ml#972:32->972:38
	FLDR	%fr1, %r31, $180	# build/example.ml#972:32->972:38
	FADD	%fr8, %fr8, %fr9	# build/example.ml#972:22->972:38
	MVI	%r9, $4	# build/example.ml#972:51->972:52
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#963:12->963:22
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#972:21->972:53
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#972:2->972:53
	J	$if_eq_cont.11754	# build/example.ml#971:7->974:53
if_eq.11753:
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#974:2->974:13
	MVI	%r8, $0	# build/example.ml#974:15->974:16
	SDR	%r6, %r31, $184	# build/example.ml#974:32->974:38
	SDR	%r5, %r31, $188	# build/example.ml#974:32->974:38
	SDR	%r4, %r31, $192	# build/example.ml#974:32->974:38
	SDR	%r3, %r31, $196	# build/example.ml#974:32->974:38
	SDR	%r2, %r31, $200	# build/example.ml#974:32->974:38
	SDR	%r1, %r31, $204	# build/example.ml#974:32->974:38
	FSDR	%fr6, %r31, $208	# build/example.ml#974:32->974:38
	FSDR	%fr2, %r31, $212	# build/example.ml#974:32->974:38
	FSDR	%fr1, %r31, $216	# build/example.ml#974:32->974:38
	FMV	%fr0, %fr9	# build/example.ml#974:32->974:38
	ADDI	%r31, %r31, $220	# build/example.ml#974:32->974:38
	ADDI	%r31, %r31, $4	# build/example.ml#974:32->974:38
	SIP	# build/example.ml#974:32->974:38
	J	$min_caml_sqrt	# build/example.ml#974:32->974:38
	ADDI	%r31, %r31, $-220	# build/example.ml#974:32->974:38
	FMV	%fr9, %fr0	# build/example.ml#974:32->974:38
	LDR	%r6, %r31, $184	# build/example.ml#974:32->974:38
	LDR	%r5, %r31, $188	# build/example.ml#974:32->974:38
	LDR	%r4, %r31, $192	# build/example.ml#974:32->974:38
	LDR	%r3, %r31, $196	# build/example.ml#974:32->974:38
	LDR	%r2, %r31, $200	# build/example.ml#974:32->974:38
	LDR	%r1, %r31, $204	# build/example.ml#974:32->974:38
	FLDR	%fr6, %r31, $208	# build/example.ml#974:32->974:38
	FLDR	%fr2, %r31, $212	# build/example.ml#974:32->974:38
	FLDR	%fr1, %r31, $216	# build/example.ml#974:32->974:38
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#974:22->974:38
	MVI	%r9, $4	# build/example.ml#974:51->974:52
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#963:12->963:22
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#974:21->974:53
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#974:2->974:53
if_eq_cont.11754:
	MVI	%r0, $1	# build/example.ml#975:7->975:8
	J	$if_eq_cont.11752	# build/example.ml#970:5->976:11
if_eq.11751:
	MVI	%r0, $0	# build/example.ml#976:10->976:11
if_eq_cont.11752:
if_eq_cont.11750:
	LDR	%r9, %r31, $0	# build/example.ml#963:20->963:21
	LDR	%r8, %r31, $4	# build/example.ml#963:20->963:21
	LDR	%r7, %r31, $8	# build/example.ml#963:20->963:21
	LDR	%r13, %r31, $12	# build/example.ml#963:20->963:21
	LDR	%r12, %r31, $16	# build/example.ml#963:20->963:21
	LDR	%r11, %r31, $20	# build/example.ml#963:20->963:21
	LDR	%r10, %r31, $24	# build/example.ml#963:20->963:21
	FLDR	%fr9, %r31, $28	# build/example.ml#963:20->963:21
	FLDR	%fr8, %r31, $32	# build/example.ml#963:20->963:21
	FLDR	%fr7, %r31, $36	# build/example.ml#963:20->963:21
	LINK	# build/example.ml#963:20->963:21
solver_surface_fast2.2780:
	SDR	%r9, %r31, $0	# build/example.ml#954:21->954:22
	SDR	%r8, %r31, $4	# build/example.ml#954:21->954:22
	SDR	%r7, %r31, $8	# build/example.ml#954:21->954:22
	SDR	%r13, %r31, $12	# build/example.ml#954:21->954:22
	SDR	%r12, %r31, $16	# build/example.ml#954:21->954:22
	SDR	%r11, %r31, $20	# build/example.ml#954:21->954:22
	SDR	%r10, %r31, $24	# build/example.ml#954:21->954:22
	FSDR	%fr9, %r31, $28	# build/example.ml#954:21->954:22
	FSDR	%fr8, %r31, $32	# build/example.ml#954:21->954:22
	MVI	%r9, $0	# build/example.ml#954:21->954:22
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#954:13->954:23
	SDR	%r6, %r31, $36	# build/example.ml#954:6->954:23
	SDR	%r5, %r31, $40	# build/example.ml#954:6->954:23
	SDR	%r4, %r31, $44	# build/example.ml#954:6->954:23
	SDR	%r3, %r31, $48	# build/example.ml#954:6->954:23
	SDR	%r2, %r31, $52	# build/example.ml#954:6->954:23
	SDR	%r1, %r31, $56	# build/example.ml#954:6->954:23
	FSDR	%fr2, %r31, $60	# build/example.ml#954:6->954:23
	FSDR	%fr1, %r31, $64	# build/example.ml#954:6->954:23
	FMV	%fr0, %fr9	# build/example.ml#954:6->954:23
	ADDI	%r31, %r31, $68	# build/example.ml#954:6->954:23
	ADDI	%r31, %r31, $4	# build/example.ml#954:6->954:23
	SIP	# build/example.ml#954:6->954:23
	J	$min_caml_fisneg	# build/example.ml#954:6->954:23
	ADDI	%r31, %r31, $-68	# build/example.ml#954:6->954:23
	MV	%r8, %r0	# build/example.ml#954:6->954:23
	LDR	%r6, %r31, $36	# build/example.ml#954:6->954:23
	LDR	%r5, %r31, $40	# build/example.ml#954:6->954:23
	LDR	%r4, %r31, $44	# build/example.ml#954:6->954:23
	LDR	%r3, %r31, $48	# build/example.ml#954:6->954:23
	LDR	%r2, %r31, $52	# build/example.ml#954:6->954:23
	LDR	%r1, %r31, $56	# build/example.ml#954:6->954:23
	FLDR	%fr2, %r31, $60	# build/example.ml#954:6->954:23
	FLDR	%fr1, %r31, $64	# build/example.ml#954:6->954:23
	MVI	%r9, $0	# build/example.ml#954:3->957:12
	CEQ	%r8, %r9	# build/example.ml#954:3->957:12
	JZ	$if_eq.11755	# build/example.ml#954:3->957:12
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#955:5->955:16
	MVI	%r8, $0	# build/example.ml#955:18->955:19
	MVI	%r9, $0	# build/example.ml#955:32->955:33
	FLDD	%fr8, %r12, $4, %r9	# build/example.ml#954:13->954:23
	MVI	%r9, $3	# build/example.ml#955:46->955:47
	FLDD	%fr9, %r13, $4, %r9	# build/example.ml#955:38->955:48
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#955:24->955:48
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#955:5->955:48
	MVI	%r0, $1	# build/example.ml#956:5->956:6
	J	$if_eq_cont.11756	# build/example.ml#954:3->957:12
if_eq.11755:
	MVI	%r0, $0	# build/example.ml#957:11->957:12
if_eq_cont.11756:
	LDR	%r9, %r31, $0	# build/example.ml#954:21->954:22
	LDR	%r8, %r31, $4	# build/example.ml#954:21->954:22
	LDR	%r7, %r31, $8	# build/example.ml#954:21->954:22
	LDR	%r13, %r31, $12	# build/example.ml#954:21->954:22
	LDR	%r12, %r31, $16	# build/example.ml#954:21->954:22
	LDR	%r11, %r31, $20	# build/example.ml#954:21->954:22
	LDR	%r10, %r31, $24	# build/example.ml#954:21->954:22
	FLDR	%fr9, %r31, $28	# build/example.ml#954:21->954:22
	FLDR	%fr8, %r31, $32	# build/example.ml#954:21->954:22
	LINK	# build/example.ml#954:21->954:22
solver_fast.2776:
	SDR	%r9, %r31, $0	# build/example.ml#934:11->934:18
	SDR	%r8, %r31, $4	# build/example.ml#934:11->934:18
	SDR	%r7, %r31, $8	# build/example.ml#934:11->934:18
	SDR	%r28, %r31, $12	# build/example.ml#934:11->934:18
	SDR	%r27, %r31, $16	# build/example.ml#934:11->934:18
	SDR	%r26, %r31, $20	# build/example.ml#934:11->934:18
	SDR	%r25, %r31, $24	# build/example.ml#934:11->934:18
	SDR	%r24, %r31, $28	# build/example.ml#934:11->934:18
	SDR	%r23, %r31, $32	# build/example.ml#934:11->934:18
	SDR	%r22, %r31, $36	# build/example.ml#934:11->934:18
	FSDR	%fr9, %r31, $40	# build/example.ml#934:11->934:18
	FSDR	%fr8, %r31, $44	# build/example.ml#934:11->934:18
	FSDR	%fr7, %r31, $48	# build/example.ml#934:11->934:18
	MVI	%r9, $min_caml_objects	# build/example.ml#934:11->934:18
	LDD	%r23, %r9, $4, %r1	# build/example.ml#637:7->637:25
	LDR	%r9, %r23, $40	# build/example.ml#934:3->946:41
	LDR	%r8, %r23, $36	# build/example.ml#934:3->946:41
	LDR	%r7, %r23, $32	# build/example.ml#934:3->946:41
	LDR	%r6, %r23, $28	# build/example.ml#934:3->946:41
	LDR	%r5, %r23, $24	# build/example.ml#934:3->946:41
	LDR	%r28, %r23, $20	# build/example.ml#934:3->946:41
	LDR	%r27, %r23, $16	# build/example.ml#934:3->946:41
	LDR	%r26, %r23, $12	# build/example.ml#934:3->946:41
	LDR	%r25, %r23, $8	# build/example.ml#934:3->946:41
	LDR	%r24, %r23, $4	# build/example.ml#934:3->946:41
	LDR	%r23, %r23, $0	# build/example.ml#934:3->946:41
	MVI	%r22, $0	# build/example.ml#935:17->935:18
	FLDD	%fr8, %r4, $4, %r22	# build/example.ml#935:12->935:19
	SDR	%r6, %r31, $52	# build/example.ml#935:23->935:34
	SDR	%r5, %r31, $56	# build/example.ml#935:23->935:34
	SDR	%r4, %r31, $60	# build/example.ml#935:23->935:34
	SDR	%r3, %r31, $64	# build/example.ml#935:23->935:34
	SDR	%r2, %r31, $68	# build/example.ml#935:23->935:34
	SDR	%r1, %r31, $72	# build/example.ml#935:23->935:34
	MV	%r11, %r9	# build/example.ml#935:23->935:34
	MV	%r10, %r8	# build/example.ml#935:23->935:34
	MV	%r4, %r26	# build/example.ml#935:23->935:34
	MV	%r3, %r25	# build/example.ml#935:23->935:34
	MV	%r2, %r24	# build/example.ml#935:23->935:34
	MV	%r1, %r23	# build/example.ml#935:23->935:34
	MV	%r9, %r7	# build/example.ml#935:23->935:34
	MV	%r8, %r6	# build/example.ml#935:23->935:34
	MV	%r7, %r5	# build/example.ml#935:23->935:34
	MV	%r6, %r28	# build/example.ml#935:23->935:34
	MV	%r5, %r27	# build/example.ml#935:23->935:34
	ADDI	%r31, %r31, $76	# build/example.ml#935:23->935:34
	ADDI	%r31, %r31, $4	# build/example.ml#935:23->935:34
	SIP	# build/example.ml#935:23->935:34
	J	$o_param_x.2637	# build/example.ml#935:23->935:34
	ADDI	%r31, %r31, $-76	# build/example.ml#935:23->935:34
	FMV	%fr9, %fr0	# build/example.ml#935:23->935:34
	LDR	%r6, %r31, $52	# build/example.ml#935:23->935:34
	LDR	%r5, %r31, $56	# build/example.ml#935:23->935:34
	LDR	%r4, %r31, $60	# build/example.ml#935:23->935:34
	LDR	%r3, %r31, $64	# build/example.ml#935:23->935:34
	LDR	%r2, %r31, $68	# build/example.ml#935:23->935:34
	LDR	%r1, %r31, $72	# build/example.ml#935:23->935:34
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#935:12->935:34
	MVI	%r22, $1	# build/example.ml#936:17->936:18
	FLDD	%fr7, %r4, $4, %r22	# build/example.ml#935:12->935:19
	SDR	%r6, %r31, $76	# build/example.ml#936:23->936:34
	SDR	%r5, %r31, $80	# build/example.ml#936:23->936:34
	SDR	%r4, %r31, $84	# build/example.ml#936:23->936:34
	SDR	%r3, %r31, $88	# build/example.ml#936:23->936:34
	SDR	%r2, %r31, $92	# build/example.ml#936:23->936:34
	SDR	%r1, %r31, $96	# build/example.ml#936:23->936:34
	MV	%r11, %r9	# build/example.ml#936:23->936:34
	MV	%r10, %r8	# build/example.ml#936:23->936:34
	MV	%r4, %r26	# build/example.ml#936:23->936:34
	MV	%r3, %r25	# build/example.ml#936:23->936:34
	MV	%r2, %r24	# build/example.ml#936:23->936:34
	MV	%r1, %r23	# build/example.ml#936:23->936:34
	MV	%r9, %r7	# build/example.ml#936:23->936:34
	MV	%r8, %r6	# build/example.ml#936:23->936:34
	MV	%r7, %r5	# build/example.ml#936:23->936:34
	MV	%r6, %r28	# build/example.ml#936:23->936:34
	MV	%r5, %r27	# build/example.ml#936:23->936:34
	ADDI	%r31, %r31, $100	# build/example.ml#936:23->936:34
	ADDI	%r31, %r31, $4	# build/example.ml#936:23->936:34
	SIP	# build/example.ml#936:23->936:34
	J	$o_param_y.2639	# build/example.ml#936:23->936:34
	ADDI	%r31, %r31, $-100	# build/example.ml#936:23->936:34
	FMV	%fr9, %fr0	# build/example.ml#936:23->936:34
	LDR	%r6, %r31, $76	# build/example.ml#936:23->936:34
	LDR	%r5, %r31, $80	# build/example.ml#936:23->936:34
	LDR	%r4, %r31, $84	# build/example.ml#936:23->936:34
	LDR	%r3, %r31, $88	# build/example.ml#936:23->936:34
	LDR	%r2, %r31, $92	# build/example.ml#936:23->936:34
	LDR	%r1, %r31, $96	# build/example.ml#936:23->936:34
	FSUB	%fr9, %fr7, %fr9	# build/example.ml#936:12->936:34
	MVI	%r22, $2	# build/example.ml#937:17->937:18
	FLDD	%fr6, %r4, $4, %r22	# build/example.ml#935:12->935:19
	SDR	%r6, %r31, $100	# build/example.ml#937:23->937:34
	SDR	%r5, %r31, $104	# build/example.ml#937:23->937:34
	SDR	%r4, %r31, $108	# build/example.ml#937:23->937:34
	SDR	%r3, %r31, $112	# build/example.ml#937:23->937:34
	SDR	%r2, %r31, $116	# build/example.ml#937:23->937:34
	SDR	%r1, %r31, $120	# build/example.ml#937:23->937:34
	MV	%r11, %r9	# build/example.ml#937:23->937:34
	MV	%r10, %r8	# build/example.ml#937:23->937:34
	MV	%r4, %r26	# build/example.ml#937:23->937:34
	MV	%r3, %r25	# build/example.ml#937:23->937:34
	MV	%r2, %r24	# build/example.ml#937:23->937:34
	MV	%r1, %r23	# build/example.ml#937:23->937:34
	MV	%r9, %r7	# build/example.ml#937:23->937:34
	MV	%r8, %r6	# build/example.ml#937:23->937:34
	MV	%r7, %r5	# build/example.ml#937:23->937:34
	MV	%r6, %r28	# build/example.ml#937:23->937:34
	MV	%r5, %r27	# build/example.ml#937:23->937:34
	ADDI	%r31, %r31, $124	# build/example.ml#937:23->937:34
	ADDI	%r31, %r31, $4	# build/example.ml#937:23->937:34
	SIP	# build/example.ml#937:23->937:34
	J	$o_param_z.2641	# build/example.ml#937:23->937:34
	ADDI	%r31, %r31, $-124	# build/example.ml#937:23->937:34
	FMV	%fr7, %fr0	# build/example.ml#937:23->937:34
	LDR	%r6, %r31, $100	# build/example.ml#937:23->937:34
	LDR	%r5, %r31, $104	# build/example.ml#937:23->937:34
	LDR	%r4, %r31, $108	# build/example.ml#937:23->937:34
	LDR	%r3, %r31, $112	# build/example.ml#937:23->937:34
	LDR	%r2, %r31, $116	# build/example.ml#937:23->937:34
	LDR	%r1, %r31, $120	# build/example.ml#937:23->937:34
	FSUB	%fr7, %fr6, %fr7	# build/example.ml#937:12->937:34
	MV	%r4, %r3	# build/example.ml#451:3->452:10
	LDD	%r3, %r4, $4, %r1	# build/example.ml#939:16->939:31
	MV	%r4, %r24	# build/example.ml#159:3->164:10
	MVI	%r22, $1	# build/example.ml#941:16->941:17
	CEQ	%r4, %r22	# build/example.ml#941:3->946:41
	JZ	$if_eq.11757	# build/example.ml#941:3->946:41
	MVI	%r22, $2	# build/example.ml#943:21->943:22
	CEQ	%r4, %r22	# build/example.ml#943:8->946:41
	JZ	$if_eq.11759	# build/example.ml#943:8->946:41
	SDR	%r6, %r31, $124	# build/example.ml#946:5->946:41
	SDR	%r5, %r31, $128	# build/example.ml#946:5->946:41
	SDR	%r4, %r31, $132	# build/example.ml#946:5->946:41
	SDR	%r3, %r31, $136	# build/example.ml#946:5->946:41
	SDR	%r2, %r31, $140	# build/example.ml#946:5->946:41
	SDR	%r1, %r31, $144	# build/example.ml#946:5->946:41
	FSDR	%fr6, %r31, $148	# build/example.ml#946:5->946:41
	MV	%r12, %r3	# build/example.ml#946:5->946:41
	MV	%r11, %r9	# build/example.ml#946:5->946:41
	MV	%r10, %r8	# build/example.ml#946:5->946:41
	MV	%r4, %r26	# build/example.ml#946:5->946:41
	MV	%r2, %r24	# build/example.ml#946:5->946:41
	MV	%r1, %r23	# build/example.ml#946:5->946:41
	MV	%r9, %r7	# build/example.ml#946:5->946:41
	MV	%r8, %r6	# build/example.ml#946:5->946:41
	MV	%r3, %r25	# build/example.ml#946:5->946:41
	MV	%r7, %r5	# build/example.ml#946:5->946:41
	MV	%r6, %r28	# build/example.ml#946:5->946:41
	MV	%r5, %r27	# build/example.ml#946:5->946:41
	FMV	%fr2, %fr7	# build/example.ml#946:5->946:41
	FMV	%fr1, %fr9	# build/example.ml#946:5->946:41
	FMV	%fr0, %fr8	# build/example.ml#946:5->946:41
	ADDI	%r31, %r31, $152	# build/example.ml#946:5->946:41
	ADDI	%r31, %r31, $4	# build/example.ml#946:5->946:41
	SIP	# build/example.ml#946:5->946:41
	J	$solver_second_fast.2770	# build/example.ml#946:5->946:41
	ADDI	%r31, %r31, $-152	# build/example.ml#946:5->946:41
	LDR	%r6, %r31, $124	# build/example.ml#946:5->946:41
	LDR	%r5, %r31, $128	# build/example.ml#946:5->946:41
	LDR	%r4, %r31, $132	# build/example.ml#946:5->946:41
	LDR	%r3, %r31, $136	# build/example.ml#946:5->946:41
	LDR	%r2, %r31, $140	# build/example.ml#946:5->946:41
	LDR	%r1, %r31, $144	# build/example.ml#946:5->946:41
	FLDR	%fr6, %r31, $148	# build/example.ml#946:5->946:41
	J	$if_eq_cont.11760	# build/example.ml#943:8->946:41
if_eq.11759:
	SDR	%r6, %r31, $152	# build/example.ml#944:5->944:42
	SDR	%r5, %r31, $156	# build/example.ml#944:5->944:42
	SDR	%r4, %r31, $160	# build/example.ml#944:5->944:42
	SDR	%r3, %r31, $164	# build/example.ml#944:5->944:42
	SDR	%r2, %r31, $168	# build/example.ml#944:5->944:42
	SDR	%r1, %r31, $172	# build/example.ml#944:5->944:42
	FSDR	%fr6, %r31, $176	# build/example.ml#944:5->944:42
	MV	%r12, %r3	# build/example.ml#944:5->944:42
	MV	%r11, %r9	# build/example.ml#944:5->944:42
	MV	%r10, %r8	# build/example.ml#944:5->944:42
	MV	%r4, %r26	# build/example.ml#944:5->944:42
	MV	%r2, %r24	# build/example.ml#944:5->944:42
	MV	%r1, %r23	# build/example.ml#944:5->944:42
	MV	%r9, %r7	# build/example.ml#944:5->944:42
	MV	%r8, %r6	# build/example.ml#944:5->944:42
	MV	%r3, %r25	# build/example.ml#944:5->944:42
	MV	%r7, %r5	# build/example.ml#944:5->944:42
	MV	%r6, %r28	# build/example.ml#944:5->944:42
	MV	%r5, %r27	# build/example.ml#944:5->944:42
	FMV	%fr2, %fr7	# build/example.ml#944:5->944:42
	FMV	%fr1, %fr9	# build/example.ml#944:5->944:42
	FMV	%fr0, %fr8	# build/example.ml#944:5->944:42
	ADDI	%r31, %r31, $180	# build/example.ml#944:5->944:42
	ADDI	%r31, %r31, $4	# build/example.ml#944:5->944:42
	SIP	# build/example.ml#944:5->944:42
	J	$solver_surface_fast.2764	# build/example.ml#944:5->944:42
	ADDI	%r31, %r31, $-180	# build/example.ml#944:5->944:42
	LDR	%r6, %r31, $152	# build/example.ml#944:5->944:42
	LDR	%r5, %r31, $156	# build/example.ml#944:5->944:42
	LDR	%r4, %r31, $160	# build/example.ml#944:5->944:42
	LDR	%r3, %r31, $164	# build/example.ml#944:5->944:42
	LDR	%r2, %r31, $168	# build/example.ml#944:5->944:42
	LDR	%r1, %r31, $172	# build/example.ml#944:5->944:42
	FLDR	%fr6, %r31, $176	# build/example.ml#944:5->944:42
if_eq_cont.11760:
	J	$if_eq_cont.11758	# build/example.ml#941:3->946:41
if_eq.11757:
	MV	%r4, %r2	# build/example.ml#445:3->446:8
	SDR	%r6, %r31, $180	# build/example.ml#942:5->942:54
	SDR	%r5, %r31, $184	# build/example.ml#942:5->942:54
	SDR	%r4, %r31, $188	# build/example.ml#942:5->942:54
	SDR	%r3, %r31, $192	# build/example.ml#942:5->942:54
	SDR	%r2, %r31, $196	# build/example.ml#942:5->942:54
	SDR	%r1, %r31, $200	# build/example.ml#942:5->942:54
	FSDR	%fr6, %r31, $204	# build/example.ml#942:5->942:54
	MV	%r13, %r3	# build/example.ml#942:5->942:54
	MV	%r12, %r4	# build/example.ml#942:5->942:54
	MV	%r11, %r9	# build/example.ml#942:5->942:54
	MV	%r10, %r8	# build/example.ml#942:5->942:54
	MV	%r2, %r24	# build/example.ml#942:5->942:54
	MV	%r1, %r23	# build/example.ml#942:5->942:54
	MV	%r9, %r7	# build/example.ml#942:5->942:54
	MV	%r8, %r6	# build/example.ml#942:5->942:54
	MV	%r4, %r26	# build/example.ml#942:5->942:54
	MV	%r3, %r25	# build/example.ml#942:5->942:54
	MV	%r7, %r5	# build/example.ml#942:5->942:54
	MV	%r6, %r28	# build/example.ml#942:5->942:54
	MV	%r5, %r27	# build/example.ml#942:5->942:54
	FMV	%fr2, %fr7	# build/example.ml#942:5->942:54
	FMV	%fr1, %fr9	# build/example.ml#942:5->942:54
	FMV	%fr0, %fr8	# build/example.ml#942:5->942:54
	ADDI	%r31, %r31, $208	# build/example.ml#942:5->942:54
	ADDI	%r31, %r31, $4	# build/example.ml#942:5->942:54
	SIP	# build/example.ml#942:5->942:54
	J	$solver_rect_fast.2757	# build/example.ml#942:5->942:54
	ADDI	%r31, %r31, $-208	# build/example.ml#942:5->942:54
	LDR	%r6, %r31, $180	# build/example.ml#942:5->942:54
	LDR	%r5, %r31, $184	# build/example.ml#942:5->942:54
	LDR	%r4, %r31, $188	# build/example.ml#942:5->942:54
	LDR	%r3, %r31, $192	# build/example.ml#942:5->942:54
	LDR	%r2, %r31, $196	# build/example.ml#942:5->942:54
	LDR	%r1, %r31, $200	# build/example.ml#942:5->942:54
	FLDR	%fr6, %r31, $204	# build/example.ml#942:5->942:54
if_eq_cont.11758:
	LDR	%r9, %r31, $0	# build/example.ml#934:11->934:18
	LDR	%r8, %r31, $4	# build/example.ml#934:11->934:18
	LDR	%r7, %r31, $8	# build/example.ml#934:11->934:18
	LDR	%r28, %r31, $12	# build/example.ml#934:11->934:18
	LDR	%r27, %r31, $16	# build/example.ml#934:11->934:18
	LDR	%r26, %r31, $20	# build/example.ml#934:11->934:18
	LDR	%r25, %r31, $24	# build/example.ml#934:11->934:18
	LDR	%r24, %r31, $28	# build/example.ml#934:11->934:18
	LDR	%r23, %r31, $32	# build/example.ml#934:11->934:18
	LDR	%r22, %r31, $36	# build/example.ml#934:11->934:18
	FLDR	%fr9, %r31, $40	# build/example.ml#934:11->934:18
	FLDR	%fr8, %r31, $44	# build/example.ml#934:11->934:18
	FLDR	%fr7, %r31, $48	# build/example.ml#934:11->934:18
	LINK	# build/example.ml#934:11->934:18
solver_second_fast.2770:
	SDR	%r9, %r31, $0	# build/example.ml#915:20->915:21
	SDR	%r8, %r31, $4	# build/example.ml#915:20->915:21
	SDR	%r7, %r31, $8	# build/example.ml#915:20->915:21
	SDR	%r28, %r31, $12	# build/example.ml#915:20->915:21
	SDR	%r27, %r31, $16	# build/example.ml#915:20->915:21
	SDR	%r12, %r31, $20	# build/example.ml#915:20->915:21
	SDR	%r11, %r31, $24	# build/example.ml#915:20->915:21
	SDR	%r10, %r31, $28	# build/example.ml#915:20->915:21
	FSDR	%fr9, %r31, $32	# build/example.ml#915:20->915:21
	FSDR	%fr8, %r31, $36	# build/example.ml#915:20->915:21
	FSDR	%fr7, %r31, $40	# build/example.ml#915:20->915:21
	MVI	%r28, $0	# build/example.ml#915:20->915:21
	FLDD	%fr9, %r12, $4, %r28	# build/example.ml#915:12->915:22
	SDR	%r6, %r31, $44	# build/example.ml#916:6->916:16
	SDR	%r5, %r31, $48	# build/example.ml#916:6->916:16
	SDR	%r4, %r31, $52	# build/example.ml#916:6->916:16
	SDR	%r3, %r31, $56	# build/example.ml#916:6->916:16
	SDR	%r2, %r31, $60	# build/example.ml#916:6->916:16
	SDR	%r1, %r31, $64	# build/example.ml#916:6->916:16
	FSDR	%fr6, %r31, $68	# build/example.ml#916:6->916:16
	FSDR	%fr2, %r31, $72	# build/example.ml#916:6->916:16
	FSDR	%fr1, %r31, $76	# build/example.ml#916:6->916:16
	FMV	%fr0, %fr9	# build/example.ml#916:6->916:16
	ADDI	%r31, %r31, $80	# build/example.ml#916:6->916:16
	ADDI	%r31, %r31, $4	# build/example.ml#916:6->916:16
	SIP	# build/example.ml#916:6->916:16
	J	$min_caml_fiszero	# build/example.ml#916:6->916:16
	ADDI	%r31, %r31, $-80	# build/example.ml#916:6->916:16
	MV	%r27, %r0	# build/example.ml#916:6->916:16
	LDR	%r6, %r31, $44	# build/example.ml#916:6->916:16
	LDR	%r5, %r31, $48	# build/example.ml#916:6->916:16
	LDR	%r4, %r31, $52	# build/example.ml#916:6->916:16
	LDR	%r3, %r31, $56	# build/example.ml#916:6->916:16
	LDR	%r2, %r31, $60	# build/example.ml#916:6->916:16
	LDR	%r1, %r31, $64	# build/example.ml#916:6->916:16
	FLDR	%fr6, %r31, $68	# build/example.ml#916:6->916:16
	FLDR	%fr2, %r31, $72	# build/example.ml#916:6->916:16
	FLDR	%fr1, %r31, $76	# build/example.ml#916:6->916:16
	MVI	%r28, $0	# build/example.ml#916:3->929:11
	CEQ	%r27, %r28	# build/example.ml#916:3->929:11
	JZ	$if_eq.11761	# build/example.ml#916:3->929:11
	MVI	%r0, $0	# build/example.ml#917:5->917:6
	J	$if_eq_cont.11762	# build/example.ml#916:3->929:11
if_eq.11761:
	MVI	%r28, $1	# build/example.ml#919:26->919:27
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#915:12->915:22
	FMUL	%fr7, %fr8, %fr0	# build/example.ml#919:18->919:34
	MVI	%r28, $2	# build/example.ml#919:46->919:47
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#915:12->915:22
	FMUL	%fr8, %fr8, %fr1	# build/example.ml#919:38->919:54
	FADD	%fr7, %fr7, %fr8	# build/example.ml#919:18->919:54
	MVI	%r28, $3	# build/example.ml#919:66->919:67
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#915:12->915:22
	FMUL	%fr8, %fr8, %fr2	# build/example.ml#919:58->919:74
	FADD	%fr8, %fr7, %fr8	# build/example.ml#919:18->919:74
	SDR	%r6, %r31, $80	# build/example.ml#920:15->920:35
	SDR	%r5, %r31, $84	# build/example.ml#920:15->920:35
	SDR	%r4, %r31, $88	# build/example.ml#920:15->920:35
	SDR	%r3, %r31, $92	# build/example.ml#920:15->920:35
	SDR	%r2, %r31, $96	# build/example.ml#920:15->920:35
	SDR	%r1, %r31, $100	# build/example.ml#920:15->920:35
	FSDR	%fr6, %r31, $104	# build/example.ml#920:15->920:35
	FSDR	%fr2, %r31, $108	# build/example.ml#920:15->920:35
	FSDR	%fr1, %r31, $112	# build/example.ml#920:15->920:35
	ADDI	%r31, %r31, $116	# build/example.ml#920:15->920:35
	ADDI	%r31, %r31, $4	# build/example.ml#920:15->920:35
	SIP	# build/example.ml#920:15->920:35
	J	$quadratic.2734	# build/example.ml#920:15->920:35
	ADDI	%r31, %r31, $-116	# build/example.ml#920:15->920:35
	FMV	%fr7, %fr0	# build/example.ml#920:15->920:35
	LDR	%r6, %r31, $80	# build/example.ml#920:15->920:35
	LDR	%r5, %r31, $84	# build/example.ml#920:15->920:35
	LDR	%r4, %r31, $88	# build/example.ml#920:15->920:35
	LDR	%r3, %r31, $92	# build/example.ml#920:15->920:35
	LDR	%r2, %r31, $96	# build/example.ml#920:15->920:35
	LDR	%r1, %r31, $100	# build/example.ml#920:15->920:35
	FLDR	%fr6, %r31, $104	# build/example.ml#920:15->920:35
	FLDR	%fr2, %r31, $108	# build/example.ml#920:15->920:35
	FLDR	%fr1, %r31, $112	# build/example.ml#920:15->920:35
	MV	%r9, %r2	# build/example.ml#159:3->164:10
	MVI	%r8, $3	# build/example.ml#921:28->921:29
	CEQ	%r9, %r8	# build/example.ml#921:14->921:54
	JZ	$if_eq.11763	# build/example.ml#921:14->921:54
	FMV	%r0, %fr7	# build/example.ml#921:51->921:54
	MV	%fr7, %r0	# build/example.ml#921:51->921:54
	J	$if_eq_cont.11764	# build/example.ml#921:14->921:54
if_eq.11763:
	FLDA	%fr6, $l.7785	# build/example.ml#921:42->921:45
	FSUB	%r0, %fr7, %fr6	# build/example.ml#921:35->921:45
	MV	%fr7, %r0	# build/example.ml#921:35->921:45
if_eq_cont.11764:
	SDR	%r6, %r31, $116	# build/example.ml#922:14->922:25
	SDR	%r5, %r31, $120	# build/example.ml#922:14->922:25
	SDR	%r4, %r31, $124	# build/example.ml#922:14->922:25
	SDR	%r3, %r31, $128	# build/example.ml#922:14->922:25
	SDR	%r2, %r31, $132	# build/example.ml#922:14->922:25
	SDR	%r1, %r31, $136	# build/example.ml#922:14->922:25
	FSDR	%fr6, %r31, $140	# build/example.ml#922:14->922:25
	FSDR	%fr2, %r31, $144	# build/example.ml#922:14->922:25
	FSDR	%fr1, %r31, $148	# build/example.ml#922:14->922:25
	FMV	%fr0, %fr8	# build/example.ml#922:14->922:25
	ADDI	%r31, %r31, $152	# build/example.ml#922:14->922:25
	ADDI	%r31, %r31, $4	# build/example.ml#922:14->922:25
	SIP	# build/example.ml#922:14->922:25
	J	$min_caml_fsqr	# build/example.ml#922:14->922:25
	ADDI	%r31, %r31, $-152	# build/example.ml#922:14->922:25
	FMV	%fr6, %fr0	# build/example.ml#922:14->922:25
	LDR	%r6, %r31, $116	# build/example.ml#922:14->922:25
	LDR	%r5, %r31, $120	# build/example.ml#922:14->922:25
	LDR	%r4, %r31, $124	# build/example.ml#922:14->922:25
	LDR	%r3, %r31, $128	# build/example.ml#922:14->922:25
	LDR	%r2, %r31, $132	# build/example.ml#922:14->922:25
	LDR	%r1, %r31, $136	# build/example.ml#922:14->922:25
	FLDR	%fr6, %r31, $140	# build/example.ml#922:14->922:25
	FLDR	%fr2, %r31, $144	# build/example.ml#922:14->922:25
	FLDR	%fr1, %r31, $148	# build/example.ml#922:14->922:25
	FMUL	%fr9, %fr9, %fr7	# build/example.ml#922:30->922:38
	FSUB	%fr9, %fr6, %fr9	# build/example.ml#922:13->922:38
	SDR	%r6, %r31, $152	# build/example.ml#923:8->923:16
	SDR	%r5, %r31, $156	# build/example.ml#923:8->923:16
	SDR	%r4, %r31, $160	# build/example.ml#923:8->923:16
	SDR	%r3, %r31, $164	# build/example.ml#923:8->923:16
	SDR	%r2, %r31, $168	# build/example.ml#923:8->923:16
	SDR	%r1, %r31, $172	# build/example.ml#923:8->923:16
	FSDR	%fr6, %r31, $176	# build/example.ml#923:8->923:16
	FSDR	%fr2, %r31, $180	# build/example.ml#923:8->923:16
	FSDR	%fr1, %r31, $184	# build/example.ml#923:8->923:16
	FMV	%fr0, %fr9	# build/example.ml#923:8->923:16
	ADDI	%r31, %r31, $188	# build/example.ml#923:8->923:16
	ADDI	%r31, %r31, $4	# build/example.ml#923:8->923:16
	SIP	# build/example.ml#923:8->923:16
	J	$min_caml_fispos	# build/example.ml#923:8->923:16
	ADDI	%r31, %r31, $-188	# build/example.ml#923:8->923:16
	MV	%r8, %r0	# build/example.ml#923:8->923:16
	LDR	%r6, %r31, $152	# build/example.ml#923:8->923:16
	LDR	%r5, %r31, $156	# build/example.ml#923:8->923:16
	LDR	%r4, %r31, $160	# build/example.ml#923:8->923:16
	LDR	%r3, %r31, $164	# build/example.ml#923:8->923:16
	LDR	%r2, %r31, $168	# build/example.ml#923:8->923:16
	LDR	%r1, %r31, $172	# build/example.ml#923:8->923:16
	FLDR	%fr6, %r31, $176	# build/example.ml#923:8->923:16
	FLDR	%fr2, %r31, $180	# build/example.ml#923:8->923:16
	FLDR	%fr1, %r31, $184	# build/example.ml#923:8->923:16
	MVI	%r9, $0	# build/example.ml#923:5->929:11
	CEQ	%r8, %r9	# build/example.ml#923:5->929:11
	JZ	$if_eq.11765	# build/example.ml#923:5->929:11
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	MVI	%r8, $0	# build/example.ml#924:7->927:53
	CEQ	%r9, %r8	# build/example.ml#924:7->927:53
	JZ	$if_eq.11767	# build/example.ml#924:7->927:53
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#925:2->925:13
	MVI	%r8, $0	# build/example.ml#925:15->925:16
	SDR	%r6, %r31, $188	# build/example.ml#925:32->925:38
	SDR	%r5, %r31, $192	# build/example.ml#925:32->925:38
	SDR	%r4, %r31, $196	# build/example.ml#925:32->925:38
	SDR	%r3, %r31, $200	# build/example.ml#925:32->925:38
	SDR	%r2, %r31, $204	# build/example.ml#925:32->925:38
	SDR	%r1, %r31, $208	# build/example.ml#925:32->925:38
	FSDR	%fr6, %r31, $212	# build/example.ml#925:32->925:38
	FSDR	%fr2, %r31, $216	# build/example.ml#925:32->925:38
	FSDR	%fr1, %r31, $220	# build/example.ml#925:32->925:38
	FMV	%fr0, %fr9	# build/example.ml#925:32->925:38
	ADDI	%r31, %r31, $224	# build/example.ml#925:32->925:38
	ADDI	%r31, %r31, $4	# build/example.ml#925:32->925:38
	SIP	# build/example.ml#925:32->925:38
	J	$min_caml_sqrt	# build/example.ml#925:32->925:38
	ADDI	%r31, %r31, $-224	# build/example.ml#925:32->925:38
	FMV	%fr9, %fr0	# build/example.ml#925:32->925:38
	LDR	%r6, %r31, $188	# build/example.ml#925:32->925:38
	LDR	%r5, %r31, $192	# build/example.ml#925:32->925:38
	LDR	%r4, %r31, $196	# build/example.ml#925:32->925:38
	LDR	%r3, %r31, $200	# build/example.ml#925:32->925:38
	LDR	%r2, %r31, $204	# build/example.ml#925:32->925:38
	LDR	%r1, %r31, $208	# build/example.ml#925:32->925:38
	FLDR	%fr6, %r31, $212	# build/example.ml#925:32->925:38
	FLDR	%fr2, %r31, $216	# build/example.ml#925:32->925:38
	FLDR	%fr1, %r31, $220	# build/example.ml#925:32->925:38
	FADD	%fr8, %fr8, %fr9	# build/example.ml#925:22->925:38
	MVI	%r9, $4	# build/example.ml#925:51->925:52
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#915:12->915:22
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#925:21->925:53
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#925:2->925:53
	J	$if_eq_cont.11768	# build/example.ml#924:7->927:53
if_eq.11767:
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#927:2->927:13
	MVI	%r8, $0	# build/example.ml#927:15->927:16
	SDR	%r6, %r31, $224	# build/example.ml#927:32->927:38
	SDR	%r5, %r31, $228	# build/example.ml#927:32->927:38
	SDR	%r4, %r31, $232	# build/example.ml#927:32->927:38
	SDR	%r3, %r31, $236	# build/example.ml#927:32->927:38
	SDR	%r2, %r31, $240	# build/example.ml#927:32->927:38
	SDR	%r1, %r31, $244	# build/example.ml#927:32->927:38
	FSDR	%fr6, %r31, $248	# build/example.ml#927:32->927:38
	FSDR	%fr2, %r31, $252	# build/example.ml#927:32->927:38
	FSDR	%fr1, %r31, $256	# build/example.ml#927:32->927:38
	FMV	%fr0, %fr9	# build/example.ml#927:32->927:38
	ADDI	%r31, %r31, $260	# build/example.ml#927:32->927:38
	ADDI	%r31, %r31, $4	# build/example.ml#927:32->927:38
	SIP	# build/example.ml#927:32->927:38
	J	$min_caml_sqrt	# build/example.ml#927:32->927:38
	ADDI	%r31, %r31, $-260	# build/example.ml#927:32->927:38
	FMV	%fr9, %fr0	# build/example.ml#927:32->927:38
	LDR	%r6, %r31, $224	# build/example.ml#927:32->927:38
	LDR	%r5, %r31, $228	# build/example.ml#927:32->927:38
	LDR	%r4, %r31, $232	# build/example.ml#927:32->927:38
	LDR	%r3, %r31, $236	# build/example.ml#927:32->927:38
	LDR	%r2, %r31, $240	# build/example.ml#927:32->927:38
	LDR	%r1, %r31, $244	# build/example.ml#927:32->927:38
	FLDR	%fr6, %r31, $248	# build/example.ml#927:32->927:38
	FLDR	%fr2, %r31, $252	# build/example.ml#927:32->927:38
	FLDR	%fr1, %r31, $256	# build/example.ml#927:32->927:38
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#927:22->927:38
	MVI	%r9, $4	# build/example.ml#927:51->927:52
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#915:12->915:22
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#927:21->927:53
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#927:2->927:53
if_eq_cont.11768:
	MVI	%r0, $1	# build/example.ml#928:7->928:8
	J	$if_eq_cont.11766	# build/example.ml#923:5->929:11
if_eq.11765:
	MVI	%r0, $0	# build/example.ml#929:10->929:11
if_eq_cont.11766:
if_eq_cont.11762:
	LDR	%r9, %r31, $0	# build/example.ml#915:20->915:21
	LDR	%r8, %r31, $4	# build/example.ml#915:20->915:21
	LDR	%r7, %r31, $8	# build/example.ml#915:20->915:21
	LDR	%r28, %r31, $12	# build/example.ml#915:20->915:21
	LDR	%r27, %r31, $16	# build/example.ml#915:20->915:21
	LDR	%r12, %r31, $20	# build/example.ml#915:20->915:21
	LDR	%r11, %r31, $24	# build/example.ml#915:20->915:21
	LDR	%r10, %r31, $28	# build/example.ml#915:20->915:21
	FLDR	%fr9, %r31, $32	# build/example.ml#915:20->915:21
	FLDR	%fr8, %r31, $36	# build/example.ml#915:20->915:21
	FLDR	%fr7, %r31, $40	# build/example.ml#915:20->915:21
	LINK	# build/example.ml#915:20->915:21
solver_surface_fast.2764:
	SDR	%r9, %r31, $0	# build/example.ml#905:21->905:22
	SDR	%r8, %r31, $4	# build/example.ml#905:21->905:22
	SDR	%r7, %r31, $8	# build/example.ml#905:21->905:22
	SDR	%r12, %r31, $12	# build/example.ml#905:21->905:22
	SDR	%r11, %r31, $16	# build/example.ml#905:21->905:22
	SDR	%r10, %r31, $20	# build/example.ml#905:21->905:22
	FSDR	%fr9, %r31, $24	# build/example.ml#905:21->905:22
	FSDR	%fr8, %r31, $28	# build/example.ml#905:21->905:22
	MVI	%r9, $0	# build/example.ml#905:21->905:22
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#905:13->905:23
	SDR	%r6, %r31, $32	# build/example.ml#905:6->905:23
	SDR	%r5, %r31, $36	# build/example.ml#905:6->905:23
	SDR	%r4, %r31, $40	# build/example.ml#905:6->905:23
	SDR	%r3, %r31, $44	# build/example.ml#905:6->905:23
	SDR	%r2, %r31, $48	# build/example.ml#905:6->905:23
	SDR	%r1, %r31, $52	# build/example.ml#905:6->905:23
	FSDR	%fr2, %r31, $56	# build/example.ml#905:6->905:23
	FSDR	%fr1, %r31, $60	# build/example.ml#905:6->905:23
	FMV	%fr0, %fr9	# build/example.ml#905:6->905:23
	ADDI	%r31, %r31, $64	# build/example.ml#905:6->905:23
	ADDI	%r31, %r31, $4	# build/example.ml#905:6->905:23
	SIP	# build/example.ml#905:6->905:23
	J	$min_caml_fisneg	# build/example.ml#905:6->905:23
	ADDI	%r31, %r31, $-64	# build/example.ml#905:6->905:23
	MV	%r8, %r0	# build/example.ml#905:6->905:23
	LDR	%r6, %r31, $32	# build/example.ml#905:6->905:23
	LDR	%r5, %r31, $36	# build/example.ml#905:6->905:23
	LDR	%r4, %r31, $40	# build/example.ml#905:6->905:23
	LDR	%r3, %r31, $44	# build/example.ml#905:6->905:23
	LDR	%r2, %r31, $48	# build/example.ml#905:6->905:23
	LDR	%r1, %r31, $52	# build/example.ml#905:6->905:23
	FLDR	%fr2, %r31, $56	# build/example.ml#905:6->905:23
	FLDR	%fr1, %r31, $60	# build/example.ml#905:6->905:23
	MVI	%r9, $0	# build/example.ml#905:3->909:12
	CEQ	%r8, %r9	# build/example.ml#905:3->909:12
	JZ	$if_eq.11769	# build/example.ml#905:3->909:12
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#906:5->906:16
	MVI	%r8, $0	# build/example.ml#906:18->906:19
	MVI	%r9, $1	# build/example.ml#907:15->907:16
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#905:13->905:23
	FMUL	%fr8, %fr9, %fr0	# build/example.ml#907:7->907:23
	MVI	%r9, $2	# build/example.ml#907:35->907:36
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#905:13->905:23
	FMUL	%fr9, %fr9, %fr1	# build/example.ml#907:27->907:43
	FADD	%fr8, %fr8, %fr9	# build/example.ml#907:7->907:43
	MVI	%r9, $3	# build/example.ml#907:55->907:56
	FLDD	%fr9, %r12, $4, %r9	# build/example.ml#905:13->905:23
	FMUL	%fr9, %fr9, %fr2	# build/example.ml#907:47->907:63
	FADD	%fr9, %fr8, %fr9	# build/example.ml#907:7->907:63
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#906:5->907:63
	MVI	%r0, $1	# build/example.ml#908:5->908:6
	J	$if_eq_cont.11770	# build/example.ml#905:3->909:12
if_eq.11769:
	MVI	%r0, $0	# build/example.ml#909:11->909:12
if_eq_cont.11770:
	LDR	%r9, %r31, $0	# build/example.ml#905:21->905:22
	LDR	%r8, %r31, $4	# build/example.ml#905:21->905:22
	LDR	%r7, %r31, $8	# build/example.ml#905:21->905:22
	LDR	%r12, %r31, $12	# build/example.ml#905:21->905:22
	LDR	%r11, %r31, $16	# build/example.ml#905:21->905:22
	LDR	%r10, %r31, $20	# build/example.ml#905:21->905:22
	FLDR	%fr9, %r31, $24	# build/example.ml#905:21->905:22
	FLDR	%fr8, %r31, $28	# build/example.ml#905:21->905:22
	LINK	# build/example.ml#905:21->905:22
solver_rect_fast.2757:
	SDR	%r9, %r31, $0	# build/example.ml#872:21->872:22
	SDR	%r8, %r31, $4	# build/example.ml#872:21->872:22
	SDR	%r7, %r31, $8	# build/example.ml#872:21->872:22
	SDR	%r28, %r31, $12	# build/example.ml#872:21->872:22
	SDR	%r27, %r31, $16	# build/example.ml#872:21->872:22
	SDR	%r13, %r31, $20	# build/example.ml#872:21->872:22
	SDR	%r12, %r31, $24	# build/example.ml#872:21->872:22
	SDR	%r11, %r31, $28	# build/example.ml#872:21->872:22
	SDR	%r10, %r31, $32	# build/example.ml#872:21->872:22
	FSDR	%fr9, %r31, $36	# build/example.ml#872:21->872:22
	FSDR	%fr8, %r31, $40	# build/example.ml#872:21->872:22
	FSDR	%fr7, %r31, $44	# build/example.ml#872:21->872:22
	MVI	%r28, $0	# build/example.ml#872:21->872:22
	FLDD	%fr9, %r13, $4, %r28	# build/example.ml#872:13->872:23
	FSUB	%fr8, %fr9, %fr0	# build/example.ml#872:13->872:29
	MVI	%r28, $1	# build/example.ml#872:42->872:43
	FLDD	%fr9, %r13, $4, %r28	# build/example.ml#872:13->872:23
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#872:12->872:44
	MVI	%r28, $1	# build/example.ml#874:30->874:31
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#874:27->874:32
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#874:21->874:32
	FADD	%fr8, %fr8, %fr1	# build/example.ml#874:21->874:38
	FABS	%fr7, %fr8	# build/example.ml#874:15->874:39
	SDR	%r6, %r31, $48	# build/example.ml#874:42->874:53
	SDR	%r5, %r31, $52	# build/example.ml#874:42->874:53
	SDR	%r4, %r31, $56	# build/example.ml#874:42->874:53
	SDR	%r3, %r31, $60	# build/example.ml#874:42->874:53
	SDR	%r2, %r31, $64	# build/example.ml#874:42->874:53
	SDR	%r1, %r31, $68	# build/example.ml#874:42->874:53
	ADDI	%r31, %r31, $72	# build/example.ml#874:42->874:53
	ADDI	%r31, %r31, $4	# build/example.ml#874:42->874:53
	SIP	# build/example.ml#874:42->874:53
	J	$o_param_b.2631	# build/example.ml#874:42->874:53
	ADDI	%r31, %r31, $-72	# build/example.ml#874:42->874:53
	FMV	%fr8, %fr0	# build/example.ml#874:42->874:53
	LDR	%r6, %r31, $48	# build/example.ml#874:42->874:53
	LDR	%r5, %r31, $52	# build/example.ml#874:42->874:53
	LDR	%r4, %r31, $56	# build/example.ml#874:42->874:53
	LDR	%r3, %r31, $60	# build/example.ml#874:42->874:53
	LDR	%r2, %r31, $64	# build/example.ml#874:42->874:53
	LDR	%r1, %r31, $68	# build/example.ml#874:42->874:53
	SDR	%r6, %r31, $72	# build/example.ml#874:8->874:54
	SDR	%r5, %r31, $76	# build/example.ml#874:8->874:54
	SDR	%r4, %r31, $80	# build/example.ml#874:8->874:54
	SDR	%r3, %r31, $84	# build/example.ml#874:8->874:54
	SDR	%r2, %r31, $88	# build/example.ml#874:8->874:54
	SDR	%r1, %r31, $92	# build/example.ml#874:8->874:54
	FSDR	%fr2, %r31, $96	# build/example.ml#874:8->874:54
	FSDR	%fr1, %r31, $100	# build/example.ml#874:8->874:54
	FMV	%fr1, %fr8	# build/example.ml#874:8->874:54
	FMV	%fr0, %fr7	# build/example.ml#874:8->874:54
	ADDI	%r31, %r31, $104	# build/example.ml#874:8->874:54
	ADDI	%r31, %r31, $4	# build/example.ml#874:8->874:54
	SIP	# build/example.ml#874:8->874:54
	J	$min_caml_fless	# build/example.ml#874:8->874:54
	ADDI	%r31, %r31, $-104	# build/example.ml#874:8->874:54
	MV	%r27, %r0	# build/example.ml#874:8->874:54
	LDR	%r6, %r31, $72	# build/example.ml#874:8->874:54
	LDR	%r5, %r31, $76	# build/example.ml#874:8->874:54
	LDR	%r4, %r31, $80	# build/example.ml#874:8->874:54
	LDR	%r3, %r31, $84	# build/example.ml#874:8->874:54
	LDR	%r2, %r31, $88	# build/example.ml#874:8->874:54
	LDR	%r1, %r31, $92	# build/example.ml#874:8->874:54
	FLDR	%fr2, %r31, $96	# build/example.ml#874:8->874:54
	FLDR	%fr1, %r31, $100	# build/example.ml#874:8->874:54
	MVI	%r28, $0	# build/example.ml#874:5->878:15
	CEQ	%r27, %r28	# build/example.ml#874:5->878:15
	JZ	$if_eq.11771	# build/example.ml#874:5->878:15
	MVI	%r28, $2	# build/example.ml#875:32->875:33
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#874:27->874:32
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#875:23->875:34
	FADD	%fr8, %fr8, %fr2	# build/example.ml#875:23->875:40
	FABS	%fr7, %fr8	# build/example.ml#875:17->875:41
	SDR	%r6, %r31, $104	# build/example.ml#875:44->875:55
	SDR	%r5, %r31, $108	# build/example.ml#875:44->875:55
	SDR	%r4, %r31, $112	# build/example.ml#875:44->875:55
	SDR	%r3, %r31, $116	# build/example.ml#875:44->875:55
	SDR	%r2, %r31, $120	# build/example.ml#875:44->875:55
	SDR	%r1, %r31, $124	# build/example.ml#875:44->875:55
	ADDI	%r31, %r31, $128	# build/example.ml#875:44->875:55
	ADDI	%r31, %r31, $4	# build/example.ml#875:44->875:55
	SIP	# build/example.ml#875:44->875:55
	J	$o_param_c.2633	# build/example.ml#875:44->875:55
	ADDI	%r31, %r31, $-128	# build/example.ml#875:44->875:55
	FMV	%fr8, %fr0	# build/example.ml#875:44->875:55
	LDR	%r6, %r31, $104	# build/example.ml#875:44->875:55
	LDR	%r5, %r31, $108	# build/example.ml#875:44->875:55
	LDR	%r4, %r31, $112	# build/example.ml#875:44->875:55
	LDR	%r3, %r31, $116	# build/example.ml#875:44->875:55
	LDR	%r2, %r31, $120	# build/example.ml#875:44->875:55
	LDR	%r1, %r31, $124	# build/example.ml#875:44->875:55
	SDR	%r6, %r31, $128	# build/example.ml#875:10->875:56
	SDR	%r5, %r31, $132	# build/example.ml#875:10->875:56
	SDR	%r4, %r31, $136	# build/example.ml#875:10->875:56
	SDR	%r3, %r31, $140	# build/example.ml#875:10->875:56
	SDR	%r2, %r31, $144	# build/example.ml#875:10->875:56
	SDR	%r1, %r31, $148	# build/example.ml#875:10->875:56
	FSDR	%fr2, %r31, $152	# build/example.ml#875:10->875:56
	FSDR	%fr1, %r31, $156	# build/example.ml#875:10->875:56
	FMV	%fr1, %fr8	# build/example.ml#875:10->875:56
	FMV	%fr0, %fr7	# build/example.ml#875:10->875:56
	ADDI	%r31, %r31, $160	# build/example.ml#875:10->875:56
	ADDI	%r31, %r31, $4	# build/example.ml#875:10->875:56
	SIP	# build/example.ml#875:10->875:56
	J	$min_caml_fless	# build/example.ml#875:10->875:56
	ADDI	%r31, %r31, $-160	# build/example.ml#875:10->875:56
	MV	%r27, %r0	# build/example.ml#875:10->875:56
	LDR	%r6, %r31, $128	# build/example.ml#875:10->875:56
	LDR	%r5, %r31, $132	# build/example.ml#875:10->875:56
	LDR	%r4, %r31, $136	# build/example.ml#875:10->875:56
	LDR	%r3, %r31, $140	# build/example.ml#875:10->875:56
	LDR	%r2, %r31, $144	# build/example.ml#875:10->875:56
	LDR	%r1, %r31, $148	# build/example.ml#875:10->875:56
	FLDR	%fr2, %r31, $152	# build/example.ml#875:10->875:56
	FLDR	%fr1, %r31, $156	# build/example.ml#875:10->875:56
	MVI	%r28, $0	# build/example.ml#875:7->877:17
	CEQ	%r27, %r28	# build/example.ml#875:7->877:17
	JZ	$if_eq.11773	# build/example.ml#875:7->877:17
	MVI	%r28, $1	# build/example.ml#876:23->876:24
	FLDD	%fr8, %r13, $4, %r28	# build/example.ml#872:13->872:23
	SDR	%r6, %r31, $160	# build/example.ml#876:7->876:25
	SDR	%r5, %r31, $164	# build/example.ml#876:7->876:25
	SDR	%r4, %r31, $168	# build/example.ml#876:7->876:25
	SDR	%r3, %r31, $172	# build/example.ml#876:7->876:25
	SDR	%r2, %r31, $176	# build/example.ml#876:7->876:25
	SDR	%r1, %r31, $180	# build/example.ml#876:7->876:25
	FSDR	%fr2, %r31, $184	# build/example.ml#876:7->876:25
	FSDR	%fr1, %r31, $188	# build/example.ml#876:7->876:25
	FMV	%fr0, %fr8	# build/example.ml#876:7->876:25
	ADDI	%r31, %r31, $192	# build/example.ml#876:7->876:25
	ADDI	%r31, %r31, $4	# build/example.ml#876:7->876:25
	SIP	# build/example.ml#876:7->876:25
	J	$min_caml_fiszero	# build/example.ml#876:7->876:25
	ADDI	%r31, %r31, $-192	# build/example.ml#876:7->876:25
	MV	%r27, %r0	# build/example.ml#876:7->876:25
	LDR	%r6, %r31, $160	# build/example.ml#876:7->876:25
	LDR	%r5, %r31, $164	# build/example.ml#876:7->876:25
	LDR	%r4, %r31, $168	# build/example.ml#876:7->876:25
	LDR	%r3, %r31, $172	# build/example.ml#876:7->876:25
	LDR	%r2, %r31, $176	# build/example.ml#876:7->876:25
	LDR	%r1, %r31, $180	# build/example.ml#876:7->876:25
	FLDR	%fr2, %r31, $184	# build/example.ml#876:7->876:25
	FLDR	%fr1, %r31, $188	# build/example.ml#876:7->876:25
	MVI	%r28, $0	# build/example.ml#876:2->876:26
	CEQ	%r27, %r28	# build/example.ml#876:2->876:26
	JZ	$if_eq.11775	# build/example.ml#876:2->876:26
	MVI	%r0, $0	# build/example.ml#876:2->876:26
	J	$if_eq_cont.11776	# build/example.ml#876:2->876:26
if_eq.11775:
	MVI	%r0, $1	# build/example.ml#876:2->876:26
if_eq_cont.11776:
	J	$if_eq_cont.11774	# build/example.ml#875:7->877:17
if_eq.11773:
	MVI	%r0, $0	# build/example.ml#877:12->877:17
if_eq_cont.11774:
	MV	%r27, %r0	# build/example.ml#875:7->877:17
	J	$if_eq_cont.11772	# build/example.ml#874:5->878:15
if_eq.11771:
	MVI	%r0, $0	# build/example.ml#878:10->878:15
	MV	%r27, %r0	# build/example.ml#878:10->878:15
if_eq_cont.11772:
	MVI	%r28, $0	# build/example.ml#873:3->900:6
	CEQ	%r27, %r28	# build/example.ml#873:3->900:6
	JZ	$if_eq.11777	# build/example.ml#873:3->900:6
	MVI	%r8, $min_caml_solver_dist	# build/example.ml#880:6->880:17
	MVI	%r9, $0	# build/example.ml#880:19->880:20
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#880:6->880:27
	MVI	%r0, $1	# build/example.ml#880:29->880:30
	J	$if_eq_cont.11778	# build/example.ml#873:3->900:6
if_eq.11777:
	MVI	%r28, $2	# build/example.ml#881:26->881:27
	FLDD	%fr9, %r13, $4, %r28	# build/example.ml#872:13->872:23
	FSUB	%fr8, %fr9, %fr1	# build/example.ml#881:18->881:34
	MVI	%r28, $3	# build/example.ml#881:47->881:48
	FLDD	%fr9, %r13, $4, %r28	# build/example.ml#872:13->872:23
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#881:17->881:49
	MVI	%r28, $0	# build/example.ml#883:30->883:31
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#874:27->874:32
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#883:21->883:32
	FADD	%fr8, %fr8, %fr0	# build/example.ml#883:21->883:38
	FABS	%fr7, %fr8	# build/example.ml#883:15->883:39
	SDR	%r6, %r31, $192	# build/example.ml#883:42->883:53
	SDR	%r5, %r31, $196	# build/example.ml#883:42->883:53
	SDR	%r4, %r31, $200	# build/example.ml#883:42->883:53
	SDR	%r3, %r31, $204	# build/example.ml#883:42->883:53
	SDR	%r2, %r31, $208	# build/example.ml#883:42->883:53
	SDR	%r1, %r31, $212	# build/example.ml#883:42->883:53
	ADDI	%r31, %r31, $216	# build/example.ml#883:42->883:53
	ADDI	%r31, %r31, $4	# build/example.ml#883:42->883:53
	SIP	# build/example.ml#883:42->883:53
	J	$o_param_a.2629	# build/example.ml#883:42->883:53
	ADDI	%r31, %r31, $-216	# build/example.ml#883:42->883:53
	FMV	%fr8, %fr0	# build/example.ml#883:42->883:53
	LDR	%r6, %r31, $192	# build/example.ml#883:42->883:53
	LDR	%r5, %r31, $196	# build/example.ml#883:42->883:53
	LDR	%r4, %r31, $200	# build/example.ml#883:42->883:53
	LDR	%r3, %r31, $204	# build/example.ml#883:42->883:53
	LDR	%r2, %r31, $208	# build/example.ml#883:42->883:53
	LDR	%r1, %r31, $212	# build/example.ml#883:42->883:53
	SDR	%r6, %r31, $216	# build/example.ml#883:8->883:54
	SDR	%r5, %r31, $220	# build/example.ml#883:8->883:54
	SDR	%r4, %r31, $224	# build/example.ml#883:8->883:54
	SDR	%r3, %r31, $228	# build/example.ml#883:8->883:54
	SDR	%r2, %r31, $232	# build/example.ml#883:8->883:54
	SDR	%r1, %r31, $236	# build/example.ml#883:8->883:54
	FSDR	%fr2, %r31, $240	# build/example.ml#883:8->883:54
	FSDR	%fr1, %r31, $244	# build/example.ml#883:8->883:54
	FMV	%fr1, %fr8	# build/example.ml#883:8->883:54
	FMV	%fr0, %fr7	# build/example.ml#883:8->883:54
	ADDI	%r31, %r31, $248	# build/example.ml#883:8->883:54
	ADDI	%r31, %r31, $4	# build/example.ml#883:8->883:54
	SIP	# build/example.ml#883:8->883:54
	J	$min_caml_fless	# build/example.ml#883:8->883:54
	ADDI	%r31, %r31, $-248	# build/example.ml#883:8->883:54
	MV	%r27, %r0	# build/example.ml#883:8->883:54
	LDR	%r6, %r31, $216	# build/example.ml#883:8->883:54
	LDR	%r5, %r31, $220	# build/example.ml#883:8->883:54
	LDR	%r4, %r31, $224	# build/example.ml#883:8->883:54
	LDR	%r3, %r31, $228	# build/example.ml#883:8->883:54
	LDR	%r2, %r31, $232	# build/example.ml#883:8->883:54
	LDR	%r1, %r31, $236	# build/example.ml#883:8->883:54
	FLDR	%fr2, %r31, $240	# build/example.ml#883:8->883:54
	FLDR	%fr1, %r31, $244	# build/example.ml#883:8->883:54
	MVI	%r28, $0	# build/example.ml#883:5->887:15
	CEQ	%r27, %r28	# build/example.ml#883:5->887:15
	JZ	$if_eq.11779	# build/example.ml#883:5->887:15
	MVI	%r28, $2	# build/example.ml#884:32->884:33
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#874:27->874:32
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#884:23->884:34
	FADD	%fr8, %fr8, %fr2	# build/example.ml#884:23->884:40
	FABS	%fr7, %fr8	# build/example.ml#884:17->884:41
	SDR	%r6, %r31, $248	# build/example.ml#884:44->884:55
	SDR	%r5, %r31, $252	# build/example.ml#884:44->884:55
	SDR	%r4, %r31, $256	# build/example.ml#884:44->884:55
	SDR	%r3, %r31, $260	# build/example.ml#884:44->884:55
	SDR	%r2, %r31, $264	# build/example.ml#884:44->884:55
	SDR	%r1, %r31, $268	# build/example.ml#884:44->884:55
	ADDI	%r31, %r31, $272	# build/example.ml#884:44->884:55
	ADDI	%r31, %r31, $4	# build/example.ml#884:44->884:55
	SIP	# build/example.ml#884:44->884:55
	J	$o_param_c.2633	# build/example.ml#884:44->884:55
	ADDI	%r31, %r31, $-272	# build/example.ml#884:44->884:55
	FMV	%fr8, %fr0	# build/example.ml#884:44->884:55
	LDR	%r6, %r31, $248	# build/example.ml#884:44->884:55
	LDR	%r5, %r31, $252	# build/example.ml#884:44->884:55
	LDR	%r4, %r31, $256	# build/example.ml#884:44->884:55
	LDR	%r3, %r31, $260	# build/example.ml#884:44->884:55
	LDR	%r2, %r31, $264	# build/example.ml#884:44->884:55
	LDR	%r1, %r31, $268	# build/example.ml#884:44->884:55
	SDR	%r6, %r31, $272	# build/example.ml#884:10->884:56
	SDR	%r5, %r31, $276	# build/example.ml#884:10->884:56
	SDR	%r4, %r31, $280	# build/example.ml#884:10->884:56
	SDR	%r3, %r31, $284	# build/example.ml#884:10->884:56
	SDR	%r2, %r31, $288	# build/example.ml#884:10->884:56
	SDR	%r1, %r31, $292	# build/example.ml#884:10->884:56
	FSDR	%fr2, %r31, $296	# build/example.ml#884:10->884:56
	FSDR	%fr1, %r31, $300	# build/example.ml#884:10->884:56
	FMV	%fr1, %fr8	# build/example.ml#884:10->884:56
	FMV	%fr0, %fr7	# build/example.ml#884:10->884:56
	ADDI	%r31, %r31, $304	# build/example.ml#884:10->884:56
	ADDI	%r31, %r31, $4	# build/example.ml#884:10->884:56
	SIP	# build/example.ml#884:10->884:56
	J	$min_caml_fless	# build/example.ml#884:10->884:56
	ADDI	%r31, %r31, $-304	# build/example.ml#884:10->884:56
	MV	%r27, %r0	# build/example.ml#884:10->884:56
	LDR	%r6, %r31, $272	# build/example.ml#884:10->884:56
	LDR	%r5, %r31, $276	# build/example.ml#884:10->884:56
	LDR	%r4, %r31, $280	# build/example.ml#884:10->884:56
	LDR	%r3, %r31, $284	# build/example.ml#884:10->884:56
	LDR	%r2, %r31, $288	# build/example.ml#884:10->884:56
	LDR	%r1, %r31, $292	# build/example.ml#884:10->884:56
	FLDR	%fr2, %r31, $296	# build/example.ml#884:10->884:56
	FLDR	%fr1, %r31, $300	# build/example.ml#884:10->884:56
	MVI	%r28, $0	# build/example.ml#884:7->886:17
	CEQ	%r27, %r28	# build/example.ml#884:7->886:17
	JZ	$if_eq.11781	# build/example.ml#884:7->886:17
	MVI	%r28, $3	# build/example.ml#885:23->885:24
	FLDD	%fr8, %r13, $4, %r28	# build/example.ml#872:13->872:23
	SDR	%r6, %r31, $304	# build/example.ml#885:7->885:25
	SDR	%r5, %r31, $308	# build/example.ml#885:7->885:25
	SDR	%r4, %r31, $312	# build/example.ml#885:7->885:25
	SDR	%r3, %r31, $316	# build/example.ml#885:7->885:25
	SDR	%r2, %r31, $320	# build/example.ml#885:7->885:25
	SDR	%r1, %r31, $324	# build/example.ml#885:7->885:25
	FSDR	%fr2, %r31, $328	# build/example.ml#885:7->885:25
	FSDR	%fr1, %r31, $332	# build/example.ml#885:7->885:25
	FMV	%fr0, %fr8	# build/example.ml#885:7->885:25
	ADDI	%r31, %r31, $336	# build/example.ml#885:7->885:25
	ADDI	%r31, %r31, $4	# build/example.ml#885:7->885:25
	SIP	# build/example.ml#885:7->885:25
	J	$min_caml_fiszero	# build/example.ml#885:7->885:25
	ADDI	%r31, %r31, $-336	# build/example.ml#885:7->885:25
	MV	%r27, %r0	# build/example.ml#885:7->885:25
	LDR	%r6, %r31, $304	# build/example.ml#885:7->885:25
	LDR	%r5, %r31, $308	# build/example.ml#885:7->885:25
	LDR	%r4, %r31, $312	# build/example.ml#885:7->885:25
	LDR	%r3, %r31, $316	# build/example.ml#885:7->885:25
	LDR	%r2, %r31, $320	# build/example.ml#885:7->885:25
	LDR	%r1, %r31, $324	# build/example.ml#885:7->885:25
	FLDR	%fr2, %r31, $328	# build/example.ml#885:7->885:25
	FLDR	%fr1, %r31, $332	# build/example.ml#885:7->885:25
	MVI	%r28, $0	# build/example.ml#885:2->885:26
	CEQ	%r27, %r28	# build/example.ml#885:2->885:26
	JZ	$if_eq.11783	# build/example.ml#885:2->885:26
	MVI	%r0, $0	# build/example.ml#885:2->885:26
	J	$if_eq_cont.11784	# build/example.ml#885:2->885:26
if_eq.11783:
	MVI	%r0, $1	# build/example.ml#885:2->885:26
if_eq_cont.11784:
	J	$if_eq_cont.11782	# build/example.ml#884:7->886:17
if_eq.11781:
	MVI	%r0, $0	# build/example.ml#886:12->886:17
if_eq_cont.11782:
	MV	%r27, %r0	# build/example.ml#884:7->886:17
	J	$if_eq_cont.11780	# build/example.ml#883:5->887:15
if_eq.11779:
	MVI	%r0, $0	# build/example.ml#887:10->887:15
	MV	%r27, %r0	# build/example.ml#887:10->887:15
if_eq_cont.11780:
	MVI	%r28, $0	# build/example.ml#882:3->900:6
	CEQ	%r27, %r28	# build/example.ml#882:3->900:6
	JZ	$if_eq.11785	# build/example.ml#882:3->900:6
	MVI	%r8, $min_caml_solver_dist	# build/example.ml#889:6->889:17
	MVI	%r9, $0	# build/example.ml#889:19->889:20
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#889:6->889:27
	MVI	%r0, $2	# build/example.ml#889:29->889:30
	J	$if_eq_cont.11786	# build/example.ml#882:3->900:6
if_eq.11785:
	MVI	%r28, $4	# build/example.ml#890:26->890:27
	FLDD	%fr9, %r13, $4, %r28	# build/example.ml#872:13->872:23
	FSUB	%fr8, %fr9, %fr2	# build/example.ml#890:18->890:34
	MVI	%r28, $5	# build/example.ml#890:47->890:48
	FLDD	%fr9, %r13, $4, %r28	# build/example.ml#872:13->872:23
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#890:17->890:49
	MVI	%r28, $0	# build/example.ml#892:30->892:31
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#874:27->874:32
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#892:21->892:32
	FADD	%fr8, %fr8, %fr0	# build/example.ml#892:21->892:38
	FABS	%fr7, %fr8	# build/example.ml#892:15->892:39
	SDR	%r6, %r31, $336	# build/example.ml#892:42->892:53
	SDR	%r5, %r31, $340	# build/example.ml#892:42->892:53
	SDR	%r4, %r31, $344	# build/example.ml#892:42->892:53
	SDR	%r3, %r31, $348	# build/example.ml#892:42->892:53
	SDR	%r2, %r31, $352	# build/example.ml#892:42->892:53
	SDR	%r1, %r31, $356	# build/example.ml#892:42->892:53
	ADDI	%r31, %r31, $360	# build/example.ml#892:42->892:53
	ADDI	%r31, %r31, $4	# build/example.ml#892:42->892:53
	SIP	# build/example.ml#892:42->892:53
	J	$o_param_a.2629	# build/example.ml#892:42->892:53
	ADDI	%r31, %r31, $-360	# build/example.ml#892:42->892:53
	FMV	%fr8, %fr0	# build/example.ml#892:42->892:53
	LDR	%r6, %r31, $336	# build/example.ml#892:42->892:53
	LDR	%r5, %r31, $340	# build/example.ml#892:42->892:53
	LDR	%r4, %r31, $344	# build/example.ml#892:42->892:53
	LDR	%r3, %r31, $348	# build/example.ml#892:42->892:53
	LDR	%r2, %r31, $352	# build/example.ml#892:42->892:53
	LDR	%r1, %r31, $356	# build/example.ml#892:42->892:53
	SDR	%r6, %r31, $360	# build/example.ml#892:8->892:54
	SDR	%r5, %r31, $364	# build/example.ml#892:8->892:54
	SDR	%r4, %r31, $368	# build/example.ml#892:8->892:54
	SDR	%r3, %r31, $372	# build/example.ml#892:8->892:54
	SDR	%r2, %r31, $376	# build/example.ml#892:8->892:54
	SDR	%r1, %r31, $380	# build/example.ml#892:8->892:54
	FSDR	%fr2, %r31, $384	# build/example.ml#892:8->892:54
	FSDR	%fr1, %r31, $388	# build/example.ml#892:8->892:54
	FMV	%fr1, %fr8	# build/example.ml#892:8->892:54
	FMV	%fr0, %fr7	# build/example.ml#892:8->892:54
	ADDI	%r31, %r31, $392	# build/example.ml#892:8->892:54
	ADDI	%r31, %r31, $4	# build/example.ml#892:8->892:54
	SIP	# build/example.ml#892:8->892:54
	J	$min_caml_fless	# build/example.ml#892:8->892:54
	ADDI	%r31, %r31, $-392	# build/example.ml#892:8->892:54
	MV	%r27, %r0	# build/example.ml#892:8->892:54
	LDR	%r6, %r31, $360	# build/example.ml#892:8->892:54
	LDR	%r5, %r31, $364	# build/example.ml#892:8->892:54
	LDR	%r4, %r31, $368	# build/example.ml#892:8->892:54
	LDR	%r3, %r31, $372	# build/example.ml#892:8->892:54
	LDR	%r2, %r31, $376	# build/example.ml#892:8->892:54
	LDR	%r1, %r31, $380	# build/example.ml#892:8->892:54
	FLDR	%fr2, %r31, $384	# build/example.ml#892:8->892:54
	FLDR	%fr1, %r31, $388	# build/example.ml#892:8->892:54
	MVI	%r28, $0	# build/example.ml#892:5->896:15
	CEQ	%r27, %r28	# build/example.ml#892:5->896:15
	JZ	$if_eq.11787	# build/example.ml#892:5->896:15
	MVI	%r28, $1	# build/example.ml#893:32->893:33
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#874:27->874:32
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#893:23->893:34
	FADD	%fr8, %fr8, %fr1	# build/example.ml#893:23->893:40
	FABS	%fr7, %fr8	# build/example.ml#893:17->893:41
	SDR	%r6, %r31, $392	# build/example.ml#893:44->893:55
	SDR	%r5, %r31, $396	# build/example.ml#893:44->893:55
	SDR	%r4, %r31, $400	# build/example.ml#893:44->893:55
	SDR	%r3, %r31, $404	# build/example.ml#893:44->893:55
	SDR	%r2, %r31, $408	# build/example.ml#893:44->893:55
	SDR	%r1, %r31, $412	# build/example.ml#893:44->893:55
	ADDI	%r31, %r31, $416	# build/example.ml#893:44->893:55
	ADDI	%r31, %r31, $4	# build/example.ml#893:44->893:55
	SIP	# build/example.ml#893:44->893:55
	J	$o_param_b.2631	# build/example.ml#893:44->893:55
	ADDI	%r31, %r31, $-416	# build/example.ml#893:44->893:55
	FMV	%fr8, %fr0	# build/example.ml#893:44->893:55
	LDR	%r6, %r31, $392	# build/example.ml#893:44->893:55
	LDR	%r5, %r31, $396	# build/example.ml#893:44->893:55
	LDR	%r4, %r31, $400	# build/example.ml#893:44->893:55
	LDR	%r3, %r31, $404	# build/example.ml#893:44->893:55
	LDR	%r2, %r31, $408	# build/example.ml#893:44->893:55
	LDR	%r1, %r31, $412	# build/example.ml#893:44->893:55
	SDR	%r6, %r31, $416	# build/example.ml#893:10->893:56
	SDR	%r5, %r31, $420	# build/example.ml#893:10->893:56
	SDR	%r4, %r31, $424	# build/example.ml#893:10->893:56
	SDR	%r3, %r31, $428	# build/example.ml#893:10->893:56
	SDR	%r2, %r31, $432	# build/example.ml#893:10->893:56
	SDR	%r1, %r31, $436	# build/example.ml#893:10->893:56
	FSDR	%fr2, %r31, $440	# build/example.ml#893:10->893:56
	FSDR	%fr1, %r31, $444	# build/example.ml#893:10->893:56
	FMV	%fr1, %fr8	# build/example.ml#893:10->893:56
	FMV	%fr0, %fr7	# build/example.ml#893:10->893:56
	ADDI	%r31, %r31, $448	# build/example.ml#893:10->893:56
	ADDI	%r31, %r31, $4	# build/example.ml#893:10->893:56
	SIP	# build/example.ml#893:10->893:56
	J	$min_caml_fless	# build/example.ml#893:10->893:56
	ADDI	%r31, %r31, $-448	# build/example.ml#893:10->893:56
	MV	%r8, %r0	# build/example.ml#893:10->893:56
	LDR	%r6, %r31, $416	# build/example.ml#893:10->893:56
	LDR	%r5, %r31, $420	# build/example.ml#893:10->893:56
	LDR	%r4, %r31, $424	# build/example.ml#893:10->893:56
	LDR	%r3, %r31, $428	# build/example.ml#893:10->893:56
	LDR	%r2, %r31, $432	# build/example.ml#893:10->893:56
	LDR	%r1, %r31, $436	# build/example.ml#893:10->893:56
	FLDR	%fr2, %r31, $440	# build/example.ml#893:10->893:56
	FLDR	%fr1, %r31, $444	# build/example.ml#893:10->893:56
	MVI	%r9, $0	# build/example.ml#893:7->895:17
	CEQ	%r8, %r9	# build/example.ml#893:7->895:17
	JZ	$if_eq.11789	# build/example.ml#893:7->895:17
	MVI	%r9, $5	# build/example.ml#894:23->894:24
	FLDD	%fr8, %r13, $4, %r9	# build/example.ml#872:13->872:23
	SDR	%r6, %r31, $448	# build/example.ml#894:7->894:25
	SDR	%r5, %r31, $452	# build/example.ml#894:7->894:25
	SDR	%r4, %r31, $456	# build/example.ml#894:7->894:25
	SDR	%r3, %r31, $460	# build/example.ml#894:7->894:25
	SDR	%r2, %r31, $464	# build/example.ml#894:7->894:25
	SDR	%r1, %r31, $468	# build/example.ml#894:7->894:25
	FSDR	%fr2, %r31, $472	# build/example.ml#894:7->894:25
	FSDR	%fr1, %r31, $476	# build/example.ml#894:7->894:25
	FMV	%fr0, %fr8	# build/example.ml#894:7->894:25
	ADDI	%r31, %r31, $480	# build/example.ml#894:7->894:25
	ADDI	%r31, %r31, $4	# build/example.ml#894:7->894:25
	SIP	# build/example.ml#894:7->894:25
	J	$min_caml_fiszero	# build/example.ml#894:7->894:25
	ADDI	%r31, %r31, $-480	# build/example.ml#894:7->894:25
	MV	%r8, %r0	# build/example.ml#894:7->894:25
	LDR	%r6, %r31, $448	# build/example.ml#894:7->894:25
	LDR	%r5, %r31, $452	# build/example.ml#894:7->894:25
	LDR	%r4, %r31, $456	# build/example.ml#894:7->894:25
	LDR	%r3, %r31, $460	# build/example.ml#894:7->894:25
	LDR	%r2, %r31, $464	# build/example.ml#894:7->894:25
	LDR	%r1, %r31, $468	# build/example.ml#894:7->894:25
	FLDR	%fr2, %r31, $472	# build/example.ml#894:7->894:25
	FLDR	%fr1, %r31, $476	# build/example.ml#894:7->894:25
	MVI	%r9, $0	# build/example.ml#894:2->894:26
	CEQ	%r8, %r9	# build/example.ml#894:2->894:26
	JZ	$if_eq.11791	# build/example.ml#894:2->894:26
	MVI	%r0, $0	# build/example.ml#894:2->894:26
	J	$if_eq_cont.11792	# build/example.ml#894:2->894:26
if_eq.11791:
	MVI	%r0, $1	# build/example.ml#894:2->894:26
if_eq_cont.11792:
	J	$if_eq_cont.11790	# build/example.ml#893:7->895:17
if_eq.11789:
	MVI	%r0, $0	# build/example.ml#895:12->895:17
if_eq_cont.11790:
	MV	%r8, %r0	# build/example.ml#893:7->895:17
	J	$if_eq_cont.11788	# build/example.ml#892:5->896:15
if_eq.11787:
	MVI	%r0, $0	# build/example.ml#896:10->896:15
	MV	%r8, %r0	# build/example.ml#896:10->896:15
if_eq_cont.11788:
	MVI	%r9, $0	# build/example.ml#891:3->900:6
	CEQ	%r8, %r9	# build/example.ml#891:3->900:6
	JZ	$if_eq.11793	# build/example.ml#891:3->900:6
	MVI	%r8, $min_caml_solver_dist	# build/example.ml#898:6->898:17
	MVI	%r9, $0	# build/example.ml#898:19->898:20
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#898:6->898:27
	MVI	%r0, $3	# build/example.ml#898:29->898:30
	J	$if_eq_cont.11794	# build/example.ml#891:3->900:6
if_eq.11793:
	MVI	%r0, $0	# build/example.ml#900:5->900:6
if_eq_cont.11794:
if_eq_cont.11786:
if_eq_cont.11778:
	LDR	%r9, %r31, $0	# build/example.ml#872:21->872:22
	LDR	%r8, %r31, $4	# build/example.ml#872:21->872:22
	LDR	%r7, %r31, $8	# build/example.ml#872:21->872:22
	LDR	%r28, %r31, $12	# build/example.ml#872:21->872:22
	LDR	%r27, %r31, $16	# build/example.ml#872:21->872:22
	LDR	%r13, %r31, $20	# build/example.ml#872:21->872:22
	LDR	%r12, %r31, $24	# build/example.ml#872:21->872:22
	LDR	%r11, %r31, $28	# build/example.ml#872:21->872:22
	LDR	%r10, %r31, $32	# build/example.ml#872:21->872:22
	FLDR	%fr9, %r31, $36	# build/example.ml#872:21->872:22
	FLDR	%fr8, %r31, $40	# build/example.ml#872:21->872:22
	FLDR	%fr7, %r31, $44	# build/example.ml#872:21->872:22
	LINK	# build/example.ml#872:21->872:22
solver.2753:
	SDR	%r9, %r31, $0	# build/example.ml#840:11->840:18
	SDR	%r8, %r31, $4	# build/example.ml#840:11->840:18
	SDR	%r7, %r31, $8	# build/example.ml#840:11->840:18
	SDR	%r28, %r31, $12	# build/example.ml#840:11->840:18
	SDR	%r27, %r31, $16	# build/example.ml#840:11->840:18
	SDR	%r26, %r31, $20	# build/example.ml#840:11->840:18
	SDR	%r25, %r31, $24	# build/example.ml#840:11->840:18
	SDR	%r24, %r31, $28	# build/example.ml#840:11->840:18
	SDR	%r23, %r31, $32	# build/example.ml#840:11->840:18
	FSDR	%fr9, %r31, $36	# build/example.ml#840:11->840:18
	FSDR	%fr8, %r31, $40	# build/example.ml#840:11->840:18
	FSDR	%fr7, %r31, $44	# build/example.ml#840:11->840:18
	MVI	%r9, $min_caml_objects	# build/example.ml#840:11->840:18
	LDD	%r9, %r9, $4, %r1	# build/example.ml#637:7->637:25
	LDR	%r8, %r9, $40	# build/example.ml#840:3->849:60
	LDR	%r7, %r9, $36	# build/example.ml#840:3->849:60
	LDR	%r6, %r9, $32	# build/example.ml#840:3->849:60
	LDR	%r5, %r9, $28	# build/example.ml#840:3->849:60
	LDR	%r4, %r9, $24	# build/example.ml#840:3->849:60
	LDR	%r28, %r9, $20	# build/example.ml#840:3->849:60
	LDR	%r27, %r9, $16	# build/example.ml#840:3->849:60
	LDR	%r26, %r9, $12	# build/example.ml#840:3->849:60
	LDR	%r25, %r9, $8	# build/example.ml#840:3->849:60
	LDR	%r24, %r9, $4	# build/example.ml#840:3->849:60
	LDR	%r23, %r9, $0	# build/example.ml#840:3->849:60
	MVI	%r9, $0	# build/example.ml#842:18->842:19
	FLDD	%fr8, %r3, $4, %r9	# build/example.ml#842:13->842:20
	SDR	%r6, %r31, $48	# build/example.ml#842:24->842:35
	SDR	%r5, %r31, $52	# build/example.ml#842:24->842:35
	SDR	%r4, %r31, $56	# build/example.ml#842:24->842:35
	SDR	%r3, %r31, $60	# build/example.ml#842:24->842:35
	SDR	%r2, %r31, $64	# build/example.ml#842:24->842:35
	SDR	%r1, %r31, $68	# build/example.ml#842:24->842:35
	MV	%r11, %r8	# build/example.ml#842:24->842:35
	MV	%r10, %r7	# build/example.ml#842:24->842:35
	MV	%r9, %r6	# build/example.ml#842:24->842:35
	MV	%r3, %r25	# build/example.ml#842:24->842:35
	MV	%r2, %r24	# build/example.ml#842:24->842:35
	MV	%r1, %r23	# build/example.ml#842:24->842:35
	MV	%r8, %r5	# build/example.ml#842:24->842:35
	MV	%r7, %r4	# build/example.ml#842:24->842:35
	MV	%r6, %r28	# build/example.ml#842:24->842:35
	MV	%r5, %r27	# build/example.ml#842:24->842:35
	MV	%r4, %r26	# build/example.ml#842:24->842:35
	ADDI	%r31, %r31, $72	# build/example.ml#842:24->842:35
	ADDI	%r31, %r31, $4	# build/example.ml#842:24->842:35
	SIP	# build/example.ml#842:24->842:35
	J	$o_param_x.2637	# build/example.ml#842:24->842:35
	ADDI	%r31, %r31, $-72	# build/example.ml#842:24->842:35
	FMV	%fr9, %fr0	# build/example.ml#842:24->842:35
	LDR	%r6, %r31, $48	# build/example.ml#842:24->842:35
	LDR	%r5, %r31, $52	# build/example.ml#842:24->842:35
	LDR	%r4, %r31, $56	# build/example.ml#842:24->842:35
	LDR	%r3, %r31, $60	# build/example.ml#842:24->842:35
	LDR	%r2, %r31, $64	# build/example.ml#842:24->842:35
	LDR	%r1, %r31, $68	# build/example.ml#842:24->842:35
	FSUB	%fr8, %fr8, %fr9	# build/example.ml#842:13->842:35
	MVI	%r9, $1	# build/example.ml#843:18->843:19
	FLDD	%fr7, %r3, $4, %r9	# build/example.ml#842:13->842:20
	SDR	%r6, %r31, $72	# build/example.ml#843:24->843:35
	SDR	%r5, %r31, $76	# build/example.ml#843:24->843:35
	SDR	%r4, %r31, $80	# build/example.ml#843:24->843:35
	SDR	%r3, %r31, $84	# build/example.ml#843:24->843:35
	SDR	%r2, %r31, $88	# build/example.ml#843:24->843:35
	SDR	%r1, %r31, $92	# build/example.ml#843:24->843:35
	MV	%r11, %r8	# build/example.ml#843:24->843:35
	MV	%r10, %r7	# build/example.ml#843:24->843:35
	MV	%r9, %r6	# build/example.ml#843:24->843:35
	MV	%r3, %r25	# build/example.ml#843:24->843:35
	MV	%r2, %r24	# build/example.ml#843:24->843:35
	MV	%r1, %r23	# build/example.ml#843:24->843:35
	MV	%r8, %r5	# build/example.ml#843:24->843:35
	MV	%r7, %r4	# build/example.ml#843:24->843:35
	MV	%r6, %r28	# build/example.ml#843:24->843:35
	MV	%r5, %r27	# build/example.ml#843:24->843:35
	MV	%r4, %r26	# build/example.ml#843:24->843:35
	ADDI	%r31, %r31, $96	# build/example.ml#843:24->843:35
	ADDI	%r31, %r31, $4	# build/example.ml#843:24->843:35
	SIP	# build/example.ml#843:24->843:35
	J	$o_param_y.2639	# build/example.ml#843:24->843:35
	ADDI	%r31, %r31, $-96	# build/example.ml#843:24->843:35
	FMV	%fr9, %fr0	# build/example.ml#843:24->843:35
	LDR	%r6, %r31, $72	# build/example.ml#843:24->843:35
	LDR	%r5, %r31, $76	# build/example.ml#843:24->843:35
	LDR	%r4, %r31, $80	# build/example.ml#843:24->843:35
	LDR	%r3, %r31, $84	# build/example.ml#843:24->843:35
	LDR	%r2, %r31, $88	# build/example.ml#843:24->843:35
	LDR	%r1, %r31, $92	# build/example.ml#843:24->843:35
	FSUB	%fr9, %fr7, %fr9	# build/example.ml#843:13->843:35
	MVI	%r9, $2	# build/example.ml#844:18->844:19
	FLDD	%fr6, %r3, $4, %r9	# build/example.ml#842:13->842:20
	SDR	%r6, %r31, $96	# build/example.ml#844:24->844:35
	SDR	%r5, %r31, $100	# build/example.ml#844:24->844:35
	SDR	%r4, %r31, $104	# build/example.ml#844:24->844:35
	SDR	%r3, %r31, $108	# build/example.ml#844:24->844:35
	SDR	%r2, %r31, $112	# build/example.ml#844:24->844:35
	SDR	%r1, %r31, $116	# build/example.ml#844:24->844:35
	MV	%r11, %r8	# build/example.ml#844:24->844:35
	MV	%r10, %r7	# build/example.ml#844:24->844:35
	MV	%r9, %r6	# build/example.ml#844:24->844:35
	MV	%r3, %r25	# build/example.ml#844:24->844:35
	MV	%r2, %r24	# build/example.ml#844:24->844:35
	MV	%r1, %r23	# build/example.ml#844:24->844:35
	MV	%r8, %r5	# build/example.ml#844:24->844:35
	MV	%r7, %r4	# build/example.ml#844:24->844:35
	MV	%r6, %r28	# build/example.ml#844:24->844:35
	MV	%r5, %r27	# build/example.ml#844:24->844:35
	MV	%r4, %r26	# build/example.ml#844:24->844:35
	ADDI	%r31, %r31, $120	# build/example.ml#844:24->844:35
	ADDI	%r31, %r31, $4	# build/example.ml#844:24->844:35
	SIP	# build/example.ml#844:24->844:35
	J	$o_param_z.2641	# build/example.ml#844:24->844:35
	ADDI	%r31, %r31, $-120	# build/example.ml#844:24->844:35
	FMV	%fr7, %fr0	# build/example.ml#844:24->844:35
	LDR	%r6, %r31, $96	# build/example.ml#844:24->844:35
	LDR	%r5, %r31, $100	# build/example.ml#844:24->844:35
	LDR	%r4, %r31, $104	# build/example.ml#844:24->844:35
	LDR	%r3, %r31, $108	# build/example.ml#844:24->844:35
	LDR	%r2, %r31, $112	# build/example.ml#844:24->844:35
	LDR	%r1, %r31, $116	# build/example.ml#844:24->844:35
	FSUB	%fr7, %fr6, %fr7	# build/example.ml#844:13->844:35
	MV	%r9, %r24	# build/example.ml#159:3->164:10
	MVI	%r3, $1	# build/example.ml#847:16->847:17
	CEQ	%r9, %r3	# build/example.ml#847:3->849:60
	JZ	$if_eq.11795	# build/example.ml#847:3->849:60
	MVI	%r3, $2	# build/example.ml#848:21->848:22
	CEQ	%r9, %r3	# build/example.ml#848:8->849:60
	JZ	$if_eq.11797	# build/example.ml#848:8->849:60
	SDR	%r6, %r31, $120	# build/example.ml#849:29->849:60
	SDR	%r5, %r31, $124	# build/example.ml#849:29->849:60
	SDR	%r4, %r31, $128	# build/example.ml#849:29->849:60
	SDR	%r3, %r31, $132	# build/example.ml#849:29->849:60
	SDR	%r2, %r31, $136	# build/example.ml#849:29->849:60
	SDR	%r1, %r31, $140	# build/example.ml#849:29->849:60
	FSDR	%fr6, %r31, $144	# build/example.ml#849:29->849:60
	MV	%r12, %r2	# build/example.ml#849:29->849:60
	MV	%r11, %r8	# build/example.ml#849:29->849:60
	MV	%r10, %r7	# build/example.ml#849:29->849:60
	MV	%r9, %r6	# build/example.ml#849:29->849:60
	MV	%r3, %r25	# build/example.ml#849:29->849:60
	MV	%r1, %r23	# build/example.ml#849:29->849:60
	MV	%r8, %r5	# build/example.ml#849:29->849:60
	MV	%r7, %r4	# build/example.ml#849:29->849:60
	MV	%r6, %r28	# build/example.ml#849:29->849:60
	MV	%r2, %r24	# build/example.ml#849:29->849:60
	MV	%r5, %r27	# build/example.ml#849:29->849:60
	MV	%r4, %r26	# build/example.ml#849:29->849:60
	FMV	%fr2, %fr7	# build/example.ml#849:29->849:60
	FMV	%fr1, %fr9	# build/example.ml#849:29->849:60
	FMV	%fr0, %fr8	# build/example.ml#849:29->849:60
	ADDI	%r31, %r31, $148	# build/example.ml#849:29->849:60
	ADDI	%r31, %r31, $4	# build/example.ml#849:29->849:60
	SIP	# build/example.ml#849:29->849:60
	J	$solver_second.2747	# build/example.ml#849:29->849:60
	ADDI	%r31, %r31, $-148	# build/example.ml#849:29->849:60
	LDR	%r6, %r31, $120	# build/example.ml#849:29->849:60
	LDR	%r5, %r31, $124	# build/example.ml#849:29->849:60
	LDR	%r4, %r31, $128	# build/example.ml#849:29->849:60
	LDR	%r3, %r31, $132	# build/example.ml#849:29->849:60
	LDR	%r2, %r31, $136	# build/example.ml#849:29->849:60
	LDR	%r1, %r31, $140	# build/example.ml#849:29->849:60
	FLDR	%fr6, %r31, $144	# build/example.ml#849:29->849:60
	J	$if_eq_cont.11798	# build/example.ml#848:8->849:60
if_eq.11797:
	SDR	%r6, %r31, $148	# build/example.ml#848:29->848:61
	SDR	%r5, %r31, $152	# build/example.ml#848:29->848:61
	SDR	%r4, %r31, $156	# build/example.ml#848:29->848:61
	SDR	%r3, %r31, $160	# build/example.ml#848:29->848:61
	SDR	%r2, %r31, $164	# build/example.ml#848:29->848:61
	SDR	%r1, %r31, $168	# build/example.ml#848:29->848:61
	FSDR	%fr6, %r31, $172	# build/example.ml#848:29->848:61
	MV	%r12, %r2	# build/example.ml#848:29->848:61
	MV	%r11, %r8	# build/example.ml#848:29->848:61
	MV	%r10, %r7	# build/example.ml#848:29->848:61
	MV	%r9, %r6	# build/example.ml#848:29->848:61
	MV	%r3, %r25	# build/example.ml#848:29->848:61
	MV	%r1, %r23	# build/example.ml#848:29->848:61
	MV	%r8, %r5	# build/example.ml#848:29->848:61
	MV	%r7, %r4	# build/example.ml#848:29->848:61
	MV	%r6, %r28	# build/example.ml#848:29->848:61
	MV	%r2, %r24	# build/example.ml#848:29->848:61
	MV	%r5, %r27	# build/example.ml#848:29->848:61
	MV	%r4, %r26	# build/example.ml#848:29->848:61
	FMV	%fr2, %fr7	# build/example.ml#848:29->848:61
	FMV	%fr1, %fr9	# build/example.ml#848:29->848:61
	FMV	%fr0, %fr8	# build/example.ml#848:29->848:61
	ADDI	%r31, %r31, $176	# build/example.ml#848:29->848:61
	ADDI	%r31, %r31, $4	# build/example.ml#848:29->848:61
	SIP	# build/example.ml#848:29->848:61
	J	$solver_surface.2728	# build/example.ml#848:29->848:61
	ADDI	%r31, %r31, $-176	# build/example.ml#848:29->848:61
	LDR	%r6, %r31, $148	# build/example.ml#848:29->848:61
	LDR	%r5, %r31, $152	# build/example.ml#848:29->848:61
	LDR	%r4, %r31, $156	# build/example.ml#848:29->848:61
	LDR	%r3, %r31, $160	# build/example.ml#848:29->848:61
	LDR	%r2, %r31, $164	# build/example.ml#848:29->848:61
	LDR	%r1, %r31, $168	# build/example.ml#848:29->848:61
	FLDR	%fr6, %r31, $172	# build/example.ml#848:29->848:61
if_eq_cont.11798:
	J	$if_eq_cont.11796	# build/example.ml#847:3->849:60
if_eq.11795:
	SDR	%r6, %r31, $176	# build/example.ml#847:29->847:58
	SDR	%r5, %r31, $180	# build/example.ml#847:29->847:58
	SDR	%r4, %r31, $184	# build/example.ml#847:29->847:58
	SDR	%r3, %r31, $188	# build/example.ml#847:29->847:58
	SDR	%r2, %r31, $192	# build/example.ml#847:29->847:58
	SDR	%r1, %r31, $196	# build/example.ml#847:29->847:58
	FSDR	%fr6, %r31, $200	# build/example.ml#847:29->847:58
	MV	%r12, %r2	# build/example.ml#847:29->847:58
	MV	%r11, %r8	# build/example.ml#847:29->847:58
	MV	%r10, %r7	# build/example.ml#847:29->847:58
	MV	%r9, %r6	# build/example.ml#847:29->847:58
	MV	%r3, %r25	# build/example.ml#847:29->847:58
	MV	%r1, %r23	# build/example.ml#847:29->847:58
	MV	%r8, %r5	# build/example.ml#847:29->847:58
	MV	%r7, %r4	# build/example.ml#847:29->847:58
	MV	%r6, %r28	# build/example.ml#847:29->847:58
	MV	%r2, %r24	# build/example.ml#847:29->847:58
	MV	%r5, %r27	# build/example.ml#847:29->847:58
	MV	%r4, %r26	# build/example.ml#847:29->847:58
	FMV	%fr2, %fr7	# build/example.ml#847:29->847:58
	FMV	%fr1, %fr9	# build/example.ml#847:29->847:58
	FMV	%fr0, %fr8	# build/example.ml#847:29->847:58
	ADDI	%r31, %r31, $204	# build/example.ml#847:29->847:58
	ADDI	%r31, %r31, $4	# build/example.ml#847:29->847:58
	SIP	# build/example.ml#847:29->847:58
	J	$solver_rect.2722	# build/example.ml#847:29->847:58
	ADDI	%r31, %r31, $-204	# build/example.ml#847:29->847:58
	LDR	%r6, %r31, $176	# build/example.ml#847:29->847:58
	LDR	%r5, %r31, $180	# build/example.ml#847:29->847:58
	LDR	%r4, %r31, $184	# build/example.ml#847:29->847:58
	LDR	%r3, %r31, $188	# build/example.ml#847:29->847:58
	LDR	%r2, %r31, $192	# build/example.ml#847:29->847:58
	LDR	%r1, %r31, $196	# build/example.ml#847:29->847:58
	FLDR	%fr6, %r31, $200	# build/example.ml#847:29->847:58
if_eq_cont.11796:
	LDR	%r9, %r31, $0	# build/example.ml#840:11->840:18
	LDR	%r8, %r31, $4	# build/example.ml#840:11->840:18
	LDR	%r7, %r31, $8	# build/example.ml#840:11->840:18
	LDR	%r28, %r31, $12	# build/example.ml#840:11->840:18
	LDR	%r27, %r31, $16	# build/example.ml#840:11->840:18
	LDR	%r26, %r31, $20	# build/example.ml#840:11->840:18
	LDR	%r25, %r31, $24	# build/example.ml#840:11->840:18
	LDR	%r24, %r31, $28	# build/example.ml#840:11->840:18
	LDR	%r23, %r31, $32	# build/example.ml#840:11->840:18
	FLDR	%fr9, %r31, $36	# build/example.ml#840:11->840:18
	FLDR	%fr8, %r31, $40	# build/example.ml#840:11->840:18
	FLDR	%fr7, %r31, $44	# build/example.ml#840:11->840:18
	LINK	# build/example.ml#840:11->840:18
solver_second.2747:
	SDR	%r9, %r31, $0	# build/example.ml#814:32->814:33
	SDR	%r8, %r31, $4	# build/example.ml#814:32->814:33
	SDR	%r7, %r31, $8	# build/example.ml#814:32->814:33
	SDR	%r28, %r31, $12	# build/example.ml#814:32->814:33
	SDR	%r27, %r31, $16	# build/example.ml#814:32->814:33
	SDR	%r12, %r31, $20	# build/example.ml#814:32->814:33
	SDR	%r11, %r31, $24	# build/example.ml#814:32->814:33
	SDR	%r10, %r31, $28	# build/example.ml#814:32->814:33
	FSDR	%fr9, %r31, $32	# build/example.ml#814:32->814:33
	FSDR	%fr8, %r31, $36	# build/example.ml#814:32->814:33
	FSDR	%fr7, %r31, $40	# build/example.ml#814:32->814:33
	MVI	%r28, $0	# build/example.ml#814:32->814:33
	FLDD	%fr7, %r12, $4, %r28	# build/example.ml#814:24->814:34
	MVI	%r28, $1	# build/example.ml#814:43->814:44
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#814:24->814:34
	MVI	%r28, $2	# build/example.ml#814:54->814:55
	FLDD	%fr9, %r12, $4, %r28	# build/example.ml#814:24->814:34
	SDR	%r6, %r31, $44	# build/example.ml#814:12->814:56
	SDR	%r5, %r31, $48	# build/example.ml#814:12->814:56
	SDR	%r4, %r31, $52	# build/example.ml#814:12->814:56
	SDR	%r3, %r31, $56	# build/example.ml#814:12->814:56
	SDR	%r2, %r31, $60	# build/example.ml#814:12->814:56
	SDR	%r1, %r31, $64	# build/example.ml#814:12->814:56
	FSDR	%fr6, %r31, $68	# build/example.ml#814:12->814:56
	FSDR	%fr2, %r31, $72	# build/example.ml#814:12->814:56
	FSDR	%fr1, %r31, $76	# build/example.ml#814:12->814:56
	FMV	%fr2, %fr9	# build/example.ml#814:12->814:56
	FMV	%fr1, %fr8	# build/example.ml#814:12->814:56
	FMV	%fr0, %fr7	# build/example.ml#814:12->814:56
	ADDI	%r31, %r31, $80	# build/example.ml#814:12->814:56
	ADDI	%r31, %r31, $4	# build/example.ml#814:12->814:56
	SIP	# build/example.ml#814:12->814:56
	J	$quadratic.2734	# build/example.ml#814:12->814:56
	ADDI	%r31, %r31, $-80	# build/example.ml#814:12->814:56
	FMV	%fr9, %fr0	# build/example.ml#814:12->814:56
	LDR	%r6, %r31, $44	# build/example.ml#814:12->814:56
	LDR	%r5, %r31, $48	# build/example.ml#814:12->814:56
	LDR	%r4, %r31, $52	# build/example.ml#814:12->814:56
	LDR	%r3, %r31, $56	# build/example.ml#814:12->814:56
	LDR	%r2, %r31, $60	# build/example.ml#814:12->814:56
	LDR	%r1, %r31, $64	# build/example.ml#814:12->814:56
	FLDR	%fr6, %r31, $68	# build/example.ml#814:12->814:56
	FLDR	%fr2, %r31, $72	# build/example.ml#814:12->814:56
	FLDR	%fr1, %r31, $76	# build/example.ml#814:12->814:56
	SDR	%r6, %r31, $80	# build/example.ml#816:6->816:16
	SDR	%r5, %r31, $84	# build/example.ml#816:6->816:16
	SDR	%r4, %r31, $88	# build/example.ml#816:6->816:16
	SDR	%r3, %r31, $92	# build/example.ml#816:6->816:16
	SDR	%r2, %r31, $96	# build/example.ml#816:6->816:16
	SDR	%r1, %r31, $100	# build/example.ml#816:6->816:16
	FSDR	%fr6, %r31, $104	# build/example.ml#816:6->816:16
	FSDR	%fr2, %r31, $108	# build/example.ml#816:6->816:16
	FSDR	%fr1, %r31, $112	# build/example.ml#816:6->816:16
	FMV	%fr0, %fr9	# build/example.ml#816:6->816:16
	ADDI	%r31, %r31, $116	# build/example.ml#816:6->816:16
	ADDI	%r31, %r31, $4	# build/example.ml#816:6->816:16
	SIP	# build/example.ml#816:6->816:16
	J	$min_caml_fiszero	# build/example.ml#816:6->816:16
	ADDI	%r31, %r31, $-116	# build/example.ml#816:6->816:16
	MV	%r27, %r0	# build/example.ml#816:6->816:16
	LDR	%r6, %r31, $80	# build/example.ml#816:6->816:16
	LDR	%r5, %r31, $84	# build/example.ml#816:6->816:16
	LDR	%r4, %r31, $88	# build/example.ml#816:6->816:16
	LDR	%r3, %r31, $92	# build/example.ml#816:6->816:16
	LDR	%r2, %r31, $96	# build/example.ml#816:6->816:16
	LDR	%r1, %r31, $100	# build/example.ml#816:6->816:16
	FLDR	%fr6, %r31, $104	# build/example.ml#816:6->816:16
	FLDR	%fr2, %r31, $108	# build/example.ml#816:6->816:16
	FLDR	%fr1, %r31, $112	# build/example.ml#816:6->816:16
	MVI	%r28, $0	# build/example.ml#816:3->835:5
	CEQ	%r27, %r28	# build/example.ml#816:3->835:5
	JZ	$if_eq.11799	# build/example.ml#816:3->835:5
	MVI	%r0, $0	# build/example.ml#817:5->817:6
	J	$if_eq_cont.11800	# build/example.ml#816:3->835:5
if_eq.11799:
	MVI	%r28, $0	# build/example.ml#821:33->821:34
	FLDD	%fr6, %r12, $4, %r28	# build/example.ml#814:24->814:34
	MVI	%r28, $1	# build/example.ml#821:44->821:45
	FLDD	%fr7, %r12, $4, %r28	# build/example.ml#814:24->814:34
	MVI	%r28, $2	# build/example.ml#821:55->821:56
	FLDD	%fr8, %r12, $4, %r28	# build/example.ml#814:24->814:34
	SDR	%r6, %r31, $116	# build/example.ml#821:14->821:66
	SDR	%r5, %r31, $120	# build/example.ml#821:14->821:66
	SDR	%r4, %r31, $124	# build/example.ml#821:14->821:66
	SDR	%r3, %r31, $128	# build/example.ml#821:14->821:66
	SDR	%r2, %r31, $132	# build/example.ml#821:14->821:66
	SDR	%r1, %r31, $136	# build/example.ml#821:14->821:66
	FSDR	%fr6, %r31, $140	# build/example.ml#821:14->821:66
	FSDR	%fr2, %r31, $144	# build/example.ml#821:14->821:66
	FSDR	%fr1, %r31, $148	# build/example.ml#821:14->821:66
	FMV	%fr5, %fr2	# build/example.ml#821:14->821:66
	FMV	%fr4, %fr1	# build/example.ml#821:14->821:66
	FMV	%fr3, %fr0	# build/example.ml#821:14->821:66
	FMV	%fr2, %fr8	# build/example.ml#821:14->821:66
	FMV	%fr1, %fr7	# build/example.ml#821:14->821:66
	FMV	%fr0, %fr6	# build/example.ml#821:14->821:66
	ADDI	%r31, %r31, $152	# build/example.ml#821:14->821:66
	ADDI	%r31, %r31, $4	# build/example.ml#821:14->821:66
	SIP	# build/example.ml#821:14->821:66
	J	$bilinear.2739	# build/example.ml#821:14->821:66
	ADDI	%r31, %r31, $-152	# build/example.ml#821:14->821:66
	FMV	%fr8, %fr0	# build/example.ml#821:14->821:66
	LDR	%r6, %r31, $116	# build/example.ml#821:14->821:66
	LDR	%r5, %r31, $120	# build/example.ml#821:14->821:66
	LDR	%r4, %r31, $124	# build/example.ml#821:14->821:66
	LDR	%r3, %r31, $128	# build/example.ml#821:14->821:66
	LDR	%r2, %r31, $132	# build/example.ml#821:14->821:66
	LDR	%r1, %r31, $136	# build/example.ml#821:14->821:66
	FLDR	%fr6, %r31, $140	# build/example.ml#821:14->821:66
	FLDR	%fr2, %r31, $144	# build/example.ml#821:14->821:66
	FLDR	%fr1, %r31, $148	# build/example.ml#821:14->821:66
	SDR	%r6, %r31, $152	# build/example.ml#823:15->823:35
	SDR	%r5, %r31, $156	# build/example.ml#823:15->823:35
	SDR	%r4, %r31, $160	# build/example.ml#823:15->823:35
	SDR	%r3, %r31, $164	# build/example.ml#823:15->823:35
	SDR	%r2, %r31, $168	# build/example.ml#823:15->823:35
	SDR	%r1, %r31, $172	# build/example.ml#823:15->823:35
	FSDR	%fr6, %r31, $176	# build/example.ml#823:15->823:35
	FSDR	%fr2, %r31, $180	# build/example.ml#823:15->823:35
	FSDR	%fr1, %r31, $184	# build/example.ml#823:15->823:35
	ADDI	%r31, %r31, $188	# build/example.ml#823:15->823:35
	ADDI	%r31, %r31, $4	# build/example.ml#823:15->823:35
	SIP	# build/example.ml#823:15->823:35
	J	$quadratic.2734	# build/example.ml#823:15->823:35
	ADDI	%r31, %r31, $-188	# build/example.ml#823:15->823:35
	FMV	%fr7, %fr0	# build/example.ml#823:15->823:35
	LDR	%r6, %r31, $152	# build/example.ml#823:15->823:35
	LDR	%r5, %r31, $156	# build/example.ml#823:15->823:35
	LDR	%r4, %r31, $160	# build/example.ml#823:15->823:35
	LDR	%r3, %r31, $164	# build/example.ml#823:15->823:35
	LDR	%r2, %r31, $168	# build/example.ml#823:15->823:35
	LDR	%r1, %r31, $172	# build/example.ml#823:15->823:35
	FLDR	%fr6, %r31, $176	# build/example.ml#823:15->823:35
	FLDR	%fr2, %r31, $180	# build/example.ml#823:15->823:35
	FLDR	%fr1, %r31, $184	# build/example.ml#823:15->823:35
	MV	%r9, %r2	# build/example.ml#159:3->164:10
	MVI	%r8, $3	# build/example.ml#824:28->824:29
	CEQ	%r9, %r8	# build/example.ml#824:14->824:54
	JZ	$if_eq.11801	# build/example.ml#824:14->824:54
	FMV	%r0, %fr7	# build/example.ml#824:51->824:54
	MV	%fr7, %r0	# build/example.ml#824:51->824:54
	J	$if_eq_cont.11802	# build/example.ml#824:14->824:54
if_eq.11801:
	FLDA	%fr6, $l.7785	# build/example.ml#824:42->824:45
	FSUB	%r0, %fr7, %fr6	# build/example.ml#824:35->824:45
	MV	%fr7, %r0	# build/example.ml#824:35->824:45
if_eq_cont.11802:
	SDR	%r6, %r31, $188	# build/example.ml#826:13->826:20
	SDR	%r5, %r31, $192	# build/example.ml#826:13->826:20
	SDR	%r4, %r31, $196	# build/example.ml#826:13->826:20
	SDR	%r3, %r31, $200	# build/example.ml#826:13->826:20
	SDR	%r2, %r31, $204	# build/example.ml#826:13->826:20
	SDR	%r1, %r31, $208	# build/example.ml#826:13->826:20
	FSDR	%fr6, %r31, $212	# build/example.ml#826:13->826:20
	FSDR	%fr2, %r31, $216	# build/example.ml#826:13->826:20
	FSDR	%fr1, %r31, $220	# build/example.ml#826:13->826:20
	FMV	%fr0, %fr8	# build/example.ml#826:13->826:20
	ADDI	%r31, %r31, $224	# build/example.ml#826:13->826:20
	ADDI	%r31, %r31, $4	# build/example.ml#826:13->826:20
	SIP	# build/example.ml#826:13->826:20
	J	$min_caml_fsqr	# build/example.ml#826:13->826:20
	ADDI	%r31, %r31, $-224	# build/example.ml#826:13->826:20
	FMV	%fr6, %fr0	# build/example.ml#826:13->826:20
	LDR	%r6, %r31, $188	# build/example.ml#826:13->826:20
	LDR	%r5, %r31, $192	# build/example.ml#826:13->826:20
	LDR	%r4, %r31, $196	# build/example.ml#826:13->826:20
	LDR	%r3, %r31, $200	# build/example.ml#826:13->826:20
	LDR	%r2, %r31, $204	# build/example.ml#826:13->826:20
	LDR	%r1, %r31, $208	# build/example.ml#826:13->826:20
	FLDR	%fr6, %r31, $212	# build/example.ml#826:13->826:20
	FLDR	%fr2, %r31, $216	# build/example.ml#826:13->826:20
	FLDR	%fr1, %r31, $220	# build/example.ml#826:13->826:20
	FMUL	%fr7, %fr9, %fr7	# build/example.ml#826:24->826:32
	FSUB	%fr7, %fr6, %fr7	# build/example.ml#826:13->826:32
	SDR	%r6, %r31, $224	# build/example.ml#828:8->828:16
	SDR	%r5, %r31, $228	# build/example.ml#828:8->828:16
	SDR	%r4, %r31, $232	# build/example.ml#828:8->828:16
	SDR	%r3, %r31, $236	# build/example.ml#828:8->828:16
	SDR	%r2, %r31, $240	# build/example.ml#828:8->828:16
	SDR	%r1, %r31, $244	# build/example.ml#828:8->828:16
	FSDR	%fr6, %r31, $248	# build/example.ml#828:8->828:16
	FSDR	%fr2, %r31, $252	# build/example.ml#828:8->828:16
	FSDR	%fr1, %r31, $256	# build/example.ml#828:8->828:16
	FMV	%fr0, %fr7	# build/example.ml#828:8->828:16
	ADDI	%r31, %r31, $260	# build/example.ml#828:8->828:16
	ADDI	%r31, %r31, $4	# build/example.ml#828:8->828:16
	SIP	# build/example.ml#828:8->828:16
	J	$min_caml_fispos	# build/example.ml#828:8->828:16
	ADDI	%r31, %r31, $-260	# build/example.ml#828:8->828:16
	MV	%r8, %r0	# build/example.ml#828:8->828:16
	LDR	%r6, %r31, $224	# build/example.ml#828:8->828:16
	LDR	%r5, %r31, $228	# build/example.ml#828:8->828:16
	LDR	%r4, %r31, $232	# build/example.ml#828:8->828:16
	LDR	%r3, %r31, $236	# build/example.ml#828:8->828:16
	LDR	%r2, %r31, $240	# build/example.ml#828:8->828:16
	LDR	%r1, %r31, $244	# build/example.ml#828:8->828:16
	FLDR	%fr6, %r31, $248	# build/example.ml#828:8->828:16
	FLDR	%fr2, %r31, $252	# build/example.ml#828:8->828:16
	FLDR	%fr1, %r31, $256	# build/example.ml#828:8->828:16
	MVI	%r9, $0	# build/example.ml#828:5->834:8
	CEQ	%r8, %r9	# build/example.ml#828:5->834:8
	JZ	$if_eq.11803	# build/example.ml#828:5->834:8
	SDR	%r6, %r31, $260	# build/example.ml#829:16->829:22
	SDR	%r5, %r31, $264	# build/example.ml#829:16->829:22
	SDR	%r4, %r31, $268	# build/example.ml#829:16->829:22
	SDR	%r3, %r31, $272	# build/example.ml#829:16->829:22
	SDR	%r2, %r31, $276	# build/example.ml#829:16->829:22
	SDR	%r1, %r31, $280	# build/example.ml#829:16->829:22
	FSDR	%fr6, %r31, $284	# build/example.ml#829:16->829:22
	FSDR	%fr2, %r31, $288	# build/example.ml#829:16->829:22
	FSDR	%fr1, %r31, $292	# build/example.ml#829:16->829:22
	FMV	%fr0, %fr7	# build/example.ml#829:16->829:22
	ADDI	%r31, %r31, $296	# build/example.ml#829:16->829:22
	ADDI	%r31, %r31, $4	# build/example.ml#829:16->829:22
	SIP	# build/example.ml#829:16->829:22
	J	$min_caml_sqrt	# build/example.ml#829:16->829:22
	ADDI	%r31, %r31, $-296	# build/example.ml#829:16->829:22
	FMV	%fr7, %fr0	# build/example.ml#829:16->829:22
	LDR	%r6, %r31, $260	# build/example.ml#829:16->829:22
	LDR	%r5, %r31, $264	# build/example.ml#829:16->829:22
	LDR	%r4, %r31, $268	# build/example.ml#829:16->829:22
	LDR	%r3, %r31, $272	# build/example.ml#829:16->829:22
	LDR	%r2, %r31, $276	# build/example.ml#829:16->829:22
	LDR	%r1, %r31, $280	# build/example.ml#829:16->829:22
	FLDR	%fr6, %r31, $284	# build/example.ml#829:16->829:22
	FLDR	%fr2, %r31, $288	# build/example.ml#829:16->829:22
	FLDR	%fr1, %r31, $292	# build/example.ml#829:16->829:22
	MV	%r9, %r7	# build/example.ml#179:3->183:11
	MVI	%r8, $0	# build/example.ml#830:16->830:52
	CEQ	%r9, %r8	# build/example.ml#830:16->830:52
	JZ	$if_eq.11805	# build/example.ml#830:16->830:52
	FMV	%r0, %fr7	# build/example.ml#830:37->830:39
	MV	%fr7, %r0	# build/example.ml#830:37->830:39
	J	$if_eq_cont.11806	# build/example.ml#830:16->830:52
if_eq.11805:
	SDR	%r6, %r31, $296	# build/example.ml#830:45->830:52
	SDR	%r5, %r31, $300	# build/example.ml#830:45->830:52
	SDR	%r4, %r31, $304	# build/example.ml#830:45->830:52
	SDR	%r3, %r31, $308	# build/example.ml#830:45->830:52
	SDR	%r2, %r31, $312	# build/example.ml#830:45->830:52
	SDR	%r1, %r31, $316	# build/example.ml#830:45->830:52
	FSDR	%fr6, %r31, $320	# build/example.ml#830:45->830:52
	FSDR	%fr2, %r31, $324	# build/example.ml#830:45->830:52
	FSDR	%fr1, %r31, $328	# build/example.ml#830:45->830:52
	FMV	%fr0, %fr7	# build/example.ml#830:45->830:52
	ADDI	%r31, %r31, $332	# build/example.ml#830:45->830:52
	ADDI	%r31, %r31, $4	# build/example.ml#830:45->830:52
	SIP	# build/example.ml#830:45->830:52
	J	$min_caml_fneg	# build/example.ml#830:45->830:52
	ADDI	%r31, %r31, $-332	# build/example.ml#830:45->830:52
	LDR	%r6, %r31, $296	# build/example.ml#830:45->830:52
	LDR	%r5, %r31, $300	# build/example.ml#830:45->830:52
	LDR	%r4, %r31, $304	# build/example.ml#830:45->830:52
	LDR	%r3, %r31, $308	# build/example.ml#830:45->830:52
	LDR	%r2, %r31, $312	# build/example.ml#830:45->830:52
	LDR	%r1, %r31, $316	# build/example.ml#830:45->830:52
	FLDR	%fr6, %r31, $320	# build/example.ml#830:45->830:52
	FLDR	%fr2, %r31, $324	# build/example.ml#830:45->830:52
	FLDR	%fr1, %r31, $328	# build/example.ml#830:45->830:52
	MV	%fr7, %r0	# build/example.ml#830:45->830:52
if_eq_cont.11806:
	MVI	%r8, $min_caml_solver_dist	# build/example.ml#831:8->831:19
	MVI	%r9, $0	# build/example.ml#831:21->831:22
	FSUB	%fr8, %fr7, %fr8	# build/example.ml#831:28->831:36
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#831:27->831:44
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#831:8->831:44
	MVI	%r0, $1	# build/example.ml#831:46->831:47
	J	$if_eq_cont.11804	# build/example.ml#828:5->834:8
if_eq.11803:
	MVI	%r0, $0	# build/example.ml#834:7->834:8
if_eq_cont.11804:
if_eq_cont.11800:
	LDR	%r9, %r31, $0	# build/example.ml#814:32->814:33
	LDR	%r8, %r31, $4	# build/example.ml#814:32->814:33
	LDR	%r7, %r31, $8	# build/example.ml#814:32->814:33
	LDR	%r28, %r31, $12	# build/example.ml#814:32->814:33
	LDR	%r27, %r31, $16	# build/example.ml#814:32->814:33
	LDR	%r12, %r31, $20	# build/example.ml#814:32->814:33
	LDR	%r11, %r31, $24	# build/example.ml#814:32->814:33
	LDR	%r10, %r31, $28	# build/example.ml#814:32->814:33
	FLDR	%fr9, %r31, $32	# build/example.ml#814:32->814:33
	FLDR	%fr8, %r31, $36	# build/example.ml#814:32->814:33
	FLDR	%fr7, %r31, $40	# build/example.ml#814:32->814:33
	LINK	# build/example.ml#814:32->814:33
bilinear.2739:
	SDR	%r9, %r31, $0	# build/example.ml#789:5->789:13
	SDR	%r8, %r31, $4	# build/example.ml#789:5->789:13
	SDR	%r7, %r31, $8	# build/example.ml#789:5->789:13
	SDR	%r28, %r31, $12	# build/example.ml#789:5->789:13
	SDR	%r27, %r31, $16	# build/example.ml#789:5->789:13
	SDR	%r11, %r31, $20	# build/example.ml#789:5->789:13
	SDR	%r10, %r31, $24	# build/example.ml#789:5->789:13
	FSDR	%fr9, %r31, $28	# build/example.ml#789:5->789:13
	FSDR	%fr8, %r31, $32	# build/example.ml#789:5->789:13
	FSDR	%fr7, %r31, $36	# build/example.ml#789:5->789:13
	FMUL	%fr8, %fr0, %fr3	# build/example.ml#789:5->789:13
	SDR	%r6, %r31, $40	# build/example.ml#789:17->789:28
	SDR	%r5, %r31, $44	# build/example.ml#789:17->789:28
	SDR	%r4, %r31, $48	# build/example.ml#789:17->789:28
	SDR	%r3, %r31, $52	# build/example.ml#789:17->789:28
	SDR	%r2, %r31, $56	# build/example.ml#789:17->789:28
	SDR	%r1, %r31, $60	# build/example.ml#789:17->789:28
	ADDI	%r31, %r31, $64	# build/example.ml#789:17->789:28
	ADDI	%r31, %r31, $4	# build/example.ml#789:17->789:28
	SIP	# build/example.ml#789:17->789:28
	J	$o_param_a.2629	# build/example.ml#789:17->789:28
	ADDI	%r31, %r31, $-64	# build/example.ml#789:17->789:28
	FMV	%fr9, %fr0	# build/example.ml#789:17->789:28
	LDR	%r6, %r31, $40	# build/example.ml#789:17->789:28
	LDR	%r5, %r31, $44	# build/example.ml#789:17->789:28
	LDR	%r4, %r31, $48	# build/example.ml#789:17->789:28
	LDR	%r3, %r31, $52	# build/example.ml#789:17->789:28
	LDR	%r2, %r31, $56	# build/example.ml#789:17->789:28
	LDR	%r1, %r31, $60	# build/example.ml#789:17->789:28
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#789:5->789:28
	FMUL	%fr8, %fr1, %fr4	# build/example.ml#790:10->790:18
	SDR	%r6, %r31, $64	# build/example.ml#790:22->790:33
	SDR	%r5, %r31, $68	# build/example.ml#790:22->790:33
	SDR	%r4, %r31, $72	# build/example.ml#790:22->790:33
	SDR	%r3, %r31, $76	# build/example.ml#790:22->790:33
	SDR	%r2, %r31, $80	# build/example.ml#790:22->790:33
	SDR	%r1, %r31, $84	# build/example.ml#790:22->790:33
	ADDI	%r31, %r31, $88	# build/example.ml#790:22->790:33
	ADDI	%r31, %r31, $4	# build/example.ml#790:22->790:33
	SIP	# build/example.ml#790:22->790:33
	J	$o_param_b.2631	# build/example.ml#790:22->790:33
	ADDI	%r31, %r31, $-88	# build/example.ml#790:22->790:33
	FMV	%fr9, %fr0	# build/example.ml#790:22->790:33
	LDR	%r6, %r31, $64	# build/example.ml#790:22->790:33
	LDR	%r5, %r31, $68	# build/example.ml#790:22->790:33
	LDR	%r4, %r31, $72	# build/example.ml#790:22->790:33
	LDR	%r3, %r31, $76	# build/example.ml#790:22->790:33
	LDR	%r2, %r31, $80	# build/example.ml#790:22->790:33
	LDR	%r1, %r31, $84	# build/example.ml#790:22->790:33
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#790:10->790:33
	FADD	%fr7, %fr7, %fr9	# build/example.ml#789:5->790:33
	FMUL	%fr8, %fr2, %fr5	# build/example.ml#791:10->791:18
	SDR	%r6, %r31, $88	# build/example.ml#791:22->791:33
	SDR	%r5, %r31, $92	# build/example.ml#791:22->791:33
	SDR	%r4, %r31, $96	# build/example.ml#791:22->791:33
	SDR	%r3, %r31, $100	# build/example.ml#791:22->791:33
	SDR	%r2, %r31, $104	# build/example.ml#791:22->791:33
	SDR	%r1, %r31, $108	# build/example.ml#791:22->791:33
	ADDI	%r31, %r31, $112	# build/example.ml#791:22->791:33
	ADDI	%r31, %r31, $4	# build/example.ml#791:22->791:33
	SIP	# build/example.ml#791:22->791:33
	J	$o_param_c.2633	# build/example.ml#791:22->791:33
	ADDI	%r31, %r31, $-112	# build/example.ml#791:22->791:33
	FMV	%fr9, %fr0	# build/example.ml#791:22->791:33
	LDR	%r6, %r31, $88	# build/example.ml#791:22->791:33
	LDR	%r5, %r31, $92	# build/example.ml#791:22->791:33
	LDR	%r4, %r31, $96	# build/example.ml#791:22->791:33
	LDR	%r3, %r31, $100	# build/example.ml#791:22->791:33
	LDR	%r2, %r31, $104	# build/example.ml#791:22->791:33
	LDR	%r1, %r31, $108	# build/example.ml#791:22->791:33
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#791:10->791:33
	FADD	%fr9, %fr7, %fr9	# build/example.ml#789:5->791:33
	MV	%r28, %r4	# build/example.ml#188:3->192:10
	MVI	%r27, $0	# build/example.ml#793:18->793:19
	CEQ	%r28, %r27	# build/example.ml#793:3->799:45
	JZ	$if_eq.11807	# build/example.ml#793:3->799:45
	FMUL	%fr7, %fr2, %fr4	# build/example.ml#797:9->797:17
	FMUL	%fr8, %fr1, %fr5	# build/example.ml#797:21->797:29
	FADD	%fr7, %fr7, %fr8	# build/example.ml#797:9->797:29
	SDR	%r6, %r31, $112	# build/example.ml#797:34->797:46
	SDR	%r5, %r31, $116	# build/example.ml#797:34->797:46
	SDR	%r4, %r31, $120	# build/example.ml#797:34->797:46
	SDR	%r3, %r31, $124	# build/example.ml#797:34->797:46
	SDR	%r2, %r31, $128	# build/example.ml#797:34->797:46
	SDR	%r1, %r31, $132	# build/example.ml#797:34->797:46
	ADDI	%r31, %r31, $136	# build/example.ml#797:34->797:46
	ADDI	%r31, %r31, $4	# build/example.ml#797:34->797:46
	SIP	# build/example.ml#797:34->797:46
	J	$o_param_r1.2653	# build/example.ml#797:34->797:46
	ADDI	%r31, %r31, $-136	# build/example.ml#797:34->797:46
	FMV	%fr8, %fr0	# build/example.ml#797:34->797:46
	LDR	%r6, %r31, $112	# build/example.ml#797:34->797:46
	LDR	%r5, %r31, $116	# build/example.ml#797:34->797:46
	LDR	%r4, %r31, $120	# build/example.ml#797:34->797:46
	LDR	%r3, %r31, $124	# build/example.ml#797:34->797:46
	LDR	%r2, %r31, $128	# build/example.ml#797:34->797:46
	LDR	%r1, %r31, $132	# build/example.ml#797:34->797:46
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#797:8->797:46
	FMUL	%fr7, %fr0, %fr5	# build/example.ml#798:7->798:15
	FMUL	%fr6, %fr2, %fr3	# build/example.ml#798:19->798:27
	FADD	%fr6, %fr7, %fr6	# build/example.ml#798:7->798:27
	SDR	%r6, %r31, $136	# build/example.ml#798:32->798:44
	SDR	%r5, %r31, $140	# build/example.ml#798:32->798:44
	SDR	%r4, %r31, $144	# build/example.ml#798:32->798:44
	SDR	%r3, %r31, $148	# build/example.ml#798:32->798:44
	SDR	%r2, %r31, $152	# build/example.ml#798:32->798:44
	SDR	%r1, %r31, $156	# build/example.ml#798:32->798:44
	ADDI	%r31, %r31, $160	# build/example.ml#798:32->798:44
	ADDI	%r31, %r31, $4	# build/example.ml#798:32->798:44
	SIP	# build/example.ml#798:32->798:44
	J	$o_param_r2.2655	# build/example.ml#798:32->798:44
	ADDI	%r31, %r31, $-160	# build/example.ml#798:32->798:44
	FMV	%fr7, %fr0	# build/example.ml#798:32->798:44
	LDR	%r6, %r31, $136	# build/example.ml#798:32->798:44
	LDR	%r5, %r31, $140	# build/example.ml#798:32->798:44
	LDR	%r4, %r31, $144	# build/example.ml#798:32->798:44
	LDR	%r3, %r31, $148	# build/example.ml#798:32->798:44
	LDR	%r2, %r31, $152	# build/example.ml#798:32->798:44
	LDR	%r1, %r31, $156	# build/example.ml#798:32->798:44
	FMUL	%fr7, %fr6, %fr7	# build/example.ml#798:6->798:44
	FADD	%fr8, %fr8, %fr7	# build/example.ml#797:8->798:44
	FMUL	%fr7, %fr0, %fr4	# build/example.ml#799:7->799:15
	FMUL	%fr6, %fr1, %fr3	# build/example.ml#799:19->799:27
	FADD	%fr6, %fr7, %fr6	# build/example.ml#799:7->799:27
	SDR	%r6, %r31, $160	# build/example.ml#799:32->799:44
	SDR	%r5, %r31, $164	# build/example.ml#799:32->799:44
	SDR	%r4, %r31, $168	# build/example.ml#799:32->799:44
	SDR	%r3, %r31, $172	# build/example.ml#799:32->799:44
	SDR	%r2, %r31, $176	# build/example.ml#799:32->799:44
	SDR	%r1, %r31, $180	# build/example.ml#799:32->799:44
	ADDI	%r31, %r31, $184	# build/example.ml#799:32->799:44
	ADDI	%r31, %r31, $4	# build/example.ml#799:32->799:44
	SIP	# build/example.ml#799:32->799:44
	J	$o_param_r3.2657	# build/example.ml#799:32->799:44
	ADDI	%r31, %r31, $-184	# build/example.ml#799:32->799:44
	FMV	%fr7, %fr0	# build/example.ml#799:32->799:44
	LDR	%r6, %r31, $160	# build/example.ml#799:32->799:44
	LDR	%r5, %r31, $164	# build/example.ml#799:32->799:44
	LDR	%r4, %r31, $168	# build/example.ml#799:32->799:44
	LDR	%r3, %r31, $172	# build/example.ml#799:32->799:44
	LDR	%r2, %r31, $176	# build/example.ml#799:32->799:44
	LDR	%r1, %r31, $180	# build/example.ml#799:32->799:44
	FMUL	%fr7, %fr6, %fr7	# build/example.ml#799:6->799:44
	FADD	%fr8, %fr8, %fr7	# build/example.ml#797:8->799:44
	SDR	%r6, %r31, $184	# build/example.ml#796:18->799:45
	SDR	%r5, %r31, $188	# build/example.ml#796:18->799:45
	SDR	%r4, %r31, $192	# build/example.ml#796:18->799:45
	SDR	%r3, %r31, $196	# build/example.ml#796:18->799:45
	SDR	%r2, %r31, $200	# build/example.ml#796:18->799:45
	SDR	%r1, %r31, $204	# build/example.ml#796:18->799:45
	FSDR	%fr6, %r31, $208	# build/example.ml#796:18->799:45
	FSDR	%fr5, %r31, $212	# build/example.ml#796:18->799:45
	FSDR	%fr4, %r31, $216	# build/example.ml#796:18->799:45
	FSDR	%fr3, %r31, $220	# build/example.ml#796:18->799:45
	FSDR	%fr2, %r31, $224	# build/example.ml#796:18->799:45
	FSDR	%fr1, %r31, $228	# build/example.ml#796:18->799:45
	FMV	%fr0, %fr8	# build/example.ml#796:18->799:45
	ADDI	%r31, %r31, $232	# build/example.ml#796:18->799:45
	ADDI	%r31, %r31, $4	# build/example.ml#796:18->799:45
	SIP	# build/example.ml#796:18->799:45
	J	$min_caml_fhalf	# build/example.ml#796:18->799:45
	ADDI	%r31, %r31, $-232	# build/example.ml#796:18->799:45
	FMV	%fr8, %fr0	# build/example.ml#796:18->799:45
	LDR	%r6, %r31, $184	# build/example.ml#796:18->799:45
	LDR	%r5, %r31, $188	# build/example.ml#796:18->799:45
	LDR	%r4, %r31, $192	# build/example.ml#796:18->799:45
	LDR	%r3, %r31, $196	# build/example.ml#796:18->799:45
	LDR	%r2, %r31, $200	# build/example.ml#796:18->799:45
	LDR	%r1, %r31, $204	# build/example.ml#796:18->799:45
	FLDR	%fr6, %r31, $208	# build/example.ml#796:18->799:45
	FLDR	%fr5, %r31, $212	# build/example.ml#796:18->799:45
	FLDR	%fr4, %r31, $216	# build/example.ml#796:18->799:45
	FLDR	%fr3, %r31, $220	# build/example.ml#796:18->799:45
	FLDR	%fr2, %r31, $224	# build/example.ml#796:18->799:45
	FLDR	%fr1, %r31, $228	# build/example.ml#796:18->799:45
	FADD	%fr0, %fr9, %fr8	# build/example.ml#796:5->799:45
	J	$if_eq_cont.11808	# build/example.ml#793:3->799:45
if_eq.11807:
	FMV	%fr0, %fr9	# build/example.ml#794:5->794:14
if_eq_cont.11808:
	LDR	%r9, %r31, $0	# build/example.ml#789:5->789:13
	LDR	%r8, %r31, $4	# build/example.ml#789:5->789:13
	LDR	%r7, %r31, $8	# build/example.ml#789:5->789:13
	LDR	%r28, %r31, $12	# build/example.ml#789:5->789:13
	LDR	%r27, %r31, $16	# build/example.ml#789:5->789:13
	LDR	%r11, %r31, $20	# build/example.ml#789:5->789:13
	LDR	%r10, %r31, $24	# build/example.ml#789:5->789:13
	FLDR	%fr9, %r31, $28	# build/example.ml#789:5->789:13
	FLDR	%fr8, %r31, $32	# build/example.ml#789:5->789:13
	FLDR	%fr7, %r31, $36	# build/example.ml#789:5->789:13
	LINK	# build/example.ml#789:5->789:13
quadratic.2734:
	SDR	%r9, %r31, $0	# build/example.ml#774:5->774:12
	SDR	%r8, %r31, $4	# build/example.ml#774:5->774:12
	SDR	%r7, %r31, $8	# build/example.ml#774:5->774:12
	SDR	%r28, %r31, $12	# build/example.ml#774:5->774:12
	SDR	%r27, %r31, $16	# build/example.ml#774:5->774:12
	SDR	%r11, %r31, $20	# build/example.ml#774:5->774:12
	SDR	%r10, %r31, $24	# build/example.ml#774:5->774:12
	FSDR	%fr9, %r31, $28	# build/example.ml#774:5->774:12
	FSDR	%fr8, %r31, $32	# build/example.ml#774:5->774:12
	FSDR	%fr7, %r31, $36	# build/example.ml#774:5->774:12
	SDR	%r6, %r31, $40	# build/example.ml#774:5->774:12
	SDR	%r5, %r31, $44	# build/example.ml#774:5->774:12
	SDR	%r4, %r31, $48	# build/example.ml#774:5->774:12
	SDR	%r3, %r31, $52	# build/example.ml#774:5->774:12
	SDR	%r2, %r31, $56	# build/example.ml#774:5->774:12
	SDR	%r1, %r31, $60	# build/example.ml#774:5->774:12
	FSDR	%fr2, %r31, $64	# build/example.ml#774:5->774:12
	FSDR	%fr1, %r31, $68	# build/example.ml#774:5->774:12
	ADDI	%r31, %r31, $72	# build/example.ml#774:5->774:12
	ADDI	%r31, %r31, $4	# build/example.ml#774:5->774:12
	SIP	# build/example.ml#774:5->774:12
	J	$min_caml_fsqr	# build/example.ml#774:5->774:12
	ADDI	%r31, %r31, $-72	# build/example.ml#774:5->774:12
	FMV	%fr8, %fr0	# build/example.ml#774:5->774:12
	LDR	%r6, %r31, $40	# build/example.ml#774:5->774:12
	LDR	%r5, %r31, $44	# build/example.ml#774:5->774:12
	LDR	%r4, %r31, $48	# build/example.ml#774:5->774:12
	LDR	%r3, %r31, $52	# build/example.ml#774:5->774:12
	LDR	%r2, %r31, $56	# build/example.ml#774:5->774:12
	LDR	%r1, %r31, $60	# build/example.ml#774:5->774:12
	FLDR	%fr2, %r31, $64	# build/example.ml#774:5->774:12
	FLDR	%fr1, %r31, $68	# build/example.ml#774:5->774:12
	SDR	%r6, %r31, $72	# build/example.ml#774:16->774:27
	SDR	%r5, %r31, $76	# build/example.ml#774:16->774:27
	SDR	%r4, %r31, $80	# build/example.ml#774:16->774:27
	SDR	%r3, %r31, $84	# build/example.ml#774:16->774:27
	SDR	%r2, %r31, $88	# build/example.ml#774:16->774:27
	SDR	%r1, %r31, $92	# build/example.ml#774:16->774:27
	ADDI	%r31, %r31, $96	# build/example.ml#774:16->774:27
	ADDI	%r31, %r31, $4	# build/example.ml#774:16->774:27
	SIP	# build/example.ml#774:16->774:27
	J	$o_param_a.2629	# build/example.ml#774:16->774:27
	ADDI	%r31, %r31, $-96	# build/example.ml#774:16->774:27
	FMV	%fr9, %fr0	# build/example.ml#774:16->774:27
	LDR	%r6, %r31, $72	# build/example.ml#774:16->774:27
	LDR	%r5, %r31, $76	# build/example.ml#774:16->774:27
	LDR	%r4, %r31, $80	# build/example.ml#774:16->774:27
	LDR	%r3, %r31, $84	# build/example.ml#774:16->774:27
	LDR	%r2, %r31, $88	# build/example.ml#774:16->774:27
	LDR	%r1, %r31, $92	# build/example.ml#774:16->774:27
	FMUL	%fr7, %fr8, %fr9	# build/example.ml#774:5->774:27
	SDR	%r6, %r31, $96	# build/example.ml#774:31->774:38
	SDR	%r5, %r31, $100	# build/example.ml#774:31->774:38
	SDR	%r4, %r31, $104	# build/example.ml#774:31->774:38
	SDR	%r3, %r31, $108	# build/example.ml#774:31->774:38
	SDR	%r2, %r31, $112	# build/example.ml#774:31->774:38
	SDR	%r1, %r31, $116	# build/example.ml#774:31->774:38
	FSDR	%fr2, %r31, $120	# build/example.ml#774:31->774:38
	FSDR	%fr1, %r31, $124	# build/example.ml#774:31->774:38
	FMV	%fr0, %fr1	# build/example.ml#774:31->774:38
	ADDI	%r31, %r31, $128	# build/example.ml#774:31->774:38
	ADDI	%r31, %r31, $4	# build/example.ml#774:31->774:38
	SIP	# build/example.ml#774:31->774:38
	J	$min_caml_fsqr	# build/example.ml#774:31->774:38
	ADDI	%r31, %r31, $-128	# build/example.ml#774:31->774:38
	FMV	%fr8, %fr0	# build/example.ml#774:31->774:38
	LDR	%r6, %r31, $96	# build/example.ml#774:31->774:38
	LDR	%r5, %r31, $100	# build/example.ml#774:31->774:38
	LDR	%r4, %r31, $104	# build/example.ml#774:31->774:38
	LDR	%r3, %r31, $108	# build/example.ml#774:31->774:38
	LDR	%r2, %r31, $112	# build/example.ml#774:31->774:38
	LDR	%r1, %r31, $116	# build/example.ml#774:31->774:38
	FLDR	%fr2, %r31, $120	# build/example.ml#774:31->774:38
	FLDR	%fr1, %r31, $124	# build/example.ml#774:31->774:38
	SDR	%r6, %r31, $128	# build/example.ml#774:42->774:53
	SDR	%r5, %r31, $132	# build/example.ml#774:42->774:53
	SDR	%r4, %r31, $136	# build/example.ml#774:42->774:53
	SDR	%r3, %r31, $140	# build/example.ml#774:42->774:53
	SDR	%r2, %r31, $144	# build/example.ml#774:42->774:53
	SDR	%r1, %r31, $148	# build/example.ml#774:42->774:53
	ADDI	%r31, %r31, $152	# build/example.ml#774:42->774:53
	ADDI	%r31, %r31, $4	# build/example.ml#774:42->774:53
	SIP	# build/example.ml#774:42->774:53
	J	$o_param_b.2631	# build/example.ml#774:42->774:53
	ADDI	%r31, %r31, $-152	# build/example.ml#774:42->774:53
	FMV	%fr9, %fr0	# build/example.ml#774:42->774:53
	LDR	%r6, %r31, $128	# build/example.ml#774:42->774:53
	LDR	%r5, %r31, $132	# build/example.ml#774:42->774:53
	LDR	%r4, %r31, $136	# build/example.ml#774:42->774:53
	LDR	%r3, %r31, $140	# build/example.ml#774:42->774:53
	LDR	%r2, %r31, $144	# build/example.ml#774:42->774:53
	LDR	%r1, %r31, $148	# build/example.ml#774:42->774:53
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#774:31->774:53
	FADD	%fr7, %fr7, %fr9	# build/example.ml#774:5->774:53
	SDR	%r6, %r31, $152	# build/example.ml#774:57->774:64
	SDR	%r5, %r31, $156	# build/example.ml#774:57->774:64
	SDR	%r4, %r31, $160	# build/example.ml#774:57->774:64
	SDR	%r3, %r31, $164	# build/example.ml#774:57->774:64
	SDR	%r2, %r31, $168	# build/example.ml#774:57->774:64
	SDR	%r1, %r31, $172	# build/example.ml#774:57->774:64
	FSDR	%fr2, %r31, $176	# build/example.ml#774:57->774:64
	FSDR	%fr1, %r31, $180	# build/example.ml#774:57->774:64
	FMV	%fr0, %fr2	# build/example.ml#774:57->774:64
	ADDI	%r31, %r31, $184	# build/example.ml#774:57->774:64
	ADDI	%r31, %r31, $4	# build/example.ml#774:57->774:64
	SIP	# build/example.ml#774:57->774:64
	J	$min_caml_fsqr	# build/example.ml#774:57->774:64
	ADDI	%r31, %r31, $-184	# build/example.ml#774:57->774:64
	FMV	%fr8, %fr0	# build/example.ml#774:57->774:64
	LDR	%r6, %r31, $152	# build/example.ml#774:57->774:64
	LDR	%r5, %r31, $156	# build/example.ml#774:57->774:64
	LDR	%r4, %r31, $160	# build/example.ml#774:57->774:64
	LDR	%r3, %r31, $164	# build/example.ml#774:57->774:64
	LDR	%r2, %r31, $168	# build/example.ml#774:57->774:64
	LDR	%r1, %r31, $172	# build/example.ml#774:57->774:64
	FLDR	%fr2, %r31, $176	# build/example.ml#774:57->774:64
	FLDR	%fr1, %r31, $180	# build/example.ml#774:57->774:64
	SDR	%r6, %r31, $184	# build/example.ml#774:68->774:79
	SDR	%r5, %r31, $188	# build/example.ml#774:68->774:79
	SDR	%r4, %r31, $192	# build/example.ml#774:68->774:79
	SDR	%r3, %r31, $196	# build/example.ml#774:68->774:79
	SDR	%r2, %r31, $200	# build/example.ml#774:68->774:79
	SDR	%r1, %r31, $204	# build/example.ml#774:68->774:79
	ADDI	%r31, %r31, $208	# build/example.ml#774:68->774:79
	ADDI	%r31, %r31, $4	# build/example.ml#774:68->774:79
	SIP	# build/example.ml#774:68->774:79
	J	$o_param_c.2633	# build/example.ml#774:68->774:79
	ADDI	%r31, %r31, $-208	# build/example.ml#774:68->774:79
	FMV	%fr9, %fr0	# build/example.ml#774:68->774:79
	LDR	%r6, %r31, $184	# build/example.ml#774:68->774:79
	LDR	%r5, %r31, $188	# build/example.ml#774:68->774:79
	LDR	%r4, %r31, $192	# build/example.ml#774:68->774:79
	LDR	%r3, %r31, $196	# build/example.ml#774:68->774:79
	LDR	%r2, %r31, $200	# build/example.ml#774:68->774:79
	LDR	%r1, %r31, $204	# build/example.ml#774:68->774:79
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#774:57->774:79
	FADD	%fr9, %fr7, %fr9	# build/example.ml#774:5->774:79
	MV	%r28, %r4	# build/example.ml#188:3->192:10
	MVI	%r27, $0	# build/example.ml#776:18->776:19
	CEQ	%r28, %r27	# build/example.ml#776:3->782:34
	JZ	$if_eq.11809	# build/example.ml#776:3->782:34
	FMUL	%fr7, %fr1, %fr2	# build/example.ml#780:10->780:18
	SDR	%r6, %r31, $208	# build/example.ml#780:22->780:34
	SDR	%r5, %r31, $212	# build/example.ml#780:22->780:34
	SDR	%r4, %r31, $216	# build/example.ml#780:22->780:34
	SDR	%r3, %r31, $220	# build/example.ml#780:22->780:34
	SDR	%r2, %r31, $224	# build/example.ml#780:22->780:34
	SDR	%r1, %r31, $228	# build/example.ml#780:22->780:34
	ADDI	%r31, %r31, $232	# build/example.ml#780:22->780:34
	ADDI	%r31, %r31, $4	# build/example.ml#780:22->780:34
	SIP	# build/example.ml#780:22->780:34
	J	$o_param_r1.2653	# build/example.ml#780:22->780:34
	ADDI	%r31, %r31, $-232	# build/example.ml#780:22->780:34
	FMV	%fr8, %fr0	# build/example.ml#780:22->780:34
	LDR	%r6, %r31, $208	# build/example.ml#780:22->780:34
	LDR	%r5, %r31, $212	# build/example.ml#780:22->780:34
	LDR	%r4, %r31, $216	# build/example.ml#780:22->780:34
	LDR	%r3, %r31, $220	# build/example.ml#780:22->780:34
	LDR	%r2, %r31, $224	# build/example.ml#780:22->780:34
	LDR	%r1, %r31, $228	# build/example.ml#780:22->780:34
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#780:10->780:34
	FADD	%fr9, %fr9, %fr8	# build/example.ml#779:5->780:34
	FMUL	%fr7, %fr2, %fr0	# build/example.ml#781:10->781:18
	SDR	%r6, %r31, $232	# build/example.ml#781:22->781:34
	SDR	%r5, %r31, $236	# build/example.ml#781:22->781:34
	SDR	%r4, %r31, $240	# build/example.ml#781:22->781:34
	SDR	%r3, %r31, $244	# build/example.ml#781:22->781:34
	SDR	%r2, %r31, $248	# build/example.ml#781:22->781:34
	SDR	%r1, %r31, $252	# build/example.ml#781:22->781:34
	ADDI	%r31, %r31, $256	# build/example.ml#781:22->781:34
	ADDI	%r31, %r31, $4	# build/example.ml#781:22->781:34
	SIP	# build/example.ml#781:22->781:34
	J	$o_param_r2.2655	# build/example.ml#781:22->781:34
	ADDI	%r31, %r31, $-256	# build/example.ml#781:22->781:34
	FMV	%fr8, %fr0	# build/example.ml#781:22->781:34
	LDR	%r6, %r31, $232	# build/example.ml#781:22->781:34
	LDR	%r5, %r31, $236	# build/example.ml#781:22->781:34
	LDR	%r4, %r31, $240	# build/example.ml#781:22->781:34
	LDR	%r3, %r31, $244	# build/example.ml#781:22->781:34
	LDR	%r2, %r31, $248	# build/example.ml#781:22->781:34
	LDR	%r1, %r31, $252	# build/example.ml#781:22->781:34
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#781:10->781:34
	FADD	%fr9, %fr9, %fr8	# build/example.ml#779:5->781:34
	FMUL	%fr7, %fr0, %fr1	# build/example.ml#782:10->782:18
	SDR	%r6, %r31, $256	# build/example.ml#782:22->782:34
	SDR	%r5, %r31, $260	# build/example.ml#782:22->782:34
	SDR	%r4, %r31, $264	# build/example.ml#782:22->782:34
	SDR	%r3, %r31, $268	# build/example.ml#782:22->782:34
	SDR	%r2, %r31, $272	# build/example.ml#782:22->782:34
	SDR	%r1, %r31, $276	# build/example.ml#782:22->782:34
	ADDI	%r31, %r31, $280	# build/example.ml#782:22->782:34
	ADDI	%r31, %r31, $4	# build/example.ml#782:22->782:34
	SIP	# build/example.ml#782:22->782:34
	J	$o_param_r3.2657	# build/example.ml#782:22->782:34
	ADDI	%r31, %r31, $-280	# build/example.ml#782:22->782:34
	FMV	%fr8, %fr0	# build/example.ml#782:22->782:34
	LDR	%r6, %r31, $256	# build/example.ml#782:22->782:34
	LDR	%r5, %r31, $260	# build/example.ml#782:22->782:34
	LDR	%r4, %r31, $264	# build/example.ml#782:22->782:34
	LDR	%r3, %r31, $268	# build/example.ml#782:22->782:34
	LDR	%r2, %r31, $272	# build/example.ml#782:22->782:34
	LDR	%r1, %r31, $276	# build/example.ml#782:22->782:34
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#782:10->782:34
	FADD	%fr0, %fr9, %fr8	# build/example.ml#779:5->782:34
	J	$if_eq_cont.11810	# build/example.ml#776:3->782:34
if_eq.11809:
	FMV	%fr0, %fr9	# build/example.ml#777:5->777:14
if_eq_cont.11810:
	LDR	%r9, %r31, $0	# build/example.ml#774:5->774:12
	LDR	%r8, %r31, $4	# build/example.ml#774:5->774:12
	LDR	%r7, %r31, $8	# build/example.ml#774:5->774:12
	LDR	%r28, %r31, $12	# build/example.ml#774:5->774:12
	LDR	%r27, %r31, $16	# build/example.ml#774:5->774:12
	LDR	%r11, %r31, $20	# build/example.ml#774:5->774:12
	LDR	%r10, %r31, $24	# build/example.ml#774:5->774:12
	FLDR	%fr9, %r31, $28	# build/example.ml#774:5->774:12
	FLDR	%fr8, %r31, $32	# build/example.ml#774:5->774:12
	FLDR	%fr7, %r31, $36	# build/example.ml#774:5->774:12
	LINK	# build/example.ml#774:5->774:12
solver_surface.2728:
	SDR	%r9, %r31, $0	# build/example.ml#227:3->232:8
	SDR	%r8, %r31, $4	# build/example.ml#227:3->232:8
	SDR	%r7, %r31, $8	# build/example.ml#227:3->232:8
	SDR	%r12, %r31, $12	# build/example.ml#227:3->232:8
	SDR	%r11, %r31, $16	# build/example.ml#227:3->232:8
	SDR	%r10, %r31, $20	# build/example.ml#227:3->232:8
	FSDR	%fr9, %r31, $24	# build/example.ml#227:3->232:8
	FSDR	%fr8, %r31, $28	# build/example.ml#227:3->232:8
	MV	%r9, %r5	# build/example.ml#227:3->232:8
	SDR	%r2, %r31, $32	# build/example.ml#762:11->762:30
	SDR	%r1, %r31, $36	# build/example.ml#762:11->762:30
	FSDR	%fr1, %r31, $40	# build/example.ml#762:11->762:30
	MV	%r2, %r9	# build/example.ml#762:11->762:30
	MV	%r1, %r12	# build/example.ml#762:11->762:30
	ADDI	%r31, %r31, $44	# build/example.ml#762:11->762:30
	ADDI	%r31, %r31, $4	# build/example.ml#762:11->762:30
	SIP	# build/example.ml#762:11->762:30
	J	$veciprod.2594	# build/example.ml#762:11->762:30
	ADDI	%r31, %r31, $-44	# build/example.ml#762:11->762:30
	FMV	%fr9, %fr0	# build/example.ml#762:11->762:30
	LDR	%r2, %r31, $32	# build/example.ml#762:11->762:30
	LDR	%r1, %r31, $36	# build/example.ml#762:11->762:30
	FLDR	%fr1, %r31, $40	# build/example.ml#762:11->762:30
	SDR	%r6, %r31, $44	# build/example.ml#763:6->763:14
	SDR	%r5, %r31, $48	# build/example.ml#763:6->763:14
	SDR	%r4, %r31, $52	# build/example.ml#763:6->763:14
	SDR	%r3, %r31, $56	# build/example.ml#763:6->763:14
	SDR	%r2, %r31, $60	# build/example.ml#763:6->763:14
	SDR	%r1, %r31, $64	# build/example.ml#763:6->763:14
	FSDR	%fr2, %r31, $68	# build/example.ml#763:6->763:14
	FSDR	%fr1, %r31, $72	# build/example.ml#763:6->763:14
	FMV	%fr0, %fr9	# build/example.ml#763:6->763:14
	ADDI	%r31, %r31, $76	# build/example.ml#763:6->763:14
	ADDI	%r31, %r31, $4	# build/example.ml#763:6->763:14
	SIP	# build/example.ml#763:6->763:14
	J	$min_caml_fispos	# build/example.ml#763:6->763:14
	ADDI	%r31, %r31, $-76	# build/example.ml#763:6->763:14
	MV	%r7, %r0	# build/example.ml#763:6->763:14
	LDR	%r6, %r31, $44	# build/example.ml#763:6->763:14
	LDR	%r5, %r31, $48	# build/example.ml#763:6->763:14
	LDR	%r4, %r31, $52	# build/example.ml#763:6->763:14
	LDR	%r3, %r31, $56	# build/example.ml#763:6->763:14
	LDR	%r2, %r31, $60	# build/example.ml#763:6->763:14
	LDR	%r1, %r31, $64	# build/example.ml#763:6->763:14
	FLDR	%fr2, %r31, $68	# build/example.ml#763:6->763:14
	FLDR	%fr1, %r31, $72	# build/example.ml#763:6->763:14
	MVI	%r8, $0	# build/example.ml#763:3->766:12
	CEQ	%r7, %r8	# build/example.ml#763:3->766:12
	JZ	$if_eq.11811	# build/example.ml#763:3->766:12
	MVI	%r7, $min_caml_solver_dist	# build/example.ml#764:5->764:16
	MVI	%r8, $0	# build/example.ml#764:18->764:19
	SDR	%r1, %r31, $76	# build/example.ml#764:30->764:52
	FSDR	%fr2, %r31, $80	# build/example.ml#764:30->764:52
	FSDR	%fr1, %r31, $84	# build/example.ml#764:30->764:52
	MV	%r1, %r9	# build/example.ml#764:30->764:52
	ADDI	%r31, %r31, $88	# build/example.ml#764:30->764:52
	ADDI	%r31, %r31, $4	# build/example.ml#764:30->764:52
	SIP	# build/example.ml#764:30->764:52
	J	$veciprod2.2597	# build/example.ml#764:30->764:52
	ADDI	%r31, %r31, $-88	# build/example.ml#764:30->764:52
	FMV	%fr8, %fr0	# build/example.ml#764:30->764:52
	LDR	%r1, %r31, $76	# build/example.ml#764:30->764:52
	FLDR	%fr2, %r31, $80	# build/example.ml#764:30->764:52
	FLDR	%fr1, %r31, $84	# build/example.ml#764:30->764:52
	SDR	%r6, %r31, $88	# build/example.ml#764:24->764:53
	SDR	%r5, %r31, $92	# build/example.ml#764:24->764:53
	SDR	%r4, %r31, $96	# build/example.ml#764:24->764:53
	SDR	%r3, %r31, $100	# build/example.ml#764:24->764:53
	SDR	%r2, %r31, $104	# build/example.ml#764:24->764:53
	SDR	%r1, %r31, $108	# build/example.ml#764:24->764:53
	FSDR	%fr2, %r31, $112	# build/example.ml#764:24->764:53
	FSDR	%fr1, %r31, $116	# build/example.ml#764:24->764:53
	FMV	%fr0, %fr8	# build/example.ml#764:24->764:53
	ADDI	%r31, %r31, $120	# build/example.ml#764:24->764:53
	ADDI	%r31, %r31, $4	# build/example.ml#764:24->764:53
	SIP	# build/example.ml#764:24->764:53
	J	$min_caml_fneg	# build/example.ml#764:24->764:53
	ADDI	%r31, %r31, $-120	# build/example.ml#764:24->764:53
	FMV	%fr8, %fr0	# build/example.ml#764:24->764:53
	LDR	%r6, %r31, $88	# build/example.ml#764:24->764:53
	LDR	%r5, %r31, $92	# build/example.ml#764:24->764:53
	LDR	%r4, %r31, $96	# build/example.ml#764:24->764:53
	LDR	%r3, %r31, $100	# build/example.ml#764:24->764:53
	LDR	%r2, %r31, $104	# build/example.ml#764:24->764:53
	LDR	%r1, %r31, $108	# build/example.ml#764:24->764:53
	FLDR	%fr2, %r31, $112	# build/example.ml#764:24->764:53
	FLDR	%fr1, %r31, $116	# build/example.ml#764:24->764:53
	FDIV	%fr9, %fr8, %fr9	# build/example.ml#764:24->764:58
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#764:5->764:58
	MVI	%r0, $1	# build/example.ml#765:5->765:6
	J	$if_eq_cont.11812	# build/example.ml#763:3->766:12
if_eq.11811:
	MVI	%r0, $0	# build/example.ml#766:11->766:12
if_eq_cont.11812:
	LDR	%r9, %r31, $0	# build/example.ml#227:3->232:8
	LDR	%r8, %r31, $4	# build/example.ml#227:3->232:8
	LDR	%r7, %r31, $8	# build/example.ml#227:3->232:8
	LDR	%r12, %r31, $12	# build/example.ml#227:3->232:8
	LDR	%r11, %r31, $16	# build/example.ml#227:3->232:8
	LDR	%r10, %r31, $20	# build/example.ml#227:3->232:8
	FLDR	%fr9, %r31, $24	# build/example.ml#227:3->232:8
	FLDR	%fr8, %r31, $28	# build/example.ml#227:3->232:8
	LINK	# build/example.ml#227:3->232:8
solver_rect.2722:
	SDR	%r9, %r31, $0	# build/example.ml#750:49->750:50
	SDR	%r8, %r31, $4	# build/example.ml#750:49->750:50
	SDR	%r7, %r31, $8	# build/example.ml#750:49->750:50
	SDR	%r28, %r31, $12	# build/example.ml#750:49->750:50
	SDR	%r27, %r31, $16	# build/example.ml#750:49->750:50
	SDR	%r26, %r31, $20	# build/example.ml#750:49->750:50
	SDR	%r12, %r31, $24	# build/example.ml#750:49->750:50
	SDR	%r11, %r31, $28	# build/example.ml#750:49->750:50
	SDR	%r10, %r31, $32	# build/example.ml#750:49->750:50
	MVI	%r26, $0	# build/example.ml#750:49->750:50
	MVI	%r27, $1	# build/example.ml#750:51->750:52
	MVI	%r28, $2	# build/example.ml#750:53->750:54
	SDR	%r6, %r31, $36	# build/example.ml#750:11->750:54
	SDR	%r5, %r31, $40	# build/example.ml#750:11->750:54
	SDR	%r4, %r31, $44	# build/example.ml#750:11->750:54
	SDR	%r3, %r31, $48	# build/example.ml#750:11->750:54
	SDR	%r2, %r31, $52	# build/example.ml#750:11->750:54
	SDR	%r1, %r31, $56	# build/example.ml#750:11->750:54
	FSDR	%fr2, %r31, $60	# build/example.ml#750:11->750:54
	FSDR	%fr1, %r31, $64	# build/example.ml#750:11->750:54
	MV	%r15, %r28	# build/example.ml#750:11->750:54
	MV	%r14, %r27	# build/example.ml#750:11->750:54
	MV	%r13, %r26	# build/example.ml#750:11->750:54
	ADDI	%r31, %r31, $68	# build/example.ml#750:11->750:54
	ADDI	%r31, %r31, $4	# build/example.ml#750:11->750:54
	SIP	# build/example.ml#750:11->750:54
	J	$solver_rect_surface.2713	# build/example.ml#750:11->750:54
	ADDI	%r31, %r31, $-68	# build/example.ml#750:11->750:54
	MV	%r27, %r0	# build/example.ml#750:11->750:54
	LDR	%r6, %r31, $36	# build/example.ml#750:11->750:54
	LDR	%r5, %r31, $40	# build/example.ml#750:11->750:54
	LDR	%r4, %r31, $44	# build/example.ml#750:11->750:54
	LDR	%r3, %r31, $48	# build/example.ml#750:11->750:54
	LDR	%r2, %r31, $52	# build/example.ml#750:11->750:54
	LDR	%r1, %r31, $56	# build/example.ml#750:11->750:54
	FLDR	%fr2, %r31, $60	# build/example.ml#750:11->750:54
	FLDR	%fr1, %r31, $64	# build/example.ml#750:11->750:54
	MVI	%r28, $0	# build/example.ml#750:3->753:61
	CEQ	%r27, %r28	# build/example.ml#750:3->753:61
	JZ	$if_eq.11813	# build/example.ml#750:3->753:61
	MVI	%r0, $1	# build/example.ml#750:60->750:61
	J	$if_eq_cont.11814	# build/example.ml#750:3->753:61
if_eq.11813:
	MVI	%r26, $1	# build/example.ml#751:49->751:50
	MVI	%r27, $2	# build/example.ml#751:51->751:52
	MVI	%r28, $0	# build/example.ml#751:53->751:54
	SDR	%r6, %r31, $68	# build/example.ml#751:11->751:54
	SDR	%r5, %r31, $72	# build/example.ml#751:11->751:54
	SDR	%r4, %r31, $76	# build/example.ml#751:11->751:54
	SDR	%r3, %r31, $80	# build/example.ml#751:11->751:54
	SDR	%r2, %r31, $84	# build/example.ml#751:11->751:54
	SDR	%r1, %r31, $88	# build/example.ml#751:11->751:54
	FSDR	%fr2, %r31, $92	# build/example.ml#751:11->751:54
	FSDR	%fr1, %r31, $96	# build/example.ml#751:11->751:54
	MV	%r15, %r28	# build/example.ml#751:11->751:54
	MV	%r14, %r27	# build/example.ml#751:11->751:54
	MV	%r13, %r26	# build/example.ml#751:11->751:54
	FSDR	%fr2, %r31, $100	# build/example.ml#751:11->751:54
	LINK	# build/example.ml#751:11->751:54
	FMV	%fr2, %fr0	# build/example.ml#751:11->751:54
	FMV	%fr0, %fr1	# build/example.ml#751:11->751:54
	FLDR	%fr1, %r31, $100	# build/example.ml#751:11->751:54
	ADDI	%r31, %r31, $100	# build/example.ml#751:11->751:54
	ADDI	%r31, %r31, $4	# build/example.ml#751:11->751:54
	SIP	# build/example.ml#751:11->751:54
	J	$solver_rect_surface.2713	# build/example.ml#751:11->751:54
	ADDI	%r31, %r31, $-100	# build/example.ml#751:11->751:54
	MV	%r27, %r0	# build/example.ml#751:11->751:54
	LDR	%r6, %r31, $68	# build/example.ml#751:11->751:54
	LDR	%r5, %r31, $72	# build/example.ml#751:11->751:54
	LDR	%r4, %r31, $76	# build/example.ml#751:11->751:54
	LDR	%r3, %r31, $80	# build/example.ml#751:11->751:54
	LDR	%r2, %r31, $84	# build/example.ml#751:11->751:54
	LDR	%r1, %r31, $88	# build/example.ml#751:11->751:54
	FLDR	%fr2, %r31, $92	# build/example.ml#751:11->751:54
	FLDR	%fr1, %r31, $96	# build/example.ml#751:11->751:54
	MVI	%r28, $0	# build/example.ml#751:8->753:61
	CEQ	%r27, %r28	# build/example.ml#751:8->753:61
	JZ	$if_eq.11815	# build/example.ml#751:8->753:61
	MVI	%r0, $2	# build/example.ml#751:60->751:61
	J	$if_eq_cont.11816	# build/example.ml#751:8->753:61
if_eq.11815:
	MVI	%r26, $2	# build/example.ml#752:49->752:50
	MVI	%r27, $0	# build/example.ml#752:51->752:52
	MVI	%r28, $1	# build/example.ml#752:53->752:54
	SDR	%r6, %r31, $100	# build/example.ml#752:11->752:54
	SDR	%r5, %r31, $104	# build/example.ml#752:11->752:54
	SDR	%r4, %r31, $108	# build/example.ml#752:11->752:54
	SDR	%r3, %r31, $112	# build/example.ml#752:11->752:54
	SDR	%r2, %r31, $116	# build/example.ml#752:11->752:54
	SDR	%r1, %r31, $120	# build/example.ml#752:11->752:54
	FSDR	%fr2, %r31, $124	# build/example.ml#752:11->752:54
	FSDR	%fr1, %r31, $128	# build/example.ml#752:11->752:54
	MV	%r15, %r28	# build/example.ml#752:11->752:54
	MV	%r14, %r27	# build/example.ml#752:11->752:54
	MV	%r13, %r26	# build/example.ml#752:11->752:54
	FSDR	%fr2, %r31, $132	# build/example.ml#752:11->752:54
	LINK	# build/example.ml#752:11->752:54
	FMV	%fr2, %fr1	# build/example.ml#752:11->752:54
	FMV	%fr1, %fr0	# build/example.ml#752:11->752:54
	FLDR	%fr0, %r31, $132	# build/example.ml#752:11->752:54
	ADDI	%r31, %r31, $132	# build/example.ml#752:11->752:54
	ADDI	%r31, %r31, $4	# build/example.ml#752:11->752:54
	SIP	# build/example.ml#752:11->752:54
	J	$solver_rect_surface.2713	# build/example.ml#752:11->752:54
	ADDI	%r31, %r31, $-132	# build/example.ml#752:11->752:54
	MV	%r8, %r0	# build/example.ml#752:11->752:54
	LDR	%r6, %r31, $100	# build/example.ml#752:11->752:54
	LDR	%r5, %r31, $104	# build/example.ml#752:11->752:54
	LDR	%r4, %r31, $108	# build/example.ml#752:11->752:54
	LDR	%r3, %r31, $112	# build/example.ml#752:11->752:54
	LDR	%r2, %r31, $116	# build/example.ml#752:11->752:54
	LDR	%r1, %r31, $120	# build/example.ml#752:11->752:54
	FLDR	%fr2, %r31, $124	# build/example.ml#752:11->752:54
	FLDR	%fr1, %r31, $128	# build/example.ml#752:11->752:54
	MVI	%r9, $0	# build/example.ml#752:8->753:61
	CEQ	%r8, %r9	# build/example.ml#752:8->753:61
	JZ	$if_eq.11817	# build/example.ml#752:8->753:61
	MVI	%r0, $3	# build/example.ml#752:60->752:61
	J	$if_eq_cont.11818	# build/example.ml#752:8->753:61
if_eq.11817:
	MVI	%r0, $0	# build/example.ml#753:60->753:61
if_eq_cont.11818:
if_eq_cont.11816:
if_eq_cont.11814:
	LDR	%r9, %r31, $0	# build/example.ml#750:49->750:50
	LDR	%r8, %r31, $4	# build/example.ml#750:49->750:50
	LDR	%r7, %r31, $8	# build/example.ml#750:49->750:50
	LDR	%r28, %r31, $12	# build/example.ml#750:49->750:50
	LDR	%r27, %r31, $16	# build/example.ml#750:49->750:50
	LDR	%r26, %r31, $20	# build/example.ml#750:49->750:50
	LDR	%r12, %r31, $24	# build/example.ml#750:49->750:50
	LDR	%r11, %r31, $28	# build/example.ml#750:49->750:50
	LDR	%r10, %r31, $32	# build/example.ml#750:49->750:50
	LINK	# build/example.ml#750:49->750:50
solver_rect_surface.2713:
	SDR	%r9, %r31, $0	# build/example.ml#735:14->735:25
	SDR	%r8, %r31, $4	# build/example.ml#735:14->735:25
	SDR	%r7, %r31, $8	# build/example.ml#735:14->735:25
	SDR	%r15, %r31, $12	# build/example.ml#735:14->735:25
	SDR	%r14, %r31, $16	# build/example.ml#735:14->735:25
	SDR	%r13, %r31, $20	# build/example.ml#735:14->735:25
	SDR	%r12, %r31, $24	# build/example.ml#735:14->735:25
	SDR	%r11, %r31, $28	# build/example.ml#735:14->735:25
	SDR	%r10, %r31, $32	# build/example.ml#735:14->735:25
	FSDR	%fr9, %r31, $36	# build/example.ml#735:14->735:25
	FSDR	%fr8, %r31, $40	# build/example.ml#735:14->735:25
	FSDR	%fr7, %r31, $44	# build/example.ml#735:14->735:25
	FLDD	%fr8, %r12, $4, %r13	# build/example.ml#735:14->735:25
	SDR	%r6, %r31, $48	# build/example.ml#735:6->735:25
	SDR	%r5, %r31, $52	# build/example.ml#735:6->735:25
	SDR	%r4, %r31, $56	# build/example.ml#735:6->735:25
	SDR	%r3, %r31, $60	# build/example.ml#735:6->735:25
	SDR	%r2, %r31, $64	# build/example.ml#735:6->735:25
	SDR	%r1, %r31, $68	# build/example.ml#735:6->735:25
	FSDR	%fr2, %r31, $72	# build/example.ml#735:6->735:25
	FSDR	%fr1, %r31, $76	# build/example.ml#735:6->735:25
	FMV	%fr0, %fr8	# build/example.ml#735:6->735:25
	ADDI	%r31, %r31, $80	# build/example.ml#735:6->735:25
	ADDI	%r31, %r31, $4	# build/example.ml#735:6->735:25
	SIP	# build/example.ml#735:6->735:25
	J	$min_caml_fiszero	# build/example.ml#735:6->735:25
	ADDI	%r31, %r31, $-80	# build/example.ml#735:6->735:25
	MV	%r8, %r0	# build/example.ml#735:6->735:25
	LDR	%r6, %r31, $48	# build/example.ml#735:6->735:25
	LDR	%r5, %r31, $52	# build/example.ml#735:6->735:25
	LDR	%r4, %r31, $56	# build/example.ml#735:6->735:25
	LDR	%r3, %r31, $60	# build/example.ml#735:6->735:25
	LDR	%r2, %r31, $64	# build/example.ml#735:6->735:25
	LDR	%r1, %r31, $68	# build/example.ml#735:6->735:25
	FLDR	%fr2, %r31, $72	# build/example.ml#735:6->735:25
	FLDR	%fr1, %r31, $76	# build/example.ml#735:6->735:25
	MVI	%r9, $0	# build/example.ml#735:3->744:13
	CEQ	%r8, %r9	# build/example.ml#735:3->744:13
	JZ	$if_eq.11819	# build/example.ml#735:3->744:13
	MVI	%r0, $0	# build/example.ml#735:31->735:36
	J	$if_eq_cont.11820	# build/example.ml#735:3->744:13
if_eq.11819:
	MV	%r9, %r5	# build/example.ml#227:3->232:8
	MV	%r8, %r7	# build/example.ml#179:3->183:11
	SDR	%r6, %r31, $80	# build/example.ml#737:42->737:60
	SDR	%r5, %r31, $84	# build/example.ml#737:42->737:60
	SDR	%r4, %r31, $88	# build/example.ml#737:42->737:60
	SDR	%r3, %r31, $92	# build/example.ml#737:42->737:60
	SDR	%r2, %r31, $96	# build/example.ml#737:42->737:60
	SDR	%r1, %r31, $100	# build/example.ml#737:42->737:60
	FSDR	%fr2, %r31, $104	# build/example.ml#737:42->737:60
	FSDR	%fr1, %r31, $108	# build/example.ml#737:42->737:60
	FMV	%fr0, %fr8	# build/example.ml#737:42->737:60
	ADDI	%r31, %r31, $112	# build/example.ml#737:42->737:60
	ADDI	%r31, %r31, $4	# build/example.ml#737:42->737:60
	SIP	# build/example.ml#737:42->737:60
	J	$min_caml_fisneg	# build/example.ml#737:42->737:60
	ADDI	%r31, %r31, $-112	# build/example.ml#737:42->737:60
	MV	%r7, %r0	# build/example.ml#737:42->737:60
	LDR	%r6, %r31, $80	# build/example.ml#737:42->737:60
	LDR	%r5, %r31, $84	# build/example.ml#737:42->737:60
	LDR	%r4, %r31, $88	# build/example.ml#737:42->737:60
	LDR	%r3, %r31, $92	# build/example.ml#737:42->737:60
	LDR	%r2, %r31, $96	# build/example.ml#737:42->737:60
	LDR	%r1, %r31, $100	# build/example.ml#737:42->737:60
	FLDR	%fr2, %r31, $104	# build/example.ml#737:42->737:60
	FLDR	%fr1, %r31, $108	# build/example.ml#737:42->737:60
	SDR	%r2, %r31, $112	# build/example.ml#737:22->737:61
	SDR	%r1, %r31, $116	# build/example.ml#737:22->737:61
	MV	%r2, %r7	# build/example.ml#737:22->737:61
	MV	%r1, %r8	# build/example.ml#737:22->737:61
	ADDI	%r31, %r31, $120	# build/example.ml#737:22->737:61
	ADDI	%r31, %r31, $4	# build/example.ml#737:22->737:61
	SIP	# build/example.ml#737:22->737:61
	J	$xor.2562	# build/example.ml#737:22->737:61
	ADDI	%r31, %r31, $-120	# build/example.ml#737:22->737:61
	MV	%r8, %r0	# build/example.ml#737:22->737:61
	LDR	%r2, %r31, $112	# build/example.ml#737:22->737:61
	LDR	%r1, %r31, $116	# build/example.ml#737:22->737:61
	FLDD	%fr9, %r9, $4, %r13	# build/example.ml#737:63->737:71
	SDR	%r6, %r31, $120	# build/example.ml#737:11->737:71
	SDR	%r5, %r31, $124	# build/example.ml#737:11->737:71
	SDR	%r4, %r31, $128	# build/example.ml#737:11->737:71
	SDR	%r3, %r31, $132	# build/example.ml#737:11->737:71
	SDR	%r2, %r31, $136	# build/example.ml#737:11->737:71
	SDR	%r1, %r31, $140	# build/example.ml#737:11->737:71
	FSDR	%fr2, %r31, $144	# build/example.ml#737:11->737:71
	FSDR	%fr1, %r31, $148	# build/example.ml#737:11->737:71
	MV	%r1, %r8	# build/example.ml#737:11->737:71
	FMV	%fr0, %fr9	# build/example.ml#737:11->737:71
	ADDI	%r31, %r31, $152	# build/example.ml#737:11->737:71
	ADDI	%r31, %r31, $4	# build/example.ml#737:11->737:71
	SIP	# build/example.ml#737:11->737:71
	J	$fneg_cond.2567	# build/example.ml#737:11->737:71
	ADDI	%r31, %r31, $-152	# build/example.ml#737:11->737:71
	FMV	%fr9, %fr0	# build/example.ml#737:11->737:71
	LDR	%r6, %r31, $120	# build/example.ml#737:11->737:71
	LDR	%r5, %r31, $124	# build/example.ml#737:11->737:71
	LDR	%r4, %r31, $128	# build/example.ml#737:11->737:71
	LDR	%r3, %r31, $132	# build/example.ml#737:11->737:71
	LDR	%r2, %r31, $136	# build/example.ml#737:11->737:71
	LDR	%r1, %r31, $140	# build/example.ml#737:11->737:71
	FLDR	%fr2, %r31, $144	# build/example.ml#737:11->737:71
	FLDR	%fr1, %r31, $148	# build/example.ml#737:11->737:71
	FSUB	%fr9, %fr9, %fr0	# build/example.ml#739:13->739:20
	FDIV	%fr9, %fr9, %fr8	# build/example.ml#739:12->739:36
	FLDD	%fr8, %r12, $4, %r14	# build/example.ml#735:14->735:25
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#740:19->740:36
	FADD	%fr8, %fr8, %fr1	# build/example.ml#740:19->740:42
	FABS	%fr7, %fr8	# build/example.ml#740:13->740:43
	FLDD	%fr8, %r9, $4, %r14	# build/example.ml#737:63->737:71
	SDR	%r6, %r31, $152	# build/example.ml#740:6->740:53
	SDR	%r5, %r31, $156	# build/example.ml#740:6->740:53
	SDR	%r4, %r31, $160	# build/example.ml#740:6->740:53
	SDR	%r3, %r31, $164	# build/example.ml#740:6->740:53
	SDR	%r2, %r31, $168	# build/example.ml#740:6->740:53
	SDR	%r1, %r31, $172	# build/example.ml#740:6->740:53
	FSDR	%fr2, %r31, $176	# build/example.ml#740:6->740:53
	FSDR	%fr1, %r31, $180	# build/example.ml#740:6->740:53
	FMV	%fr1, %fr8	# build/example.ml#740:6->740:53
	FMV	%fr0, %fr7	# build/example.ml#740:6->740:53
	ADDI	%r31, %r31, $184	# build/example.ml#740:6->740:53
	ADDI	%r31, %r31, $4	# build/example.ml#740:6->740:53
	SIP	# build/example.ml#740:6->740:53
	J	$min_caml_fless	# build/example.ml#740:6->740:53
	ADDI	%r31, %r31, $-184	# build/example.ml#740:6->740:53
	MV	%r7, %r0	# build/example.ml#740:6->740:53
	LDR	%r6, %r31, $152	# build/example.ml#740:6->740:53
	LDR	%r5, %r31, $156	# build/example.ml#740:6->740:53
	LDR	%r4, %r31, $160	# build/example.ml#740:6->740:53
	LDR	%r3, %r31, $164	# build/example.ml#740:6->740:53
	LDR	%r2, %r31, $168	# build/example.ml#740:6->740:53
	LDR	%r1, %r31, $172	# build/example.ml#740:6->740:53
	FLDR	%fr2, %r31, $176	# build/example.ml#740:6->740:53
	FLDR	%fr1, %r31, $180	# build/example.ml#740:6->740:53
	MVI	%r8, $0	# build/example.ml#740:3->744:13
	CEQ	%r7, %r8	# build/example.ml#740:3->744:13
	JZ	$if_eq.11821	# build/example.ml#740:3->744:13
	FLDD	%fr8, %r12, $4, %r15	# build/example.ml#735:14->735:25
	FMUL	%fr8, %fr9, %fr8	# build/example.ml#741:21->741:38
	FADD	%fr8, %fr8, %fr2	# build/example.ml#741:21->741:44
	FABS	%fr7, %fr8	# build/example.ml#741:15->741:45
	FLDD	%fr8, %r9, $4, %r15	# build/example.ml#737:63->737:71
	SDR	%r6, %r31, $184	# build/example.ml#741:8->741:55
	SDR	%r5, %r31, $188	# build/example.ml#741:8->741:55
	SDR	%r4, %r31, $192	# build/example.ml#741:8->741:55
	SDR	%r3, %r31, $196	# build/example.ml#741:8->741:55
	SDR	%r2, %r31, $200	# build/example.ml#741:8->741:55
	SDR	%r1, %r31, $204	# build/example.ml#741:8->741:55
	FSDR	%fr2, %r31, $208	# build/example.ml#741:8->741:55
	FSDR	%fr1, %r31, $212	# build/example.ml#741:8->741:55
	FMV	%fr1, %fr8	# build/example.ml#741:8->741:55
	FMV	%fr0, %fr7	# build/example.ml#741:8->741:55
	ADDI	%r31, %r31, $216	# build/example.ml#741:8->741:55
	ADDI	%r31, %r31, $4	# build/example.ml#741:8->741:55
	SIP	# build/example.ml#741:8->741:55
	J	$min_caml_fless	# build/example.ml#741:8->741:55
	ADDI	%r31, %r31, $-216	# build/example.ml#741:8->741:55
	MV	%r8, %r0	# build/example.ml#741:8->741:55
	LDR	%r6, %r31, $184	# build/example.ml#741:8->741:55
	LDR	%r5, %r31, $188	# build/example.ml#741:8->741:55
	LDR	%r4, %r31, $192	# build/example.ml#741:8->741:55
	LDR	%r3, %r31, $196	# build/example.ml#741:8->741:55
	LDR	%r2, %r31, $200	# build/example.ml#741:8->741:55
	LDR	%r1, %r31, $204	# build/example.ml#741:8->741:55
	FLDR	%fr2, %r31, $208	# build/example.ml#741:8->741:55
	FLDR	%fr1, %r31, $212	# build/example.ml#741:8->741:55
	MVI	%r9, $0	# build/example.ml#741:5->743:15
	CEQ	%r8, %r9	# build/example.ml#741:5->743:15
	JZ	$if_eq.11823	# build/example.ml#741:5->743:15
	MVI	%r8, $min_caml_solver_dist	# build/example.ml#742:8->742:19
	MVI	%r9, $0	# build/example.ml#742:21->742:22
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#742:8->742:29
	MVI	%r0, $1	# build/example.ml#742:31->742:35
	J	$if_eq_cont.11824	# build/example.ml#741:5->743:15
if_eq.11823:
	MVI	%r0, $0	# build/example.ml#743:10->743:15
if_eq_cont.11824:
	J	$if_eq_cont.11822	# build/example.ml#740:3->744:13
if_eq.11821:
	MVI	%r0, $0	# build/example.ml#744:8->744:13
if_eq_cont.11822:
if_eq_cont.11820:
	LDR	%r9, %r31, $0	# build/example.ml#735:14->735:25
	LDR	%r8, %r31, $4	# build/example.ml#735:14->735:25
	LDR	%r7, %r31, $8	# build/example.ml#735:14->735:25
	LDR	%r15, %r31, $12	# build/example.ml#735:14->735:25
	LDR	%r14, %r31, $16	# build/example.ml#735:14->735:25
	LDR	%r13, %r31, $20	# build/example.ml#735:14->735:25
	LDR	%r12, %r31, $24	# build/example.ml#735:14->735:25
	LDR	%r11, %r31, $28	# build/example.ml#735:14->735:25
	LDR	%r10, %r31, $32	# build/example.ml#735:14->735:25
	FLDR	%fr9, %r31, $36	# build/example.ml#735:14->735:25
	FLDR	%fr8, %r31, $40	# build/example.ml#735:14->735:25
	FLDR	%fr7, %r31, $44	# build/example.ml#735:14->735:25
	LINK	# build/example.ml#735:14->735:25
read_parameter.2711:
	SDR	%r9, %r31, $0	# build/example.ml#710:4->710:26
	SDR	%r8, %r31, $4	# build/example.ml#710:4->710:26
	SDR	%r7, %r31, $8	# build/example.ml#710:4->710:26
	ADDI	%r31, %r31, $12	# build/example.ml#710:4->710:26
	ADDI	%r31, %r31, $4	# build/example.ml#710:4->710:26
	SIP	# build/example.ml#710:4->710:26
	J	$read_screen_settings.2692	# build/example.ml#710:4->710:26
	ADDI	%r31, %r31, $-12	# build/example.ml#710:4->710:26
	ADDI	%r31, %r31, $12	# build/example.ml#711:4->711:16
	ADDI	%r31, %r31, $4	# build/example.ml#711:4->711:16
	SIP	# build/example.ml#711:4->711:16
	J	$read_light.2694	# build/example.ml#711:4->711:16
	ADDI	%r31, %r31, $-12	# build/example.ml#711:4->711:16
	MVI	%r9, $0	# build/example.ml#676:15->676:16
	MV	%r1, %r9	# build/example.ml#676:3->676:16
	ADDI	%r31, %r31, $12	# build/example.ml#676:3->676:16
	ADDI	%r31, %r31, $4	# build/example.ml#676:3->676:16
	SIP	# build/example.ml#676:3->676:16
	J	$read_object.2701	# build/example.ml#676:3->676:16
	ADDI	%r31, %r31, $-12	# build/example.ml#676:3->676:16
	MVI	%r9, $0	# build/example.ml#713:21->713:22
	MV	%r1, %r9	# build/example.ml#713:4->713:22
	ADDI	%r31, %r31, $12	# build/example.ml#713:4->713:22
	ADDI	%r31, %r31, $4	# build/example.ml#713:4->713:22
	SIP	# build/example.ml#713:4->713:22
	J	$read_and_network.2709	# build/example.ml#713:4->713:22
	ADDI	%r31, %r31, $-12	# build/example.ml#713:4->713:22
	MVI	%r7, $min_caml_or_net	# build/example.ml#714:4->714:10
	MVI	%r8, $0	# build/example.ml#714:12->714:13
	MVI	%r9, $0	# build/example.ml#714:34->714:35
	MV	%r1, %r9	# build/example.ml#714:18->714:35
	ADDI	%r31, %r31, $12	# build/example.ml#714:18->714:35
	ADDI	%r31, %r31, $4	# build/example.ml#714:18->714:35
	SIP	# build/example.ml#714:18->714:35
	J	$read_or_network.2707	# build/example.ml#714:18->714:35
	ADDI	%r31, %r31, $-12	# build/example.ml#714:18->714:35
	MV	%r9, %r0	# build/example.ml#714:18->714:35
	SDD	%r9, %r7, $4, %r8	# build/example.ml#714:4->714:35
	LDR	%r9, %r31, $0	# build/example.ml#710:4->710:26
	LDR	%r8, %r31, $4	# build/example.ml#710:4->710:26
	LDR	%r7, %r31, $8	# build/example.ml#710:4->710:26
	LINK	# build/example.ml#710:4->710:26
read_and_network.2709:
	SDR	%r9, %r31, $0	# build/example.ml#700:27->700:28
	SDR	%r8, %r31, $4	# build/example.ml#700:27->700:28
	SDR	%r7, %r31, $8	# build/example.ml#700:27->700:28
	MVI	%r9, $0	# build/example.ml#700:27->700:28
	SDR	%r1, %r31, $12	# build/example.ml#700:13->700:28
	MV	%r1, %r9	# build/example.ml#700:13->700:28
	ADDI	%r31, %r31, $16	# build/example.ml#700:13->700:28
	ADDI	%r31, %r31, $4	# build/example.ml#700:13->700:28
	SIP	# build/example.ml#700:13->700:28
	J	$read_net_item.2705	# build/example.ml#700:13->700:28
	ADDI	%r31, %r31, $-16	# build/example.ml#700:13->700:28
	MV	%r9, %r0	# build/example.ml#700:13->700:28
	LDR	%r1, %r31, $12	# build/example.ml#700:13->700:28
	MVI	%r8, $0	# build/example.ml#701:11->701:12
	LDD	%r7, %r9, $4, %r8	# build/example.ml#687:6->687:24
	MVI	%r8, $-1	# build/example.ml#701:16->701:18
	CEQ	%r7, %r8	# build/example.ml#701:3->705:4
	JZ	$if_eq.11825	# build/example.ml#701:3->705:4
	MVI	%r8, $min_caml_and_net	# build/example.ml#703:5->703:12
	SDD	%r9, %r8, $4, %r1	# build/example.ml#703:5->703:23
	MVI	%r9, $1	# build/example.ml#704:27->704:28
	ADD	%r9, %r1, %r9	# build/example.ml#704:23->704:28
	SDR	%r1, %r31, $16	# build/example.ml#704:5->704:29
	MV	%r1, %r9	# build/example.ml#704:5->704:29
	ADDI	%r31, %r31, $20	# build/example.ml#704:5->704:29
	ADDI	%r31, %r31, $4	# build/example.ml#704:5->704:29
	SIP	# build/example.ml#704:5->704:29
	J	$read_and_network.2709	# build/example.ml#704:5->704:29
	ADDI	%r31, %r31, $-20	# build/example.ml#704:5->704:29
	LDR	%r1, %r31, $16	# build/example.ml#704:5->704:29
	J	$if_eq_cont.11826	# build/example.ml#701:3->705:4
if_eq.11825:
if_eq_cont.11826:
	LDR	%r9, %r31, $0	# build/example.ml#700:27->700:28
	LDR	%r8, %r31, $4	# build/example.ml#700:27->700:28
	LDR	%r7, %r31, $8	# build/example.ml#700:27->700:28
	LINK	# build/example.ml#700:27->700:28
read_or_network.2707:
	SDR	%r9, %r31, $0	# build/example.ml#691:27->691:28
	SDR	%r8, %r31, $4	# build/example.ml#691:27->691:28
	SDR	%r7, %r31, $8	# build/example.ml#691:27->691:28
	MVI	%r9, $0	# build/example.ml#691:27->691:28
	SDR	%r1, %r31, $12	# build/example.ml#691:13->691:28
	MV	%r1, %r9	# build/example.ml#691:13->691:28
	ADDI	%r31, %r31, $16	# build/example.ml#691:13->691:28
	ADDI	%r31, %r31, $4	# build/example.ml#691:13->691:28
	SIP	# build/example.ml#691:13->691:28
	J	$read_net_item.2705	# build/example.ml#691:13->691:28
	ADDI	%r31, %r31, $-16	# build/example.ml#691:13->691:28
	MV	%r9, %r0	# build/example.ml#691:13->691:28
	LDR	%r1, %r31, $12	# build/example.ml#691:13->691:28
	MVI	%r8, $0	# build/example.ml#692:11->692:12
	LDD	%r7, %r9, $4, %r8	# build/example.ml#687:6->687:24
	MVI	%r8, $-1	# build/example.ml#692:16->692:18
	CEQ	%r7, %r8	# build/example.ml#692:3->696:27
	JZ	$if_eq.11827	# build/example.ml#692:3->696:27
	MVI	%r8, $1	# build/example.ml#695:39->695:40
	ADD	%r8, %r1, %r8	# build/example.ml#695:30->695:40
	SDR	%r1, %r31, $16	# build/example.ml#695:13->695:41
	MV	%r1, %r8	# build/example.ml#695:13->695:41
	ADDI	%r31, %r31, $20	# build/example.ml#695:13->695:41
	ADDI	%r31, %r31, $4	# build/example.ml#695:13->695:41
	SIP	# build/example.ml#695:13->695:41
	J	$read_or_network.2707	# build/example.ml#695:13->695:41
	ADDI	%r31, %r31, $-20	# build/example.ml#695:13->695:41
	MV	%r8, %r0	# build/example.ml#695:13->695:41
	LDR	%r1, %r31, $16	# build/example.ml#695:13->695:41
	SDD	%r9, %r8, $4, %r1	# build/example.ml#696:6->696:23
	MV	%r0, %r8	# build/example.ml#696:25->696:26
	J	$if_eq_cont.11828	# build/example.ml#692:3->696:27
if_eq.11827:
	MVI	%r8, $1	# build/example.ml#693:28->693:29
	ADD	%r8, %r1, %r8	# build/example.ml#693:19->693:29
	SDR	%r1, %r31, $20	# build/example.ml#693:5->693:34
	MV	%r2, %r9	# build/example.ml#693:5->693:34
	MV	%r1, %r8	# build/example.ml#693:5->693:34
	ADDI	%r31, %r31, $24	# build/example.ml#693:5->693:34
	ADDI	%r31, %r31, $4	# build/example.ml#693:5->693:34
	SIP	# build/example.ml#693:5->693:34
	J	$min_caml_create_int_array	# build/example.ml#693:5->693:34
	ADDI	%r31, %r31, $-24	# build/example.ml#693:5->693:34
	LDR	%r1, %r31, $20	# build/example.ml#693:5->693:34
if_eq_cont.11828:
	LDR	%r9, %r31, $0	# build/example.ml#691:27->691:28
	LDR	%r8, %r31, $4	# build/example.ml#691:27->691:28
	LDR	%r7, %r31, $8	# build/example.ml#691:27->691:28
	LINK	# build/example.ml#691:27->691:28
read_net_item.2705:
	SDR	%r9, %r31, $0	# build/example.ml#683:14->683:25
	SDR	%r8, %r31, $4	# build/example.ml#683:14->683:25
	RI	%r8	# build/example.ml#683:14->683:25
	MVI	%r9, $-1	# build/example.ml#684:13->684:15
	CEQ	%r8, %r9	# build/example.ml#684:3->687:28
	JZ	$if_eq.11829	# build/example.ml#684:3->687:28
	MVI	%r9, $1	# build/example.ml#686:37->686:38
	ADD	%r9, %r1, %r9	# build/example.ml#686:28->686:38
	SDR	%r1, %r31, $8	# build/example.ml#686:13->686:39
	MV	%r1, %r9	# build/example.ml#686:13->686:39
	ADDI	%r31, %r31, $12	# build/example.ml#686:13->686:39
	ADDI	%r31, %r31, $4	# build/example.ml#686:13->686:39
	SIP	# build/example.ml#686:13->686:39
	J	$read_net_item.2705	# build/example.ml#686:13->686:39
	ADDI	%r31, %r31, $-12	# build/example.ml#686:13->686:39
	MV	%r9, %r0	# build/example.ml#686:13->686:39
	LDR	%r1, %r31, $8	# build/example.ml#686:13->686:39
	SDD	%r8, %r9, $4, %r1	# build/example.ml#687:6->687:24
	MV	%r0, %r9	# build/example.ml#687:26->687:27
	J	$if_eq_cont.11830	# build/example.ml#684:3->687:28
if_eq.11829:
	MVI	%r9, $1	# build/example.ml#684:44->684:45
	ADD	%r8, %r1, %r9	# build/example.ml#684:35->684:45
	MVI	%r9, $-1	# build/example.ml#684:48->684:50
	SDR	%r1, %r31, $12	# build/example.ml#684:21->684:51
	MV	%r2, %r9	# build/example.ml#684:21->684:51
	MV	%r1, %r8	# build/example.ml#684:21->684:51
	ADDI	%r31, %r31, $16	# build/example.ml#684:21->684:51
	ADDI	%r31, %r31, $4	# build/example.ml#684:21->684:51
	SIP	# build/example.ml#684:21->684:51
	J	$min_caml_create_int_array	# build/example.ml#684:21->684:51
	ADDI	%r31, %r31, $-16	# build/example.ml#684:21->684:51
	LDR	%r1, %r31, $12	# build/example.ml#684:21->684:51
if_eq_cont.11830:
	LDR	%r9, %r31, $0	# build/example.ml#683:14->683:25
	LDR	%r8, %r31, $4	# build/example.ml#683:14->683:25
	LINK	# build/example.ml#683:14->683:25
read_object.2701:
	SDR	%r9, %r31, $0	# build/example.ml#667:10->667:12
	SDR	%r8, %r31, $4	# build/example.ml#667:10->667:12
	MVI	%r9, $60	# build/example.ml#667:10->667:12
	CMP	%r1, %r9	# build/example.ml#667:3->672:10
	JZ	$if_lt.11831	# build/example.ml#667:3->672:10
	J	$if_lt_cont.11832	# build/example.ml#667:3->672:10
if_lt.11831:
	SDR	%r1, %r31, $8	# build/example.ml#668:8->668:25
	ADDI	%r31, %r31, $12	# build/example.ml#668:8->668:25
	ADDI	%r31, %r31, $4	# build/example.ml#668:8->668:25
	SIP	# build/example.ml#668:8->668:25
	J	$read_nth_object.2699	# build/example.ml#668:8->668:25
	ADDI	%r31, %r31, $-12	# build/example.ml#668:8->668:25
	MV	%r8, %r0	# build/example.ml#668:8->668:25
	LDR	%r1, %r31, $8	# build/example.ml#668:8->668:25
	MVI	%r9, $0	# build/example.ml#668:5->671:25
	CEQ	%r8, %r9	# build/example.ml#668:5->671:25
	JZ	$if_eq.11833	# build/example.ml#668:5->671:25
	MVI	%r9, $1	# build/example.ml#669:24->669:25
	ADD	%r9, %r1, %r9	# build/example.ml#669:20->669:25
	SDR	%r1, %r31, $12	# build/example.ml#669:7->669:26
	MV	%r1, %r9	# build/example.ml#669:7->669:26
	ADDI	%r31, %r31, $16	# build/example.ml#669:7->669:26
	ADDI	%r31, %r31, $4	# build/example.ml#669:7->669:26
	SIP	# build/example.ml#669:7->669:26
	J	$read_object.2701	# build/example.ml#669:7->669:26
	ADDI	%r31, %r31, $-16	# build/example.ml#669:7->669:26
	LDR	%r1, %r31, $12	# build/example.ml#669:7->669:26
	J	$if_eq_cont.11834	# build/example.ml#668:5->671:25
if_eq.11833:
	MVI	%r8, $min_caml_n_objects	# build/example.ml#671:7->671:16
	MVI	%r9, $0	# build/example.ml#671:18->671:19
	SDD	%r1, %r8, $4, %r9	# build/example.ml#671:7->671:25
if_eq_cont.11834:
if_lt_cont.11832:
	LDR	%r9, %r31, $0	# build/example.ml#667:10->667:12
	LDR	%r8, %r31, $4	# build/example.ml#667:10->667:12
	LINK	# build/example.ml#667:10->667:12
read_nth_object.2699:
	SDR	%r9, %r31, $0	# build/example.ml#585:17->585:28
	SDR	%r8, %r31, $4	# build/example.ml#585:17->585:28
	SDR	%r7, %r31, $8	# build/example.ml#585:17->585:28
	SDR	%r28, %r31, $12	# build/example.ml#585:17->585:28
	SDR	%r27, %r31, $16	# build/example.ml#585:17->585:28
	SDR	%r26, %r31, $20	# build/example.ml#585:17->585:28
	SDR	%r25, %r31, $24	# build/example.ml#585:17->585:28
	SDR	%r24, %r31, $28	# build/example.ml#585:17->585:28
	SDR	%r23, %r31, $32	# build/example.ml#585:17->585:28
	FSDR	%fr9, %r31, $36	# build/example.ml#585:17->585:28
	FSDR	%fr8, %r31, $40	# build/example.ml#585:17->585:28
	RI	%r8	# build/example.ml#585:17->585:28
	MVI	%r9, $-1	# build/example.ml#586:17->586:19
	CEQ	%r8, %r9	# build/example.ml#586:3->662:10
	JZ	$if_eq.11835	# build/example.ml#586:3->662:10
	RI	%r26	# build/example.ml#588:18->588:29
	RI	%r5	# build/example.ml#589:22->589:33
	RI	%r27	# build/example.ml#590:21->590:32
	MVI	%r9, $3	# build/example.ml#592:30->592:31
	FLDA	%fr9, $l.7787	# build/example.ml#592:32->592:35
	SDR	%r6, %r31, $44	# build/example.ml#592:17->592:35
	SDR	%r5, %r31, $48	# build/example.ml#592:17->592:35
	SDR	%r4, %r31, $52	# build/example.ml#592:17->592:35
	SDR	%r3, %r31, $56	# build/example.ml#592:17->592:35
	SDR	%r1, %r31, $60	# build/example.ml#592:17->592:35
	MV	%r1, %r9	# build/example.ml#592:17->592:35
	FMV	%fr0, %fr9	# build/example.ml#592:17->592:35
	ADDI	%r31, %r31, $64	# build/example.ml#592:17->592:35
	ADDI	%r31, %r31, $4	# build/example.ml#592:17->592:35
	SIP	# build/example.ml#592:17->592:35
	J	$min_caml_create_float_array	# build/example.ml#592:17->592:35
	ADDI	%r31, %r31, $-64	# build/example.ml#592:17->592:35
	MV	%r23, %r0	# build/example.ml#592:17->592:35
	LDR	%r6, %r31, $44	# build/example.ml#592:17->592:35
	LDR	%r5, %r31, $48	# build/example.ml#592:17->592:35
	LDR	%r4, %r31, $52	# build/example.ml#592:17->592:35
	LDR	%r3, %r31, $56	# build/example.ml#592:17->592:35
	LDR	%r1, %r31, $60	# build/example.ml#592:17->592:35
	MVI	%r9, $0	# build/example.ml#593:12->593:13
	RF	%fr9	# build/example.ml#593:18->593:31
	FSDD	%fr9, %r23, $4, %r9	# build/example.ml#593:7->593:31
	MVI	%r9, $1	# build/example.ml#594:12->594:13
	RF	%fr9	# build/example.ml#594:18->594:31
	FSDD	%fr9, %r23, $4, %r9	# build/example.ml#594:7->594:31
	MVI	%r9, $2	# build/example.ml#595:12->595:13
	RF	%fr9	# build/example.ml#595:18->595:31
	FSDD	%fr9, %r23, $4, %r9	# build/example.ml#595:7->595:31
	MVI	%r9, $3	# build/example.ml#597:30->597:31
	FLDA	%fr9, $l.7787	# build/example.ml#597:32->597:35
	SDR	%r6, %r31, $64	# build/example.ml#597:17->597:35
	SDR	%r5, %r31, $68	# build/example.ml#597:17->597:35
	SDR	%r4, %r31, $72	# build/example.ml#597:17->597:35
	SDR	%r3, %r31, $76	# build/example.ml#597:17->597:35
	SDR	%r1, %r31, $80	# build/example.ml#597:17->597:35
	MV	%r1, %r9	# build/example.ml#597:17->597:35
	FMV	%fr0, %fr9	# build/example.ml#597:17->597:35
	ADDI	%r31, %r31, $84	# build/example.ml#597:17->597:35
	ADDI	%r31, %r31, $4	# build/example.ml#597:17->597:35
	SIP	# build/example.ml#597:17->597:35
	J	$min_caml_create_float_array	# build/example.ml#597:17->597:35
	ADDI	%r31, %r31, $-84	# build/example.ml#597:17->597:35
	MV	%r9, %r0	# build/example.ml#597:17->597:35
	LDR	%r6, %r31, $64	# build/example.ml#597:17->597:35
	LDR	%r5, %r31, $68	# build/example.ml#597:17->597:35
	LDR	%r4, %r31, $72	# build/example.ml#597:17->597:35
	LDR	%r3, %r31, $76	# build/example.ml#597:17->597:35
	LDR	%r1, %r31, $80	# build/example.ml#597:17->597:35
	MVI	%r7, $0	# build/example.ml#598:12->598:13
	RF	%fr9	# build/example.ml#598:18->598:31
	FSDD	%fr9, %r9, $4, %r7	# build/example.ml#598:7->598:31
	MVI	%r7, $1	# build/example.ml#599:12->599:13
	RF	%fr9	# build/example.ml#599:18->599:31
	FSDD	%fr9, %r9, $4, %r7	# build/example.ml#599:7->599:31
	MVI	%r7, $2	# build/example.ml#600:12->600:13
	RF	%fr9	# build/example.ml#600:18->600:31
	FSDD	%fr9, %r9, $4, %r7	# build/example.ml#600:7->600:31
	RF	%fr9	# build/example.ml#602:30->602:43
	SDR	%r6, %r31, $84	# build/example.ml#602:22->602:44
	SDR	%r5, %r31, $88	# build/example.ml#602:22->602:44
	SDR	%r4, %r31, $92	# build/example.ml#602:22->602:44
	SDR	%r3, %r31, $96	# build/example.ml#602:22->602:44
	SDR	%r1, %r31, $100	# build/example.ml#602:22->602:44
	FMV	%fr0, %fr9	# build/example.ml#602:22->602:44
	ADDI	%r31, %r31, $104	# build/example.ml#602:22->602:44
	ADDI	%r31, %r31, $4	# build/example.ml#602:22->602:44
	SIP	# build/example.ml#602:22->602:44
	J	$min_caml_fisneg	# build/example.ml#602:22->602:44
	ADDI	%r31, %r31, $-104	# build/example.ml#602:22->602:44
	MV	%r28, %r0	# build/example.ml#602:22->602:44
	LDR	%r6, %r31, $84	# build/example.ml#602:22->602:44
	LDR	%r5, %r31, $88	# build/example.ml#602:22->602:44
	LDR	%r4, %r31, $92	# build/example.ml#602:22->602:44
	LDR	%r3, %r31, $96	# build/example.ml#602:22->602:44
	LDR	%r1, %r31, $100	# build/example.ml#602:22->602:44
	MVI	%r7, $2	# build/example.ml#604:36->604:37
	FLDA	%fr9, $l.7787	# build/example.ml#604:38->604:41
	SDR	%r6, %r31, $104	# build/example.ml#604:23->604:41
	SDR	%r5, %r31, $108	# build/example.ml#604:23->604:41
	SDR	%r4, %r31, $112	# build/example.ml#604:23->604:41
	SDR	%r3, %r31, $116	# build/example.ml#604:23->604:41
	SDR	%r1, %r31, $120	# build/example.ml#604:23->604:41
	MV	%r1, %r7	# build/example.ml#604:23->604:41
	FMV	%fr0, %fr9	# build/example.ml#604:23->604:41
	ADDI	%r31, %r31, $124	# build/example.ml#604:23->604:41
	ADDI	%r31, %r31, $4	# build/example.ml#604:23->604:41
	SIP	# build/example.ml#604:23->604:41
	J	$min_caml_create_float_array	# build/example.ml#604:23->604:41
	ADDI	%r31, %r31, $-124	# build/example.ml#604:23->604:41
	MV	%r4, %r0	# build/example.ml#604:23->604:41
	LDR	%r6, %r31, $104	# build/example.ml#604:23->604:41
	LDR	%r5, %r31, $108	# build/example.ml#604:23->604:41
	LDR	%r4, %r31, $112	# build/example.ml#604:23->604:41
	LDR	%r3, %r31, $116	# build/example.ml#604:23->604:41
	LDR	%r1, %r31, $120	# build/example.ml#604:23->604:41
	MVI	%r7, $0	# build/example.ml#605:18->605:19
	RF	%fr9	# build/example.ml#605:24->605:37
	FSDD	%fr9, %r4, $4, %r7	# build/example.ml#605:7->605:37
	MVI	%r7, $1	# build/example.ml#606:18->606:19
	RF	%fr9	# build/example.ml#606:24->606:37
	FSDD	%fr9, %r4, $4, %r7	# build/example.ml#606:7->606:37
	MVI	%r7, $3	# build/example.ml#608:32->608:33
	FLDA	%fr9, $l.7787	# build/example.ml#608:34->608:37
	SDR	%r6, %r31, $124	# build/example.ml#608:19->608:37
	SDR	%r5, %r31, $128	# build/example.ml#608:19->608:37
	SDR	%r4, %r31, $132	# build/example.ml#608:19->608:37
	SDR	%r3, %r31, $136	# build/example.ml#608:19->608:37
	SDR	%r1, %r31, $140	# build/example.ml#608:19->608:37
	MV	%r1, %r7	# build/example.ml#608:19->608:37
	FMV	%fr0, %fr9	# build/example.ml#608:19->608:37
	ADDI	%r31, %r31, $144	# build/example.ml#608:19->608:37
	ADDI	%r31, %r31, $4	# build/example.ml#608:19->608:37
	SIP	# build/example.ml#608:19->608:37
	J	$min_caml_create_float_array	# build/example.ml#608:19->608:37
	ADDI	%r31, %r31, $-144	# build/example.ml#608:19->608:37
	MV	%r24, %r0	# build/example.ml#608:19->608:37
	LDR	%r6, %r31, $124	# build/example.ml#608:19->608:37
	LDR	%r5, %r31, $128	# build/example.ml#608:19->608:37
	LDR	%r4, %r31, $132	# build/example.ml#608:19->608:37
	LDR	%r3, %r31, $136	# build/example.ml#608:19->608:37
	LDR	%r1, %r31, $140	# build/example.ml#608:19->608:37
	MVI	%r7, $0	# build/example.ml#609:14->609:15
	RF	%fr9	# build/example.ml#609:20->609:33
	FSDD	%fr9, %r24, $4, %r7	# build/example.ml#609:7->609:33
	MVI	%r7, $1	# build/example.ml#610:14->610:15
	RF	%fr9	# build/example.ml#610:20->610:33
	FSDD	%fr9, %r24, $4, %r7	# build/example.ml#610:7->610:33
	MVI	%r7, $2	# build/example.ml#611:14->611:15
	RF	%fr9	# build/example.ml#611:20->611:33
	FSDD	%fr9, %r24, $4, %r7	# build/example.ml#611:7->611:33
	MVI	%r7, $3	# build/example.ml#613:35->613:36
	FLDA	%fr9, $l.7787	# build/example.ml#613:37->613:40
	SDR	%r6, %r31, $144	# build/example.ml#613:22->613:40
	SDR	%r5, %r31, $148	# build/example.ml#613:22->613:40
	SDR	%r4, %r31, $152	# build/example.ml#613:22->613:40
	SDR	%r3, %r31, $156	# build/example.ml#613:22->613:40
	SDR	%r1, %r31, $160	# build/example.ml#613:22->613:40
	MV	%r1, %r7	# build/example.ml#613:22->613:40
	FMV	%fr0, %fr9	# build/example.ml#613:22->613:40
	ADDI	%r31, %r31, $164	# build/example.ml#613:22->613:40
	ADDI	%r31, %r31, $4	# build/example.ml#613:22->613:40
	SIP	# build/example.ml#613:22->613:40
	J	$min_caml_create_float_array	# build/example.ml#613:22->613:40
	ADDI	%r31, %r31, $-164	# build/example.ml#613:22->613:40
	MV	%r6, %r0	# build/example.ml#613:22->613:40
	LDR	%r6, %r31, $144	# build/example.ml#613:22->613:40
	LDR	%r5, %r31, $148	# build/example.ml#613:22->613:40
	LDR	%r4, %r31, $152	# build/example.ml#613:22->613:40
	LDR	%r3, %r31, $156	# build/example.ml#613:22->613:40
	LDR	%r1, %r31, $160	# build/example.ml#613:22->613:40
	MVI	%r7, $0	# build/example.ml#614:21->614:22
	CEQ	%r27, %r7	# build/example.ml#614:7->620:14
	JZ	$if_eq.11837	# build/example.ml#614:7->620:14
	MVI	%r7, $0	# build/example.ml#616:13->616:14
	RF	%fr8	# build/example.ml#616:24->616:37
	FLDA	%fr9, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#483:3->483:19
	FSDD	%fr9, %r6, $4, %r7	# build/example.ml#616:3->616:38
	MVI	%r7, $1	# build/example.ml#617:13->617:14
	RF	%fr8	# build/example.ml#617:24->617:37
	FLDA	%fr9, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#483:3->483:19
	FSDD	%fr9, %r6, $4, %r7	# build/example.ml#617:3->617:38
	MVI	%r7, $2	# build/example.ml#618:13->618:14
	RF	%fr8	# build/example.ml#618:24->618:37
	FLDA	%fr9, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#483:3->483:19
	FSDD	%fr9, %r6, $4, %r7	# build/example.ml#618:3->618:38
	J	$if_eq_cont.11838	# build/example.ml#614:7->620:14
if_eq.11837:
if_eq_cont.11838:
	MVI	%r7, $2	# build/example.ml#625:33->625:34
	CEQ	%r26, %r7	# build/example.ml#625:23->625:58
	JZ	$if_eq.11839	# build/example.ml#625:23->625:58
	MV	%r0, %r28	# build/example.ml#625:50->625:58
	MV	%r3, %r0	# build/example.ml#625:50->625:58
	J	$if_eq_cont.11840	# build/example.ml#625:23->625:58
if_eq.11839:
	MVI	%r0, $1	# build/example.ml#625:40->625:44
	MV	%r3, %r0	# build/example.ml#625:40->625:44
if_eq_cont.11840:
	MVI	%r7, $4	# build/example.ml#626:31->626:32
	FLDA	%fr9, $l.7787	# build/example.ml#626:33->626:36
	SDR	%r6, %r31, $164	# build/example.ml#626:18->626:36
	SDR	%r5, %r31, $168	# build/example.ml#626:18->626:36
	SDR	%r4, %r31, $172	# build/example.ml#626:18->626:36
	SDR	%r3, %r31, $176	# build/example.ml#626:18->626:36
	SDR	%r1, %r31, $180	# build/example.ml#626:18->626:36
	MV	%r1, %r7	# build/example.ml#626:18->626:36
	FMV	%fr0, %fr9	# build/example.ml#626:18->626:36
	ADDI	%r31, %r31, $184	# build/example.ml#626:18->626:36
	ADDI	%r31, %r31, $4	# build/example.ml#626:18->626:36
	SIP	# build/example.ml#626:18->626:36
	J	$min_caml_create_float_array	# build/example.ml#626:18->626:36
	ADDI	%r31, %r31, $-184	# build/example.ml#626:18->626:36
	MV	%r25, %r0	# build/example.ml#626:18->626:36
	LDR	%r6, %r31, $164	# build/example.ml#626:18->626:36
	LDR	%r5, %r31, $168	# build/example.ml#626:18->626:36
	LDR	%r4, %r31, $172	# build/example.ml#626:18->626:36
	LDR	%r3, %r31, $176	# build/example.ml#626:18->626:36
	LDR	%r1, %r31, $180	# build/example.ml#626:18->626:36
	MV	%r7, %r30	# build/example.ml#629:3->635:14
	ADDI	%r30, %r30, $44	# build/example.ml#629:3->635:14
	SDR	%r25, %r7, $40	# build/example.ml#629:3->635:14
	SDR	%r6, %r7, $36	# build/example.ml#629:3->635:14
	SDR	%r24, %r7, $32	# build/example.ml#629:3->635:14
	SDR	%r4, %r7, $28	# build/example.ml#629:3->635:14
	SDR	%r3, %r7, $24	# build/example.ml#629:3->635:14
	SDR	%r9, %r7, $20	# build/example.ml#629:3->635:14
	SDR	%r23, %r7, $16	# build/example.ml#629:3->635:14
	SDR	%r27, %r7, $12	# build/example.ml#629:3->635:14
	SDR	%r5, %r7, $8	# build/example.ml#629:3->635:14
	SDR	%r26, %r7, $4	# build/example.ml#629:3->635:14
	SDR	%r8, %r7, $0	# build/example.ml#629:3->635:14
	MV	%r9, %r7	# build/example.ml#629:3->635:14
	MVI	%r8, $min_caml_objects	# build/example.ml#637:7->637:14
	SDD	%r9, %r8, $4, %r1	# build/example.ml#637:7->637:25
	MVI	%r9, $3	# build/example.ml#639:17->639:18
	CEQ	%r26, %r9	# build/example.ml#639:7->652:14
	JZ	$if_eq.11841	# build/example.ml#639:7->652:14
	MVI	%r9, $2	# build/example.ml#649:22->649:23
	CEQ	%r26, %r9	# build/example.ml#649:12->652:14
	JZ	$if_eq.11843	# build/example.ml#649:12->652:14
	J	$if_eq_cont.11844	# build/example.ml#649:12->652:14
if_eq.11843:
	MVI	%r9, $0	# build/example.ml#651:19->651:31
	CEQ	%r28, %r9	# build/example.ml#651:19->651:31
	JZ	$if_eq.11845	# build/example.ml#651:19->651:31
	MVI	%r0, $0	# build/example.ml#651:19->651:31
	MV	%r9, %r0	# build/example.ml#651:19->651:31
	J	$if_eq_cont.11846	# build/example.ml#651:19->651:31
if_eq.11845:
	MVI	%r0, $1	# build/example.ml#651:19->651:31
	MV	%r9, %r0	# build/example.ml#651:19->651:31
if_eq_cont.11846:
	SDR	%r6, %r31, $184	# build/example.ml#651:2->651:32
	SDR	%r5, %r31, $188	# build/example.ml#651:2->651:32
	SDR	%r4, %r31, $192	# build/example.ml#651:2->651:32
	SDR	%r3, %r31, $196	# build/example.ml#651:2->651:32
	SDR	%r1, %r31, $200	# build/example.ml#651:2->651:32
	MV	%r2, %r9	# build/example.ml#651:2->651:32
	MV	%r1, %r23	# build/example.ml#651:2->651:32
	ADDI	%r31, %r31, $204	# build/example.ml#651:2->651:32
	ADDI	%r31, %r31, $4	# build/example.ml#651:2->651:32
	SIP	# build/example.ml#651:2->651:32
	J	$vecunit_sgn.2591	# build/example.ml#651:2->651:32
	ADDI	%r31, %r31, $-204	# build/example.ml#651:2->651:32
	LDR	%r6, %r31, $184	# build/example.ml#651:2->651:32
	LDR	%r5, %r31, $188	# build/example.ml#651:2->651:32
	LDR	%r4, %r31, $192	# build/example.ml#651:2->651:32
	LDR	%r3, %r31, $196	# build/example.ml#651:2->651:32
	LDR	%r1, %r31, $200	# build/example.ml#651:2->651:32
if_eq_cont.11844:
	J	$if_eq_cont.11842	# build/example.ml#639:7->652:14
if_eq.11841:
	MVI	%r9, $0	# build/example.ml#642:16->642:17
	FLDD	%fr9, %r23, $4, %r9	# build/example.ml#592:17->592:35
	MVI	%r8, $0	# build/example.ml#643:8->643:9
	SDR	%r6, %r31, $204	# build/example.ml#643:17->643:26
	SDR	%r5, %r31, $208	# build/example.ml#643:17->643:26
	SDR	%r4, %r31, $212	# build/example.ml#643:17->643:26
	SDR	%r3, %r31, $216	# build/example.ml#643:17->643:26
	SDR	%r1, %r31, $220	# build/example.ml#643:17->643:26
	FMV	%fr0, %fr9	# build/example.ml#643:17->643:26
	ADDI	%r31, %r31, $224	# build/example.ml#643:17->643:26
	ADDI	%r31, %r31, $4	# build/example.ml#643:17->643:26
	SIP	# build/example.ml#643:17->643:26
	J	$min_caml_fiszero	# build/example.ml#643:17->643:26
	ADDI	%r31, %r31, $-224	# build/example.ml#643:17->643:26
	MV	%r7, %r0	# build/example.ml#643:17->643:26
	LDR	%r6, %r31, $204	# build/example.ml#643:17->643:26
	LDR	%r5, %r31, $208	# build/example.ml#643:17->643:26
	LDR	%r4, %r31, $212	# build/example.ml#643:17->643:26
	LDR	%r3, %r31, $216	# build/example.ml#643:17->643:26
	LDR	%r1, %r31, $220	# build/example.ml#643:17->643:26
	MVI	%r9, $0	# build/example.ml#643:14->643:56
	CEQ	%r7, %r9	# build/example.ml#643:14->643:56
	JZ	$if_eq.11847	# build/example.ml#643:14->643:56
	FLDA	%r0, $l.7787	# build/example.ml#643:32->643:35
	MV	%fr9, %r0	# build/example.ml#643:32->643:35
	J	$if_eq_cont.11848	# build/example.ml#643:14->643:56
if_eq.11847:
	SDR	%r6, %r31, $224	# build/example.ml#643:41->643:46
	SDR	%r5, %r31, $228	# build/example.ml#643:41->643:46
	SDR	%r4, %r31, $232	# build/example.ml#643:41->643:46
	SDR	%r3, %r31, $236	# build/example.ml#643:41->643:46
	SDR	%r1, %r31, $240	# build/example.ml#643:41->643:46
	FMV	%fr0, %fr9	# build/example.ml#643:41->643:46
	ADDI	%r31, %r31, $244	# build/example.ml#643:41->643:46
	ADDI	%r31, %r31, $4	# build/example.ml#643:41->643:46
	SIP	# build/example.ml#643:41->643:46
	J	$sgn.2565	# build/example.ml#643:41->643:46
	ADDI	%r31, %r31, $-244	# build/example.ml#643:41->643:46
	FMV	%fr8, %fr0	# build/example.ml#643:41->643:46
	LDR	%r6, %r31, $224	# build/example.ml#643:41->643:46
	LDR	%r5, %r31, $228	# build/example.ml#643:41->643:46
	LDR	%r4, %r31, $232	# build/example.ml#643:41->643:46
	LDR	%r3, %r31, $236	# build/example.ml#643:41->643:46
	LDR	%r1, %r31, $240	# build/example.ml#643:41->643:46
	SDR	%r6, %r31, $244	# build/example.ml#643:50->643:56
	SDR	%r5, %r31, $248	# build/example.ml#643:50->643:56
	SDR	%r4, %r31, $252	# build/example.ml#643:50->643:56
	SDR	%r3, %r31, $256	# build/example.ml#643:50->643:56
	SDR	%r1, %r31, $260	# build/example.ml#643:50->643:56
	FMV	%fr0, %fr9	# build/example.ml#643:50->643:56
	ADDI	%r31, %r31, $264	# build/example.ml#643:50->643:56
	ADDI	%r31, %r31, $4	# build/example.ml#643:50->643:56
	SIP	# build/example.ml#643:50->643:56
	J	$min_caml_fsqr	# build/example.ml#643:50->643:56
	ADDI	%r31, %r31, $-264	# build/example.ml#643:50->643:56
	FMV	%fr9, %fr0	# build/example.ml#643:50->643:56
	LDR	%r6, %r31, $244	# build/example.ml#643:50->643:56
	LDR	%r5, %r31, $248	# build/example.ml#643:50->643:56
	LDR	%r4, %r31, $252	# build/example.ml#643:50->643:56
	LDR	%r3, %r31, $256	# build/example.ml#643:50->643:56
	LDR	%r1, %r31, $260	# build/example.ml#643:50->643:56
	FDIV	%r0, %fr8, %fr9	# build/example.ml#643:41->643:56
	MV	%fr9, %r0	# build/example.ml#643:41->643:56
if_eq_cont.11848:
	FSDD	%fr9, %r23, $4, %r8	# build/example.ml#643:3->643:56
	MVI	%r9, $1	# build/example.ml#644:16->644:17
	FLDD	%fr9, %r23, $4, %r9	# build/example.ml#592:17->592:35
	MVI	%r8, $1	# build/example.ml#645:8->645:9
	SDR	%r6, %r31, $264	# build/example.ml#645:17->645:26
	SDR	%r5, %r31, $268	# build/example.ml#645:17->645:26
	SDR	%r4, %r31, $272	# build/example.ml#645:17->645:26
	SDR	%r3, %r31, $276	# build/example.ml#645:17->645:26
	SDR	%r1, %r31, $280	# build/example.ml#645:17->645:26
	FMV	%fr0, %fr9	# build/example.ml#645:17->645:26
	ADDI	%r31, %r31, $284	# build/example.ml#645:17->645:26
	ADDI	%r31, %r31, $4	# build/example.ml#645:17->645:26
	SIP	# build/example.ml#645:17->645:26
	J	$min_caml_fiszero	# build/example.ml#645:17->645:26
	ADDI	%r31, %r31, $-284	# build/example.ml#645:17->645:26
	MV	%r7, %r0	# build/example.ml#645:17->645:26
	LDR	%r6, %r31, $264	# build/example.ml#645:17->645:26
	LDR	%r5, %r31, $268	# build/example.ml#645:17->645:26
	LDR	%r4, %r31, $272	# build/example.ml#645:17->645:26
	LDR	%r3, %r31, $276	# build/example.ml#645:17->645:26
	LDR	%r1, %r31, $280	# build/example.ml#645:17->645:26
	MVI	%r9, $0	# build/example.ml#645:14->645:56
	CEQ	%r7, %r9	# build/example.ml#645:14->645:56
	JZ	$if_eq.11849	# build/example.ml#645:14->645:56
	FLDA	%r0, $l.7787	# build/example.ml#645:32->645:35
	MV	%fr9, %r0	# build/example.ml#645:32->645:35
	J	$if_eq_cont.11850	# build/example.ml#645:14->645:56
if_eq.11849:
	SDR	%r6, %r31, $284	# build/example.ml#645:41->645:46
	SDR	%r5, %r31, $288	# build/example.ml#645:41->645:46
	SDR	%r4, %r31, $292	# build/example.ml#645:41->645:46
	SDR	%r3, %r31, $296	# build/example.ml#645:41->645:46
	SDR	%r1, %r31, $300	# build/example.ml#645:41->645:46
	FMV	%fr0, %fr9	# build/example.ml#645:41->645:46
	ADDI	%r31, %r31, $304	# build/example.ml#645:41->645:46
	ADDI	%r31, %r31, $4	# build/example.ml#645:41->645:46
	SIP	# build/example.ml#645:41->645:46
	J	$sgn.2565	# build/example.ml#645:41->645:46
	ADDI	%r31, %r31, $-304	# build/example.ml#645:41->645:46
	FMV	%fr8, %fr0	# build/example.ml#645:41->645:46
	LDR	%r6, %r31, $284	# build/example.ml#645:41->645:46
	LDR	%r5, %r31, $288	# build/example.ml#645:41->645:46
	LDR	%r4, %r31, $292	# build/example.ml#645:41->645:46
	LDR	%r3, %r31, $296	# build/example.ml#645:41->645:46
	LDR	%r1, %r31, $300	# build/example.ml#645:41->645:46
	SDR	%r6, %r31, $304	# build/example.ml#645:50->645:56
	SDR	%r5, %r31, $308	# build/example.ml#645:50->645:56
	SDR	%r4, %r31, $312	# build/example.ml#645:50->645:56
	SDR	%r3, %r31, $316	# build/example.ml#645:50->645:56
	SDR	%r1, %r31, $320	# build/example.ml#645:50->645:56
	FMV	%fr0, %fr9	# build/example.ml#645:50->645:56
	ADDI	%r31, %r31, $324	# build/example.ml#645:50->645:56
	ADDI	%r31, %r31, $4	# build/example.ml#645:50->645:56
	SIP	# build/example.ml#645:50->645:56
	J	$min_caml_fsqr	# build/example.ml#645:50->645:56
	ADDI	%r31, %r31, $-324	# build/example.ml#645:50->645:56
	FMV	%fr9, %fr0	# build/example.ml#645:50->645:56
	LDR	%r6, %r31, $304	# build/example.ml#645:50->645:56
	LDR	%r5, %r31, $308	# build/example.ml#645:50->645:56
	LDR	%r4, %r31, $312	# build/example.ml#645:50->645:56
	LDR	%r3, %r31, $316	# build/example.ml#645:50->645:56
	LDR	%r1, %r31, $320	# build/example.ml#645:50->645:56
	FDIV	%r0, %fr8, %fr9	# build/example.ml#645:41->645:56
	MV	%fr9, %r0	# build/example.ml#645:41->645:56
if_eq_cont.11850:
	FSDD	%fr9, %r23, $4, %r8	# build/example.ml#645:3->645:56
	MVI	%r9, $2	# build/example.ml#646:16->646:17
	FLDD	%fr9, %r23, $4, %r9	# build/example.ml#592:17->592:35
	MVI	%r8, $2	# build/example.ml#647:8->647:9
	SDR	%r6, %r31, $324	# build/example.ml#647:17->647:26
	SDR	%r5, %r31, $328	# build/example.ml#647:17->647:26
	SDR	%r4, %r31, $332	# build/example.ml#647:17->647:26
	SDR	%r3, %r31, $336	# build/example.ml#647:17->647:26
	SDR	%r1, %r31, $340	# build/example.ml#647:17->647:26
	FMV	%fr0, %fr9	# build/example.ml#647:17->647:26
	ADDI	%r31, %r31, $344	# build/example.ml#647:17->647:26
	ADDI	%r31, %r31, $4	# build/example.ml#647:17->647:26
	SIP	# build/example.ml#647:17->647:26
	J	$min_caml_fiszero	# build/example.ml#647:17->647:26
	ADDI	%r31, %r31, $-344	# build/example.ml#647:17->647:26
	MV	%r7, %r0	# build/example.ml#647:17->647:26
	LDR	%r6, %r31, $324	# build/example.ml#647:17->647:26
	LDR	%r5, %r31, $328	# build/example.ml#647:17->647:26
	LDR	%r4, %r31, $332	# build/example.ml#647:17->647:26
	LDR	%r3, %r31, $336	# build/example.ml#647:17->647:26
	LDR	%r1, %r31, $340	# build/example.ml#647:17->647:26
	MVI	%r9, $0	# build/example.ml#647:14->647:56
	CEQ	%r7, %r9	# build/example.ml#647:14->647:56
	JZ	$if_eq.11851	# build/example.ml#647:14->647:56
	FLDA	%r0, $l.7787	# build/example.ml#647:32->647:35
	MV	%fr9, %r0	# build/example.ml#647:32->647:35
	J	$if_eq_cont.11852	# build/example.ml#647:14->647:56
if_eq.11851:
	SDR	%r6, %r31, $344	# build/example.ml#647:41->647:46
	SDR	%r5, %r31, $348	# build/example.ml#647:41->647:46
	SDR	%r4, %r31, $352	# build/example.ml#647:41->647:46
	SDR	%r3, %r31, $356	# build/example.ml#647:41->647:46
	SDR	%r1, %r31, $360	# build/example.ml#647:41->647:46
	FMV	%fr0, %fr9	# build/example.ml#647:41->647:46
	ADDI	%r31, %r31, $364	# build/example.ml#647:41->647:46
	ADDI	%r31, %r31, $4	# build/example.ml#647:41->647:46
	SIP	# build/example.ml#647:41->647:46
	J	$sgn.2565	# build/example.ml#647:41->647:46
	ADDI	%r31, %r31, $-364	# build/example.ml#647:41->647:46
	FMV	%fr8, %fr0	# build/example.ml#647:41->647:46
	LDR	%r6, %r31, $344	# build/example.ml#647:41->647:46
	LDR	%r5, %r31, $348	# build/example.ml#647:41->647:46
	LDR	%r4, %r31, $352	# build/example.ml#647:41->647:46
	LDR	%r3, %r31, $356	# build/example.ml#647:41->647:46
	LDR	%r1, %r31, $360	# build/example.ml#647:41->647:46
	SDR	%r6, %r31, $364	# build/example.ml#647:50->647:56
	SDR	%r5, %r31, $368	# build/example.ml#647:50->647:56
	SDR	%r4, %r31, $372	# build/example.ml#647:50->647:56
	SDR	%r3, %r31, $376	# build/example.ml#647:50->647:56
	SDR	%r1, %r31, $380	# build/example.ml#647:50->647:56
	FMV	%fr0, %fr9	# build/example.ml#647:50->647:56
	ADDI	%r31, %r31, $384	# build/example.ml#647:50->647:56
	ADDI	%r31, %r31, $4	# build/example.ml#647:50->647:56
	SIP	# build/example.ml#647:50->647:56
	J	$min_caml_fsqr	# build/example.ml#647:50->647:56
	ADDI	%r31, %r31, $-384	# build/example.ml#647:50->647:56
	FMV	%fr9, %fr0	# build/example.ml#647:50->647:56
	LDR	%r6, %r31, $364	# build/example.ml#647:50->647:56
	LDR	%r5, %r31, $368	# build/example.ml#647:50->647:56
	LDR	%r4, %r31, $372	# build/example.ml#647:50->647:56
	LDR	%r3, %r31, $376	# build/example.ml#647:50->647:56
	LDR	%r1, %r31, $380	# build/example.ml#647:50->647:56
	FDIV	%r0, %fr8, %fr9	# build/example.ml#647:41->647:56
	MV	%fr9, %r0	# build/example.ml#647:41->647:56
if_eq_cont.11852:
	FSDD	%fr9, %r23, $4, %r8	# build/example.ml#647:3->647:56
if_eq_cont.11842:
	MVI	%r9, $0	# build/example.ml#655:21->655:22
	CEQ	%r27, %r9	# build/example.ml#655:7->657:14
	JZ	$if_eq.11853	# build/example.ml#655:7->657:14
	SDR	%r6, %r31, $384	# build/example.ml#656:2->656:38
	SDR	%r5, %r31, $388	# build/example.ml#656:2->656:38
	SDR	%r4, %r31, $392	# build/example.ml#656:2->656:38
	SDR	%r3, %r31, $396	# build/example.ml#656:2->656:38
	SDR	%r1, %r31, $400	# build/example.ml#656:2->656:38
	MV	%r2, %r6	# build/example.ml#656:2->656:38
	MV	%r1, %r23	# build/example.ml#656:2->656:38
	ADDI	%r31, %r31, $404	# build/example.ml#656:2->656:38
	ADDI	%r31, %r31, $4	# build/example.ml#656:2->656:38
	SIP	# build/example.ml#656:2->656:38
	J	$rotate_quadratic_matrix.2696	# build/example.ml#656:2->656:38
	ADDI	%r31, %r31, $-404	# build/example.ml#656:2->656:38
	LDR	%r6, %r31, $384	# build/example.ml#656:2->656:38
	LDR	%r5, %r31, $388	# build/example.ml#656:2->656:38
	LDR	%r4, %r31, $392	# build/example.ml#656:2->656:38
	LDR	%r3, %r31, $396	# build/example.ml#656:2->656:38
	LDR	%r1, %r31, $400	# build/example.ml#656:2->656:38
	J	$if_eq_cont.11854	# build/example.ml#655:7->657:14
if_eq.11853:
if_eq_cont.11854:
	MVI	%r0, $1	# build/example.ml#659:7->659:11
	J	$if_eq_cont.11836	# build/example.ml#586:3->662:10
if_eq.11835:
	MVI	%r0, $0	# build/example.ml#662:5->662:10
if_eq_cont.11836:
	LDR	%r9, %r31, $0	# build/example.ml#585:17->585:28
	LDR	%r8, %r31, $4	# build/example.ml#585:17->585:28
	LDR	%r7, %r31, $8	# build/example.ml#585:17->585:28
	LDR	%r28, %r31, $12	# build/example.ml#585:17->585:28
	LDR	%r27, %r31, $16	# build/example.ml#585:17->585:28
	LDR	%r26, %r31, $20	# build/example.ml#585:17->585:28
	LDR	%r25, %r31, $24	# build/example.ml#585:17->585:28
	LDR	%r24, %r31, $28	# build/example.ml#585:17->585:28
	LDR	%r23, %r31, $32	# build/example.ml#585:17->585:28
	FLDR	%fr9, %r31, $36	# build/example.ml#585:17->585:28
	FLDR	%fr8, %r31, $40	# build/example.ml#585:17->585:28
	LINK	# build/example.ml#585:17->585:28
rotate_quadratic_matrix.2696:
	SDR	%r9, %r31, $0	# build/example.ml#544:24->544:25
	FSDR	%fr9, %r31, $4	# build/example.ml#544:24->544:25
	FSDR	%fr8, %r31, $8	# build/example.ml#544:24->544:25
	FSDR	%fr7, %r31, $12	# build/example.ml#544:24->544:25
	FSDR	%fr31, %r31, $16	# build/example.ml#544:24->544:25
	FSDR	%fr30, %r31, $20	# build/example.ml#544:24->544:25
	FSDR	%fr29, %r31, $24	# build/example.ml#544:24->544:25
	FSDR	%fr28, %r31, $28	# build/example.ml#544:24->544:25
	FSDR	%fr27, %r31, $32	# build/example.ml#544:24->544:25
	FSDR	%fr26, %r31, $36	# build/example.ml#544:24->544:25
	FSDR	%fr25, %r31, $40	# build/example.ml#544:24->544:25
	FSDR	%fr24, %r31, $44	# build/example.ml#544:24->544:25
	MVI	%r9, $0	# build/example.ml#544:24->544:25
	FLDD	%fr9, %r2, $4, %r9	# build/example.ml#544:19->544:26
	SDR	%r2, %r31, $48	# build/example.ml#544:15->544:26
	SDR	%r1, %r31, $52	# build/example.ml#544:15->544:26
	FSDR	%fr6, %r31, $56	# build/example.ml#544:15->544:26
	FSDR	%fr5, %r31, $60	# build/example.ml#544:15->544:26
	FSDR	%fr4, %r31, $64	# build/example.ml#544:15->544:26
	FSDR	%fr3, %r31, $68	# build/example.ml#544:15->544:26
	FMV	%fr0, %fr9	# build/example.ml#544:15->544:26
	ADDI	%r31, %r31, $72	# build/example.ml#544:15->544:26
	ADDI	%r31, %r31, $4	# build/example.ml#544:15->544:26
	SIP	# build/example.ml#544:15->544:26
	J	$min_caml_cos	# build/example.ml#544:15->544:26
	ADDI	%r31, %r31, $-72	# build/example.ml#544:15->544:26
	FMV	%fr29, %fr0	# build/example.ml#544:15->544:26
	LDR	%r2, %r31, $48	# build/example.ml#544:15->544:26
	LDR	%r1, %r31, $52	# build/example.ml#544:15->544:26
	FLDR	%fr6, %r31, $56	# build/example.ml#544:15->544:26
	FLDR	%fr5, %r31, $60	# build/example.ml#544:15->544:26
	FLDR	%fr4, %r31, $64	# build/example.ml#544:15->544:26
	FLDR	%fr3, %r31, $68	# build/example.ml#544:15->544:26
	MVI	%r9, $0	# build/example.ml#545:24->545:25
	FLDD	%fr9, %r2, $4, %r9	# build/example.ml#544:19->544:26
	SDR	%r2, %r31, $72	# build/example.ml#545:15->545:26
	SDR	%r1, %r31, $76	# build/example.ml#545:15->545:26
	FSDR	%fr6, %r31, $80	# build/example.ml#545:15->545:26
	FSDR	%fr5, %r31, $84	# build/example.ml#545:15->545:26
	FSDR	%fr4, %r31, $88	# build/example.ml#545:15->545:26
	FSDR	%fr3, %r31, $92	# build/example.ml#545:15->545:26
	FMV	%fr0, %fr9	# build/example.ml#545:15->545:26
	ADDI	%r31, %r31, $96	# build/example.ml#545:15->545:26
	ADDI	%r31, %r31, $4	# build/example.ml#545:15->545:26
	SIP	# build/example.ml#545:15->545:26
	J	$min_caml_sin	# build/example.ml#545:15->545:26
	ADDI	%r31, %r31, $-96	# build/example.ml#545:15->545:26
	FMV	%fr8, %fr0	# build/example.ml#545:15->545:26
	LDR	%r2, %r31, $72	# build/example.ml#545:15->545:26
	LDR	%r1, %r31, $76	# build/example.ml#545:15->545:26
	FLDR	%fr6, %r31, $80	# build/example.ml#545:15->545:26
	FLDR	%fr5, %r31, $84	# build/example.ml#545:15->545:26
	FLDR	%fr4, %r31, $88	# build/example.ml#545:15->545:26
	FLDR	%fr3, %r31, $92	# build/example.ml#545:15->545:26
	MVI	%r9, $1	# build/example.ml#546:24->546:25
	FLDD	%fr9, %r2, $4, %r9	# build/example.ml#544:19->544:26
	SDR	%r2, %r31, $96	# build/example.ml#546:15->546:26
	SDR	%r1, %r31, $100	# build/example.ml#546:15->546:26
	FSDR	%fr6, %r31, $104	# build/example.ml#546:15->546:26
	FSDR	%fr5, %r31, $108	# build/example.ml#546:15->546:26
	FSDR	%fr4, %r31, $112	# build/example.ml#546:15->546:26
	FSDR	%fr3, %r31, $116	# build/example.ml#546:15->546:26
	FMV	%fr0, %fr9	# build/example.ml#546:15->546:26
	ADDI	%r31, %r31, $120	# build/example.ml#546:15->546:26
	ADDI	%r31, %r31, $4	# build/example.ml#546:15->546:26
	SIP	# build/example.ml#546:15->546:26
	J	$min_caml_cos	# build/example.ml#546:15->546:26
	ADDI	%r31, %r31, $-120	# build/example.ml#546:15->546:26
	FMV	%fr9, %fr0	# build/example.ml#546:15->546:26
	LDR	%r2, %r31, $96	# build/example.ml#546:15->546:26
	LDR	%r1, %r31, $100	# build/example.ml#546:15->546:26
	FLDR	%fr6, %r31, $104	# build/example.ml#546:15->546:26
	FLDR	%fr5, %r31, $108	# build/example.ml#546:15->546:26
	FLDR	%fr4, %r31, $112	# build/example.ml#546:15->546:26
	FLDR	%fr3, %r31, $116	# build/example.ml#546:15->546:26
	MVI	%r9, $1	# build/example.ml#547:24->547:25
	FLDD	%fr7, %r2, $4, %r9	# build/example.ml#544:19->544:26
	SDR	%r2, %r31, $120	# build/example.ml#547:15->547:26
	SDR	%r1, %r31, $124	# build/example.ml#547:15->547:26
	FSDR	%fr6, %r31, $128	# build/example.ml#547:15->547:26
	FSDR	%fr5, %r31, $132	# build/example.ml#547:15->547:26
	FSDR	%fr4, %r31, $136	# build/example.ml#547:15->547:26
	FSDR	%fr3, %r31, $140	# build/example.ml#547:15->547:26
	FMV	%fr0, %fr7	# build/example.ml#547:15->547:26
	ADDI	%r31, %r31, $144	# build/example.ml#547:15->547:26
	ADDI	%r31, %r31, $4	# build/example.ml#547:15->547:26
	SIP	# build/example.ml#547:15->547:26
	J	$min_caml_sin	# build/example.ml#547:15->547:26
	ADDI	%r31, %r31, $-144	# build/example.ml#547:15->547:26
	FMV	%fr7, %fr0	# build/example.ml#547:15->547:26
	LDR	%r2, %r31, $120	# build/example.ml#547:15->547:26
	LDR	%r1, %r31, $124	# build/example.ml#547:15->547:26
	FLDR	%fr6, %r31, $128	# build/example.ml#547:15->547:26
	FLDR	%fr5, %r31, $132	# build/example.ml#547:15->547:26
	FLDR	%fr4, %r31, $136	# build/example.ml#547:15->547:26
	FLDR	%fr3, %r31, $140	# build/example.ml#547:15->547:26
	MVI	%r9, $2	# build/example.ml#548:24->548:25
	FLDD	%fr6, %r2, $4, %r9	# build/example.ml#544:19->544:26
	SDR	%r2, %r31, $144	# build/example.ml#548:15->548:26
	SDR	%r1, %r31, $148	# build/example.ml#548:15->548:26
	FSDR	%fr6, %r31, $152	# build/example.ml#548:15->548:26
	FSDR	%fr5, %r31, $156	# build/example.ml#548:15->548:26
	FSDR	%fr4, %r31, $160	# build/example.ml#548:15->548:26
	FSDR	%fr3, %r31, $164	# build/example.ml#548:15->548:26
	FMV	%fr0, %fr6	# build/example.ml#548:15->548:26
	ADDI	%r31, %r31, $168	# build/example.ml#548:15->548:26
	ADDI	%r31, %r31, $4	# build/example.ml#548:15->548:26
	SIP	# build/example.ml#548:15->548:26
	J	$min_caml_cos	# build/example.ml#548:15->548:26
	ADDI	%r31, %r31, $-168	# build/example.ml#548:15->548:26
	FMV	%fr28, %fr0	# build/example.ml#548:15->548:26
	LDR	%r2, %r31, $144	# build/example.ml#548:15->548:26
	LDR	%r1, %r31, $148	# build/example.ml#548:15->548:26
	FLDR	%fr6, %r31, $152	# build/example.ml#548:15->548:26
	FLDR	%fr5, %r31, $156	# build/example.ml#548:15->548:26
	FLDR	%fr4, %r31, $160	# build/example.ml#548:15->548:26
	FLDR	%fr3, %r31, $164	# build/example.ml#548:15->548:26
	MVI	%r9, $2	# build/example.ml#549:24->549:25
	FLDD	%fr6, %r2, $4, %r9	# build/example.ml#544:19->544:26
	SDR	%r2, %r31, $168	# build/example.ml#549:15->549:26
	SDR	%r1, %r31, $172	# build/example.ml#549:15->549:26
	FSDR	%fr6, %r31, $176	# build/example.ml#549:15->549:26
	FSDR	%fr5, %r31, $180	# build/example.ml#549:15->549:26
	FSDR	%fr4, %r31, $184	# build/example.ml#549:15->549:26
	FSDR	%fr3, %r31, $188	# build/example.ml#549:15->549:26
	FMV	%fr0, %fr6	# build/example.ml#549:15->549:26
	ADDI	%r31, %r31, $192	# build/example.ml#549:15->549:26
	ADDI	%r31, %r31, $4	# build/example.ml#549:15->549:26
	SIP	# build/example.ml#549:15->549:26
	J	$min_caml_sin	# build/example.ml#549:15->549:26
	ADDI	%r31, %r31, $-192	# build/example.ml#549:15->549:26
	FMV	%fr6, %fr0	# build/example.ml#549:15->549:26
	LDR	%r2, %r31, $168	# build/example.ml#549:15->549:26
	LDR	%r1, %r31, $172	# build/example.ml#549:15->549:26
	FLDR	%fr6, %r31, $176	# build/example.ml#549:15->549:26
	FLDR	%fr5, %r31, $180	# build/example.ml#549:15->549:26
	FLDR	%fr4, %r31, $184	# build/example.ml#549:15->549:26
	FLDR	%fr3, %r31, $188	# build/example.ml#549:15->549:26
	FMUL	%fr3, %fr9, %fr28	# build/example.ml#551:13->551:27
	FMUL	%fr5, %fr8, %fr7	# build/example.ml#552:13->552:27
	FMUL	%fr31, %fr5, %fr28	# build/example.ml#552:13->552:36
	FMUL	%fr4, %fr29, %fr6	# build/example.ml#552:40->552:54
	FSUB	%fr30, %fr31, %fr4	# build/example.ml#552:13->552:54
	FMUL	%fr27, %fr29, %fr7	# build/example.ml#553:13->553:27
	FMUL	%fr31, %fr27, %fr28	# build/example.ml#553:13->553:36
	FMUL	%fr4, %fr8, %fr6	# build/example.ml#553:40->553:54
	FADD	%fr31, %fr31, %fr4	# build/example.ml#553:13->553:54
	FMUL	%fr4, %fr9, %fr6	# build/example.ml#555:13->555:27
	FMUL	%fr26, %fr5, %fr6	# build/example.ml#556:13->556:36
	FMUL	%fr5, %fr29, %fr28	# build/example.ml#556:40->556:54
	FADD	%fr5, %fr26, %fr5	# build/example.ml#556:13->556:54
	FMUL	%fr6, %fr27, %fr6	# build/example.ml#557:13->557:36
	FMUL	%fr28, %fr8, %fr28	# build/example.ml#557:40->557:54
	FSUB	%fr6, %fr6, %fr28	# build/example.ml#557:13->557:54
	SDR	%r2, %r31, $192	# build/example.ml#559:13->559:23
	SDR	%r1, %r31, $196	# build/example.ml#559:13->559:23
	FSDR	%fr6, %r31, $200	# build/example.ml#559:13->559:23
	FSDR	%fr5, %r31, $204	# build/example.ml#559:13->559:23
	FSDR	%fr4, %r31, $208	# build/example.ml#559:13->559:23
	FSDR	%fr3, %r31, $212	# build/example.ml#559:13->559:23
	FMV	%fr0, %fr7	# build/example.ml#559:13->559:23
	ADDI	%r31, %r31, $216	# build/example.ml#559:13->559:23
	ADDI	%r31, %r31, $4	# build/example.ml#559:13->559:23
	SIP	# build/example.ml#559:13->559:23
	J	$min_caml_fneg	# build/example.ml#559:13->559:23
	ADDI	%r31, %r31, $-216	# build/example.ml#559:13->559:23
	FMV	%fr7, %fr0	# build/example.ml#559:13->559:23
	LDR	%r2, %r31, $192	# build/example.ml#559:13->559:23
	LDR	%r1, %r31, $196	# build/example.ml#559:13->559:23
	FLDR	%fr6, %r31, $200	# build/example.ml#559:13->559:23
	FLDR	%fr5, %r31, $204	# build/example.ml#559:13->559:23
	FLDR	%fr4, %r31, $208	# build/example.ml#559:13->559:23
	FLDR	%fr3, %r31, $212	# build/example.ml#559:13->559:23
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#560:13->560:27
	FMUL	%fr9, %fr29, %fr9	# build/example.ml#561:13->561:27
	MVI	%r9, $0	# build/example.ml#564:17->564:18
	FLDD	%fr27, %r1, $4, %r9	# build/example.ml#564:12->564:19
	MVI	%r9, $1	# build/example.ml#565:17->565:18
	FLDD	%fr28, %r1, $4, %r9	# build/example.ml#564:12->564:19
	MVI	%r9, $2	# build/example.ml#566:17->566:18
	FLDD	%fr29, %r1, $4, %r9	# build/example.ml#564:12->564:19
	MVI	%r9, $0	# build/example.ml#571:8->571:9
	SDR	%r2, %r31, $216	# build/example.ml#571:20->571:28
	SDR	%r1, %r31, $220	# build/example.ml#571:20->571:28
	FSDR	%fr6, %r31, $224	# build/example.ml#571:20->571:28
	FSDR	%fr5, %r31, $228	# build/example.ml#571:20->571:28
	FSDR	%fr4, %r31, $232	# build/example.ml#571:20->571:28
	FSDR	%fr3, %r31, $236	# build/example.ml#571:20->571:28
	FMV	%fr0, %fr3	# build/example.ml#571:20->571:28
	ADDI	%r31, %r31, $240	# build/example.ml#571:20->571:28
	ADDI	%r31, %r31, $4	# build/example.ml#571:20->571:28
	SIP	# build/example.ml#571:20->571:28
	J	$min_caml_fsqr	# build/example.ml#571:20->571:28
	ADDI	%r31, %r31, $-240	# build/example.ml#571:20->571:28
	FMV	%fr26, %fr0	# build/example.ml#571:20->571:28
	LDR	%r2, %r31, $216	# build/example.ml#571:20->571:28
	LDR	%r1, %r31, $220	# build/example.ml#571:20->571:28
	FLDR	%fr6, %r31, $224	# build/example.ml#571:20->571:28
	FLDR	%fr5, %r31, $228	# build/example.ml#571:20->571:28
	FLDR	%fr4, %r31, $232	# build/example.ml#571:20->571:28
	FLDR	%fr3, %r31, $236	# build/example.ml#571:20->571:28
	FMUL	%fr25, %fr27, %fr26	# build/example.ml#571:14->571:28
	SDR	%r2, %r31, $240	# build/example.ml#571:38->571:46
	SDR	%r1, %r31, $244	# build/example.ml#571:38->571:46
	FSDR	%fr6, %r31, $248	# build/example.ml#571:38->571:46
	FSDR	%fr5, %r31, $252	# build/example.ml#571:38->571:46
	FSDR	%fr4, %r31, $256	# build/example.ml#571:38->571:46
	FSDR	%fr3, %r31, $260	# build/example.ml#571:38->571:46
	FMV	%fr0, %fr4	# build/example.ml#571:38->571:46
	ADDI	%r31, %r31, $264	# build/example.ml#571:38->571:46
	ADDI	%r31, %r31, $4	# build/example.ml#571:38->571:46
	SIP	# build/example.ml#571:38->571:46
	J	$min_caml_fsqr	# build/example.ml#571:38->571:46
	ADDI	%r31, %r31, $-264	# build/example.ml#571:38->571:46
	FMV	%fr26, %fr0	# build/example.ml#571:38->571:46
	LDR	%r2, %r31, $240	# build/example.ml#571:38->571:46
	LDR	%r1, %r31, $244	# build/example.ml#571:38->571:46
	FLDR	%fr6, %r31, $248	# build/example.ml#571:38->571:46
	FLDR	%fr5, %r31, $252	# build/example.ml#571:38->571:46
	FLDR	%fr4, %r31, $256	# build/example.ml#571:38->571:46
	FLDR	%fr3, %r31, $260	# build/example.ml#571:38->571:46
	FMUL	%fr26, %fr28, %fr26	# build/example.ml#571:32->571:46
	FADD	%fr25, %fr25, %fr26	# build/example.ml#571:14->571:46
	SDR	%r2, %r31, $264	# build/example.ml#571:56->571:64
	SDR	%r1, %r31, $268	# build/example.ml#571:56->571:64
	FSDR	%fr6, %r31, $272	# build/example.ml#571:56->571:64
	FSDR	%fr5, %r31, $276	# build/example.ml#571:56->571:64
	FSDR	%fr4, %r31, $280	# build/example.ml#571:56->571:64
	FSDR	%fr3, %r31, $284	# build/example.ml#571:56->571:64
	FMV	%fr0, %fr7	# build/example.ml#571:56->571:64
	ADDI	%r31, %r31, $288	# build/example.ml#571:56->571:64
	ADDI	%r31, %r31, $4	# build/example.ml#571:56->571:64
	SIP	# build/example.ml#571:56->571:64
	J	$min_caml_fsqr	# build/example.ml#571:56->571:64
	ADDI	%r31, %r31, $-288	# build/example.ml#571:56->571:64
	FMV	%fr26, %fr0	# build/example.ml#571:56->571:64
	LDR	%r2, %r31, $264	# build/example.ml#571:56->571:64
	LDR	%r1, %r31, $268	# build/example.ml#571:56->571:64
	FLDR	%fr6, %r31, $272	# build/example.ml#571:56->571:64
	FLDR	%fr5, %r31, $276	# build/example.ml#571:56->571:64
	FLDR	%fr4, %r31, $280	# build/example.ml#571:56->571:64
	FLDR	%fr3, %r31, $284	# build/example.ml#571:56->571:64
	FMUL	%fr26, %fr29, %fr26	# build/example.ml#571:50->571:64
	FADD	%fr26, %fr25, %fr26	# build/example.ml#571:14->571:64
	FSDD	%fr26, %r1, $4, %r9	# build/example.ml#571:3->571:64
	MVI	%r9, $1	# build/example.ml#572:8->572:9
	SDR	%r2, %r31, $288	# build/example.ml#572:20->572:28
	SDR	%r1, %r31, $292	# build/example.ml#572:20->572:28
	FSDR	%fr6, %r31, $296	# build/example.ml#572:20->572:28
	FSDR	%fr5, %r31, $300	# build/example.ml#572:20->572:28
	FSDR	%fr4, %r31, $304	# build/example.ml#572:20->572:28
	FSDR	%fr3, %r31, $308	# build/example.ml#572:20->572:28
	FMV	%fr0, %fr30	# build/example.ml#572:20->572:28
	ADDI	%r31, %r31, $312	# build/example.ml#572:20->572:28
	ADDI	%r31, %r31, $4	# build/example.ml#572:20->572:28
	SIP	# build/example.ml#572:20->572:28
	J	$min_caml_fsqr	# build/example.ml#572:20->572:28
	ADDI	%r31, %r31, $-312	# build/example.ml#572:20->572:28
	FMV	%fr26, %fr0	# build/example.ml#572:20->572:28
	LDR	%r2, %r31, $288	# build/example.ml#572:20->572:28
	LDR	%r1, %r31, $292	# build/example.ml#572:20->572:28
	FLDR	%fr6, %r31, $296	# build/example.ml#572:20->572:28
	FLDR	%fr5, %r31, $300	# build/example.ml#572:20->572:28
	FLDR	%fr4, %r31, $304	# build/example.ml#572:20->572:28
	FLDR	%fr3, %r31, $308	# build/example.ml#572:20->572:28
	FMUL	%fr25, %fr27, %fr26	# build/example.ml#572:14->572:28
	SDR	%r2, %r31, $312	# build/example.ml#572:38->572:46
	SDR	%r1, %r31, $316	# build/example.ml#572:38->572:46
	FSDR	%fr6, %r31, $320	# build/example.ml#572:38->572:46
	FSDR	%fr5, %r31, $324	# build/example.ml#572:38->572:46
	FSDR	%fr4, %r31, $328	# build/example.ml#572:38->572:46
	FSDR	%fr3, %r31, $332	# build/example.ml#572:38->572:46
	FMV	%fr0, %fr5	# build/example.ml#572:38->572:46
	ADDI	%r31, %r31, $336	# build/example.ml#572:38->572:46
	ADDI	%r31, %r31, $4	# build/example.ml#572:38->572:46
	SIP	# build/example.ml#572:38->572:46
	J	$min_caml_fsqr	# build/example.ml#572:38->572:46
	ADDI	%r31, %r31, $-336	# build/example.ml#572:38->572:46
	FMV	%fr26, %fr0	# build/example.ml#572:38->572:46
	LDR	%r2, %r31, $312	# build/example.ml#572:38->572:46
	LDR	%r1, %r31, $316	# build/example.ml#572:38->572:46
	FLDR	%fr6, %r31, $320	# build/example.ml#572:38->572:46
	FLDR	%fr5, %r31, $324	# build/example.ml#572:38->572:46
	FLDR	%fr4, %r31, $328	# build/example.ml#572:38->572:46
	FLDR	%fr3, %r31, $332	# build/example.ml#572:38->572:46
	FMUL	%fr26, %fr28, %fr26	# build/example.ml#572:32->572:46
	FADD	%fr25, %fr25, %fr26	# build/example.ml#572:14->572:46
	SDR	%r2, %r31, $336	# build/example.ml#572:56->572:64
	SDR	%r1, %r31, $340	# build/example.ml#572:56->572:64
	FSDR	%fr6, %r31, $344	# build/example.ml#572:56->572:64
	FSDR	%fr5, %r31, $348	# build/example.ml#572:56->572:64
	FSDR	%fr4, %r31, $352	# build/example.ml#572:56->572:64
	FSDR	%fr3, %r31, $356	# build/example.ml#572:56->572:64
	FMV	%fr0, %fr8	# build/example.ml#572:56->572:64
	ADDI	%r31, %r31, $360	# build/example.ml#572:56->572:64
	ADDI	%r31, %r31, $4	# build/example.ml#572:56->572:64
	SIP	# build/example.ml#572:56->572:64
	J	$min_caml_fsqr	# build/example.ml#572:56->572:64
	ADDI	%r31, %r31, $-360	# build/example.ml#572:56->572:64
	FMV	%fr26, %fr0	# build/example.ml#572:56->572:64
	LDR	%r2, %r31, $336	# build/example.ml#572:56->572:64
	LDR	%r1, %r31, $340	# build/example.ml#572:56->572:64
	FLDR	%fr6, %r31, $344	# build/example.ml#572:56->572:64
	FLDR	%fr5, %r31, $348	# build/example.ml#572:56->572:64
	FLDR	%fr4, %r31, $352	# build/example.ml#572:56->572:64
	FLDR	%fr3, %r31, $356	# build/example.ml#572:56->572:64
	FMUL	%fr26, %fr29, %fr26	# build/example.ml#572:50->572:64
	FADD	%fr26, %fr25, %fr26	# build/example.ml#572:14->572:64
	FSDD	%fr26, %r1, $4, %r9	# build/example.ml#572:3->572:64
	MVI	%r9, $2	# build/example.ml#573:8->573:9
	SDR	%r2, %r31, $360	# build/example.ml#573:20->573:28
	SDR	%r1, %r31, $364	# build/example.ml#573:20->573:28
	FSDR	%fr6, %r31, $368	# build/example.ml#573:20->573:28
	FSDR	%fr5, %r31, $372	# build/example.ml#573:20->573:28
	FSDR	%fr4, %r31, $376	# build/example.ml#573:20->573:28
	FSDR	%fr3, %r31, $380	# build/example.ml#573:20->573:28
	FMV	%fr0, %fr31	# build/example.ml#573:20->573:28
	ADDI	%r31, %r31, $384	# build/example.ml#573:20->573:28
	ADDI	%r31, %r31, $4	# build/example.ml#573:20->573:28
	SIP	# build/example.ml#573:20->573:28
	J	$min_caml_fsqr	# build/example.ml#573:20->573:28
	ADDI	%r31, %r31, $-384	# build/example.ml#573:20->573:28
	FMV	%fr26, %fr0	# build/example.ml#573:20->573:28
	LDR	%r2, %r31, $360	# build/example.ml#573:20->573:28
	LDR	%r1, %r31, $364	# build/example.ml#573:20->573:28
	FLDR	%fr6, %r31, $368	# build/example.ml#573:20->573:28
	FLDR	%fr5, %r31, $372	# build/example.ml#573:20->573:28
	FLDR	%fr4, %r31, $376	# build/example.ml#573:20->573:28
	FLDR	%fr3, %r31, $380	# build/example.ml#573:20->573:28
	FMUL	%fr25, %fr27, %fr26	# build/example.ml#573:14->573:28
	SDR	%r2, %r31, $384	# build/example.ml#573:38->573:46
	SDR	%r1, %r31, $388	# build/example.ml#573:38->573:46
	FSDR	%fr6, %r31, $392	# build/example.ml#573:38->573:46
	FSDR	%fr5, %r31, $396	# build/example.ml#573:38->573:46
	FSDR	%fr4, %r31, $400	# build/example.ml#573:38->573:46
	FSDR	%fr3, %r31, $404	# build/example.ml#573:38->573:46
	FMV	%fr0, %fr6	# build/example.ml#573:38->573:46
	ADDI	%r31, %r31, $408	# build/example.ml#573:38->573:46
	ADDI	%r31, %r31, $4	# build/example.ml#573:38->573:46
	SIP	# build/example.ml#573:38->573:46
	J	$min_caml_fsqr	# build/example.ml#573:38->573:46
	ADDI	%r31, %r31, $-408	# build/example.ml#573:38->573:46
	FMV	%fr26, %fr0	# build/example.ml#573:38->573:46
	LDR	%r2, %r31, $384	# build/example.ml#573:38->573:46
	LDR	%r1, %r31, $388	# build/example.ml#573:38->573:46
	FLDR	%fr6, %r31, $392	# build/example.ml#573:38->573:46
	FLDR	%fr5, %r31, $396	# build/example.ml#573:38->573:46
	FLDR	%fr4, %r31, $400	# build/example.ml#573:38->573:46
	FLDR	%fr3, %r31, $404	# build/example.ml#573:38->573:46
	FMUL	%fr26, %fr28, %fr26	# build/example.ml#573:32->573:46
	FADD	%fr25, %fr25, %fr26	# build/example.ml#573:14->573:46
	SDR	%r2, %r31, $408	# build/example.ml#573:56->573:64
	SDR	%r1, %r31, $412	# build/example.ml#573:56->573:64
	FSDR	%fr6, %r31, $416	# build/example.ml#573:56->573:64
	FSDR	%fr5, %r31, $420	# build/example.ml#573:56->573:64
	FSDR	%fr4, %r31, $424	# build/example.ml#573:56->573:64
	FSDR	%fr3, %r31, $428	# build/example.ml#573:56->573:64
	FMV	%fr0, %fr9	# build/example.ml#573:56->573:64
	ADDI	%r31, %r31, $432	# build/example.ml#573:56->573:64
	ADDI	%r31, %r31, $4	# build/example.ml#573:56->573:64
	SIP	# build/example.ml#573:56->573:64
	J	$min_caml_fsqr	# build/example.ml#573:56->573:64
	ADDI	%r31, %r31, $-432	# build/example.ml#573:56->573:64
	FMV	%fr26, %fr0	# build/example.ml#573:56->573:64
	LDR	%r2, %r31, $408	# build/example.ml#573:56->573:64
	LDR	%r1, %r31, $412	# build/example.ml#573:56->573:64
	FLDR	%fr6, %r31, $416	# build/example.ml#573:56->573:64
	FLDR	%fr5, %r31, $420	# build/example.ml#573:56->573:64
	FLDR	%fr4, %r31, $424	# build/example.ml#573:56->573:64
	FLDR	%fr3, %r31, $428	# build/example.ml#573:56->573:64
	FMUL	%fr26, %fr29, %fr26	# build/example.ml#573:50->573:64
	FADD	%fr26, %fr25, %fr26	# build/example.ml#573:14->573:64
	FSDD	%fr26, %r1, $4, %r9	# build/example.ml#573:3->573:64
	MVI	%r9, $0	# build/example.ml#576:8->576:9
	FLDA	%fr24, $l.7786	# build/example.ml#576:14->576:17
	FMUL	%fr26, %fr27, %fr30	# build/example.ml#576:22->576:31
	FMUL	%fr25, %fr26, %fr31	# build/example.ml#576:22->576:38
	FMUL	%fr26, %fr28, %fr5	# build/example.ml#576:42->576:51
	FMUL	%fr26, %fr26, %fr6	# build/example.ml#576:42->576:58
	FADD	%fr25, %fr25, %fr26	# build/example.ml#576:22->576:58
	FMUL	%fr26, %fr29, %fr8	# build/example.ml#576:62->576:71
	FMUL	%fr26, %fr26, %fr9	# build/example.ml#576:62->576:78
	FADD	%fr26, %fr25, %fr26	# build/example.ml#576:22->576:78
	FMUL	%fr26, %fr24, %fr26	# build/example.ml#576:14->576:79
	FSDD	%fr26, %r2, $4, %r9	# build/example.ml#576:3->576:79
	MVI	%r9, $1	# build/example.ml#577:8->577:9
	FLDA	%fr26, $l.7786	# build/example.ml#577:14->577:17
	FMUL	%fr3, %fr27, %fr3	# build/example.ml#577:22->577:31
	FMUL	%fr31, %fr3, %fr31	# build/example.ml#577:22->577:38
	FMUL	%fr4, %fr28, %fr4	# build/example.ml#577:42->577:51
	FMUL	%fr6, %fr4, %fr6	# build/example.ml#577:42->577:58
	FADD	%fr6, %fr31, %fr6	# build/example.ml#577:22->577:58
	FMUL	%fr7, %fr29, %fr7	# build/example.ml#577:62->577:71
	FMUL	%fr9, %fr7, %fr9	# build/example.ml#577:62->577:78
	FADD	%fr9, %fr6, %fr9	# build/example.ml#577:22->577:78
	FMUL	%fr9, %fr26, %fr9	# build/example.ml#577:14->577:79
	FSDD	%fr9, %r2, $4, %r9	# build/example.ml#577:3->577:79
	MVI	%r9, $2	# build/example.ml#578:8->578:9
	FLDA	%fr9, $l.7786	# build/example.ml#578:14->578:17
	FMUL	%fr6, %fr3, %fr30	# build/example.ml#578:22->578:38
	FMUL	%fr5, %fr4, %fr5	# build/example.ml#578:42->578:58
	FADD	%fr6, %fr6, %fr5	# build/example.ml#578:22->578:58
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#578:62->578:78
	FADD	%fr8, %fr6, %fr8	# build/example.ml#578:22->578:78
	FMUL	%fr9, %fr9, %fr8	# build/example.ml#578:14->578:79
	FSDD	%fr9, %r2, $4, %r9	# build/example.ml#578:3->578:79
	LDR	%r9, %r31, $0	# build/example.ml#544:24->544:25
	FLDR	%fr9, %r31, $4	# build/example.ml#544:24->544:25
	FLDR	%fr8, %r31, $8	# build/example.ml#544:24->544:25
	FLDR	%fr7, %r31, $12	# build/example.ml#544:24->544:25
	FLDR	%fr31, %r31, $16	# build/example.ml#544:24->544:25
	FLDR	%fr30, %r31, $20	# build/example.ml#544:24->544:25
	FLDR	%fr29, %r31, $24	# build/example.ml#544:24->544:25
	FLDR	%fr28, %r31, $28	# build/example.ml#544:24->544:25
	FLDR	%fr27, %r31, $32	# build/example.ml#544:24->544:25
	FLDR	%fr26, %r31, $36	# build/example.ml#544:24->544:25
	FLDR	%fr25, %r31, $40	# build/example.ml#544:24->544:25
	FLDR	%fr24, %r31, $44	# build/example.ml#544:24->544:25
	LINK	# build/example.ml#544:24->544:25
read_light.2694:
	SDR	%r9, %r31, $0	# build/example.ml#525:17->525:30
	SDR	%r8, %r31, $4	# build/example.ml#525:17->525:30
	FSDR	%fr9, %r31, $8	# build/example.ml#525:17->525:30
	FSDR	%fr8, %r31, $12	# build/example.ml#525:17->525:30
	FSDR	%fr7, %r31, $16	# build/example.ml#525:17->525:30
	RF	%fr8	# build/example.ml#525:17->525:30
	FLDA	%fr9, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#483:3->483:19
	FMV	%fr0, %fr9	# build/example.ml#526:13->526:19
	ADDI	%r31, %r31, $20	# build/example.ml#526:13->526:19
	ADDI	%r31, %r31, $4	# build/example.ml#526:13->526:19
	SIP	# build/example.ml#526:13->526:19
	J	$min_caml_sin	# build/example.ml#526:13->526:19
	ADDI	%r31, %r31, $-20	# build/example.ml#526:13->526:19
	FMV	%fr8, %fr0	# build/example.ml#526:13->526:19
	MVI	%r8, $min_caml_light	# build/example.ml#527:3->527:8
	MVI	%r9, $1	# build/example.ml#527:10->527:11
	FMV	%fr0, %fr8	# build/example.ml#527:16->527:24
	ADDI	%r31, %r31, $20	# build/example.ml#527:16->527:24
	ADDI	%r31, %r31, $4	# build/example.ml#527:16->527:24
	SIP	# build/example.ml#527:16->527:24
	J	$min_caml_fneg	# build/example.ml#527:16->527:24
	ADDI	%r31, %r31, $-20	# build/example.ml#527:16->527:24
	FMV	%fr8, %fr0	# build/example.ml#527:16->527:24
	FSDD	%fr8, %r8, $4, %r9	# build/example.ml#527:3->527:24
	RF	%fr7	# build/example.ml#528:17->528:30
	FLDA	%fr8, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr8, %fr7, %fr8	# build/example.ml#483:3->483:19
	FMV	%fr0, %fr9	# build/example.ml#529:13->529:19
	ADDI	%r31, %r31, $20	# build/example.ml#529:13->529:19
	ADDI	%r31, %r31, $4	# build/example.ml#529:13->529:19
	SIP	# build/example.ml#529:13->529:19
	J	$min_caml_cos	# build/example.ml#529:13->529:19
	ADDI	%r31, %r31, $-20	# build/example.ml#529:13->529:19
	FMV	%fr7, %fr0	# build/example.ml#529:13->529:19
	FMV	%fr0, %fr8	# build/example.ml#530:13->530:19
	ADDI	%r31, %r31, $20	# build/example.ml#530:13->530:19
	ADDI	%r31, %r31, $4	# build/example.ml#530:13->530:19
	SIP	# build/example.ml#530:13->530:19
	J	$min_caml_sin	# build/example.ml#530:13->530:19
	ADDI	%r31, %r31, $-20	# build/example.ml#530:13->530:19
	FMV	%fr9, %fr0	# build/example.ml#530:13->530:19
	MVI	%r9, $0	# build/example.ml#531:10->531:11
	FMUL	%fr9, %fr7, %fr9	# build/example.ml#531:16->531:26
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#531:3->531:26
	FMV	%fr0, %fr8	# build/example.ml#532:13->532:19
	ADDI	%r31, %r31, $20	# build/example.ml#532:13->532:19
	ADDI	%r31, %r31, $4	# build/example.ml#532:13->532:19
	SIP	# build/example.ml#532:13->532:19
	J	$min_caml_cos	# build/example.ml#532:13->532:19
	ADDI	%r31, %r31, $-20	# build/example.ml#532:13->532:19
	FMV	%fr9, %fr0	# build/example.ml#532:13->532:19
	MVI	%r9, $2	# build/example.ml#533:10->533:11
	FMUL	%fr9, %fr7, %fr9	# build/example.ml#533:16->533:26
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#533:3->533:26
	MVI	%r8, $min_caml_beam	# build/example.ml#534:3->534:7
	MVI	%r9, $0	# build/example.ml#534:9->534:10
	RF	%fr9	# build/example.ml#534:15->534:28
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#534:3->534:28
	LDR	%r9, %r31, $0	# build/example.ml#525:17->525:30
	LDR	%r8, %r31, $4	# build/example.ml#525:17->525:30
	FLDR	%fr9, %r31, $8	# build/example.ml#525:17->525:30
	FLDR	%fr8, %r31, $12	# build/example.ml#525:17->525:30
	FLDR	%fr7, %r31, $16	# build/example.ml#525:17->525:30
	LINK	# build/example.ml#525:17->525:30
read_screen_settings.2692:
	SDR	%r9, %r31, $0	# build/example.ml#490:3->490:9
	SDR	%r8, %r31, $4	# build/example.ml#490:3->490:9
	SDR	%r7, %r31, $8	# build/example.ml#490:3->490:9
	FSDR	%fr9, %r31, $12	# build/example.ml#490:3->490:9
	FSDR	%fr8, %r31, $16	# build/example.ml#490:3->490:9
	FSDR	%fr7, %r31, $20	# build/example.ml#490:3->490:9
	MVI	%r5, $min_caml_screen	# build/example.ml#490:3->490:9
	MVI	%r9, $0	# build/example.ml#490:11->490:12
	RF	%fr9	# build/example.ml#490:17->490:30
	FSDD	%fr9, %r5, $4, %r9	# build/example.ml#490:3->490:30
	MVI	%r9, $1	# build/example.ml#491:11->491:12
	RF	%fr9	# build/example.ml#491:17->491:30
	FSDD	%fr9, %r5, $4, %r9	# build/example.ml#491:3->491:30
	MVI	%r9, $2	# build/example.ml#492:11->492:12
	RF	%fr9	# build/example.ml#492:17->492:30
	FSDD	%fr9, %r5, $4, %r9	# build/example.ml#492:3->492:30
	RF	%fr8	# build/example.ml#494:17->494:30
	FLDA	%fr9, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#483:3->483:19
	SDR	%r6, %r31, $24	# build/example.ml#495:16->495:22
	SDR	%r5, %r31, $28	# build/example.ml#495:16->495:22
	FSDR	%fr6, %r31, $32	# build/example.ml#495:16->495:22
	FSDR	%fr5, %r31, $36	# build/example.ml#495:16->495:22
	FSDR	%fr4, %r31, $40	# build/example.ml#495:16->495:22
	FMV	%fr0, %fr9	# build/example.ml#495:16->495:22
	ADDI	%r31, %r31, $44	# build/example.ml#495:16->495:22
	ADDI	%r31, %r31, $4	# build/example.ml#495:16->495:22
	SIP	# build/example.ml#495:16->495:22
	J	$min_caml_cos	# build/example.ml#495:16->495:22
	ADDI	%r31, %r31, $-44	# build/example.ml#495:16->495:22
	FMV	%fr6, %fr0	# build/example.ml#495:16->495:22
	LDR	%r6, %r31, $24	# build/example.ml#495:16->495:22
	LDR	%r5, %r31, $28	# build/example.ml#495:16->495:22
	FLDR	%fr6, %r31, $32	# build/example.ml#495:16->495:22
	FLDR	%fr5, %r31, $36	# build/example.ml#495:16->495:22
	FLDR	%fr4, %r31, $40	# build/example.ml#495:16->495:22
	SDR	%r6, %r31, $44	# build/example.ml#496:16->496:22
	SDR	%r5, %r31, $48	# build/example.ml#496:16->496:22
	FSDR	%fr6, %r31, $52	# build/example.ml#496:16->496:22
	FSDR	%fr5, %r31, $56	# build/example.ml#496:16->496:22
	FSDR	%fr4, %r31, $60	# build/example.ml#496:16->496:22
	FMV	%fr0, %fr9	# build/example.ml#496:16->496:22
	ADDI	%r31, %r31, $64	# build/example.ml#496:16->496:22
	ADDI	%r31, %r31, $4	# build/example.ml#496:16->496:22
	SIP	# build/example.ml#496:16->496:22
	J	$min_caml_sin	# build/example.ml#496:16->496:22
	ADDI	%r31, %r31, $-64	# build/example.ml#496:16->496:22
	FMV	%fr8, %fr0	# build/example.ml#496:16->496:22
	LDR	%r6, %r31, $44	# build/example.ml#496:16->496:22
	LDR	%r5, %r31, $48	# build/example.ml#496:16->496:22
	FLDR	%fr6, %r31, $52	# build/example.ml#496:16->496:22
	FLDR	%fr5, %r31, $56	# build/example.ml#496:16->496:22
	FLDR	%fr4, %r31, $60	# build/example.ml#496:16->496:22
	RF	%fr7	# build/example.ml#497:17->497:30
	FLDA	%fr9, $l.7813	# build/example.ml#483:8->483:19
	FMUL	%fr9, %fr7, %fr9	# build/example.ml#483:3->483:19
	SDR	%r6, %r31, $64	# build/example.ml#498:16->498:22
	SDR	%r5, %r31, $68	# build/example.ml#498:16->498:22
	FSDR	%fr6, %r31, $72	# build/example.ml#498:16->498:22
	FSDR	%fr5, %r31, $76	# build/example.ml#498:16->498:22
	FSDR	%fr4, %r31, $80	# build/example.ml#498:16->498:22
	FMV	%fr0, %fr9	# build/example.ml#498:16->498:22
	ADDI	%r31, %r31, $84	# build/example.ml#498:16->498:22
	ADDI	%r31, %r31, $4	# build/example.ml#498:16->498:22
	SIP	# build/example.ml#498:16->498:22
	J	$min_caml_cos	# build/example.ml#498:16->498:22
	ADDI	%r31, %r31, $-84	# build/example.ml#498:16->498:22
	FMV	%fr7, %fr0	# build/example.ml#498:16->498:22
	LDR	%r6, %r31, $64	# build/example.ml#498:16->498:22
	LDR	%r5, %r31, $68	# build/example.ml#498:16->498:22
	FLDR	%fr6, %r31, $72	# build/example.ml#498:16->498:22
	FLDR	%fr5, %r31, $76	# build/example.ml#498:16->498:22
	FLDR	%fr4, %r31, $80	# build/example.ml#498:16->498:22
	SDR	%r6, %r31, $84	# build/example.ml#499:16->499:22
	SDR	%r5, %r31, $88	# build/example.ml#499:16->499:22
	FSDR	%fr6, %r31, $92	# build/example.ml#499:16->499:22
	FSDR	%fr5, %r31, $96	# build/example.ml#499:16->499:22
	FSDR	%fr4, %r31, $100	# build/example.ml#499:16->499:22
	FMV	%fr0, %fr9	# build/example.ml#499:16->499:22
	ADDI	%r31, %r31, $104	# build/example.ml#499:16->499:22
	ADDI	%r31, %r31, $4	# build/example.ml#499:16->499:22
	SIP	# build/example.ml#499:16->499:22
	J	$min_caml_sin	# build/example.ml#499:16->499:22
	ADDI	%r31, %r31, $-104	# build/example.ml#499:16->499:22
	FMV	%fr9, %fr0	# build/example.ml#499:16->499:22
	LDR	%r6, %r31, $84	# build/example.ml#499:16->499:22
	LDR	%r5, %r31, $88	# build/example.ml#499:16->499:22
	FLDR	%fr6, %r31, $92	# build/example.ml#499:16->499:22
	FLDR	%fr5, %r31, $96	# build/example.ml#499:16->499:22
	FLDR	%fr4, %r31, $100	# build/example.ml#499:16->499:22
	MVI	%r6, $min_caml_screenz_dir	# build/example.ml#501:3->501:14
	MVI	%r9, $0	# build/example.ml#501:16->501:17
	FMUL	%fr4, %fr6, %fr9	# build/example.ml#501:22->501:38
	FLDA	%fr5, $l.7814	# build/example.ml#501:42->501:47
	FMUL	%fr5, %fr4, %fr5	# build/example.ml#501:22->501:47
	FSDD	%fr5, %r6, $4, %r9	# build/example.ml#501:3->501:47
	MVI	%r9, $1	# build/example.ml#502:16->502:17
	FLDA	%fr5, $l.7815	# build/example.ml#502:32->502:38
	FMUL	%fr5, %fr8, %fr5	# build/example.ml#502:22->502:38
	FSDD	%fr5, %r6, $4, %r9	# build/example.ml#502:3->502:38
	MVI	%r9, $2	# build/example.ml#503:16->503:17
	FMUL	%fr4, %fr6, %fr7	# build/example.ml#503:22->503:38
	FLDA	%fr5, $l.7814	# build/example.ml#503:42->503:47
	FMUL	%fr5, %fr4, %fr5	# build/example.ml#503:22->503:47
	FSDD	%fr5, %r6, $4, %r9	# build/example.ml#503:3->503:47
	MVI	%r8, $min_caml_screenx_dir	# build/example.ml#505:3->505:14
	MVI	%r9, $0	# build/example.ml#505:16->505:17
	FSDD	%fr7, %r8, $4, %r9	# build/example.ml#505:3->505:28
	MVI	%r9, $1	# build/example.ml#506:16->506:17
	FLDA	%fr5, $l.7787	# build/example.ml#506:22->506:25
	FSDD	%fr5, %r8, $4, %r9	# build/example.ml#506:3->506:25
	MVI	%r9, $2	# build/example.ml#507:16->507:17
	SDR	%r6, %r31, $104	# build/example.ml#507:22->507:33
	SDR	%r5, %r31, $108	# build/example.ml#507:22->507:33
	FSDR	%fr6, %r31, $112	# build/example.ml#507:22->507:33
	FSDR	%fr5, %r31, $116	# build/example.ml#507:22->507:33
	FSDR	%fr4, %r31, $120	# build/example.ml#507:22->507:33
	FMV	%fr0, %fr9	# build/example.ml#507:22->507:33
	ADDI	%r31, %r31, $124	# build/example.ml#507:22->507:33
	ADDI	%r31, %r31, $4	# build/example.ml#507:22->507:33
	SIP	# build/example.ml#507:22->507:33
	J	$min_caml_fneg	# build/example.ml#507:22->507:33
	ADDI	%r31, %r31, $-124	# build/example.ml#507:22->507:33
	FMV	%fr5, %fr0	# build/example.ml#507:22->507:33
	LDR	%r6, %r31, $104	# build/example.ml#507:22->507:33
	LDR	%r5, %r31, $108	# build/example.ml#507:22->507:33
	FLDR	%fr6, %r31, $112	# build/example.ml#507:22->507:33
	FLDR	%fr5, %r31, $116	# build/example.ml#507:22->507:33
	FLDR	%fr4, %r31, $120	# build/example.ml#507:22->507:33
	FSDD	%fr5, %r8, $4, %r9	# build/example.ml#507:3->507:33
	MVI	%r8, $min_caml_screeny_dir	# build/example.ml#509:3->509:14
	MVI	%r9, $0	# build/example.ml#509:16->509:17
	SDR	%r6, %r31, $124	# build/example.ml#509:22->509:33
	SDR	%r5, %r31, $128	# build/example.ml#509:22->509:33
	FSDR	%fr6, %r31, $132	# build/example.ml#509:22->509:33
	FSDR	%fr5, %r31, $136	# build/example.ml#509:22->509:33
	FSDR	%fr4, %r31, $140	# build/example.ml#509:22->509:33
	FMV	%fr0, %fr8	# build/example.ml#509:22->509:33
	ADDI	%r31, %r31, $144	# build/example.ml#509:22->509:33
	ADDI	%r31, %r31, $4	# build/example.ml#509:22->509:33
	SIP	# build/example.ml#509:22->509:33
	J	$min_caml_fneg	# build/example.ml#509:22->509:33
	ADDI	%r31, %r31, $-144	# build/example.ml#509:22->509:33
	FMV	%fr5, %fr0	# build/example.ml#509:22->509:33
	LDR	%r6, %r31, $124	# build/example.ml#509:22->509:33
	LDR	%r5, %r31, $128	# build/example.ml#509:22->509:33
	FLDR	%fr6, %r31, $132	# build/example.ml#509:22->509:33
	FLDR	%fr5, %r31, $136	# build/example.ml#509:22->509:33
	FLDR	%fr4, %r31, $140	# build/example.ml#509:22->509:33
	FMUL	%fr9, %fr5, %fr9	# build/example.ml#509:22->509:43
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#509:3->509:43
	MVI	%r9, $1	# build/example.ml#510:16->510:17
	SDR	%r6, %r31, $144	# build/example.ml#510:22->510:33
	SDR	%r5, %r31, $148	# build/example.ml#510:22->510:33
	FSDR	%fr6, %r31, $152	# build/example.ml#510:22->510:33
	FSDR	%fr5, %r31, $156	# build/example.ml#510:22->510:33
	FSDR	%fr4, %r31, $160	# build/example.ml#510:22->510:33
	FMV	%fr0, %fr6	# build/example.ml#510:22->510:33
	ADDI	%r31, %r31, $164	# build/example.ml#510:22->510:33
	ADDI	%r31, %r31, $4	# build/example.ml#510:22->510:33
	SIP	# build/example.ml#510:22->510:33
	J	$min_caml_fneg	# build/example.ml#510:22->510:33
	ADDI	%r31, %r31, $-164	# build/example.ml#510:22->510:33
	FMV	%fr9, %fr0	# build/example.ml#510:22->510:33
	LDR	%r6, %r31, $144	# build/example.ml#510:22->510:33
	LDR	%r5, %r31, $148	# build/example.ml#510:22->510:33
	FLDR	%fr6, %r31, $152	# build/example.ml#510:22->510:33
	FLDR	%fr5, %r31, $156	# build/example.ml#510:22->510:33
	FLDR	%fr4, %r31, $160	# build/example.ml#510:22->510:33
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#510:3->510:33
	MVI	%r9, $2	# build/example.ml#511:16->511:17
	SDR	%r6, %r31, $164	# build/example.ml#511:22->511:33
	SDR	%r5, %r31, $168	# build/example.ml#511:22->511:33
	FSDR	%fr6, %r31, $172	# build/example.ml#511:22->511:33
	FSDR	%fr5, %r31, $176	# build/example.ml#511:22->511:33
	FSDR	%fr4, %r31, $180	# build/example.ml#511:22->511:33
	FMV	%fr0, %fr8	# build/example.ml#511:22->511:33
	ADDI	%r31, %r31, $184	# build/example.ml#511:22->511:33
	ADDI	%r31, %r31, $4	# build/example.ml#511:22->511:33
	SIP	# build/example.ml#511:22->511:33
	J	$min_caml_fneg	# build/example.ml#511:22->511:33
	ADDI	%r31, %r31, $-184	# build/example.ml#511:22->511:33
	FMV	%fr9, %fr0	# build/example.ml#511:22->511:33
	LDR	%r6, %r31, $164	# build/example.ml#511:22->511:33
	LDR	%r5, %r31, $168	# build/example.ml#511:22->511:33
	FLDR	%fr6, %r31, $172	# build/example.ml#511:22->511:33
	FLDR	%fr5, %r31, $176	# build/example.ml#511:22->511:33
	FLDR	%fr4, %r31, $180	# build/example.ml#511:22->511:33
	FMUL	%fr9, %fr9, %fr7	# build/example.ml#511:22->511:43
	FSDD	%fr9, %r8, $4, %r9	# build/example.ml#511:3->511:43
	MVI	%r7, $min_caml_viewpoint	# build/example.ml#513:3->513:12
	MVI	%r8, $0	# build/example.ml#513:14->513:15
	MVI	%r9, $0	# build/example.ml#513:28->513:29
	FLDD	%fr8, %r5, $4, %r9	# build/example.ml#490:3->490:30
	MVI	%r9, $0	# build/example.ml#513:47->513:48
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#501:3->501:47
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#513:20->513:49
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#513:3->513:49
	MVI	%r8, $1	# build/example.ml#514:14->514:15
	MVI	%r9, $1	# build/example.ml#514:28->514:29
	FLDD	%fr8, %r5, $4, %r9	# build/example.ml#490:3->490:30
	MVI	%r9, $1	# build/example.ml#514:47->514:48
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#501:3->501:47
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#514:20->514:49
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#514:3->514:49
	MVI	%r8, $2	# build/example.ml#515:14->515:15
	MVI	%r9, $2	# build/example.ml#515:28->515:29
	FLDD	%fr8, %r5, $4, %r9	# build/example.ml#490:3->490:30
	MVI	%r9, $2	# build/example.ml#515:47->515:48
	FLDD	%fr9, %r6, $4, %r9	# build/example.ml#501:3->501:47
	FSUB	%fr9, %fr8, %fr9	# build/example.ml#515:20->515:49
	FSDD	%fr9, %r7, $4, %r8	# build/example.ml#515:3->515:49
	LDR	%r9, %r31, $0	# build/example.ml#490:3->490:9
	LDR	%r8, %r31, $4	# build/example.ml#490:3->490:9
	LDR	%r7, %r31, $8	# build/example.ml#490:3->490:9
	FLDR	%fr9, %r31, $12	# build/example.ml#490:3->490:9
	FLDR	%fr8, %r31, $16	# build/example.ml#490:3->490:9
	FLDR	%fr7, %r31, $20	# build/example.ml#490:3->490:9
	LINK	# build/example.ml#490:3->490:9
p_set_group_id.2675:
	SDR	%r9, %r31, $0	# build/example.ml#427:3->429:18
	SDR	%r8, %r31, $4	# build/example.ml#427:3->429:18
	SDR	%r7, %r31, $8	# build/example.ml#427:3->429:18
	SDR	%r10, %r31, $12	# build/example.ml#427:3->429:18
	MV	%r1, %r7	# build/example.ml#427:3->429:18
	MVI	%r10, $0	# build/example.ml#429:10->429:11
	SDD	%r9, %r1, $4, %r10	# build/example.ml#429:3->429:18
	LDR	%r9, %r31, $0	# build/example.ml#427:3->429:18
	LDR	%r8, %r31, $4	# build/example.ml#427:3->429:18
	LDR	%r7, %r31, $8	# build/example.ml#427:3->429:18
	LDR	%r10, %r31, $12	# build/example.ml#427:3->429:18
	LINK	# build/example.ml#427:3->429:18
p_group_id.2673:
	SDR	%r8, %r31, $0	# build/example.ml#420:3->422:12
	SDR	%r7, %r31, $4	# build/example.ml#420:3->422:12
	SDR	%r10, %r31, $8	# build/example.ml#420:3->422:12
	MV	%r1, %r7	# build/example.ml#420:3->422:12
	MVI	%r10, $0	# build/example.ml#422:10->422:11
	LDD	%r0, %r1, $4, %r10	# build/example.ml#422:3->422:12
	LDR	%r8, %r31, $0	# build/example.ml#420:3->422:12
	LDR	%r7, %r31, $4	# build/example.ml#420:3->422:12
	LDR	%r10, %r31, $8	# build/example.ml#420:3->422:12
	LINK	# build/example.ml#420:3->422:12
o_param_r3.2657:
	SDR	%r9, %r31, $0	# build/example.ml#337:3->342:15
	SDR	%r8, %r31, $4	# build/example.ml#337:3->342:15
	SDR	%r7, %r31, $8	# build/example.ml#337:3->342:15
	SDR	%r11, %r31, $12	# build/example.ml#337:3->342:15
	SDR	%r10, %r31, $16	# build/example.ml#337:3->342:15
	MV	%r1, %r10	# build/example.ml#337:3->342:15
	MVI	%r10, $2	# build/example.ml#342:13->342:14
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#342:3->342:15
	LDR	%r9, %r31, $0	# build/example.ml#337:3->342:15
	LDR	%r8, %r31, $4	# build/example.ml#337:3->342:15
	LDR	%r7, %r31, $8	# build/example.ml#337:3->342:15
	LDR	%r11, %r31, $12	# build/example.ml#337:3->342:15
	LDR	%r10, %r31, $16	# build/example.ml#337:3->342:15
	LINK	# build/example.ml#337:3->342:15
o_param_r2.2655:
	SDR	%r9, %r31, $0	# build/example.ml#327:3->332:15
	SDR	%r8, %r31, $4	# build/example.ml#327:3->332:15
	SDR	%r7, %r31, $8	# build/example.ml#327:3->332:15
	SDR	%r11, %r31, $12	# build/example.ml#327:3->332:15
	SDR	%r10, %r31, $16	# build/example.ml#327:3->332:15
	MV	%r1, %r10	# build/example.ml#327:3->332:15
	MVI	%r10, $1	# build/example.ml#332:13->332:14
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#332:3->332:15
	LDR	%r9, %r31, $0	# build/example.ml#327:3->332:15
	LDR	%r8, %r31, $4	# build/example.ml#327:3->332:15
	LDR	%r7, %r31, $8	# build/example.ml#327:3->332:15
	LDR	%r11, %r31, $12	# build/example.ml#327:3->332:15
	LDR	%r10, %r31, $16	# build/example.ml#327:3->332:15
	LINK	# build/example.ml#327:3->332:15
o_param_r1.2653:
	SDR	%r9, %r31, $0	# build/example.ml#317:3->322:15
	SDR	%r8, %r31, $4	# build/example.ml#317:3->322:15
	SDR	%r7, %r31, $8	# build/example.ml#317:3->322:15
	SDR	%r11, %r31, $12	# build/example.ml#317:3->322:15
	SDR	%r10, %r31, $16	# build/example.ml#317:3->322:15
	MV	%r1, %r10	# build/example.ml#317:3->322:15
	MVI	%r10, $0	# build/example.ml#322:13->322:14
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#322:3->322:15
	LDR	%r9, %r31, $0	# build/example.ml#317:3->322:15
	LDR	%r8, %r31, $4	# build/example.ml#317:3->322:15
	LDR	%r7, %r31, $8	# build/example.ml#317:3->322:15
	LDR	%r11, %r31, $12	# build/example.ml#317:3->322:15
	LDR	%r10, %r31, $16	# build/example.ml#317:3->322:15
	LINK	# build/example.ml#317:3->322:15
o_color_blue.2651:
	SDR	%r9, %r31, $0	# build/example.ml#307:3->312:14
	SDR	%r8, %r31, $4	# build/example.ml#307:3->312:14
	SDR	%r7, %r31, $8	# build/example.ml#307:3->312:14
	SDR	%r11, %r31, $12	# build/example.ml#307:3->312:14
	SDR	%r10, %r31, $16	# build/example.ml#307:3->312:14
	MV	%r1, %r9	# build/example.ml#307:3->312:14
	MVI	%r10, $2	# build/example.ml#312:12->312:13
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#312:3->312:14
	LDR	%r9, %r31, $0	# build/example.ml#307:3->312:14
	LDR	%r8, %r31, $4	# build/example.ml#307:3->312:14
	LDR	%r7, %r31, $8	# build/example.ml#307:3->312:14
	LDR	%r11, %r31, $12	# build/example.ml#307:3->312:14
	LDR	%r10, %r31, $16	# build/example.ml#307:3->312:14
	LINK	# build/example.ml#307:3->312:14
o_color_green.2649:
	SDR	%r9, %r31, $0	# build/example.ml#297:3->302:14
	SDR	%r8, %r31, $4	# build/example.ml#297:3->302:14
	SDR	%r7, %r31, $8	# build/example.ml#297:3->302:14
	SDR	%r11, %r31, $12	# build/example.ml#297:3->302:14
	SDR	%r10, %r31, $16	# build/example.ml#297:3->302:14
	MV	%r1, %r9	# build/example.ml#297:3->302:14
	MVI	%r10, $1	# build/example.ml#302:12->302:13
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#302:3->302:14
	LDR	%r9, %r31, $0	# build/example.ml#297:3->302:14
	LDR	%r8, %r31, $4	# build/example.ml#297:3->302:14
	LDR	%r7, %r31, $8	# build/example.ml#297:3->302:14
	LDR	%r11, %r31, $12	# build/example.ml#297:3->302:14
	LDR	%r10, %r31, $16	# build/example.ml#297:3->302:14
	LINK	# build/example.ml#297:3->302:14
o_color_red.2647:
	SDR	%r9, %r31, $0	# build/example.ml#287:3->292:14
	SDR	%r8, %r31, $4	# build/example.ml#287:3->292:14
	SDR	%r7, %r31, $8	# build/example.ml#287:3->292:14
	SDR	%r11, %r31, $12	# build/example.ml#287:3->292:14
	SDR	%r10, %r31, $16	# build/example.ml#287:3->292:14
	MV	%r1, %r9	# build/example.ml#287:3->292:14
	MVI	%r10, $0	# build/example.ml#292:12->292:13
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#292:3->292:14
	LDR	%r9, %r31, $0	# build/example.ml#287:3->292:14
	LDR	%r8, %r31, $4	# build/example.ml#287:3->292:14
	LDR	%r7, %r31, $8	# build/example.ml#287:3->292:14
	LDR	%r11, %r31, $12	# build/example.ml#287:3->292:14
	LDR	%r10, %r31, $16	# build/example.ml#287:3->292:14
	LINK	# build/example.ml#287:3->292:14
o_hilight.2645:
	SDR	%r9, %r31, $0	# build/example.ml#277:3->282:19
	SDR	%r8, %r31, $4	# build/example.ml#277:3->282:19
	SDR	%r7, %r31, $8	# build/example.ml#277:3->282:19
	SDR	%r11, %r31, $12	# build/example.ml#277:3->282:19
	SDR	%r10, %r31, $16	# build/example.ml#277:3->282:19
	MV	%r1, %r8	# build/example.ml#277:3->282:19
	MVI	%r10, $1	# build/example.ml#282:17->282:18
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#282:3->282:19
	LDR	%r9, %r31, $0	# build/example.ml#277:3->282:19
	LDR	%r8, %r31, $4	# build/example.ml#277:3->282:19
	LDR	%r7, %r31, $8	# build/example.ml#277:3->282:19
	LDR	%r11, %r31, $12	# build/example.ml#277:3->282:19
	LDR	%r10, %r31, $16	# build/example.ml#277:3->282:19
	LINK	# build/example.ml#277:3->282:19
o_diffuse.2643:
	SDR	%r9, %r31, $0	# build/example.ml#267:3->272:19
	SDR	%r8, %r31, $4	# build/example.ml#267:3->272:19
	SDR	%r7, %r31, $8	# build/example.ml#267:3->272:19
	SDR	%r11, %r31, $12	# build/example.ml#267:3->272:19
	SDR	%r10, %r31, $16	# build/example.ml#267:3->272:19
	MV	%r1, %r8	# build/example.ml#267:3->272:19
	MVI	%r10, $0	# build/example.ml#272:17->272:18
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#272:3->272:19
	LDR	%r9, %r31, $0	# build/example.ml#267:3->272:19
	LDR	%r8, %r31, $4	# build/example.ml#267:3->272:19
	LDR	%r7, %r31, $8	# build/example.ml#267:3->272:19
	LDR	%r11, %r31, $12	# build/example.ml#267:3->272:19
	LDR	%r10, %r31, $16	# build/example.ml#267:3->272:19
	LINK	# build/example.ml#267:3->272:19
o_param_z.2641:
	SDR	%r9, %r31, $0	# build/example.ml#257:3->262:12
	SDR	%r8, %r31, $4	# build/example.ml#257:3->262:12
	SDR	%r7, %r31, $8	# build/example.ml#257:3->262:12
	SDR	%r11, %r31, $12	# build/example.ml#257:3->262:12
	SDR	%r10, %r31, $16	# build/example.ml#257:3->262:12
	MV	%r1, %r6	# build/example.ml#257:3->262:12
	MVI	%r10, $2	# build/example.ml#262:10->262:11
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#262:3->262:12
	LDR	%r9, %r31, $0	# build/example.ml#257:3->262:12
	LDR	%r8, %r31, $4	# build/example.ml#257:3->262:12
	LDR	%r7, %r31, $8	# build/example.ml#257:3->262:12
	LDR	%r11, %r31, $12	# build/example.ml#257:3->262:12
	LDR	%r10, %r31, $16	# build/example.ml#257:3->262:12
	LINK	# build/example.ml#257:3->262:12
o_param_y.2639:
	SDR	%r9, %r31, $0	# build/example.ml#247:3->252:12
	SDR	%r8, %r31, $4	# build/example.ml#247:3->252:12
	SDR	%r7, %r31, $8	# build/example.ml#247:3->252:12
	SDR	%r11, %r31, $12	# build/example.ml#247:3->252:12
	SDR	%r10, %r31, $16	# build/example.ml#247:3->252:12
	MV	%r1, %r6	# build/example.ml#247:3->252:12
	MVI	%r10, $1	# build/example.ml#252:10->252:11
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#252:3->252:12
	LDR	%r9, %r31, $0	# build/example.ml#247:3->252:12
	LDR	%r8, %r31, $4	# build/example.ml#247:3->252:12
	LDR	%r7, %r31, $8	# build/example.ml#247:3->252:12
	LDR	%r11, %r31, $12	# build/example.ml#247:3->252:12
	LDR	%r10, %r31, $16	# build/example.ml#247:3->252:12
	LINK	# build/example.ml#247:3->252:12
o_param_x.2637:
	SDR	%r9, %r31, $0	# build/example.ml#237:3->242:12
	SDR	%r8, %r31, $4	# build/example.ml#237:3->242:12
	SDR	%r7, %r31, $8	# build/example.ml#237:3->242:12
	SDR	%r11, %r31, $12	# build/example.ml#237:3->242:12
	SDR	%r10, %r31, $16	# build/example.ml#237:3->242:12
	MV	%r1, %r6	# build/example.ml#237:3->242:12
	MVI	%r10, $0	# build/example.ml#242:10->242:11
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#242:3->242:12
	LDR	%r9, %r31, $0	# build/example.ml#237:3->242:12
	LDR	%r8, %r31, $4	# build/example.ml#237:3->242:12
	LDR	%r7, %r31, $8	# build/example.ml#237:3->242:12
	LDR	%r11, %r31, $12	# build/example.ml#237:3->242:12
	LDR	%r10, %r31, $16	# build/example.ml#237:3->242:12
	LINK	# build/example.ml#237:3->242:12
o_param_c.2633:
	SDR	%r9, %r31, $0	# build/example.ml#217:3->222:12
	SDR	%r8, %r31, $4	# build/example.ml#217:3->222:12
	SDR	%r7, %r31, $8	# build/example.ml#217:3->222:12
	SDR	%r11, %r31, $12	# build/example.ml#217:3->222:12
	SDR	%r10, %r31, $16	# build/example.ml#217:3->222:12
	MV	%r1, %r5	# build/example.ml#217:3->222:12
	MVI	%r10, $2	# build/example.ml#222:10->222:11
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#222:3->222:12
	LDR	%r9, %r31, $0	# build/example.ml#217:3->222:12
	LDR	%r8, %r31, $4	# build/example.ml#217:3->222:12
	LDR	%r7, %r31, $8	# build/example.ml#217:3->222:12
	LDR	%r11, %r31, $12	# build/example.ml#217:3->222:12
	LDR	%r10, %r31, $16	# build/example.ml#217:3->222:12
	LINK	# build/example.ml#217:3->222:12
o_param_b.2631:
	SDR	%r9, %r31, $0	# build/example.ml#207:3->212:12
	SDR	%r8, %r31, $4	# build/example.ml#207:3->212:12
	SDR	%r7, %r31, $8	# build/example.ml#207:3->212:12
	SDR	%r11, %r31, $12	# build/example.ml#207:3->212:12
	SDR	%r10, %r31, $16	# build/example.ml#207:3->212:12
	MV	%r1, %r5	# build/example.ml#207:3->212:12
	MVI	%r10, $1	# build/example.ml#212:10->212:11
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#212:3->212:12
	LDR	%r9, %r31, $0	# build/example.ml#207:3->212:12
	LDR	%r8, %r31, $4	# build/example.ml#207:3->212:12
	LDR	%r7, %r31, $8	# build/example.ml#207:3->212:12
	LDR	%r11, %r31, $12	# build/example.ml#207:3->212:12
	LDR	%r10, %r31, $16	# build/example.ml#207:3->212:12
	LINK	# build/example.ml#207:3->212:12
o_param_a.2629:
	SDR	%r9, %r31, $0	# build/example.ml#197:3->202:12
	SDR	%r8, %r31, $4	# build/example.ml#197:3->202:12
	SDR	%r7, %r31, $8	# build/example.ml#197:3->202:12
	SDR	%r11, %r31, $12	# build/example.ml#197:3->202:12
	SDR	%r10, %r31, $16	# build/example.ml#197:3->202:12
	MV	%r1, %r5	# build/example.ml#197:3->202:12
	MVI	%r10, $0	# build/example.ml#202:10->202:11
	FLDD	%fr0, %r1, $4, %r10	# build/example.ml#202:3->202:12
	LDR	%r9, %r31, $0	# build/example.ml#197:3->202:12
	LDR	%r8, %r31, $4	# build/example.ml#197:3->202:12
	LDR	%r7, %r31, $8	# build/example.ml#197:3->202:12
	LDR	%r11, %r31, $12	# build/example.ml#197:3->202:12
	LDR	%r10, %r31, $16	# build/example.ml#197:3->202:12
	LINK	# build/example.ml#197:3->202:12
vecaccumv.2615:
	SDR	%r11, %r31, $0	# build/example.ml#138:9->138:10
	SDR	%r10, %r31, $4	# build/example.ml#138:9->138:10
	FSDR	%fr11, %r31, $8	# build/example.ml#138:9->138:10
	FSDR	%fr10, %r31, $12	# build/example.ml#138:9->138:10
	MVI	%r11, $0	# build/example.ml#138:9->138:10
	MVI	%r10, $0	# build/example.ml#138:21->138:22
	FLDD	%fr11, %r1, $4, %r10	# build/example.ml#138:15->138:23
	MVI	%r10, $0	# build/example.ml#138:30->138:31
	FLDD	%fr10, %r2, $4, %r10	# build/example.ml#138:27->138:32
	MVI	%r10, $0	# build/example.ml#138:39->138:40
	FLDD	%fr1, %r3, $4, %r10	# build/example.ml#138:36->138:41
	FMUL	%fr1, %fr10, %fr1	# build/example.ml#138:27->138:41
	FADD	%fr1, %fr11, %fr1	# build/example.ml#138:15->138:41
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#138:3->138:41
	MVI	%r11, $1	# build/example.ml#139:9->139:10
	MVI	%r10, $1	# build/example.ml#139:21->139:22
	FLDD	%fr11, %r1, $4, %r10	# build/example.ml#138:15->138:23
	MVI	%r10, $1	# build/example.ml#139:30->139:31
	FLDD	%fr10, %r2, $4, %r10	# build/example.ml#138:27->138:32
	MVI	%r10, $1	# build/example.ml#139:39->139:40
	FLDD	%fr1, %r3, $4, %r10	# build/example.ml#138:36->138:41
	FMUL	%fr1, %fr10, %fr1	# build/example.ml#139:27->139:41
	FADD	%fr1, %fr11, %fr1	# build/example.ml#139:15->139:41
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#139:3->139:41
	MVI	%r11, $2	# build/example.ml#140:9->140:10
	MVI	%r10, $2	# build/example.ml#140:21->140:22
	FLDD	%fr11, %r1, $4, %r10	# build/example.ml#138:15->138:23
	MVI	%r10, $2	# build/example.ml#140:30->140:31
	FLDD	%fr10, %r2, $4, %r10	# build/example.ml#138:27->138:32
	MVI	%r10, $2	# build/example.ml#140:39->140:40
	FLDD	%fr1, %r3, $4, %r10	# build/example.ml#138:36->138:41
	FMUL	%fr1, %fr10, %fr1	# build/example.ml#140:27->140:41
	FADD	%fr1, %fr11, %fr1	# build/example.ml#140:15->140:41
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#140:3->140:41
	LDR	%r11, %r31, $0	# build/example.ml#138:9->138:10
	LDR	%r10, %r31, $4	# build/example.ml#138:9->138:10
	FLDR	%fr11, %r31, $8	# build/example.ml#138:9->138:10
	FLDR	%fr10, %r31, $12	# build/example.ml#138:9->138:10
	LINK	# build/example.ml#138:9->138:10
vecscale.2612:
	SDR	%r11, %r31, $0	# build/example.ml#131:9->131:10
	SDR	%r10, %r31, $4	# build/example.ml#131:9->131:10
	MVI	%r11, $0	# build/example.ml#131:9->131:10
	MVI	%r10, $0	# build/example.ml#131:21->131:22
	FLDD	%fr1, %r1, $4, %r10	# build/example.ml#131:15->131:23
	FMUL	%fr1, %fr1, %fr0	# build/example.ml#131:15->131:32
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#131:3->131:32
	MVI	%r11, $1	# build/example.ml#132:9->132:10
	MVI	%r10, $1	# build/example.ml#132:21->132:22
	FLDD	%fr1, %r1, $4, %r10	# build/example.ml#131:15->131:23
	FMUL	%fr1, %fr1, %fr0	# build/example.ml#132:15->132:32
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#132:3->132:32
	MVI	%r11, $2	# build/example.ml#133:9->133:10
	MVI	%r10, $2	# build/example.ml#133:21->133:22
	FLDD	%fr1, %r1, $4, %r10	# build/example.ml#131:15->131:23
	FMUL	%fr1, %fr1, %fr0	# build/example.ml#133:15->133:32
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#133:3->133:32
	LDR	%r11, %r31, $0	# build/example.ml#131:9->131:10
	LDR	%r10, %r31, $4	# build/example.ml#131:9->131:10
	LINK	# build/example.ml#131:9->131:10
vecadd.2606:
	SDR	%r11, %r31, $0	# build/example.ml#117:9->117:10
	SDR	%r10, %r31, $4	# build/example.ml#117:9->117:10
	FSDR	%fr10, %r31, $8	# build/example.ml#117:9->117:10
	MVI	%r11, $0	# build/example.ml#117:9->117:10
	MVI	%r10, $0	# build/example.ml#117:21->117:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#117:15->117:23
	MVI	%r10, $0	# build/example.ml#117:30->117:31
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#117:27->117:32
	FADD	%fr1, %fr10, %fr1	# build/example.ml#117:15->117:32
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#117:3->117:32
	MVI	%r11, $1	# build/example.ml#118:9->118:10
	MVI	%r10, $1	# build/example.ml#118:21->118:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#117:15->117:23
	MVI	%r10, $1	# build/example.ml#118:30->118:31
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#117:27->117:32
	FADD	%fr1, %fr10, %fr1	# build/example.ml#118:15->118:32
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#118:3->118:32
	MVI	%r11, $2	# build/example.ml#119:9->119:10
	MVI	%r10, $2	# build/example.ml#119:21->119:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#117:15->117:23
	MVI	%r10, $2	# build/example.ml#119:30->119:31
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#117:27->117:32
	FADD	%fr1, %fr10, %fr1	# build/example.ml#119:15->119:32
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#119:3->119:32
	LDR	%r11, %r31, $0	# build/example.ml#117:9->117:10
	LDR	%r10, %r31, $4	# build/example.ml#117:9->117:10
	FLDR	%fr10, %r31, $8	# build/example.ml#117:9->117:10
	LINK	# build/example.ml#117:9->117:10
vecaccum.2602:
	SDR	%r11, %r31, $0	# build/example.ml#110:9->110:10
	SDR	%r10, %r31, $4	# build/example.ml#110:9->110:10
	FSDR	%fr10, %r31, $8	# build/example.ml#110:9->110:10
	MVI	%r11, $0	# build/example.ml#110:9->110:10
	MVI	%r10, $0	# build/example.ml#110:21->110:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#110:15->110:23
	MVI	%r10, $0	# build/example.ml#110:39->110:40
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#110:36->110:41
	FMUL	%fr1, %fr0, %fr1	# build/example.ml#110:27->110:41
	FADD	%fr1, %fr10, %fr1	# build/example.ml#110:15->110:41
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#110:3->110:41
	MVI	%r11, $1	# build/example.ml#111:9->111:10
	MVI	%r10, $1	# build/example.ml#111:21->111:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#110:15->110:23
	MVI	%r10, $1	# build/example.ml#111:39->111:40
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#110:36->110:41
	FMUL	%fr1, %fr0, %fr1	# build/example.ml#111:27->111:41
	FADD	%fr1, %fr10, %fr1	# build/example.ml#111:15->111:41
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#111:3->111:41
	MVI	%r11, $2	# build/example.ml#112:9->112:10
	MVI	%r10, $2	# build/example.ml#112:21->112:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#110:15->110:23
	MVI	%r10, $2	# build/example.ml#112:39->112:40
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#110:36->110:41
	FMUL	%fr1, %fr0, %fr1	# build/example.ml#112:27->112:41
	FADD	%fr1, %fr10, %fr1	# build/example.ml#112:15->112:41
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#112:3->112:41
	LDR	%r11, %r31, $0	# build/example.ml#110:9->110:10
	LDR	%r10, %r31, $4	# build/example.ml#110:9->110:10
	FLDR	%fr10, %r31, $8	# build/example.ml#110:9->110:10
	LINK	# build/example.ml#110:9->110:10
veciprod2.2597:
	SDR	%r10, %r31, $0	# build/example.ml#105:6->105:7
	FSDR	%fr11, %r31, $4	# build/example.ml#105:6->105:7
	FSDR	%fr10, %r31, $8	# build/example.ml#105:6->105:7
	MVI	%r10, $0	# build/example.ml#105:6->105:7
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#105:3->105:8
	FMUL	%fr11, %fr10, %fr0	# build/example.ml#105:3->105:14
	MVI	%r10, $1	# build/example.ml#105:21->105:22
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#105:3->105:8
	FMUL	%fr1, %fr10, %fr1	# build/example.ml#105:18->105:29
	FADD	%fr10, %fr11, %fr1	# build/example.ml#105:3->105:29
	MVI	%r10, $2	# build/example.ml#105:36->105:37
	FLDD	%fr1, %r1, $4, %r10	# build/example.ml#105:3->105:8
	FMUL	%fr1, %fr1, %fr2	# build/example.ml#105:33->105:44
	FADD	%fr0, %fr10, %fr1	# build/example.ml#105:3->105:44
	LDR	%r10, %r31, $0	# build/example.ml#105:6->105:7
	FLDR	%fr11, %r31, $4	# build/example.ml#105:6->105:7
	FLDR	%fr10, %r31, $8	# build/example.ml#105:6->105:7
	LINK	# build/example.ml#105:6->105:7
veciprod.2594:
	SDR	%r10, %r31, $0	# build/example.ml#100:6->100:7
	FSDR	%fr11, %r31, $4	# build/example.ml#100:6->100:7
	FSDR	%fr10, %r31, $8	# build/example.ml#100:6->100:7
	MVI	%r10, $0	# build/example.ml#100:6->100:7
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#100:3->100:8
	MVI	%r10, $0	# build/example.ml#100:15->100:16
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#100:12->100:17
	FMUL	%fr11, %fr10, %fr1	# build/example.ml#100:3->100:17
	MVI	%r10, $1	# build/example.ml#100:24->100:25
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#100:3->100:8
	MVI	%r10, $1	# build/example.ml#100:33->100:34
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#100:12->100:17
	FMUL	%fr1, %fr10, %fr1	# build/example.ml#100:21->100:35
	FADD	%fr11, %fr11, %fr1	# build/example.ml#100:3->100:35
	MVI	%r10, $2	# build/example.ml#100:42->100:43
	FLDD	%fr10, %r1, $4, %r10	# build/example.ml#100:3->100:8
	MVI	%r1, $2	# build/example.ml#100:51->100:52
	FLDD	%fr1, %r2, $4, %r1	# build/example.ml#100:12->100:17
	FMUL	%fr1, %fr10, %fr1	# build/example.ml#100:39->100:53
	FADD	%fr0, %fr11, %fr1	# build/example.ml#100:3->100:53
	LDR	%r10, %r31, $0	# build/example.ml#100:6->100:7
	FLDR	%fr11, %r31, $4	# build/example.ml#100:6->100:7
	FLDR	%fr10, %r31, $8	# build/example.ml#100:6->100:7
	LINK	# build/example.ml#100:6->100:7
vecunit_sgn.2591:
	SDR	%r9, %r31, $0	# build/example.ml#91:25->91:26
	SDR	%r8, %r31, $4	# build/example.ml#91:25->91:26
	FSDR	%fr9, %r31, $8	# build/example.ml#91:25->91:26
	FSDR	%fr8, %r31, $12	# build/example.ml#91:25->91:26
	MVI	%r9, $0	# build/example.ml#91:25->91:26
	FLDD	%fr9, %r1, $4, %r9	# build/example.ml#91:22->91:27
	SDR	%r2, %r31, $16	# build/example.ml#91:17->91:27
	SDR	%r1, %r31, $20	# build/example.ml#91:17->91:27
	FMV	%fr0, %fr9	# build/example.ml#91:17->91:27
	ADDI	%r31, %r31, $24	# build/example.ml#91:17->91:27
	ADDI	%r31, %r31, $4	# build/example.ml#91:17->91:27
	SIP	# build/example.ml#91:17->91:27
	J	$min_caml_fsqr	# build/example.ml#91:17->91:27
	ADDI	%r31, %r31, $-24	# build/example.ml#91:17->91:27
	FMV	%fr8, %fr0	# build/example.ml#91:17->91:27
	LDR	%r2, %r31, $16	# build/example.ml#91:17->91:27
	LDR	%r1, %r31, $20	# build/example.ml#91:17->91:27
	MVI	%r9, $1	# build/example.ml#91:39->91:40
	FLDD	%fr9, %r1, $4, %r9	# build/example.ml#91:22->91:27
	SDR	%r2, %r31, $24	# build/example.ml#91:31->91:41
	SDR	%r1, %r31, $28	# build/example.ml#91:31->91:41
	FMV	%fr0, %fr9	# build/example.ml#91:31->91:41
	ADDI	%r31, %r31, $32	# build/example.ml#91:31->91:41
	ADDI	%r31, %r31, $4	# build/example.ml#91:31->91:41
	SIP	# build/example.ml#91:31->91:41
	J	$min_caml_fsqr	# build/example.ml#91:31->91:41
	ADDI	%r31, %r31, $-32	# build/example.ml#91:31->91:41
	FMV	%fr9, %fr0	# build/example.ml#91:31->91:41
	LDR	%r2, %r31, $24	# build/example.ml#91:31->91:41
	LDR	%r1, %r31, $28	# build/example.ml#91:31->91:41
	FADD	%fr8, %fr8, %fr9	# build/example.ml#91:17->91:41
	MVI	%r9, $2	# build/example.ml#91:53->91:54
	FLDD	%fr9, %r1, $4, %r9	# build/example.ml#91:22->91:27
	SDR	%r2, %r31, $32	# build/example.ml#91:45->91:55
	SDR	%r1, %r31, $36	# build/example.ml#91:45->91:55
	FMV	%fr0, %fr9	# build/example.ml#91:45->91:55
	ADDI	%r31, %r31, $40	# build/example.ml#91:45->91:55
	ADDI	%r31, %r31, $4	# build/example.ml#91:45->91:55
	SIP	# build/example.ml#91:45->91:55
	J	$min_caml_fsqr	# build/example.ml#91:45->91:55
	ADDI	%r31, %r31, $-40	# build/example.ml#91:45->91:55
	FMV	%fr9, %fr0	# build/example.ml#91:45->91:55
	LDR	%r2, %r31, $32	# build/example.ml#91:45->91:55
	LDR	%r1, %r31, $36	# build/example.ml#91:45->91:55
	FADD	%fr9, %fr8, %fr9	# build/example.ml#91:17->91:55
	SDR	%r2, %r31, $40	# build/example.ml#91:11->91:56
	SDR	%r1, %r31, $44	# build/example.ml#91:11->91:56
	FMV	%fr0, %fr9	# build/example.ml#91:11->91:56
	ADDI	%r31, %r31, $48	# build/example.ml#91:11->91:56
	ADDI	%r31, %r31, $4	# build/example.ml#91:11->91:56
	SIP	# build/example.ml#91:11->91:56
	J	$min_caml_sqrt	# build/example.ml#91:11->91:56
	ADDI	%r31, %r31, $-48	# build/example.ml#91:11->91:56
	FMV	%fr9, %fr0	# build/example.ml#91:11->91:56
	LDR	%r2, %r31, $40	# build/example.ml#91:11->91:56
	LDR	%r1, %r31, $44	# build/example.ml#91:11->91:56
	SDR	%r2, %r31, $48	# build/example.ml#92:15->92:24
	SDR	%r1, %r31, $52	# build/example.ml#92:15->92:24
	FMV	%fr0, %fr9	# build/example.ml#92:15->92:24
	ADDI	%r31, %r31, $56	# build/example.ml#92:15->92:24
	ADDI	%r31, %r31, $4	# build/example.ml#92:15->92:24
	SIP	# build/example.ml#92:15->92:24
	J	$min_caml_fiszero	# build/example.ml#92:15->92:24
	ADDI	%r31, %r31, $-56	# build/example.ml#92:15->92:24
	MV	%r8, %r0	# build/example.ml#92:15->92:24
	LDR	%r2, %r31, $48	# build/example.ml#92:15->92:24
	LDR	%r1, %r31, $52	# build/example.ml#92:15->92:24
	MVI	%r9, $0	# build/example.ml#92:12->92:74
	CEQ	%r8, %r9	# build/example.ml#92:12->92:74
	JZ	$if_eq.11855	# build/example.ml#92:12->92:74
	FLDA	%rd, $l.7785	# build/example.ml#92:30->92:33
	J	$if_eq_cont.11856	# build/example.ml#92:12->92:74
if_eq.11855:
	MVI	%r9, $0	# build/example.ml#92:39->92:74
	CEQ	%r2, %r9	# build/example.ml#92:39->92:74
	JZ	$if_eq.11857	# build/example.ml#92:39->92:74
	FLDA	%fr8, $l.7812	# build/example.ml#92:51->92:55
	FDIV	%rd, %fr8, %fr9	# build/example.ml#92:51->92:60
	J	$if_eq_cont.11858	# build/example.ml#92:39->92:74
if_eq.11857:
	FLDA	%fr8, $l.7785	# build/example.ml#92:66->92:69
	FDIV	%rd, %fr8, %fr9	# build/example.ml#92:66->92:74
if_eq_cont.11858:
if_eq_cont.11856:
	MVI	%r8, $0	# build/example.ml#93:6->93:7
	MVI	%r9, $0	# build/example.ml#93:15->93:16
	FLDD	%fr8, %r1, $4, %r9	# build/example.ml#91:22->91:27
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#93:12->93:23
	FSDD	%fr8, %r1, $4, %r8	# build/example.ml#93:3->93:23
	MVI	%r8, $1	# build/example.ml#94:6->94:7
	MVI	%r9, $1	# build/example.ml#94:15->94:16
	FLDD	%fr8, %r1, $4, %r9	# build/example.ml#91:22->91:27
	FMUL	%fr8, %fr8, %fr9	# build/example.ml#94:12->94:23
	FSDD	%fr8, %r1, $4, %r8	# build/example.ml#94:3->94:23
	MVI	%r8, $2	# build/example.ml#95:6->95:7
	MVI	%r9, $2	# build/example.ml#95:15->95:16
	FLDD	%fr8, %r1, $4, %r9	# build/example.ml#91:22->91:27
	FMUL	%fr9, %fr8, %fr9	# build/example.ml#95:12->95:23
	FSDD	%fr9, %r1, $4, %r8	# build/example.ml#95:3->95:23
	LDR	%r9, %r31, $0	# build/example.ml#91:25->91:26
	LDR	%r8, %r31, $4	# build/example.ml#91:25->91:26
	FLDR	%fr9, %r31, $8	# build/example.ml#91:25->91:26
	FLDR	%fr8, %r31, $12	# build/example.ml#91:25->91:26
	LINK	# build/example.ml#91:25->91:26
veccpy.2583:
	SDR	%r11, %r31, $0	# build/example.ml#71:9->71:10
	SDR	%r10, %r31, $4	# build/example.ml#71:9->71:10
	MVI	%r11, $0	# build/example.ml#71:9->71:10
	MVI	%r10, $0	# build/example.ml#71:20->71:21
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#71:15->71:22
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#71:3->71:22
	MVI	%r11, $1	# build/example.ml#72:9->72:10
	MVI	%r10, $1	# build/example.ml#72:20->72:21
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#71:15->71:22
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#72:3->72:22
	MVI	%r11, $2	# build/example.ml#73:9->73:10
	MVI	%r10, $2	# build/example.ml#73:20->73:21
	FLDD	%fr1, %r2, $4, %r10	# build/example.ml#71:15->71:22
	FSDD	%fr1, %r1, $4, %r11	# build/example.ml#73:3->73:22
	LDR	%r11, %r31, $0	# build/example.ml#71:9->71:10
	LDR	%r10, %r31, $4	# build/example.ml#71:9->71:10
	LINK	# build/example.ml#71:9->71:10
vecfill.2578:
	SDR	%r10, %r31, $0	# build/example.ml#59:6->59:7
	MVI	%r10, $0	# build/example.ml#59:6->59:7
	FSDD	%fr0, %r1, $4, %r10	# build/example.ml#59:3->59:16
	MVI	%r10, $1	# build/example.ml#60:6->60:7
	FSDD	%fr0, %r1, $4, %r10	# build/example.ml#60:3->60:16
	MVI	%r10, $2	# build/example.ml#61:6->61:7
	FSDD	%fr0, %r1, $4, %r10	# build/example.ml#61:3->61:16
	LDR	%r10, %r31, $0	# build/example.ml#59:6->59:7
	LINK	# build/example.ml#59:6->59:7
vecset.2573:
	SDR	%r10, %r31, $0	# build/example.ml#52:6->52:7
	MVI	%r10, $0	# build/example.ml#52:6->52:7
	FSDD	%fr0, %r1, $4, %r10	# build/example.ml#52:3->52:13
	MVI	%r10, $1	# build/example.ml#53:6->53:7
	FSDD	%fr1, %r1, $4, %r10	# build/example.ml#53:3->53:13
	MVI	%r10, $2	# build/example.ml#54:6->54:7
	FSDD	%fr2, %r1, $4, %r10	# build/example.ml#54:3->54:13
	LDR	%r10, %r31, $0	# build/example.ml#52:6->52:7
	LINK	# build/example.ml#52:6->52:7
add_mod5.2570:
	SDR	%r10, %r31, $0	# build/example.ml#36:13->36:18
	ADD	%r1, %r1, %r2	# build/example.ml#36:13->36:18
	MVI	%r10, $5	# build/example.ml#37:13->37:14
	CMP	%r1, %r10	# build/example.ml#37:3->37:36
	JZ	$if_lt.11859	# build/example.ml#37:3->37:36
	MVI	%r10, $5	# build/example.ml#37:26->37:27
	SUB	%r0, %r1, %r10	# build/example.ml#37:20->37:27
	J	$if_lt_cont.11860	# build/example.ml#37:3->37:36
if_lt.11859:
	MV	%r0, %r1	# build/example.ml#37:33->37:36
if_lt_cont.11860:
	LDR	%r10, %r31, $0	# build/example.ml#36:13->36:18
	LINK	# build/example.ml#36:13->36:18
fneg_cond.2567:
	SDR	%r9, %r31, $0	# build/example.ml#31:3->31:29
	MVI	%r9, $0	# build/example.ml#31:3->31:29
	CEQ	%r1, %r9	# build/example.ml#31:3->31:29
	JZ	$if_eq.11861	# build/example.ml#31:3->31:29
	J	$if_eq_cont.11862	# build/example.ml#31:3->31:29
if_eq.11861:
	SDR	%r1, %r31, $4	# build/example.ml#31:23->31:29
	ADDI	%r31, %r31, $8	# build/example.ml#31:23->31:29
	ADDI	%r31, %r31, $4	# build/example.ml#31:23->31:29
	SIP	# build/example.ml#31:23->31:29
	J	$min_caml_fneg	# build/example.ml#31:23->31:29
	ADDI	%r31, %r31, $-8	# build/example.ml#31:23->31:29
	LDR	%r1, %r31, $4	# build/example.ml#31:23->31:29
if_eq_cont.11862:
	LDR	%r9, %r31, $0	# build/example.ml#31:3->31:29
	LINK	# build/example.ml#31:3->31:29
sgn.2565:
	SDR	%r9, %r31, $0	# build/example.ml#24:6->24:15
	SDR	%r8, %r31, $4	# build/example.ml#24:6->24:15
	ADDI	%r31, %r31, $8	# build/example.ml#24:6->24:15
	ADDI	%r31, %r31, $4	# build/example.ml#24:6->24:15
	SIP	# build/example.ml#24:6->24:15
	J	$min_caml_fiszero	# build/example.ml#24:6->24:15
	ADDI	%r31, %r31, $-8	# build/example.ml#24:6->24:15
	MV	%r8, %r0	# build/example.ml#24:6->24:15
	MVI	%r9, $0	# build/example.ml#24:3->26:12
	CEQ	%r8, %r9	# build/example.ml#24:3->26:12
	JZ	$if_eq.11863	# build/example.ml#24:3->26:12
	FLDA	%fr0, $l.7787	# build/example.ml#24:21->24:24
	J	$if_eq_cont.11864	# build/example.ml#24:3->26:12
if_eq.11863:
	ADDI	%r31, %r31, $8	# build/example.ml#25:11->25:19
	ADDI	%r31, %r31, $4	# build/example.ml#25:11->25:19
	SIP	# build/example.ml#25:11->25:19
	J	$min_caml_fispos	# build/example.ml#25:11->25:19
	ADDI	%r31, %r31, $-8	# build/example.ml#25:11->25:19
	MV	%r8, %r0	# build/example.ml#25:11->25:19
	MVI	%r9, $0	# build/example.ml#25:8->26:12
	CEQ	%r8, %r9	# build/example.ml#25:8->26:12
	JZ	$if_eq.11865	# build/example.ml#25:8->26:12
	FLDA	%fr0, $l.7785	# build/example.ml#25:25->25:28
	J	$if_eq_cont.11866	# build/example.ml#25:8->26:12
if_eq.11865:
	FLDA	%fr0, $l.7812	# build/example.ml#26:8->26:12
if_eq_cont.11866:
if_eq_cont.11864:
	LDR	%r9, %r31, $0	# build/example.ml#24:6->24:15
	LDR	%r8, %r31, $4	# build/example.ml#24:6->24:15
	LINK	# build/example.ml#24:6->24:15
xor.2562:
	SDR	%r10, %r31, $0	# build/example.ml#16:31->16:53
	MVI	%r10, $0	# build/example.ml#16:31->16:53
	CEQ	%r1, %r10	# build/example.ml#16:31->16:53
	JZ	$if_eq.11867	# build/example.ml#16:31->16:53
	MVI	%r1, $0	# build/example.ml#16:41->16:46
	CEQ	%r2, %r1	# build/example.ml#16:41->16:46
	JZ	$if_eq.11869	# build/example.ml#16:41->16:46
	MVI	%r0, $0	# build/example.ml#16:41->16:46
	J	$if_eq_cont.11870	# build/example.ml#16:41->16:46
if_eq.11869:
	MVI	%r0, $1	# build/example.ml#16:41->16:46
if_eq_cont.11870:
	J	$if_eq_cont.11868	# build/example.ml#16:31->16:53
if_eq.11867:
	MV	%r0, %r2	# build/example.ml#16:52->16:53
if_eq_cont.11868:
	LDR	%r10, %r31, $0	# build/example.ml#16:31->16:53
	LINK	# build/example.ml#16:31->16:53
min_caml_start:
	LDA	%r30, $l.11467	# build/example.ml#2308:12->2308:15
	LDA	%r31, $l.11468	# build/example.ml#2308:12->2308:15
	SDR	%r9, %r31, $0	# build/example.ml#2308:12->2308:15
	SDR	%r8, %r31, $4	# build/example.ml#2308:12->2308:15
	MVI	%r8, $512	# build/example.ml#2308:12->2308:15
	MVI	%r9, $512	# build/example.ml#2308:16->2308:19
	MV	%r2, %r9	# build/example.ml#2308:9->2308:19
	MV	%r1, %r8	# build/example.ml#2308:9->2308:19
	ADDI	%r31, %r31, $8	# build/example.ml#2308:9->2308:19
	ADDI	%r31, %r31, $4	# build/example.ml#2308:9->2308:19
	SIP	# build/example.ml#2308:9->2308:19
	J	$rt.3046	# build/example.ml#2308:9->2308:19
	ADDI	%r31, %r31, $-8	# build/example.ml#2308:9->2308:19
	LDR	%r9, %r31, $0	# build/example.ml#2308:12->2308:15
	LDR	%r8, %r31, $4	# build/example.ml#2308:12->2308:15
	FIN
.data
min_caml_objects:
	.SPACE 240
min_caml_size:
	.SPACE 8
min_caml_dbg:
	.SPACE 4
min_caml_screen:
	.SPACE 24
min_caml_vp:
	.SPACE 24
min_caml_view:
	.SPACE 24
min_caml_light:
	.SPACE 24
min_caml_cos_v:
	.SPACE 16
min_caml_sin_v:
	.SPACE 16
min_caml_beam:
	.SPACE 8
min_caml_and_net:
	.SPACE 200
min_caml_or_net:
	.SPACE 4
min_caml_temp:
	.SPACE 112
min_caml_cs_temp:
	.SPACE 128
min_caml_solver_dist:
	.SPACE 8
min_caml_vscan:
	.SPACE 24
min_caml_intsec_rectside:
	.SPACE 4
min_caml_tmin:
	.SPACE 8
min_caml_crashed_point:
	.SPACE 24
min_caml_crashed_object:
	.SPACE 4
min_caml_end_flag:
	.SPACE 4
min_caml_viewpoint:
	.SPACE 24
min_caml_nvector:
	.SPACE 24
min_caml_rgb:
	.SPACE 24
min_caml_texture_color:
	.SPACE 24
min_caml_solver_w_vec:
	.SPACE 24
min_caml_chkinside_p:
	.SPACE 24
min_caml_isoutside_q:
	.SPACE 24
min_caml_nvector_w:
	.SPACE 24
min_caml_scan_d:
	.SPACE 8
min_caml_scan_offset:
	.SPACE 8
min_caml_scan_sscany:
	.SPACE 8
min_caml_scan_met1:
	.SPACE 8
min_caml_wscan:
	.SPACE 24
min_caml_image_size:
	.SPACE 16
min_caml_screenz_dir:
	.SPACE 24
min_caml_screenx_dir:
	.SPACE 24
min_caml_screeny_dir:
	.SPACE 24
min_caml_n_objects:
	.SPACE 4
min_caml_startp_fast:
	.SPACE 24
min_caml_intersection_point:
	.SPACE 24
min_caml_startp:
	.SPACE 24
min_caml_intersected_object_id:
min_caml_reflections:
	.SPACE 4
min_caml_n_reflections:
	.SPACE 4
min_caml_diffuse_ray:
	.SPACE 24
min_caml_dirvecs:
	.SPACE 20
min_caml_scan_pitch:
	.SPACE 4
min_caml_image_center:
	.SPACE 8
min_caml_ptrace_dirvec:
	.SPACE 24
min_caml_light_dirvec:
	.SPACE 8
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
