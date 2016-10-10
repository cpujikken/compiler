.data
.balign	8
l.352:	# 12.000000
	.long	0x0
	.long	0x40280000
l.350:	# 11.000000
	.long	0x0
	.long	0x40260000
l.348:	# 10.000000
	.long	0x0
	.long	0x40240000
l.346:	# 9.000000
	.long	0x0
	.long	0x40220000
l.344:	# 8.000000
	.long	0x0
	.long	0x40200000
l.342:	# 7.000000
	.long	0x0
	.long	0x401c0000
l.340:	# 6.000000
	.long	0x0
	.long	0x40180000
l.338:	# 5.000000
	.long	0x0
	.long	0x40140000
l.336:	# 4.000000
	.long	0x0
	.long	0x40100000
l.334:	# 3.000000
	.long	0x0
	.long	0x40080000
l.332:	# 2.000000
	.long	0x0
	.long	0x40000000
l.330:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.323:	# 0.000000
	.long	0x0
	.long	0x0
.text
loop3.282:
	movl	20(%edi), %ebx	#test/matmul.ml:7:2->9:17
	movl	16(%edi), %ecx	#test/matmul.ml:7:2->9:17
	movl	12(%edi), %edx	#test/matmul.ml:7:2->9:17
	movl	8(%edi), %esi	#test/matmul.ml:7:2->9:17
	movl	%edi, 0(%ebp)	#test/matmul.ml:7:2->9:17
	movl	4(%edi), %edi	#test/matmul.ml:7:2->9:17
	cmpl	$0, %eax	#test/matmul.ml:7:2->9:17
	jl	jge_else.388
	movl	(%edx,%ecx,4), %edx	#test/matmul.ml:8:16->8:21
	movsd	(%edx,%ebx,8), %xmm0	#test/matmul.ml:8:16->8:25
	movl	(%edi,%ecx,4), %ecx	#test/matmul.ml:8:29->8:34
	movsd	(%ecx,%eax,8), %xmm1	#test/matmul.ml:8:29->8:38
	movl	(%esi,%eax,4), %ecx	#test/matmul.ml:8:42->8:47
	movsd	(%ecx,%ebx,8), %xmm2	#test/matmul.ml:8:42->8:51
	mulsd	%xmm2, %xmm1	#test/matmul.ml:8:29->8:51
	addsd	%xmm1, %xmm0	#test/matmul.ml:8:16->8:51
	movsd	%xmm0, (%edx,%ebx,8)	#test/matmul.ml:8:3->8:51
	subl	$1, %eax	#test/matmul.ml:9:10->9:15
	movl	0(%ebp), %edi	#test/matmul.ml:9:3->9:16
	jmp	*(%edi)	#test/matmul.ml:9:3->9:16
jge_else.388:
	ret	#test/matmul.ml:7:16->7:18
loop2.274:
	movl	20(%edi), %ebx	#test/matmul.ml:5:7->11:20
	movl	16(%edi), %ecx	#test/matmul.ml:5:7->11:20
	movl	12(%edi), %edx	#test/matmul.ml:5:7->11:20
	movl	8(%edi), %esi	#test/matmul.ml:5:7->11:20
	movl	%edi, 0(%ebp)	#test/matmul.ml:5:7->11:20
	movl	4(%edi), %edi	#test/matmul.ml:5:7->11:20
	cmpl	$0, %eax	#test/matmul.ml:5:7->11:20
	jl	jge_else.390
	movl	%ebx, 4(%ebp)	#test/matmul.ml:6:7->11:20
	movl	min_caml_hp, %ebx	#test/matmul.ml:6:7->11:20
	addl	$24, min_caml_hp	#test/matmul.ml:6:7->11:20
	movl	%edi, 8(%ebp)	#test/matmul.ml:6:7->11:20
	movl	$loop3.282, %edi	#test/matmul.ml:6:7->11:20
	movl	%edi, 0(%ebx)	#test/matmul.ml:6:7->11:20
	movl	%eax, 20(%ebx)	#test/matmul.ml:6:7->11:20
	movl	%ecx, 16(%ebx)	#test/matmul.ml:6:7->11:20
	movl	%edx, 12(%ebx)	#test/matmul.ml:6:7->11:20
	movl	%esi, 8(%ebx)	#test/matmul.ml:6:7->11:20
	movl	8(%ebp), %ecx	#test/matmul.ml:6:7->11:20
	movl	%ecx, 4(%ebx)	#test/matmul.ml:6:7->11:20
	movl	4(%ebp), %ecx	#test/matmul.ml:10:14->10:19
	subl	$1, %ecx	#test/matmul.ml:10:14->10:19
	movl	%eax, 12(%ebp)	#test/matmul.ml:10:7->10:20
	movl	%ecx, %eax
	movl	%ebx, %edi
	addl	$16, %ebp	#test/matmul.ml:10:7->10:20
	call	*(%edi)	#test/matmul.ml:10:7->10:20
	subl	$16, %ebp	#test/matmul.ml:10:7->10:20
	movl	12(%ebp), %eax	#test/matmul.ml:11:14->11:19
	subl	$1, %eax	#test/matmul.ml:11:14->11:19
	movl	0(%ebp), %edi	#test/matmul.ml:11:7->11:20
	jmp	*(%edi)	#test/matmul.ml:11:7->11:20
