.data
.balign	8
.text
sum.7:
	cmpl	$0, %eax	#test/sum.ml:2:3->3:18
	jg	jle_else.17
	movl	$0, %eax	#test/sum.ml:2:18->2:19
	ret
jle_else.17:
	movl	%eax, %ebx	#test/sum.ml:3:8->3:13
	subl	$1, %ebx	#test/sum.ml:3:8->3:13
	movl	%eax, 0(%ebp)	#test/sum.ml:3:3->3:14
	movl	%ebx, %eax
	addl	$8, %ebp	#test/sum.ml:3:3->3:14
	call	sum.7	#test/sum.ml:3:3->3:14
	subl	$8, %ebp	#test/sum.ml:3:3->3:14
	movl	0(%ebp), %ebx	#test/sum.ml:3:3->3:18
	addl	%ebx, %eax	#test/sum.ml:3:3->3:18
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
	movl	$10000, %eax	#test/sum.ml:4:16->4:21
	call	sum.7	#test/sum.ml:4:12->4:21
	call	min_caml_print_int	#test/sum.ml:4:1->4:22
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
