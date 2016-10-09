.data
.balign	8
.text
f.9:
	movl	$123, %eax	#test/join-stack2.ml:1:15->1:18
	ret
g.11:
	movl	$456, %eax	#test/join-stack2.ml:2:15->2:18
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
	call	f.9	#test/join-stack2.ml:4:9->4:13
	movl	%eax, 0(%ebp)	#test/join-stack2.ml:5:13->5:43
	cmpl	$0, %eax	#test/join-stack2.ml:5:13->5:43
	jg	jle_else.23
	addl	$8, %ebp	#test/join-stack2.ml:5:28->5:32
	call	g.11	#test/join-stack2.ml:5:28->5:32
	subl	$8, %ebp	#test/join-stack2.ml:5:28->5:32
	movl	0(%ebp), %ebx	#test/join-stack2.ml:5:28->5:36
	addl	%ebx, %eax	#test/join-stack2.ml:5:28->5:36
	jmp	jle_cont.24
jle_else.23:
jle_cont.24:
	movl	0(%ebp), %ebx	#test/join-stack2.ml:5:12->5:48
	addl	%ebx, %eax	#test/join-stack2.ml:5:12->5:48
	addl	$8, %ebp	#test/join-stack2.ml:5:1->5:49
	call	min_caml_print_int	#test/join-stack2.ml:5:1->5:49
	subl	$8, %ebp	#test/join-stack2.ml:5:1->5:49
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
