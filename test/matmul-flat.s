.data
.balign	8
l.345:	# 12.000000
	.long	0x0
	.long	0x40280000
l.343:	# 11.000000
	.long	0x0
	.long	0x40260000
l.341:	# 10.000000
	.long	0x0
	.long	0x40240000
l.339:	# 9.000000
	.long	0x0
	.long	0x40220000
l.337:	# 8.000000
	.long	0x0
	.long	0x40200000
l.335:	# 7.000000
	.long	0x0
	.long	0x401c0000
l.333:	# 6.000000
	.long	0x0
	.long	0x40180000
l.331:	# 5.000000
	.long	0x0
	.long	0x40140000
l.329:	# 4.000000
	.long	0x0
	.long	0x40100000
l.327:	# 3.000000
	.long	0x0
	.long	0x40080000
l.325:	# 2.000000
	.long	0x0
	.long	0x40000000
l.323:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.320:	# 0.000000
	.long	0x0
	.long	0x0
.text
loop3.140:
	cmpl	$0, %ebx	#test/matmul-flat.ml:2:3->4:28
	jl	jge_else.381
	movl	%edi, 0(%ebp)	#test/matmul-flat.ml:3:17->3:22
	movl	(%edi,%eax,4), %edi	#test/matmul-flat.ml:3:17->3:22
	movsd	(%edi,%ecx,8), %xmm0	#test/matmul-flat.ml:3:17->3:26
	movl	%edx, 4(%ebp)	#test/matmul-flat.ml:3:30->3:35
	movl	(%edx,%eax,4), %edx	#test/matmul-flat.ml:3:30->3:35
	movsd	(%edx,%ebx,8), %xmm1	#test/matmul-flat.ml:3:30->3:39
	movl	(%esi,%ebx,4), %edx	#test/matmul-flat.ml:3:43->3:48
	movsd	(%edx,%ecx,8), %xmm2	#test/matmul-flat.ml:3:43->3:52
	mulsd	%xmm2, %xmm1	#test/matmul-flat.ml:3:30->3:52
	addsd	%xmm1, %xmm0	#test/matmul-flat.ml:3:17->3:52
	movsd	%xmm0, (%edi,%ecx,8)	#test/matmul-flat.ml:3:4->3:52
	subl	$1, %ebx	#test/matmul-flat.ml:4:13->4:18
	movl	4(%ebp), %edx	#test/matmul-flat.ml:4:4->4:27
	movl	0(%ebp), %edi	#test/matmul-flat.ml:4:4->4:27
	jmp	loop3.140	#test/matmul-flat.ml:4:4->4:27
jge_else.381:
	ret	#test/matmul-flat.ml:2:17->2:19
loop2.147:
	cmpl	$0, %ecx	#test/matmul-flat.ml:6:3->8:28
	jl	jge_else.383
	movl	%ebx, 0(%ebp)	#test/matmul-flat.ml:7:13->7:18
	subl	$1, %ebx	#test/matmul-flat.ml:7:13->7:18
	movl	%edi, 4(%ebp)	#test/matmul-flat.ml:7:4->7:27
	movl	%esi, 8(%ebp)	#test/matmul-flat.ml:7:4->7:27
	movl	%edx, 12(%ebp)	#test/matmul-flat.ml:7:4->7:27
	movl	%eax, 16(%ebp)	#test/matmul-flat.ml:7:4->7:27
	movl	%ecx, 20(%ebp)	#test/matmul-flat.ml:7:4->7:27
	addl	$24, %ebp	#test/matmul-flat.ml:7:4->7:27
	call	loop3.140	#test/matmul-flat.ml:7:4->7:27
	subl	$24, %ebp	#test/matmul-flat.ml:7:4->7:27
	movl	20(%ebp), %eax	#test/matmul-flat.ml:8:15->8:20
	movl	%eax, %ecx	#test/matmul-flat.ml:8:15->8:20
	subl	$1, %ecx	#test/matmul-flat.ml:8:15->8:20
	movl	16(%ebp), %eax	#test/matmul-flat.ml:8:4->8:27
	movl	0(%ebp), %ebx	#test/matmul-flat.ml:8:4->8:27
	movl	12(%ebp), %edx	#test/matmul-flat.ml:8:4->8:27
	movl	8(%ebp), %esi	#test/matmul-flat.ml:8:4->8:27
	movl	4(%ebp), %edi	#test/matmul-flat.ml:8:4->8:27
	jmp	loop2.147	#test/matmul-flat.ml:8:4->8:27
