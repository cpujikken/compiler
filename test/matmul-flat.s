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
	cmpl	$0, %ebx	#test/matmul-flat.ml:2
	jl	jge_else.382
	movl	%esi, 0(%ebp)	#test/matmul-flat.ml:3
	movl	(%edi,%eax,4), %esi	#test/matmul-flat.ml:3
	movl	%edi, 4(%ebp)	#test/matmul-flat.ml:3
	movl	(%edi,%eax,4), %edi	#test/matmul-flat.ml:3
	movsd	(%edi,%ecx,8), %xmm0	#test/matmul-flat.ml:3
	movl	(%edx,%eax,4), %edi	#test/matmul-flat.ml:3
	movsd	(%edi,%ebx,8), %xmm1	#test/matmul-flat.ml:3
	movl	0(%ebp), %edi	#test/matmul-flat.ml:3
	movl	(%edi,%ebx,4), %edi	#test/matmul-flat.ml:3
	movsd	(%edi,%ecx,8), %xmm2	#test/matmul-flat.ml:3
	mulsd	%xmm2, %xmm1	#test/matmul-flat.ml:3
	addsd	%xmm1, %xmm0	#test/matmul-flat.ml:3
	movsd	%xmm0, (%esi,%ecx,8)	#test/matmul-flat.ml:3
	subl	$1, %ebx	#test/matmul-flat.ml:4
	movl	0(%ebp), %esi	#test/matmul-flat.ml:4
	movl	4(%ebp), %edi	#test/matmul-flat.ml:4
	jmp	loop3.140	#test/matmul-flat.ml:4
jge_else.382:
	ret	#test/matmul-flat.ml:2
loop2.147:
	cmpl	$0, %ecx	#test/matmul-flat.ml:6
	jl	jge_else.384
	movl	%ebx, 0(%ebp)	#test/matmul-flat.ml:7
	subl	$1, %ebx	#test/matmul-flat.ml:7
	movl	%edi, 4(%ebp)	#test/matmul-flat.ml:7
	movl	%esi, 8(%ebp)	#test/matmul-flat.ml:7
	movl	%edx, 12(%ebp)	#test/matmul-flat.ml:7
	movl	%eax, 16(%ebp)	#test/matmul-flat.ml:7
	movl	%ecx, 20(%ebp)	#test/matmul-flat.ml:7
	addl	$24, %ebp	#test/matmul-flat.ml:7
	call	loop3.140	#test/matmul-flat.ml:7
	subl	$24, %ebp	#test/matmul-flat.ml:7
	movl	20(%ebp), %eax	#test/matmul-flat.ml:8
	movl	%eax, %ecx	#test/matmul-flat.ml:8
	subl	$1, %ecx	#test/matmul-flat.ml:8
	movl	16(%ebp), %eax	#test/matmul-flat.ml:8
	movl	0(%ebp), %ebx	#test/matmul-flat.ml:8
	movl	12(%ebp), %edx	#test/matmul-flat.ml:8
	movl	8(%ebp), %esi	#test/matmul-flat.ml:8
	movl	4(%ebp), %edi	#test/matmul-flat.ml:8
	jmp	loop2.147	#test/matmul-flat.ml:8
jge_else.384:
	ret	#test/matmul-flat.ml:6
loop1.154:
	cmpl	$0, %eax	#test/matmul-flat.ml:10
	jl	jge_else.386
	movl	%ecx, 0(%ebp)	#test/matmul-flat.ml:11
	subl	$1, %ecx	#test/matmul-flat.ml:11
	movl	%edi, 4(%ebp)	#test/matmul-flat.ml:11
	movl	%esi, 8(%ebp)	#test/matmul-flat.ml:11
	movl	%edx, 12(%ebp)	#test/matmul-flat.ml:11
	movl	%ebx, 16(%ebp)	#test/matmul-flat.ml:11
	movl	%eax, 20(%ebp)	#test/matmul-flat.ml:11
	addl	$24, %ebp	#test/matmul-flat.ml:11
	call	loop2.147	#test/matmul-flat.ml:11
	subl	$24, %ebp	#test/matmul-flat.ml:11
	movl	20(%ebp), %eax	#test/matmul-flat.ml:12
	subl	$1, %eax	#test/matmul-flat.ml:12
	movl	16(%ebp), %ebx	#test/matmul-flat.ml:12
	movl	0(%ebp), %ecx	#test/matmul-flat.ml:12
	movl	12(%ebp), %edx	#test/matmul-flat.ml:12
	movl	8(%ebp), %esi	#test/matmul-flat.ml:12
	movl	4(%ebp), %edi	#test/matmul-flat.ml:12
	jmp	loop1.154	#test/matmul-flat.ml:12
jge_else.386:
	ret	#test/matmul-flat.ml:10
mul.161:
	subl	$1, %eax	#test/matmul-flat.ml:14
	jmp	loop1.154	#test/matmul-flat.ml:14
