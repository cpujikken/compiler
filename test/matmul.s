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
	movl	20(%edi), %ebx	#test/matmul.ml:7
	movl	16(%edi), %ecx	#test/matmul.ml:7
	movl	12(%edi), %edx	#test/matmul.ml:7
	movl	8(%edi), %esi	#test/matmul.ml:7
	movl	%edi, 0(%ebp)	#test/matmul.ml:7
	movl	4(%edi), %edi	#test/matmul.ml:7
	cmpl	$0, %eax	#test/matmul.ml:7
	jl	jge_else.389
	movl	%esi, 4(%ebp)	#test/matmul.ml:8
	movl	(%edx,%ecx,4), %esi	#test/matmul.ml:8
	movl	(%edx,%ecx,4), %edx	#test/matmul.ml:8
	movsd	(%edx,%ebx,8), %xmm0	#test/matmul.ml:8
	movl	(%edi,%ecx,4), %ecx	#test/matmul.ml:8
	movsd	(%ecx,%eax,8), %xmm1	#test/matmul.ml:8
	movl	4(%ebp), %ecx	#test/matmul.ml:8
	movl	(%ecx,%eax,4), %ecx	#test/matmul.ml:8
	movsd	(%ecx,%ebx,8), %xmm2	#test/matmul.ml:8
	mulsd	%xmm2, %xmm1	#test/matmul.ml:8
	addsd	%xmm1, %xmm0	#test/matmul.ml:8
	movsd	%xmm0, (%esi,%ebx,8)	#test/matmul.ml:8
	subl	$1, %eax	#test/matmul.ml:9
	movl	0(%ebp), %edi	#test/matmul.ml:9
	jmp	*(%edi)	#test/matmul.ml:9
jge_else.389:
	ret	#test/matmul.ml:7
loop2.274:
	movl	20(%edi), %ebx	#test/matmul.ml:5
	movl	16(%edi), %ecx	#test/matmul.ml:5
	movl	12(%edi), %edx	#test/matmul.ml:5
	movl	8(%edi), %esi	#test/matmul.ml:5
	movl	%edi, 0(%ebp)	#test/matmul.ml:5
	movl	4(%edi), %edi	#test/matmul.ml:5
	cmpl	$0, %eax	#test/matmul.ml:5
	jl	jge_else.391
	movl	%ebx, 4(%ebp)	#test/matmul.ml:6
	movl	min_caml_hp, %ebx	#test/matmul.ml:6
	addl	$24, min_caml_hp	#test/matmul.ml:6
	movl	%edi, 8(%ebp)	#test/matmul.ml:6
	movl	$loop3.282, %edi	#test/matmul.ml:6
	movl	%edi, 0(%ebx)	#test/matmul.ml:6
	movl	%eax, 20(%ebx)	#test/matmul.ml:6
	movl	%ecx, 16(%ebx)	#test/matmul.ml:6
	movl	%edx, 12(%ebx)	#test/matmul.ml:6
	movl	%esi, 8(%ebx)	#test/matmul.ml:6
	movl	8(%ebp), %ecx	#test/matmul.ml:6
	movl	%ecx, 4(%ebx)	#test/matmul.ml:6
	movl	4(%ebp), %ecx	#test/matmul.ml:10
	subl	$1, %ecx	#test/matmul.ml:10
	movl	%eax, 12(%ebp)	#test/matmul.ml:10
	movl	%ecx, %eax
	movl	%ebx, %edi
	addl	$16, %ebp	#test/matmul.ml:10
	call	*(%edi)	#test/matmul.ml:10
	subl	$16, %ebp	#test/matmul.ml:10
	movl	12(%ebp), %eax	#test/matmul.ml:11
	subl	$1, %eax	#test/matmul.ml:11
	movl	0(%ebp), %edi	#test/matmul.ml:11
	jmp	*(%edi)	#test/matmul.ml:11
jge_else.391:
	ret	#test/matmul.ml:5
