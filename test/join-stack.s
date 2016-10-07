.data
.balign	8
.text
f.14:
	movl	$123, %eax	#test/join-stack.ml:1
	ret
g.16:
	movl	$456, %eax	#test/join-stack.ml:2
	ret
h.18:
	movl	$789, %eax	#test/join-stack.ml:3
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
	call	f.14	#test/join-stack.ml:5
	movl	%eax, 0(%ebp)	#test/join-stack.ml:6
	addl	$8, %ebp	#test/join-stack.ml:6
	call	g.16	#test/join-stack.ml:6
	subl	$8, %ebp	#test/join-stack.ml:6
	movl	%eax, 4(%ebp)	#test/join-stack.ml:7
	addl	$8, %ebp	#test/join-stack.ml:7
	call	h.18	#test/join-stack.ml:7
	subl	$8, %ebp	#test/join-stack.ml:7
	cmpl	$0, %eax	#test/join-stack.ml:7
	jne	je_else.35
	movl	0(%ebp), %eax	#test/join-stack.ml:7
	addl	$1, %eax	#test/join-stack.ml:7
	jmp	je_cont.36
je_else.35:
	movl	4(%ebp), %eax	#test/join-stack.ml:7
	addl	$2, %eax	#test/join-stack.ml:7
je_cont.36:
	movl	0(%ebp), %ebx	#test/join-stack.ml:7
	addl	%ebx, %eax	#test/join-stack.ml:7
	movl	4(%ebp), %ebx	#test/join-stack.ml:7
	addl	%ebx, %eax	#test/join-stack.ml:7
	addl	$8, %ebp	#test/join-stack.ml:7
	call	min_caml_print_int	#test/join-stack.ml:7
	subl	$8, %ebp	#test/join-stack.ml:7
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