init.169:
	cmpl	$0, %eax	#test/matmul-flat.ml:17
	jl	jge_else.388
	movl	$l.320, %edx	#test/matmul-flat.ml:18
	movsd	0(%edx), %xmm0	#test/matmul-flat.ml:18
	movl	%ebx, 0(%ebp)	#test/matmul-flat.ml:18
	movl	%eax, 4(%ebp)	#test/matmul-flat.ml:18
	movl	%ecx, 8(%ebp)	#test/matmul-flat.ml:18
	movl	%ebx, %eax
	addl	$16, %ebp	#test/matmul-flat.ml:18
	call	min_caml_create_float_array	#test/matmul-flat.ml:18
	subl	$16, %ebp	#test/matmul-flat.ml:18
	movl	4(%ebp), %ebx	#test/matmul-flat.ml:18
	movl	8(%ebp), %ecx	#test/matmul-flat.ml:18
	movl	%eax, (%ecx,%ebx,4)	#test/matmul-flat.ml:18
	movl	%ebx, %eax	#test/matmul-flat.ml:19
	subl	$1, %eax	#test/matmul-flat.ml:19
	movl	0(%ebp), %ebx	#test/matmul-flat.ml:19
	jmp	init.169	#test/matmul-flat.ml:19
jge_else.388:
	ret	#test/matmul-flat.ml:17
