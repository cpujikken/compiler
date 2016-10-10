.data
.balign	8
l.48:	# 0.000000
	.long	0x0
	.long	0x0
l.46:	# 1000000.000000
	.long	0x0
	.long	0x412e8480
l.44:	# 4.560000
	.long	0xa3d70a3d
	.long	0x40123d70
l.42:	# 1.230000
	.long	0x7ae147ae
	.long	0x3ff3ae14
.text
inprod.18:
	cmpl	$0, %ecx	#test/inprod-loop.ml:2:3->3:49
	jl	jge_else.53
	movsd	(%eax,%ecx,8), %xmm1	#test/inprod-loop.ml:3:24->3:30
	movsd	(%ebx,%ecx,8), %xmm2	#test/inprod-loop.ml:3:34->3:40
	mulsd	%xmm2, %xmm1	#test/inprod-loop.ml:3:24->3:40
	addsd	%xmm1, %xmm0	#test/inprod-loop.ml:3:17->3:40
	subl	$1, %ecx	#test/inprod-loop.ml:3:43->3:48
	jmp	inprod.18	#test/inprod-loop.ml:3:3->3:49
jge_else.53:
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
	movl	$3, %eax	#test/inprod-loop.ml:4:23->4:24
	movl	$l.42, %ebx	#test/inprod-loop.ml:4:25->4:29
	movsd	0(%ebx), %xmm0	#test/inprod-loop.ml:4:25->4:29
	call	min_caml_create_float_array	#test/inprod-loop.ml:4:10->4:29
	movl	$3, %ebx	#test/inprod-loop.ml:5:23->5:24
	movl	$l.44, %ecx	#test/inprod-loop.ml:5:25->5:29
	movsd	0(%ecx), %xmm0	#test/inprod-loop.ml:5:25->5:29
	movl	%eax, 0(%ebp)	#test/inprod-loop.ml:5:10->5:29
	movl	%ebx, %eax
	addl	$8, %ebp	#test/inprod-loop.ml:5:10->5:29
	call	min_caml_create_float_array	#test/inprod-loop.ml:5:10->5:29
	subl	$8, %ebp	#test/inprod-loop.ml:5:10->5:29
	movl	%eax, %ebx	#test/inprod-loop.ml:5:10->5:29
	movl	$l.46, %eax	#test/inprod-loop.ml:6:22->6:30
	movsd	0(%eax), %xmm0	#test/inprod-loop.ml:6:22->6:30
	movl	$l.48, %eax	#test/inprod-loop.ml:6:47->6:49
	movsd	0(%eax), %xmm1	#test/inprod-loop.ml:6:47->6:49
	movl	$2, %ecx	#test/inprod-loop.ml:6:50->6:51
	movl	0(%ebp), %eax	#test/inprod-loop.ml:6:34->6:51
	movsd	%xmm0, 8(%ebp)	#test/inprod-loop.ml:6:34->6:51
	movsd	%xmm1, %xmm0
	addl	$16, %ebp	#test/inprod-loop.ml:6:34->6:51
	call	inprod.18	#test/inprod-loop.ml:6:34->6:51
	subl	$16, %ebp	#test/inprod-loop.ml:6:34->6:51
	movsd	8(%ebp), %xmm1	#test/inprod-loop.ml:6:22->6:51
	mulsd	%xmm1, %xmm0	#test/inprod-loop.ml:6:22->6:51
	addl	$16, %ebp	#test/inprod-loop.ml:6:12->6:52
	call	min_caml_truncate	#test/inprod-loop.ml:6:12->6:52
	subl	$16, %ebp	#test/inprod-loop.ml:6:12->6:52
	addl	$16, %ebp	#test/inprod-loop.ml:6:1->6:53
	call	min_caml_print_int	#test/inprod-loop.ml:6:1->6:53
	subl	$16, %ebp	#test/inprod-loop.ml:6:1->6:53
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
