.data
.balign	8
.text
odd.21:
	cmpl	$0, %eax	#test/even-odd.ml:5
	jg	jle_else.36
	cmpl	$0, %eax	#test/even-odd.ml:6
	jl	jge_else.37
	movl	$456, %eax	#test/even-odd.ml:7
	ret
jge_else.37:
	addl	$1, %eax	#test/even-odd.ml:6
	jmp	even.17	#test/even-odd.ml:6
jle_else.36:
	subl	$1, %eax	#test/even-odd.ml:5
	jmp	even.17	#test/even-odd.ml:5
even.17:
	cmpl	$0, %eax	#test/even-odd.ml:8
	jg	jle_else.38
	cmpl	$0, %eax	#test/even-odd.ml:9
	jl	jge_else.39
	movl	$123, %eax	#test/even-odd.ml:10
	ret
jge_else.39:
	addl	$1, %eax	#test/even-odd.ml:9
	jmp	odd.21	#test/even-odd.ml:9
jle_else.38:
	subl	$1, %eax	#test/even-odd.ml:8
	jmp	odd.21	#test/even-odd.ml:8
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
	movl	$789, %eax	#test/even-odd.ml:11
	call	even.17	#test/even-odd.ml:11
	call	min_caml_print_int	#test/even-odd.ml:11
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