make.173:
	movl	%ebx, 0(%ebp)	#test/matmul-flat.ml:21
	movl	%eax, 4(%ebp)	#test/matmul-flat.ml:21
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/matmul-flat.ml:21
	call	min_caml_create_array	#test/matmul-flat.ml:21
	subl	$8, %ebp	#test/matmul-flat.ml:21
	movl	%eax, %ecx	#test/matmul-flat.ml:21
	movl	4(%ebp), %eax	#test/matmul-flat.ml:22
	subl	$1, %eax	#test/matmul-flat.ml:22
	movl	0(%ebp), %ebx	#test/matmul-flat.ml:22
	movl	%ecx, 8(%ebp)	#test/matmul-flat.ml:22
	addl	$16, %ebp	#test/matmul-flat.ml:22
	call	init.169	#test/matmul-flat.ml:22
	subl	$16, %ebp	#test/matmul-flat.ml:22
	movl	8(%ebp), %eax	#test/matmul-flat.ml:23
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
	movl	$0, %eax	#test/matmul-flat.ml:15
	movl	$l.320, %ebx	#test/matmul-flat.ml:15
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:15
	call	min_caml_create_float_array	#test/matmul-flat.ml:15
	movl	%eax, %ecx	#test/matmul-flat.ml:15
	movl	$2, %eax	#test/matmul-flat.ml:24
	movl	$3, %ebx	#test/matmul-flat.ml:24
	movl	%ecx, 0(%ebp)	#test/matmul-flat.ml:24
	addl	$8, %ebp	#test/matmul-flat.ml:24
	call	make.173	#test/matmul-flat.ml:24
	subl	$8, %ebp	#test/matmul-flat.ml:24
	movl	$3, %ebx	#test/matmul-flat.ml:25
	movl	$2, %ecx	#test/matmul-flat.ml:25
	movl	0(%ebp), %edx	#test/matmul-flat.ml:25
	movl	%eax, 4(%ebp)	#test/matmul-flat.ml:25
	movl	%ebx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	$8, %ebp	#test/matmul-flat.ml:25
	call	make.173	#test/matmul-flat.ml:25
	subl	$8, %ebp	#test/matmul-flat.ml:25
	movl	$2, %ebx	#test/matmul-flat.ml:26
	movl	$2, %ecx	#test/matmul-flat.ml:26
	movl	0(%ebp), %edx	#test/matmul-flat.ml:26
	movl	%eax, 8(%ebp)	#test/matmul-flat.ml:26
	movl	%ebx, %eax
	movl	%ecx, %ebx
	movl	%edx, %ecx
	addl	$16, %ebp	#test/matmul-flat.ml:26
	call	make.173	#test/matmul-flat.ml:26
	subl	$16, %ebp	#test/matmul-flat.ml:26
	movl	%eax, %edi	#test/matmul-flat.ml:26
	movl	4(%ebp), %edx	#test/matmul-flat.ml:27
	movl	0(%edx), %eax	#test/matmul-flat.ml:27
	movl	$l.323, %ebx	#test/matmul-flat.ml:27
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:27
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:27
	movl	0(%edx), %eax	#test/matmul-flat.ml:27
	movl	$l.325, %ebx	#test/matmul-flat.ml:27
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:27
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:27
	movl	0(%edx), %eax	#test/matmul-flat.ml:27
	movl	$l.327, %ebx	#test/matmul-flat.ml:27
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:27
	movsd	%xmm0, 16(%eax)	#test/matmul-flat.ml:27
	movl	4(%edx), %eax	#test/matmul-flat.ml:28
	movl	$l.329, %ebx	#test/matmul-flat.ml:28
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:28
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:28
	movl	4(%edx), %eax	#test/matmul-flat.ml:28
	movl	$l.331, %ebx	#test/matmul-flat.ml:28
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:28
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:28
	movl	4(%edx), %eax	#test/matmul-flat.ml:28
	movl	$l.333, %ebx	#test/matmul-flat.ml:28
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:28
	movsd	%xmm0, 16(%eax)	#test/matmul-flat.ml:28
	movl	8(%ebp), %esi	#test/matmul-flat.ml:29
	movl	0(%esi), %eax	#test/matmul-flat.ml:29
	movl	$l.335, %ebx	#test/matmul-flat.ml:29
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:29
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:29
	movl	0(%esi), %eax	#test/matmul-flat.ml:29
	movl	$l.337, %ebx	#test/matmul-flat.ml:29
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:29
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:29
	movl	4(%esi), %eax	#test/matmul-flat.ml:30
	movl	$l.339, %ebx	#test/matmul-flat.ml:30
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:30
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:30
	movl	4(%esi), %eax	#test/matmul-flat.ml:30
	movl	$l.341, %ebx	#test/matmul-flat.ml:30
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:30
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:30
	movl	8(%esi), %eax	#test/matmul-flat.ml:31
	movl	$l.343, %ebx	#test/matmul-flat.ml:31
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:31
	movsd	%xmm0, 0(%eax)	#test/matmul-flat.ml:31
	movl	8(%esi), %eax	#test/matmul-flat.ml:31
	movl	$l.345, %ebx	#test/matmul-flat.ml:31
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:31
	movsd	%xmm0, 8(%eax)	#test/matmul-flat.ml:31
	movl	$2, %eax	#test/matmul-flat.ml:32
	movl	$3, %ebx	#test/matmul-flat.ml:32
	movl	$2, %ecx	#test/matmul-flat.ml:32
	movl	%edi, 12(%ebp)	#test/matmul-flat.ml:32
	addl	$16, %ebp	#test/matmul-flat.ml:32
	call	mul.161	#test/matmul-flat.ml:32
	subl	$16, %ebp	#test/matmul-flat.ml:32
	movl	12(%ebp), %eax	#test/matmul-flat.ml:33
	movl	0(%eax), %ebx	#test/matmul-flat.ml:33
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:33
	addl	$16, %ebp	#test/matmul-flat.ml:33
	call	min_caml_truncate	#test/matmul-flat.ml:33
	subl	$16, %ebp	#test/matmul-flat.ml:33
	addl	$16, %ebp	#test/matmul-flat.ml:33
	call	min_caml_print_int	#test/matmul-flat.ml:33
	subl	$16, %ebp	#test/matmul-flat.ml:33
	addl	$16, %ebp	#test/matmul-flat.ml:34
	call	min_caml_print_newline	#test/matmul-flat.ml:34
	subl	$16, %ebp	#test/matmul-flat.ml:34
	movl	12(%ebp), %eax	#test/matmul-flat.ml:35
	movl	0(%eax), %ebx	#test/matmul-flat.ml:35
	movsd	8(%ebx), %xmm0	#test/matmul-flat.ml:35
	addl	$16, %ebp	#test/matmul-flat.ml:35
	call	min_caml_truncate	#test/matmul-flat.ml:35
	subl	$16, %ebp	#test/matmul-flat.ml:35
	addl	$16, %ebp	#test/matmul-flat.ml:35
	call	min_caml_print_int	#test/matmul-flat.ml:35
	subl	$16, %ebp	#test/matmul-flat.ml:35
	addl	$16, %ebp	#test/matmul-flat.ml:36
	call	min_caml_print_newline	#test/matmul-flat.ml:36
	subl	$16, %ebp	#test/matmul-flat.ml:36
	movl	12(%ebp), %eax	#test/matmul-flat.ml:37
	movl	4(%eax), %ebx	#test/matmul-flat.ml:37
	movsd	0(%ebx), %xmm0	#test/matmul-flat.ml:37
	addl	$16, %ebp	#test/matmul-flat.ml:37
	call	min_caml_truncate	#test/matmul-flat.ml:37
	subl	$16, %ebp	#test/matmul-flat.ml:37
	addl	$16, %ebp	#test/matmul-flat.ml:37
	call	min_caml_print_int	#test/matmul-flat.ml:37
	subl	$16, %ebp	#test/matmul-flat.ml:37
	addl	$16, %ebp	#test/matmul-flat.ml:38
	call	min_caml_print_newline	#test/matmul-flat.ml:38
	subl	$16, %ebp	#test/matmul-flat.ml:38
	movl	12(%ebp), %eax	#test/matmul-flat.ml:39
	movl	4(%eax), %eax	#test/matmul-flat.ml:39
	movsd	8(%eax), %xmm0	#test/matmul-flat.ml:39
	addl	$16, %ebp	#test/matmul-flat.ml:39
	call	min_caml_truncate	#test/matmul-flat.ml:39
	subl	$16, %ebp	#test/matmul-flat.ml:39
	addl	$16, %ebp	#test/matmul-flat.ml:39
	call	min_caml_print_int	#test/matmul-flat.ml:39
	subl	$16, %ebp	#test/matmul-flat.ml:39
	addl	$16, %ebp	#test/matmul-flat.ml:40
	call	min_caml_print_newline	#test/matmul-flat.ml:40
	subl	$16, %ebp	#test/matmul-flat.ml:40
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