jge_else.390:
	ret	#test/matmul.ml:5:21->5:23
loop1.269:
	movl	20(%edi), %ebx	#test/matmul.ml:3:5->13:18
	movl	16(%edi), %ecx	#test/matmul.ml:3:5->13:18
	movl	12(%edi), %edx	#test/matmul.ml:3:5->13:18
	movl	8(%edi), %esi	#test/matmul.ml:3:5->13:18
	movl	%edi, 0(%ebp)	#test/matmul.ml:3:5->13:18
	movl	4(%edi), %edi	#test/matmul.ml:3:5->13:18
	cmpl	$0, %eax	#test/matmul.ml:3:5->13:18
	jl	jge_else.392
	movl	%ebx, 4(%ebp)	#test/matmul.ml:4:5->13:18
	movl	min_caml_hp, %ebx	#test/matmul.ml:4:5->13:18
	addl	$24, min_caml_hp	#test/matmul.ml:4:5->13:18
	movl	%edi, 8(%ebp)	#test/matmul.ml:4:5->13:18
	movl	$loop2.274, %edi	#test/matmul.ml:4:5->13:18
	movl	%edi, 0(%ebx)	#test/matmul.ml:4:5->13:18
	movl	%ecx, 20(%ebx)	#test/matmul.ml:4:5->13:18
	movl	%eax, 16(%ebx)	#test/matmul.ml:4:5->13:18
	movl	%edx, 12(%ebx)	#test/matmul.ml:4:5->13:18
	movl	%esi, 8(%ebx)	#test/matmul.ml:4:5->13:18
	movl	8(%ebp), %ecx	#test/matmul.ml:4:5->13:18
	movl	%ecx, 4(%ebx)	#test/matmul.ml:4:5->13:18
	movl	4(%ebp), %ecx	#test/matmul.ml:12:12->12:17
	subl	$1, %ecx	#test/matmul.ml:12:12->12:17
	movl	%eax, 12(%ebp)	#test/matmul.ml:12:5->12:18
	movl	%ecx, %eax
	movl	%ebx, %edi
	addl	$16, %ebp	#test/matmul.ml:12:5->12:18
	call	*(%edi)	#test/matmul.ml:12:5->12:18
	subl	$16, %ebp	#test/matmul.ml:12:5->12:18
	movl	12(%ebp), %eax	#test/matmul.ml:13:12->13:17
	subl	$1, %eax	#test/matmul.ml:13:12->13:17
	movl	0(%ebp), %edi	#test/matmul.ml:13:5->13:18
	jmp	*(%edi)	#test/matmul.ml:13:5->13:18
jge_else.392:
	ret	#test/matmul.ml:3:19->3:21
mul.140:
	movl	%eax, 0(%ebp)	#test/matmul.ml:2:3->14:16
	movl	min_caml_hp, %eax	#test/matmul.ml:2:3->14:16
	addl	$24, min_caml_hp	#test/matmul.ml:2:3->14:16
	movl	%edx, 4(%ebp)	#test/matmul.ml:2:3->14:16
	movl	$loop1.269, %edx	#test/matmul.ml:2:3->14:16
	movl	%edx, 0(%eax)	#test/matmul.ml:2:3->14:16
	movl	%ecx, 20(%eax)	#test/matmul.ml:2:3->14:16
	movl	%ebx, 16(%eax)	#test/matmul.ml:2:3->14:16
	movl	%edi, 12(%eax)	#test/matmul.ml:2:3->14:16
	movl	%esi, 8(%eax)	#test/matmul.ml:2:3->14:16
	movl	4(%ebp), %ebx	#test/matmul.ml:2:3->14:16
	movl	%ebx, 4(%eax)	#test/matmul.ml:2:3->14:16
	movl	0(%ebp), %ebx	#test/matmul.ml:14:10->14:15
	subl	$1, %ebx	#test/matmul.ml:14:10->14:15
	movl	%eax, %edi
	movl	%ebx, %eax
	jmp	*(%edi)	#test/matmul.ml:14:3->14:16
