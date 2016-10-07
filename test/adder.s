.data
.balign	8
.text
adder.11:
	movl	4(%edi), %ebx	#test/adder.ml:2
	addl	%ebx, %eax	#test/adder.ml:2
	ret
make_adder.5:
	movl	min_caml_hp, %ebx	#test/adder.ml:2
	addl	$8, min_caml_hp	#test/adder.ml:2
	movl	$adder.11, %ecx	#test/adder.ml:2
	movl	%ecx, 0(%ebx)	#test/adder.ml:2
	movl	%eax, 4(%ebx)	#test/adder.ml:2
	movl	%ebx, %eax	#test/adder.ml:3
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
	movl	$3, %eax	#test/adder.ml:4
	call	make_adder.5	#test/adder.ml:4
	movl	%eax, %edi	#test/adder.ml:4
	movl	$7, %eax	#test/adder.ml:4
	call	*(%edi)	#test/adder.ml:4
	call	min_caml_print_int	#test/adder.ml:4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
