.data
.balign	8
.text
f.14:
	movl	$123, %eax	#test/join-stack.ml:1:15->1:18
	ret
g.16:
	movl	$456, %eax	#test/join-stack.ml:2:15->2:18
	ret
h.18:
	movl	$789, %eax	#test/join-stack.ml:3:15->3:18
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
	call	f.14	#test/join-stack.ml:5:9->5:13
	movl	%eax, 0(%ebp)	#test/join-stack.ml:6:9->6:13
	addl	$8, %ebp	#test/join-stack.ml:6:9->6:13
	call	g.16	#test/join-stack.ml:6:9->6:13
	subl	$8, %ebp	#test/join-stack.ml:6:9->6:13
	movl	%eax, 4(%ebp)	#test/join-stack.ml:7:16->7:20
	addl	$8, %ebp	#test/join-stack.ml:7:16->7:20
	call	h.18	#test/join-stack.ml:7:16->7:20
	subl	$8, %ebp	#test/join-stack.ml:7:16->7:20
	cmpl	$0, %eax	#test/join-stack.ml:7:13->7:46
	jne	je_else.35
	movl	0(%ebp), %eax	#test/join-stack.ml:7:30->7:35
	addl	$1, %eax	#test/join-stack.ml:7:30->7:35
	jmp	je_cont.36
je_else.35:
	movl	4(%ebp), %eax	#test/join-stack.ml:7:41->7:46
	addl	$2, %eax	#test/join-stack.ml:7:41->7:46
je_cont.36:
	movl	0(%ebp), %ebx	#test/join-stack.ml:7:12->7:51
	addl	%ebx, %eax	#test/join-stack.ml:7:12->7:51
	movl	4(%ebp), %ebx	#test/join-stack.ml:7:12->7:55
	addl	%ebx, %eax	#test/join-stack.ml:7:12->7:55
	addl	$8, %ebp	#test/join-stack.ml:7:1->7:56
	call	min_caml_print_int	#test/join-stack.ml:7:1->7:56
	subl	$8, %ebp	#test/join-stack.ml:7:1->7:56
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
