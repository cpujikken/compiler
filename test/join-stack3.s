.data
.balign	8
.text
f.10:
	movl	$123, %eax	#test/join-stack3.ml:1:15->1:18
	ret
g.12:
	movl	$456, %eax	#test/join-stack3.ml:2:15->2:18
	ret
h.14:
	movl	$789, %eax	#test/join-stack3.ml:3:15->3:18
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
	call	f.10	#test/join-stack3.ml:5:9->5:13
	movl	%eax, 0(%ebp)	#test/join-stack3.ml:6:13->6:42
	cmpl	$0, %eax	#test/join-stack3.ml:6:13->6:42
	jg	jle_else.27
	addl	$8, %ebp	#test/join-stack3.ml:6:28->6:32
	call	g.12	#test/join-stack3.ml:6:28->6:32
	subl	$8, %ebp	#test/join-stack3.ml:6:28->6:32
	jmp	jle_cont.28
jle_else.27:
	addl	$8, %ebp	#test/join-stack3.ml:6:38->6:42
	call	h.14	#test/join-stack3.ml:6:38->6:42
	subl	$8, %ebp	#test/join-stack3.ml:6:38->6:42
jle_cont.28:
	movl	0(%ebp), %ebx	#test/join-stack3.ml:6:12->6:47
	addl	%ebx, %eax	#test/join-stack3.ml:6:12->6:47
	addl	$8, %ebp	#test/join-stack3.ml:6:1->6:48
	call	min_caml_print_int	#test/join-stack3.ml:6:1->6:48
	subl	$8, %ebp	#test/join-stack3.ml:6:1->6:48
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