loop1.269:
	movl	20(%edi), %ebx	#test/matmul.ml:3
	movl	16(%edi), %ecx	#test/matmul.ml:3
	movl	12(%edi), %edx	#test/matmul.ml:3
	movl	8(%edi), %esi	#test/matmul.ml:3
	movl	%edi, 0(%ebp)	#test/matmul.ml:3
	movl	4(%edi), %edi	#test/matmul.ml:3
	cmpl	$0, %eax	#test/matmul.ml:3
	jl	jge_else.393
	movl	%ebx, 4(%ebp)	#test/matmul.ml:4
	movl	min_caml_hp, %ebx	#test/matmul.ml:4
	addl	$24, min_caml_hp	#test/matmul.ml:4
	movl	%edi, 8(%ebp)	#test/matmul.ml:4
	movl	$loop2.274, %edi	#test/matmul.ml:4
	movl	%edi, 0(%ebx)	#test/matmul.ml:4
	movl	%ecx, 20(%ebx)	#test/matmul.ml:4
	movl	%eax, 16(%ebx)	#test/matmul.ml:4
	movl	%edx, 12(%ebx)	#test/matmul.ml:4
	movl	%esi, 8(%ebx)	#test/matmul.ml:4
	movl	8(%ebp), %ecx	#test/matmul.ml:4
	movl	%ecx, 4(%ebx)	#test/matmul.ml:4
	movl	4(%ebp), %ecx	#test/matmul.ml:12
	subl	$1, %ecx	#test/matmul.ml:12
	movl	%eax, 12(%ebp)	#test/matmul.ml:12
	movl	%ecx, %eax
	movl	%ebx, %edi
	addl	$16, %ebp	#test/matmul.ml:12
	call	*(%edi)	#test/matmul.ml:12
	subl	$16, %ebp	#test/matmul.ml:12
	movl	12(%ebp), %eax	#test/matmul.ml:13
	subl	$1, %eax	#test/matmul.ml:13
	movl	0(%ebp), %edi	#test/matmul.ml:13
	jmp	*(%edi)	#test/matmul.ml:13
jge_else.393:
	ret	#test/matmul.ml:3
mul.140:
	movl	%eax, 0(%ebp)	#test/matmul.ml:2
	movl	min_caml_hp, %eax	#test/matmul.ml:2
	addl	$24, min_caml_hp	#test/matmul.ml:2
	movl	%edx, 4(%ebp)	#test/matmul.ml:2
	movl	$loop1.269, %edx	#test/matmul.ml:2
	movl	%edx, 0(%eax)	#test/matmul.ml:2
	movl	%ecx, 20(%eax)	#test/matmul.ml:2
	movl	%ebx, 16(%eax)	#test/matmul.ml:2
	movl	%edi, 12(%eax)	#test/matmul.ml:2
	movl	%esi, 8(%eax)	#test/matmul.ml:2
	movl	4(%ebp), %ebx	#test/matmul.ml:2
	movl	%ebx, 4(%eax)	#test/matmul.ml:2
	movl	0(%ebp), %ebx	#test/matmul.ml:14
	subl	$1, %ebx	#test/matmul.ml:14
	movl	%eax, %edi
	movl	%ebx, %eax
	jmp	*(%edi)	#test/matmul.ml:14
init.256:
	movl	8(%edi), %ebx	#test/matmul.ml:19
	movl	4(%edi), %ecx	#test/matmul.ml:19
	cmpl	$0, %eax	#test/matmul.ml:19
	jl	jge_else.395
	movl	$l.323, %edx	#test/matmul.ml:20
	movsd	0(%edx), %xmm0	#test/matmul.ml:20
	movl	%edi, 0(%ebp)	#test/matmul.ml:20
	movl	%eax, 4(%ebp)	#test/matmul.ml:20
	movl	%ecx, 8(%ebp)	#test/matmul.ml:20
	movl	%ebx, %eax
	addl	$16, %ebp	#test/matmul.ml:20
	call	min_caml_create_float_array	#test/matmul.ml:20
	subl	$16, %ebp	#test/matmul.ml:20
	movl	4(%ebp), %ebx	#test/matmul.ml:20
	movl	8(%ebp), %ecx	#test/matmul.ml:20
	movl	%eax, (%ecx,%ebx,4)	#test/matmul.ml:20
	movl	%ebx, %eax	#test/matmul.ml:21
	subl	$1, %eax	#test/matmul.ml:21
	movl	0(%ebp), %edi	#test/matmul.ml:21
	jmp	*(%edi)	#test/matmul.ml:21
jge_else.395:
	ret	#test/matmul.ml:19
