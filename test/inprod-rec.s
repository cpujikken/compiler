.data
.balign	8
l.45:	# 1000000.000000
	.long	0x0
	.long	0x412e8480
l.43:	# 4.560000
	.long	0xa3d70a3d
	.long	0x40123d70
l.41:	# 1.230000
	.long	0x7ae147ae
	.long	0x3ff3ae14
l.39:	# 0.000000
	.long	0x0
	.long	0x0
.text
inprod.17:
	cmpl	$0, %ecx	#test/inprod-rec.ml:2:3->3:43
	jl	jge_else.51
	movsd	(%eax,%ecx,8), %xmm0	#test/inprod-rec.ml:3:3->3:9
	movsd	(%ebx,%ecx,8), %xmm1	#test/inprod-rec.ml:3:13->3:19
	mulsd	%xmm1, %xmm0	#test/inprod-rec.ml:3:3->3:19
	subl	$1, %ecx	#test/inprod-rec.ml:3:37->3:42
	movsd	%xmm0, 0(%ebp)	#test/inprod-rec.ml:3:23->3:43
	addl	$8, %ebp	#test/inprod-rec.ml:3:23->3:43
	call	inprod.17	#test/inprod-rec.ml:3:23->3:43
	subl	$8, %ebp	#test/inprod-rec.ml:3:23->3:43
	movsd	0(%ebp), %xmm1	#test/inprod-rec.ml:3:3->3:43
	addsd	%xmm1, %xmm0	#test/inprod-rec.ml:3:3->3:43
	ret
jge_else.51:
	movl	$l.39, %eax	#test/inprod-rec.ml:2:17->2:20
	movsd	0(%eax), %xmm0	#test/inprod-rec.ml:2:17->2:20
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
	movl	$3, %eax	#test/inprod-rec.ml:4:23->4:24
	movl	$l.41, %ebx	#test/inprod-rec.ml:4:25->4:29
	movsd	0(%ebx), %xmm0	#test/inprod-rec.ml:4:25->4:29
	call	min_caml_create_float_array	#test/inprod-rec.ml:4:10->4:29
	movl	$3, %ebx	#test/inprod-rec.ml:5:23->5:24
	movl	$l.43, %ecx	#test/inprod-rec.ml:5:25->5:29
	movsd	0(%ecx), %xmm0	#test/inprod-rec.ml:5:25->5:29
	movl	%eax, 0(%ebp)	#test/inprod-rec.ml:5:10->5:29
	movl	%ebx, %eax
	addl	$8, %ebp	#test/inprod-rec.ml:5:10->5:29
	call	min_caml_create_float_array	#test/inprod-rec.ml:5:10->5:29
	subl	$8, %ebp	#test/inprod-rec.ml:5:10->5:29
	movl	%eax, %ebx	#test/inprod-rec.ml:5:10->5:29
	movl	$l.45, %eax	#test/inprod-rec.ml:6:22->6:30
	movsd	0(%eax), %xmm0	#test/inprod-rec.ml:6:22->6:30
	movl	$2, %ecx	#test/inprod-rec.ml:6:47->6:48
	movl	0(%ebp), %eax	#test/inprod-rec.ml:6:34->6:48
	movsd	%xmm0, 8(%ebp)	#test/inprod-rec.ml:6:34->6:48
	addl	$16, %ebp	#test/inprod-rec.ml:6:34->6:48
	call	inprod.17	#test/inprod-rec.ml:6:34->6:48
	subl	$16, %ebp	#test/inprod-rec.ml:6:34->6:48
	movsd	8(%ebp), %xmm1	#test/inprod-rec.ml:6:22->6:48
	mulsd	%xmm1, %xmm0	#test/inprod-rec.ml:6:22->6:48
	addl	$16, %ebp	#test/inprod-rec.ml:6:12->6:49
	call	min_caml_truncate	#test/inprod-rec.ml:6:12->6:49
	subl	$16, %ebp	#test/inprod-rec.ml:6:12->6:49
	addl	$16, %ebp	#test/inprod-rec.ml:6:1->6:50
	call	min_caml_print_int	#test/inprod-rec.ml:6:1->6:50
	subl	$16, %ebp	#test/inprod-rec.ml:6:1->6:50
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
