.data
.balign	8
.text
adder.11:
	movl	4(%edi), %ebx	#test/adder.ml:2:21->2:26
	addl	%ebx, %eax	#test/adder.ml:2:21->2:26
	ret
make_adder.5:
	movl	min_caml_hp, %ebx	#test/adder.ml:2:3->3:8
	addl	$8, min_caml_hp	#test/adder.ml:2:3->3:8
	movl	$adder.11, %ecx	#test/adder.ml:2:3->3:8
	movl	%ecx, 0(%ebx)	#test/adder.ml:2:3->3:8
	movl	%eax, 4(%ebx)	#test/adder.ml:2:3->3:8
	movl	%ebx, %eax	#test/adder.ml:3:3->3:8
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
	movl	$3, %eax	#test/adder.ml:4:24->4:25
	call	make_adder.5	#test/adder.ml:4:13->4:25
	movl	%eax, %edi	#test/adder.ml:4:13->4:25
	movl	$7, %eax	#test/adder.ml:4:27->4:28
	call	*(%edi)	#test/adder.ml:4:12->4:28
	call	min_caml_print_int	#test/adder.ml:4:1->4:29
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
