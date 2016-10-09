.data
.balign	8
.text
f.13:
	movl	$12345, %eax	#test/non-tail-if2.ml:1:15->1:20
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
	movl	$10, %eax	#test/non-tail-if2.ml:2:22->2:24
	movl	$3, %ebx	#test/non-tail-if2.ml:2:25->2:26
	call	min_caml_create_array	#test/non-tail-if2.ml:2:9->2:26
	movl	0(%eax), %ebx	#test/non-tail-if2.ml:2:9->2:26
	cmpl	$3, %ebx	#test/non-tail-if2.ml:4:12->4:53
	jne	je_else.30
	movl	%eax, 0(%ebp)	#test/non-tail-if2.ml:4:30->4:34
	addl	$8, %ebp	#test/non-tail-if2.ml:4:30->4:34
	call	f.13	#test/non-tail-if2.ml:4:30->4:34
	subl	$8, %ebp	#test/non-tail-if2.ml:4:30->4:34
	movl	0(%ebp), %ebx	#test/non-tail-if2.ml:2:9->2:26
	movl	4(%ebx), %ebx	#test/non-tail-if2.ml:2:9->2:26
	addl	%ebx, %eax	#test/non-tail-if2.ml:4:30->4:42
	addl	$67890, %eax	#test/non-tail-if2.ml:4:30->4:46
	jmp	je_cont.31
je_else.30:
	movl	$7, %eax	#test/non-tail-if2.ml:4:52->4:53
je_cont.31:
	addl	$8, %ebp	#test/non-tail-if2.ml:4:1->4:54
	call	min_caml_print_int	#test/non-tail-if2.ml:4:1->4:54
	subl	$8, %ebp	#test/non-tail-if2.ml:4:1->4:54
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
