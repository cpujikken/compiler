.data
.balign	8
.text
sum.8:
	cmpl	$0, %ebx	#test/sum-tail.ml:2:3->3:24
	jg	jle_else.19
	ret
jle_else.19:
	addl	%ebx, %eax	#test/sum-tail.ml:3:8->3:15
	subl	$1, %ebx	#test/sum-tail.ml:3:18->3:23
	jmp	sum.8	#test/sum-tail.ml:3:3->3:24
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
	movl	$0, %eax	#test/sum-tail.ml:4:16->4:17
	movl	$10000, %ebx	#test/sum-tail.ml:4:18->4:23
	call	sum.8	#test/sum-tail.ml:4:12->4:23
	call	min_caml_print_int	#test/sum-tail.ml:4:1->4:24
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
