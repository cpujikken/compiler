.data
.balign	8
.text
foo.12:
	movl	%edi, 0(%ebp)	#test/shuffle.ml:2
	movl	%esi, 4(%ebp)	#test/shuffle.ml:2
	movl	%edx, 8(%ebp)	#test/shuffle.ml:2
	movl	%ecx, 12(%ebp)	#test/shuffle.ml:2
	movl	%ebx, 16(%ebp)	#test/shuffle.ml:2
	addl	$24, %ebp	#test/shuffle.ml:2
	call	min_caml_print_int	#test/shuffle.ml:2
	subl	$24, %ebp	#test/shuffle.ml:2
	movl	16(%ebp), %eax	#test/shuffle.ml:3
	addl	$24, %ebp	#test/shuffle.ml:3
	call	min_caml_print_int	#test/shuffle.ml:3
	subl	$24, %ebp	#test/shuffle.ml:3
	movl	12(%ebp), %eax	#test/shuffle.ml:4
	addl	$24, %ebp	#test/shuffle.ml:4
	call	min_caml_print_int	#test/shuffle.ml:4
	subl	$24, %ebp	#test/shuffle.ml:4
	movl	8(%ebp), %eax	#test/shuffle.ml:5
	addl	$24, %ebp	#test/shuffle.ml:5
	call	min_caml_print_int	#test/shuffle.ml:5
	subl	$24, %ebp	#test/shuffle.ml:5
	movl	4(%ebp), %eax	#test/shuffle.ml:6
	addl	$24, %ebp	#test/shuffle.ml:6
	call	min_caml_print_int	#test/shuffle.ml:6
	subl	$24, %ebp	#test/shuffle.ml:6
	movl	0(%ebp), %eax	#test/shuffle.ml:7
	jmp	min_caml_print_int	#test/shuffle.ml:7
bar.19:
	movl	%edi, 0(%ebp)
	movl	%ecx, %edi
	movl	%edx, %ecx
	movl	%esi, %edx
	movl	0(%ebp), %esi
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	jmp	foo.12	#test/shuffle.ml:9
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
	movl	$1, %eax	#test/shuffle.ml:10
	movl	$2, %ebx	#test/shuffle.ml:10
	movl	$3, %ecx	#test/shuffle.ml:10
	movl	$4, %edx	#test/shuffle.ml:10
	movl	$5, %esi	#test/shuffle.ml:10
	movl	$6, %edi	#test/shuffle.ml:10
	call	bar.19	#test/shuffle.ml:10
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
