.data
.balign	8
.text
ack.15:
	cmpl	$0, %eax	#test/ack.ml:2:3->4:30
	jg	jle_else.34
	movl	%ebx, %eax	#test/ack.ml:2:18->2:23
	addl	$1, %eax	#test/ack.ml:2:18->2:23
	ret
jle_else.34:
	cmpl	$0, %ebx	#test/ack.ml:3:3->4:30
	jg	jle_else.35
	subl	$1, %eax	#test/ack.ml:3:23->3:28
	movl	$1, %ebx	#test/ack.ml:3:30->3:31
	jmp	ack.15	#test/ack.ml:3:18->3:31
jle_else.35:
	movl	%eax, %ecx	#test/ack.ml:4:8->4:13
	subl	$1, %ecx	#test/ack.ml:4:8->4:13
	subl	$1, %ebx	#test/ack.ml:4:23->4:28
	movl	%ecx, 0(%ebp)	#test/ack.ml:4:16->4:29
	addl	$8, %ebp	#test/ack.ml:4:16->4:29
	call	ack.15	#test/ack.ml:4:16->4:29
	subl	$8, %ebp	#test/ack.ml:4:16->4:29
	movl	%eax, %ebx	#test/ack.ml:4:16->4:29
	movl	0(%ebp), %eax	#test/ack.ml:4:3->4:30
	jmp	ack.15	#test/ack.ml:4:3->4:30
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
	movl	$3, %eax	#test/ack.ml:5:16->5:17
	movl	$10, %ebx	#test/ack.ml:5:18->5:20
	call	ack.15	#test/ack.ml:5:12->5:20
	call	min_caml_print_int	#test/ack.ml:5:1->5:21
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
