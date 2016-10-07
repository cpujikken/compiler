.data
.balign	8
.text
f.9:
	cmpl	$0, %eax	#test/cls-bug2.ml:4
	jl	jge_else.26
	movl	%eax, 0(%ebp)	#test/cls-bug2.ml:5
	movl	%edi, 4(%ebp)	#test/cls-bug2.ml:5
	addl	$8, %ebp	#test/cls-bug2.ml:5
	call	min_caml_print_int	#test/cls-bug2.ml:5
	subl	$8, %ebp	#test/cls-bug2.ml:5
	movl	$1, %eax	#test/cls-bug2.ml:6
	movl	4(%ebp), %ebx	#test/cls-bug2.ml:6
	addl	$8, %ebp	#test/cls-bug2.ml:6
	call	min_caml_create_array	#test/cls-bug2.ml:6
	subl	$8, %ebp	#test/cls-bug2.ml:6
	movl	0(%eax), %edi	#test/cls-bug2.ml:7
	movl	0(%ebp), %eax	#test/cls-bug2.ml:7
	subl	$1, %eax	#test/cls-bug2.ml:7
	jmp	*(%edi)	#test/cls-bug2.ml:7
jge_else.26:
	ret	#test/cls-bug2.ml:4
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
	movl	min_caml_hp, %edi	#test/cls-bug2.ml:3
	addl	$8, min_caml_hp	#test/cls-bug2.ml:3
	movl	$f.9, %eax	#test/cls-bug2.ml:3
	movl	%eax, 0(%edi)	#test/cls-bug2.ml:3
	movl	$9, %eax	#test/cls-bug2.ml:8
	call	*(%edi)	#test/cls-bug2.ml:8
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
