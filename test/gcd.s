.data
.balign	8
.text
gcd.7:
	cmpl	$0, %eax	#test/gcd.ml:2:3->4:16
	jne	je_else.17
	movl	%ebx, %eax	#test/gcd.ml:2:17->2:18
	ret
je_else.17:
	cmpl	%ebx, %eax	#test/gcd.ml:3:3->4:16
	jg	jle_else.18
	subl	%eax, %ebx	#test/gcd.ml:3:25->3:30
	jmp	gcd.7	#test/gcd.ml:3:18->3:31
jle_else.18:
	subl	%ebx, %eax	#test/gcd.ml:4:10->4:15
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	jmp	gcd.7	#test/gcd.ml:4:3->4:16
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
	movl	$21600, %eax	#test/gcd.ml:5:16->5:21
	movl	$337500, %ebx	#test/gcd.ml:5:22->5:28
	call	gcd.7	#test/gcd.ml:5:12->5:28
	call	min_caml_print_int	#test/gcd.ml:5:1->5:29
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
