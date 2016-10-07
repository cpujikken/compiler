.data
.balign	8
.text
ack.15:
	cmpl	$0, %eax	#test/ack.ml:2
	jg	jle_else.34
	movl	%ebx, %eax	#test/ack.ml:2
	addl	$1, %eax	#test/ack.ml:2
	ret
jle_else.34:
	cmpl	$0, %ebx	#test/ack.ml:3
	jg	jle_else.35
	subl	$1, %eax	#test/ack.ml:3
	movl	$1, %ebx	#test/ack.ml:3
	jmp	ack.15	#test/ack.ml:3
jle_else.35:
	movl	%eax, %ecx	#test/ack.ml:4
	subl	$1, %ecx	#test/ack.ml:4
	subl	$1, %ebx	#test/ack.ml:4
	movl	%ecx, 0(%ebp)	#test/ack.ml:4
	addl	$8, %ebp	#test/ack.ml:4
	call	ack.15	#test/ack.ml:4
	subl	$8, %ebp	#test/ack.ml:4
	movl	%eax, %ebx	#test/ack.ml:4
	movl	0(%ebp), %eax	#test/ack.ml:4
	jmp	ack.15	#test/ack.ml:4
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
	movl	$3, %eax	#test/ack.ml:5
	movl	$10, %ebx	#test/ack.ml:5
	call	ack.15	#test/ack.ml:5
	call	min_caml_print_int	#test/ack.ml:5
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