init.256:
	movl	8(%edi), %ebx	#test/matmul.ml:19:5->21:19
	movl	4(%edi), %ecx	#test/matmul.ml:19:5->21:19
	cmpl	$0, %eax	#test/matmul.ml:19:5->21:19
	jl	jge_else.394
	movl	$l.323, %edx	#test/matmul.ml:20:32->20:34
	movsd	0(%edx), %xmm0	#test/matmul.ml:20:32->20:34
	movl	%edi, 0(%ebp)	#test/matmul.ml:20:17->20:34
	movl	%eax, 4(%ebp)	#test/matmul.ml:20:17->20:34
	movl	%ecx, 8(%ebp)	#test/matmul.ml:20:17->20:34
	movl	%ebx, %eax
	addl	$16, %ebp	#test/matmul.ml:20:17->20:34
	call	min_caml_create_float_array	#test/matmul.ml:20:17->20:34
	subl	$16, %ebp	#test/matmul.ml:20:17->20:34
	movl	4(%ebp), %ebx	#test/matmul.ml:20:6->20:34
	movl	8(%ebp), %ecx	#test/matmul.ml:20:6->20:34
	movl	%eax, (%ecx,%ebx,4)	#test/matmul.ml:20:6->20:34
	movl	%ebx, %eax	#test/matmul.ml:21:12->21:17
	subl	$1, %eax	#test/matmul.ml:21:12->21:17
	movl	0(%ebp), %edi	#test/matmul.ml:21:6->21:18
	jmp	*(%edi)	#test/matmul.ml:21:6->21:18
jge_else.394:
	ret	#test/matmul.ml:19:19->19:21
make.148:
	movl	4(%edi), %ecx	#test/matmul.ml:17:3->23:6
	movl	%eax, 0(%ebp)	#test/matmul.ml:17:13->17:33
	movl	%ebx, 4(%ebp)	#test/matmul.ml:17:13->17:33
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/matmul.ml:17:13->17:33
	call	min_caml_create_array	#test/matmul.ml:17:13->17:33
	subl	$8, %ebp	#test/matmul.ml:17:13->17:33
	movl	min_caml_hp, %edi	#test/matmul.ml:18:3->23:6
	addl	$16, min_caml_hp	#test/matmul.ml:18:3->23:6
	movl	$init.256, %ebx	#test/matmul.ml:18:3->23:6
	movl	%ebx, 0(%edi)	#test/matmul.ml:18:3->23:6
	movl	4(%ebp), %ebx	#test/matmul.ml:18:3->23:6
	movl	%ebx, 8(%edi)	#test/matmul.ml:18:3->23:6
	movl	%eax, 4(%edi)	#test/matmul.ml:18:3->23:6
	movl	0(%ebp), %ebx	#test/matmul.ml:22:9->22:14
	subl	$1, %ebx	#test/matmul.ml:22:9->22:14
	movl	%eax, 8(%ebp)	#test/matmul.ml:22:3->22:15
	movl	%ebx, %eax
	addl	$16, %ebp	#test/matmul.ml:22:3->22:15
	call	*(%edi)	#test/matmul.ml:22:3->22:15
	subl	$16, %ebp	#test/matmul.ml:22:3->22:15
	movl	8(%ebp), %eax	#test/matmul.ml:23:3->23:6
	ret
