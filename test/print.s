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
	movl	$123, %eax	#test/print.ml:1:11->1:14
	call	min_caml_print_int	#test/print.ml:1:1->1:14
	movl	$-456, %eax	#test/print.ml:2:12->2:16
	call	min_caml_print_int	#test/print.ml:2:1->2:17
	movl	$789, %eax	#test/print.ml:3:12->3:17
	call	min_caml_print_int	#test/print.ml:3:1->3:18
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