jge_else.383:
	ret	#test/matmul-flat.ml:6:17->6:19
loop1.154:
	cmpl	$0, %eax	#test/matmul-flat.ml:10:3->12:28
	jl	jge_else.385
	movl	%ecx, 0(%ebp)	#test/matmul-flat.ml:11:15->11:20
	subl	$1, %ecx	#test/matmul-flat.ml:11:15->11:20
	movl	%edi, 4(%ebp)	#test/matmul-flat.ml:11:4->11:27
	movl	%esi, 8(%ebp)	#test/matmul-flat.ml:11:4->11:27
	movl	%edx, 12(%ebp)	#test/matmul-flat.ml:11:4->11:27
	movl	%ebx, 16(%ebp)	#test/matmul-flat.ml:11:4->11:27
	movl	%eax, 20(%ebp)	#test/matmul-flat.ml:11:4->11:27
	addl	$24, %ebp	#test/matmul-flat.ml:11:4->11:27
	call	loop2.147	#test/matmul-flat.ml:11:4->11:27
	subl	$24, %ebp	#test/matmul-flat.ml:11:4->11:27
	movl	20(%ebp), %eax	#test/matmul-flat.ml:12:11->12:16
	subl	$1, %eax	#test/matmul-flat.ml:12:11->12:16
	movl	16(%ebp), %ebx	#test/matmul-flat.ml:12:4->12:27
	movl	0(%ebp), %ecx	#test/matmul-flat.ml:12:4->12:27
	movl	12(%ebp), %edx	#test/matmul-flat.ml:12:4->12:27
	movl	8(%ebp), %esi	#test/matmul-flat.ml:12:4->12:27
	movl	4(%ebp), %edi	#test/matmul-flat.ml:12:4->12:27
	jmp	loop1.154	#test/matmul-flat.ml:12:4->12:27
jge_else.385:
	ret	#test/matmul-flat.ml:10:17->10:19
mul.161:
	subl	$1, %eax	#test/matmul-flat.ml:14:10->14:15
	jmp	loop1.154	#test/matmul-flat.ml:14:3->14:26
init.169:
	cmpl	$0, %eax	#test/matmul-flat.ml:17:3->19:23
	jl	jge_else.387
	movl	$l.320, %edx	#test/matmul-flat.ml:18:30->18:32
	movsd	0(%edx), %xmm0	#test/matmul-flat.ml:18:30->18:32
	movl	%ebx, 0(%ebp)	#test/matmul-flat.ml:18:15->18:32
	movl	%eax, 4(%ebp)	#test/matmul-flat.ml:18:15->18:32
	movl	%ecx, 8(%ebp)	#test/matmul-flat.ml:18:15->18:32
	movl	%ebx, %eax
	addl	$16, %ebp	#test/matmul-flat.ml:18:15->18:32
	call	min_caml_create_float_array	#test/matmul-flat.ml:18:15->18:32
	subl	$16, %ebp	#test/matmul-flat.ml:18:15->18:32
	movl	4(%ebp), %ebx	#test/matmul-flat.ml:18:4->18:32
	movl	8(%ebp), %ecx	#test/matmul-flat.ml:18:4->18:32
	movl	%eax, (%ecx,%ebx,4)	#test/matmul-flat.ml:18:4->18:32
	movl	%ebx, %eax	#test/matmul-flat.ml:19:10->19:15
	subl	$1, %eax	#test/matmul-flat.ml:19:10->19:15
	movl	0(%ebp), %ebx	#test/matmul-flat.ml:19:4->19:22
	jmp	init.169	#test/matmul-flat.ml:19:4->19:22
jge_else.387:
	ret	#test/matmul-flat.ml:17:17->17:19
