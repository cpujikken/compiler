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
	cmpl	$0, %ecx	#test/inprod-rec.ml:2
	jl	jge_else.51
	movsd	(%eax,%ecx,8), %xmm0	#test/inprod-rec.ml:3
	movsd	(%ebx,%ecx,8), %xmm1	#test/inprod-rec.ml:3
	mulsd	%xmm1, %xmm0	#test/inprod-rec.ml:3
	subl	$1, %ecx	#test/inprod-rec.ml:3
	movsd	%xmm0, 0(%ebp)	#test/inprod-rec.ml:3
	addl	$8, %ebp	#test/inprod-rec.ml:3
	call	inprod.17	#test/inprod-rec.ml:3
	subl	$8, %ebp	#test/inprod-rec.ml:3
	movsd	0(%ebp), %xmm1	#test/inprod-rec.ml:3
	addsd	%xmm1, %xmm0	#test/inprod-rec.ml:3
	ret
jge_else.51:
	movl	$l.39, %eax	#test/inprod-rec.ml:2
	movsd	0(%eax), %xmm0	#test/inprod-rec.ml:2
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
	movl	$3, %eax	#test/inprod-rec.ml:4
	movl	$l.41, %ebx	#test/inprod-rec.ml:4
	movsd	0(%ebx), %xmm0	#test/inprod-rec.ml:4
	call	min_caml_create_float_array	#test/inprod-rec.ml:4
	movl	$3, %ebx	#test/inprod-rec.ml:5
	movl	$l.43, %ecx	#test/inprod-rec.ml:5
	movsd	0(%ecx), %xmm0	#test/inprod-rec.ml:5
	movl	%eax, 0(%ebp)	#test/inprod-rec.ml:5
	movl	%ebx, %eax
	addl	$8, %ebp	#test/inprod-rec.ml:5
	call	min_caml_create_float_array	#test/inprod-rec.ml:5
	subl	$8, %ebp	#test/inprod-rec.ml:5
	movl	%eax, %ebx	#test/inprod-rec.ml:5
	movl	$l.45, %eax	#test/inprod-rec.ml:6
	movsd	0(%eax), %xmm0	#test/inprod-rec.ml:6
	movl	$2, %ecx	#test/inprod-rec.ml:6
	movl	0(%ebp), %eax	#test/inprod-rec.ml:6
	movsd	%xmm0, 8(%ebp)	#test/inprod-rec.ml:6
	addl	$16, %ebp	#test/inprod-rec.ml:6
	call	inprod.17	#test/inprod-rec.ml:6
	subl	$16, %ebp	#test/inprod-rec.ml:6
	movsd	8(%ebp), %xmm1	#test/inprod-rec.ml:6
	mulsd	%xmm1, %xmm0	#test/inprod-rec.ml:6
	addl	$16, %ebp	#test/inprod-rec.ml:6
	call	min_caml_truncate	#test/inprod-rec.ml:6
	subl	$16, %ebp	#test/inprod-rec.ml:6
	addl	$16, %ebp	#test/inprod-rec.ml:6
	call	min_caml_print_int	#test/inprod-rec.ml:6
	subl	$16, %ebp	#test/inprod-rec.ml:6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
