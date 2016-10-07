.data
.balign	8
.text
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
	movl	$123, %eax	#test/print.ml:1
	call	min_caml_print_int	#test/print.ml:1
	movl	$-456, %eax	#test/print.ml:2
	call	min_caml_print_int	#test/print.ml:2
	movl	$789, %eax	#test/print.ml:3
	call	min_caml_print_int	#test/print.ml:3
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