make.173:
	movl	%ebx, 0(%ebp)	#test/matmul-flat.ml:21:13->21:33
	movl	%eax, 4(%ebp)	#test/matmul-flat.ml:21:13->21:33
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/matmul-flat.ml:21:13->21:33
	call	min_caml_create_array	#test/matmul-flat.ml:21:13->21:33
	subl	$8, %ebp	#test/matmul-flat.ml:21:13->21:33
	movl	%eax, %ecx	#test/matmul-flat.ml:21:13->21:33
	movl	4(%ebp), %eax	#test/matmul-flat.ml:22:9->22:14
	subl	$1, %eax	#test/matmul-flat.ml:22:9->22:14
	movl	0(%ebp), %ebx	#test/matmul-flat.ml:22:3->22:21
	movl	%ecx, 8(%ebp)	#test/matmul-flat.ml:22:3->22:21
	addl	$16, %ebp	#test/matmul-flat.ml:22:3->22:21
	call	init.169	#test/matmul-flat.ml:22:3->22:21
	subl	$16, %ebp	#test/matmul-flat.ml:22:3->22:21
	movl	8(%ebp), %eax	#test/matmul-flat.ml:23:3->23:6
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
	movl	$0, %eax	#test/matmul-flat.ml:15:26->15:27
	movl	$l.320, %ebx	#test/matmul-flat.ml:15:28->15:30
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:15:28->15:30
	call	min_caml_create_float_array	#test/matmul-flat.ml:15:13->15:30
	movl	%eax, %ecx	#test/matmul-flat.ml:15:13->15:30
	movl	$2, %eax	#test/matmul-flat.ml:24:14->24:15
	movl	$3, %ebx	#test/matmul-flat.ml:24:16->24:17
	movl	%ecx, 0(%ebp)	#test/matmul-flat.ml:24:9->24:23
	addl	$8, %ebp	#test/matmul-flat.ml:24:9->24:23
	call	make.173	#test/matmul-flat.ml:24:9->24:23
	subl	$8, %ebp	#test/matmul-flat.ml:24:9->24:23
	movl	$3, %ebx	#test/matmul-flat.ml:25:14->25:15
	movl	$2, %ecx	#test/matmul-flat.ml:25:16->25:17
	movl	0(%ebp), %edx	#test/matmul-flat.ml:25:9->25:23
	movl	%eax, 4(%ebp)	#test/matmul-flat.ml:25:9->25:23
	movl	%ebx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	$8, %ebp	#test/matmul-flat.ml:25:9->25:23
	call	make.173	#test/matmul-flat.ml:25:9->25:23
	subl	$8, %ebp	#test/matmul-flat.ml:25:9->25:23
	movl	$2, %ebx	#test/matmul-flat.ml:26:14->26:15
	movl	$2, %ecx	#test/matmul-flat.ml:26:16->26:17
	movl	0(%ebp), %edx	#test/matmul-flat.ml:26:9->26:23
	movl	%eax, 8(%ebp)	#test/matmul-flat.ml:26:9->26:23
	movl	%ebx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	$16, %ebp	#test/matmul-flat.ml:26:9->26:23
	call	make.173	#test/matmul-flat.ml:26:9->26:23
	subl	$16, %ebp	#test/matmul-flat.ml:26:9->26:23
	movl	%eax, %edi	#test/matmul-flat.ml:26:9->26:23
	movl	4(%ebp), %edx	#test/matmul-flat.ml:21:13->21:33
	movl	0(%edx), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.323, %ebx	#test/matmul-flat.ml:27:14->27:16
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:27:14->27:16
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:27:1->27:16
	movl	0(%edx), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.325, %ebx	#test/matmul-flat.ml:27:31->27:33
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:27:31->27:33
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:27:18->27:33
	movl	0(%edx), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.327, %ebx	#test/matmul-flat.ml:27:48->27:50
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:27:48->27:50
	movsd	%xmm0, 16(%eax)	#test/matmul-flat.ml:27:35->27:50
	movl	4(%edx), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.329, %ebx	#test/matmul-flat.ml:28:14->28:16
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:28:14->28:16
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:28:1->28:16
	movl	4(%edx), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.331, %ebx	#test/matmul-flat.ml:28:31->28:33
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:28:31->28:33
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:28:18->28:33
	movl	4(%edx), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.333, %ebx	#test/matmul-flat.ml:28:48->28:50
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:28:48->28:50
	movsd	%xmm0, 16(%eax)	#test/matmul-flat.ml:28:35->28:50
	movl	8(%ebp), %esi	#test/matmul-flat.ml:21:13->21:33
	movl	0(%esi), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.335, %ebx	#test/matmul-flat.ml:29:14->29:16
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:29:14->29:16
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:29:1->29:16
	movl	0(%esi), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.337, %ebx	#test/matmul-flat.ml:29:31->29:33
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:29:31->29:33
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:29:18->29:33
	movl	4(%esi), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.339, %ebx	#test/matmul-flat.ml:30:14->30:16
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:30:14->30:16
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:30:1->30:16
	movl	4(%esi), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.341, %ebx	#test/matmul-flat.ml:30:31->30:34
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:30:31->30:34
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:30:18->30:34
	movl	8(%esi), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.343, %ebx	#test/matmul-flat.ml:31:14->31:17
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:31:14->31:17
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:31:1->31:17
	movl	8(%esi), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	$l.345, %ebx	#test/matmul-flat.ml:31:32->31:35
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:31:32->31:35
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:31:19->31:35
	movl	$2, %eax	#test/matmul-flat.ml:32:5->32:6
	movl	$3, %ebx	#test/matmul-flat.ml:32:7->32:8
	movl	$2, %ecx	#test/matmul-flat.ml:32:9->32:10
	movl	%edi, 12(%ebp)	#test/matmul-flat.ml:32:1->32:16
	addl	$16, %ebp	#test/matmul-flat.ml:32:1->32:16
	call	mul.161	#test/matmul-flat.ml:32:1->32:16
	subl	$16, %ebp	#test/matmul-flat.ml:32:1->32:16
	movl	12(%ebp), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	0(%eax), %ebx	#test/matmul-flat.ml:21:13->21:33
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:18:15->18:32
	addl	$16, %ebp	#test/matmul-flat.ml:33:12->33:32
	call	min_caml_truncate	#test/matmul-flat.ml:33:12->33:32
	subl	$16, %ebp	#test/matmul-flat.ml:33:12->33:32
	addl	$16, %ebp	#test/matmul-flat.ml:33:1->33:33
	call	min_caml_print_int	#test/matmul-flat.ml:33:1->33:33
	subl	$16, %ebp	#test/matmul-flat.ml:33:1->33:33
	addl	$16, %ebp	#test/matmul-flat.ml:34:1->34:17
	call	min_caml_print_newline	#test/matmul-flat.ml:34:1->34:17
	subl	$16, %ebp	#test/matmul-flat.ml:34:1->34:17
	movl	12(%ebp), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	0(%eax), %ebx	#test/matmul-flat.ml:21:13->21:33
	movsd	8(%ebx), %xmm0	#test/matmul-flat.ml:18:15->18:32
	addl	$16, %ebp	#test/matmul-flat.ml:35:12->35:32
	call	min_caml_truncate	#test/matmul-flat.ml:35:12->35:32
	subl	$16, %ebp	#test/matmul-flat.ml:35:12->35:32
	addl	$16, %ebp	#test/matmul-flat.ml:35:1->35:33
	call	min_caml_print_int	#test/matmul-flat.ml:35:1->35:33
	subl	$16, %ebp	#test/matmul-flat.ml:35:1->35:33
	addl	$16, %ebp	#test/matmul-flat.ml:36:1->36:17
	call	min_caml_print_newline	#test/matmul-flat.ml:36:1->36:17
	subl	$16, %ebp	#test/matmul-flat.ml:36:1->36:17
	movl	12(%ebp), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	4(%eax), %ebx	#test/matmul-flat.ml:21:13->21:33
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:18:15->18:32
	addl	$16, %ebp	#test/matmul-flat.ml:37:12->37:32
	call	min_caml_truncate	#test/matmul-flat.ml:37:12->37:32
	subl	$16, %ebp	#test/matmul-flat.ml:37:12->37:32
	addl	$16, %ebp	#test/matmul-flat.ml:37:1->37:33
	call	min_caml_print_int	#test/matmul-flat.ml:37:1->37:33
	subl	$16, %ebp	#test/matmul-flat.ml:37:1->37:33
	addl	$16, %ebp	#test/matmul-flat.ml:38:1->38:17
	call	min_caml_print_newline	#test/matmul-flat.ml:38:1->38:17
	subl	$16, %ebp	#test/matmul-flat.ml:38:1->38:17
	movl	12(%ebp), %eax	#test/matmul-flat.ml:21:13->21:33
	movl	4(%eax), %eax	#test/matmul-flat.ml:21:13->21:33
	movsd	8(%eax), %xmm0	#test/matmul-flat.ml:18:15->18:32
	addl	$16, %ebp	#test/matmul-flat.ml:39:12->39:32
	call	min_caml_truncate	#test/matmul-flat.ml:39:12->39:32
	subl	$16, %ebp	#test/matmul-flat.ml:39:12->39:32
	addl	$16, %ebp	#test/matmul-flat.ml:39:1->39:33
	call	min_caml_print_int	#test/matmul-flat.ml:39:1->39:33
	subl	$16, %ebp	#test/matmul-flat.ml:39:1->39:33
	addl	$16, %ebp	#test/matmul-flat.ml:40:1->40:17
	call	min_caml_print_newline	#test/matmul-flat.ml:40:1->40:17
	subl	$16, %ebp	#test/matmul-flat.ml:40:1->40:17
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
