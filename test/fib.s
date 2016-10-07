.data
.balign	8
.text
fib.10:
	cmpl	$1, %eax	#test/fib.ml:2
	jg	jle_else.24
	ret
jle_else.24:
	movl	%eax, %ebx	#test/fib.ml:3
	subl	$1, %ebx	#test/fib.ml:3
	movl	%eax, 0(%ebp)	#test/fib.ml:3
	movl	%ebx, %eax
	addl	$8, %ebp	#test/fib.ml:3
	call	fib.10	#test/fib.ml:3
	subl	$8, %ebp	#test/fib.ml:3
	movl	0(%ebp), %ebx	#test/fib.ml:3
	subl	$2, %ebx	#test/fib.ml:3
	movl	%eax, 4(%ebp)	#test/fib.ml:3
	movl	%ebx, %eax
	addl	$8, %ebp	#test/fib.ml:3
	call	fib.10	#test/fib.ml:3
	subl	$8, %ebp	#test/fib.ml:3
	movl	4(%ebp), %ebx	#test/fib.ml:3
	addl	%ebx, %eax	#test/fib.ml:3
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
	movl	$30, %eax	#test/fib.ml:4
	call	fib.10	#test/fib.ml:4
	call	min_caml_print_int	#test/fib.ml:4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