.globl	min_caml_start
min_caml_start:
.globl	_min_caml_start
_min_caml_start: # for cygwin
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	movl	32(%esp),%ebp
	movl	36(%esp),%eax
	movl	%eax,min_caml_hp
	movl	$0, %eax	#test/matmul.ml:15:26->15:27
	movl	$l.323, %ebx	#test/matmul.ml:15:28->15:30
	movsd	0(%ebx), %xmm0	#test/matmul.ml:15:28->15:30
	call	min_caml_create_float_array	#test/matmul.ml:15:13->15:30
	movl	min_caml_hp, %edi	#test/matmul.ml:16:1->40:17
	addl	$8, min_caml_hp	#test/matmul.ml:16:1->40:17
	movl	$make.148, %ebx	#test/matmul.ml:16:1->40:17
	movl	%ebx, 0(%edi)	#test/matmul.ml:16:1->40:17
	movl	%eax, 4(%edi)	#test/matmul.ml:16:1->40:17
	movl	$2, %eax	#test/matmul.ml:24:14->24:15
	movl	$3, %ebx	#test/matmul.ml:24:16->24:17
	movl	%edi, 0(%ebp)	#test/matmul.ml:24:9->24:17
	addl	$8, %ebp	#test/matmul.ml:24:9->24:17
	call	*(%edi)	#test/matmul.ml:24:9->24:17
	subl	$8, %ebp	#test/matmul.ml:24:9->24:17
	movl	$3, %ebx	#test/matmul.ml:25:14->25:15
	movl	$2, %ecx	#test/matmul.ml:25:16->25:17
	movl	0(%ebp), %edi	#test/matmul.ml:25:9->25:17
	movl	%eax, 4(%ebp)	#test/matmul.ml:25:9->25:17
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/matmul.ml:25:9->25:17
	call	*(%edi)	#test/matmul.ml:25:9->25:17
	subl	$8, %ebp	#test/matmul.ml:25:9->25:17
	movl	$2, %ebx	#test/matmul.ml:26:14->26:15
	movl	$2, %ecx	#test/matmul.ml:26:16->26:17
	movl	0(%ebp), %edi	#test/matmul.ml:26:9->26:17
	movl	%eax, 8(%ebp)	#test/matmul.ml:26:9->26:17
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$16, %ebp	#test/matmul.ml:26:9->26:17
	call	*(%edi)	#test/matmul.ml:26:9->26:17
	subl	$16, %ebp	#test/matmul.ml:26:9->26:17
	movl	%eax, %edi	#test/matmul.ml:26:9->26:17
	movl	4(%ebp), %edx	#test/matmul.ml:17:13->17:33
	movl	0(%edx), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.330, %ebx	#test/matmul.ml:27:14->27:16
	movsd	0(%ebx), %xmm0	#test/matmul.ml:27:14->27:16
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:27:1->27:16
	movl	0(%edx), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.332, %ebx	#test/matmul.ml:27:31->27:33
	movsd	0(%ebx), %xmm0	#test/matmul.ml:27:31->27:33
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:27:18->27:33
	movl	0(%edx), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.334, %ebx	#test/matmul.ml:27:48->27:50
	movsd	0(%ebx), %xmm0	#test/matmul.ml:27:48->27:50
	movsd	%xmm0, 16(%eax)	#test/matmul.ml:27:35->27:50
	movl	4(%edx), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.336, %ebx	#test/matmul.ml:28:14->28:16
	movsd	0(%ebx), %xmm0	#test/matmul.ml:28:14->28:16
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:28:1->28:16
	movl	4(%edx), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.338, %ebx	#test/matmul.ml:28:31->28:33
	movsd	0(%ebx), %xmm0	#test/matmul.ml:28:31->28:33
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:28:18->28:33
	movl	4(%edx), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.340, %ebx	#test/matmul.ml:28:48->28:50
	movsd	0(%ebx), %xmm0	#test/matmul.ml:28:48->28:50
	movsd	%xmm0, 16(%eax)	#test/matmul.ml:28:35->28:50
	movl	8(%ebp), %esi	#test/matmul.ml:17:13->17:33
	movl	0(%esi), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.342, %ebx	#test/matmul.ml:29:14->29:16
	movsd	0(%ebx), %xmm0	#test/matmul.ml:29:14->29:16
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:29:1->29:16
	movl	0(%esi), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.344, %ebx	#test/matmul.ml:29:31->29:33
	movsd	0(%ebx), %xmm0	#test/matmul.ml:29:31->29:33
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:29:18->29:33
	movl	4(%esi), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.346, %ebx	#test/matmul.ml:30:14->30:16
	movsd	0(%ebx), %xmm0	#test/matmul.ml:30:14->30:16
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:30:1->30:16
	movl	4(%esi), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.348, %ebx	#test/matmul.ml:30:31->30:34
	movsd	0(%ebx), %xmm0	#test/matmul.ml:30:31->30:34
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:30:18->30:34
	movl	8(%esi), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.350, %ebx	#test/matmul.ml:31:14->31:17
	movsd	0(%ebx), %xmm0	#test/matmul.ml:31:14->31:17
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:31:1->31:17
	movl	8(%esi), %eax	#test/matmul.ml:17:13->17:33
	movl	$l.352, %ebx	#test/matmul.ml:31:32->31:35
	movsd	0(%ebx), %xmm0	#test/matmul.ml:31:32->31:35
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:31:19->31:35
	movl	$2, %eax	#test/matmul.ml:32:5->32:6
	movl	$3, %ebx	#test/matmul.ml:32:7->32:8
	movl	$2, %ecx	#test/matmul.ml:32:9->32:10
	movl	%edi, 12(%ebp)	#test/matmul.ml:32:1->32:16
	addl	$16, %ebp	#test/matmul.ml:32:1->32:16
	call	mul.140	#test/matmul.ml:32:1->32:16
	subl	$16, %ebp	#test/matmul.ml:32:1->32:16
	movl	12(%ebp), %eax	#test/matmul.ml:17:13->17:33
	movl	0(%eax), %ebx	#test/matmul.ml:17:13->17:33
	movsd	0(%ebx), %xmm0	#test/matmul.ml:15:13->15:30
	addl	$16, %ebp	#test/matmul.ml:33:12->33:32
	call	min_caml_truncate	#test/matmul.ml:33:12->33:32
	subl	$16, %ebp	#test/matmul.ml:33:12->33:32
	addl	$16, %ebp	#test/matmul.ml:33:1->33:33
	call	min_caml_print_int	#test/matmul.ml:33:1->33:33
	subl	$16, %ebp	#test/matmul.ml:33:1->33:33
	addl	$16, %ebp	#test/matmul.ml:34:1->34:17
	call	min_caml_print_newline	#test/matmul.ml:34:1->34:17
	subl	$16, %ebp	#test/matmul.ml:34:1->34:17
	movl	12(%ebp), %eax	#test/matmul.ml:17:13->17:33
	movl	0(%eax), %ebx	#test/matmul.ml:17:13->17:33
	movsd	8(%ebx), %xmm0	#test/matmul.ml:15:13->15:30
	addl	$16, %ebp	#test/matmul.ml:35:12->35:32
	call	min_caml_truncate	#test/matmul.ml:35:12->35:32
	subl	$16, %ebp	#test/matmul.ml:35:12->35:32
	addl	$16, %ebp	#test/matmul.ml:35:1->35:33
	call	min_caml_print_int	#test/matmul.ml:35:1->35:33
	subl	$16, %ebp	#test/matmul.ml:35:1->35:33
	addl	$16, %ebp	#test/matmul.ml:36:1->36:17
	call	min_caml_print_newline	#test/matmul.ml:36:1->36:17
	subl	$16, %ebp	#test/matmul.ml:36:1->36:17
	movl	12(%ebp), %eax	#test/matmul.ml:17:13->17:33
	movl	4(%eax), %ebx	#test/matmul.ml:17:13->17:33
	movsd	0(%ebx), %xmm0	#test/matmul.ml:15:13->15:30
	addl	$16, %ebp	#test/matmul.ml:37:12->37:32
	call	min_caml_truncate	#test/matmul.ml:37:12->37:32
	subl	$16, %ebp	#test/matmul.ml:37:12->37:32
	addl	$16, %ebp	#test/matmul.ml:37:1->37:33
	call	min_caml_print_int	#test/matmul.ml:37:1->37:33
	subl	$16, %ebp	#test/matmul.ml:37:1->37:33
	addl	$16, %ebp	#test/matmul.ml:38:1->38:17
	call	min_caml_print_newline	#test/matmul.ml:38:1->38:17
	subl	$16, %ebp	#test/matmul.ml:38:1->38:17
	movl	12(%ebp), %eax	#test/matmul.ml:17:13->17:33
	movl	4(%eax), %eax	#test/matmul.ml:17:13->17:33
	movsd	8(%eax), %xmm0	#test/matmul.ml:15:13->15:30
	addl	$16, %ebp	#test/matmul.ml:39:12->39:32
	call	min_caml_truncate	#test/matmul.ml:39:12->39:32
	subl	$16, %ebp	#test/matmul.ml:39:12->39:32
	addl	$16, %ebp	#test/matmul.ml:39:1->39:33
	call	min_caml_print_int	#test/matmul.ml:39:1->39:33
	subl	$16, %ebp	#test/matmul.ml:39:1->39:33
	addl	$16, %ebp	#test/matmul.ml:40:1->40:17
	call	min_caml_print_newline	#test/matmul.ml:40:1->40:17
	subl	$16, %ebp	#test/matmul.ml:40:1->40:17
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
