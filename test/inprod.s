.data
.balign	8
l.79:	# 6.000000
	.long	0x0
	.long	0x40180000
l.77:	# 5.000000
	.long	0x0
	.long	0x40140000
l.75:	# 4.000000
	.long	0x0
	.long	0x40100000
l.69:	# 3.000000
	.long	0x0
	.long	0x40080000
l.67:	# 2.000000
	.long	0x0
	.long	0x40000000
l.65:	# 1.000000
	.long	0x0
	.long	0x3ff00000
l.63:	# 1000000.000000
	.long	0x0
	.long	0x412e8480
.text
getx.23:
	movsd	0(%eax), %xmm0	#test/inprod.ml:1
	ret
gety.25:
	movsd	8(%eax), %xmm0	#test/inprod.ml:2
	ret
getz.27:
	movsd	16(%eax), %xmm0	#test/inprod.ml:3
	ret
inprod.29:
	movl	%eax, 0(%ebp)	#test/inprod.ml:5
	movl	%ebx, 4(%ebp)	#test/inprod.ml:5
	addl	$8, %ebp	#test/inprod.ml:5
	call	getx.23	#test/inprod.ml:5
	subl	$8, %ebp	#test/inprod.ml:5
	movl	4(%ebp), %eax	#test/inprod.ml:5
	movsd	%xmm0, 8(%ebp)	#test/inprod.ml:5
	addl	$16, %ebp	#test/inprod.ml:5
	call	getx.23	#test/inprod.ml:5
	subl	$16, %ebp	#test/inprod.ml:5
	movsd	8(%ebp), %xmm1	#test/inprod.ml:5
	mulsd	%xmm0, %xmm1	#test/inprod.ml:5
	movl	0(%ebp), %eax	#test/inprod.ml:5
	movsd	%xmm1, 16(%ebp)	#test/inprod.ml:5
	addl	$24, %ebp	#test/inprod.ml:5
	call	gety.25	#test/inprod.ml:5
	subl	$24, %ebp	#test/inprod.ml:5
	movl	4(%ebp), %eax	#test/inprod.ml:5
	movsd	%xmm0, 24(%ebp)	#test/inprod.ml:5
	addl	$32, %ebp	#test/inprod.ml:5
	call	gety.25	#test/inprod.ml:5
	subl	$32, %ebp	#test/inprod.ml:5
	movsd	24(%ebp), %xmm1	#test/inprod.ml:5
	mulsd	%xmm0, %xmm1	#test/inprod.ml:5
	movsd	16(%ebp), %xmm0	#test/inprod.ml:5
	addsd	%xmm1, %xmm0	#test/inprod.ml:5
	movl	0(%ebp), %eax	#test/inprod.ml:5
	movsd	%xmm0, 32(%ebp)	#test/inprod.ml:5
	addl	$40, %ebp	#test/inprod.ml:5
	call	getz.27	#test/inprod.ml:5
	subl	$40, %ebp	#test/inprod.ml:5
	movl	4(%ebp), %eax	#test/inprod.ml:5
	movsd	%xmm0, 40(%ebp)	#test/inprod.ml:5
	addl	$48, %ebp	#test/inprod.ml:5
	call	getz.27	#test/inprod.ml:5
	subl	$48, %ebp	#test/inprod.ml:5
	movsd	40(%ebp), %xmm1	#test/inprod.ml:5
	mulsd	%xmm0, %xmm1	#test/inprod.ml:5
	movsd	32(%ebp), %xmm0	#test/inprod.ml:5
	addsd	%xmm1, %xmm0	#test/inprod.ml:5
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
	movl	$l.63, %eax	#test/inprod.ml:6
	movsd	0(%eax), %xmm0	#test/inprod.ml:6
	movl	$l.65, %eax	#test/inprod.ml:6
	movsd	0(%eax), %xmm1	#test/inprod.ml:6
	movl	$l.67, %eax	#test/inprod.ml:6
	movsd	0(%eax), %xmm2	#test/inprod.ml:6
	movl	$l.69, %eax	#test/inprod.ml:6
	movsd	0(%eax), %xmm3	#test/inprod.ml:6
	movl	min_caml_hp, %eax	#test/inprod.ml:6
	addl	$24, min_caml_hp	#test/inprod.ml:6
	movsd	%xmm3, 16(%eax)	#test/inprod.ml:6
	movsd	%xmm2, 8(%eax)	#test/inprod.ml:6
	movsd	%xmm1, 0(%eax)	#test/inprod.ml:6
	movl	$l.75, %ebx	#test/inprod.ml:6
	movsd	0(%ebx), %xmm1	#test/inprod.ml:6
	movl	$l.77, %ebx	#test/inprod.ml:6
	movsd	0(%ebx), %xmm2	#test/inprod.ml:6
	movl	$l.79, %ebx	#test/inprod.ml:6
	movsd	0(%ebx), %xmm3	#test/inprod.ml:6
	movl	min_caml_hp, %ebx	#test/inprod.ml:6
	addl	$24, min_caml_hp	#test/inprod.ml:6
	movsd	%xmm3, 16(%ebx)	#test/inprod.ml:6
	movsd	%xmm2, 8(%ebx)	#test/inprod.ml:6
	movsd	%xmm1, 0(%ebx)	#test/inprod.ml:6
	movsd	%xmm0, 0(%ebp)	#test/inprod.ml:6
	addl	$8, %ebp	#test/inprod.ml:6
	call	inprod.29	#test/inprod.ml:6
	subl	$8, %ebp	#test/inprod.ml:6
	movsd	0(%ebp), %xmm1	#test/inprod.ml:6
	mulsd	%xmm1, %xmm0	#test/inprod.ml:6
	addl	$8, %ebp	#test/inprod.ml:6
	call	min_caml_truncate	#test/inprod.ml:6
	subl	$8, %ebp	#test/inprod.ml:6
	addl	$8, %ebp	#test/inprod.ml:6
	call	min_caml_print_int	#test/inprod.ml:6
	subl	$8, %ebp	#test/inprod.ml:6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