make.148:
	movl	4(%edi), %ecx	#test/matmul.ml:17
	movl	%eax, 0(%ebp)	#test/matmul.ml:17
	movl	%ebx, 4(%ebp)	#test/matmul.ml:17
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/matmul.ml:17
	call	min_caml_create_array	#test/matmul.ml:17
	subl	$8, %ebp	#test/matmul.ml:17
	movl	min_caml_hp, %edi	#test/matmul.ml:18
	addl	$16, min_caml_hp	#test/matmul.ml:18
	movl	$init.256, %ebx	#test/matmul.ml:18
	movl	%ebx, 0(%edi)	#test/matmul.ml:18
	movl	4(%ebp), %ebx	#test/matmul.ml:18
	movl	%ebx, 8(%edi)	#test/matmul.ml:18
	movl	%eax, 4(%edi)	#test/matmul.ml:18
	movl	0(%ebp), %ebx	#test/matmul.ml:22
	subl	$1, %ebx	#test/matmul.ml:22
	movl	%eax, 8(%ebp)	#test/matmul.ml:22
	movl	%ebx, %eax
	addl	$16, %ebp	#test/matmul.ml:22
	call	*(%edi)	#test/matmul.ml:22
	subl	$16, %ebp	#test/matmul.ml:22
	movl	8(%ebp), %eax	#test/matmul.ml:23
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
	movl	$0, %eax	#test/matmul.ml:15
	movl	$l.323, %ebx	#test/matmul.ml:15
	movsd	0(%ebx), %xmm0	#test/matmul.ml:15
	call	min_caml_create_float_array	#test/matmul.ml:15
	movl	min_caml_hp, %edi	#test/matmul.ml:16
	addl	$8, min_caml_hp	#test/matmul.ml:16
	movl	$make.148, %ebx	#test/matmul.ml:16
	movl	%ebx, 0(%edi)	#test/matmul.ml:16
	movl	%eax, 4(%edi)	#test/matmul.ml:16
	movl	$2, %eax	#test/matmul.ml:24
	movl	$3, %ebx	#test/matmul.ml:24
	movl	%edi, 0(%ebp)	#test/matmul.ml:24
	addl	$8, %ebp	#test/matmul.ml:24
	call	*(%edi)	#test/matmul.ml:24
	subl	$8, %ebp	#test/matmul.ml:24
	movl	$3, %ebx	#test/matmul.ml:25
	movl	$2, %ecx	#test/matmul.ml:25
	movl	0(%ebp), %edi	#test/matmul.ml:25
	movl	%eax, 4(%ebp)	#test/matmul.ml:25
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/matmul.ml:25
	call	*(%edi)	#test/matmul.ml:25
	subl	$8, %ebp	#test/matmul.ml:25
	movl	$2, %ebx	#test/matmul.ml:26
	movl	$2, %ecx	#test/matmul.ml:26
	movl	0(%ebp), %edi	#test/matmul.ml:26
	movl	%eax, 8(%ebp)	#test/matmul.ml:26
	movl	%ebx, %eax
	movl	%ecx, %ebx
	addl	$16, %ebp	#test/matmul.ml:26
	call	*(%edi)	#test/matmul.ml:26
	subl	$16, %ebp	#test/matmul.ml:26
	movl	%eax, %edi	#test/matmul.ml:26
	movl	4(%ebp), %edx	#test/matmul.ml:27
	movl	0(%edx), %eax	#test/matmul.ml:27
	movl	$l.330, %ebx	#test/matmul.ml:27
	movsd	0(%ebx), %xmm0	#test/matmul.ml:27
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:27
	movl	0(%edx), %eax	#test/matmul.ml:27
	movl	$l.332, %ebx	#test/matmul.ml:27
	movsd	0(%ebx), %xmm0	#test/matmul.ml:27
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:27
	movl	0(%edx), %eax	#test/matmul.ml:27
	movl	$l.334, %ebx	#test/matmul.ml:27
	movsd	0(%ebx), %xmm0	#test/matmul.ml:27
	movsd	%xmm0, 16(%eax)	#test/matmul.ml:27
	movl	4(%edx), %eax	#test/matmul.ml:28
	movl	$l.336, %ebx	#test/matmul.ml:28
	movsd	0(%ebx), %xmm0	#test/matmul.ml:28
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:28
	movl	4(%edx), %eax	#test/matmul.ml:28
	movl	$l.338, %ebx	#test/matmul.ml:28
	movsd	0(%ebx), %xmm0	#test/matmul.ml:28
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:28
	movl	4(%edx), %eax	#test/matmul.ml:28
	movl	$l.340, %ebx	#test/matmul.ml:28
	movsd	0(%ebx), %xmm0	#test/matmul.ml:28
	movsd	%xmm0, 16(%eax)	#test/matmul.ml:28
	movl	8(%ebp), %esi	#test/matmul.ml:29
	movl	0(%esi), %eax	#test/matmul.ml:29
	movl	$l.342, %ebx	#test/matmul.ml:29
	movsd	0(%ebx), %xmm0	#test/matmul.ml:29
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:29
	movl	0(%esi), %eax	#test/matmul.ml:29
	movl	$l.344, %ebx	#test/matmul.ml:29
	movsd	0(%ebx), %xmm0	#test/matmul.ml:29
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:29
	movl	4(%esi), %eax	#test/matmul.ml:30
	movl	$l.346, %ebx	#test/matmul.ml:30
	movsd	0(%ebx), %xmm0	#test/matmul.ml:30
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:30
	movl	4(%esi), %eax	#test/matmul.ml:30
	movl	$l.348, %ebx	#test/matmul.ml:30
	movsd	0(%ebx), %xmm0	#test/matmul.ml:30
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:30
	movl	8(%esi), %eax	#test/matmul.ml:31
	movl	$l.350, %ebx	#test/matmul.ml:31
	movsd	0(%ebx), %xmm0	#test/matmul.ml:31
	movsd	%xmm0, 0(%eax)	#test/matmul.ml:31
	movl	8(%esi), %eax	#test/matmul.ml:31
	movl	$l.352, %ebx	#test/matmul.ml:31
	movsd	0(%ebx), %xmm0	#test/matmul.ml:31
	movsd	%xmm0, 8(%eax)	#test/matmul.ml:31
	movl	$2, %eax	#test/matmul.ml:32
	movl	$3, %ebx	#test/matmul.ml:32
	movl	$2, %ecx	#test/matmul.ml:32
	movl	%edi, 12(%ebp)	#test/matmul.ml:32
	addl	$16, %ebp	#test/matmul.ml:32
	call	mul.140	#test/matmul.ml:32
	subl	$16, %ebp	#test/matmul.ml:32
	movl	12(%ebp), %eax	#test/matmul.ml:33
	movl	0(%eax), %ebx	#test/matmul.ml:33
	movsd	0(%ebx), %xmm0	#test/matmul.ml:33
	addl	$16, %ebp	#test/matmul.ml:33
	call	min_caml_truncate	#test/matmul.ml:33
	subl	$16, %ebp	#test/matmul.ml:33
	addl	$16, %ebp	#test/matmul.ml:33
	call	min_caml_print_int	#test/matmul.ml:33
	subl	$16, %ebp	#test/matmul.ml:33
	addl	$16, %ebp	#test/matmul.ml:34
	call	min_caml_print_newline	#test/matmul.ml:34
	subl	$16, %ebp	#test/matmul.ml:34
	movl	12(%ebp), %eax	#test/matmul.ml:35
	movl	0(%eax), %ebx	#test/matmul.ml:35
	movsd	8(%ebx), %xmm0	#test/matmul.ml:35
	addl	$16, %ebp	#test/matmul.ml:35
	call	min_caml_truncate	#test/matmul.ml:35
	subl	$16, %ebp	#test/matmul.ml:35
	addl	$16, %ebp	#test/matmul.ml:35
	call	min_caml_print_int	#test/matmul.ml:35
	subl	$16, %ebp	#test/matmul.ml:35
	addl	$16, %ebp	#test/matmul.ml:36
	call	min_caml_print_newline	#test/matmul.ml:36
	subl	$16, %ebp	#test/matmul.ml:36
	movl	12(%ebp), %eax	#test/matmul.ml:37
	movl	4(%eax), %ebx	#test/matmul.ml:37
	movsd	0(%ebx), %xmm0	#test/matmul.ml:37
	addl	$16, %ebp	#test/matmul.ml:37
	call	min_caml_truncate	#test/matmul.ml:37
	subl	$16, %ebp	#test/matmul.ml:37
	addl	$16, %ebp	#test/matmul.ml:37
	call	min_caml_print_int	#test/matmul.ml:37
	subl	$16, %ebp	#test/matmul.ml:37
	addl	$16, %ebp	#test/matmul.ml:38
	call	min_caml_print_newline	#test/matmul.ml:38
	subl	$16, %ebp	#test/matmul.ml:38
	movl	12(%ebp), %eax	#test/matmul.ml:39
	movl	4(%eax), %eax	#test/matmul.ml:39
	movsd	8(%eax), %xmm0	#test/matmul.ml:39
	addl	$16, %ebp	#test/matmul.ml:39
	call	min_caml_truncate	#test/matmul.ml:39
	subl	$16, %ebp	#test/matmul.ml:39
	addl	$16, %ebp	#test/matmul.ml:39
	call	min_caml_print_int	#test/matmul.ml:39
	subl	$16, %ebp	#test/matmul.ml:39
	addl	$16, %ebp	#test/matmul.ml:40
	call	min_caml_print_newline	#test/matmul.ml:40
	subl	$16, %ebp	#test/matmul.ml:40
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
