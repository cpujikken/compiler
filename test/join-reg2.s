.data
.balign	8
.text
f.12:
	movl	$123, %eax	#test/join-reg2.ml:1:15->1:18
	ret
g.14:
	movl	$456, %eax	#test/join-reg2.ml:2:15->2:18
	ret
h.16:
	movl	$789, %eax	#test/join-reg2.ml:3:15->3:18
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
	call	f.12	#test/join-reg2.ml:5:9->5:13
	cmpl	$0, %eax	#test/join-reg2.ml:6:13->6:50
	jg	jle_else.30
	movl	%eax, 0(%ebp)	#test/join-reg2.ml:6:28->6:32
	addl	$8, %ebp	#test/join-reg2.ml:6:28->6:32
	call	g.14	#test/join-reg2.ml:6:28->6:32
	subl	$8, %ebp	#test/join-reg2.ml:6:28->6:32
	movl	0(%ebp), %ebx	#test/join-reg2.ml:6:28->6:36
	addl	%ebx, %eax	#test/join-reg2.ml:6:28->6:36
	jmp	jle_cont.31
jle_else.30:
	movl	%eax, 0(%ebp)	#test/join-reg2.ml:6:42->6:46
	addl	$8, %ebp	#test/join-reg2.ml:6:42->6:46
	call	h.16	#test/join-reg2.ml:6:42->6:46
	subl	$8, %ebp	#test/join-reg2.ml:6:42->6:46
	movl	0(%ebp), %ebx	#test/join-reg2.ml:6:42->6:50
	subl	%ebx, %eax	#test/join-reg2.ml:6:42->6:50
jle_cont.31:
	addl	%ebx, %eax	#test/join-reg2.ml:6:12->6:55
	addl	$8, %ebp	#test/join-reg2.ml:6:1->6:56
	call	min_caml_print_int	#test/join-reg2.ml:6:1->6:56
	subl	$8, %ebp	#test/join-reg2.ml:6:1->6:56
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
