.data
.balign	8
.text
f.9:
	cmpl	$0, %eax	#test/cls-bug2.ml:4:3->7:18
	jl	jge_else.26
	movl	%eax, 0(%ebp)	#test/cls-bug2.ml:5:4->5:15
	movl	%edi, 4(%ebp)	#test/cls-bug2.ml:5:4->5:15
	addl	$8, %ebp	#test/cls-bug2.ml:5:4->5:15
	call	min_caml_print_int	#test/cls-bug2.ml:5:4->5:15
	subl	$8, %ebp	#test/cls-bug2.ml:5:4->5:15
	movl	$1, %eax	#test/cls-bug2.ml:6:25->6:26
	movl	4(%ebp), %ebx	#test/cls-bug2.ml:6:12->6:28
	addl	$8, %ebp	#test/cls-bug2.ml:6:12->6:28
	call	min_caml_create_array	#test/cls-bug2.ml:6:12->6:28
	subl	$8, %ebp	#test/cls-bug2.ml:6:12->6:28
	movl	0(%eax), %edi	#test/cls-bug2.ml:6:12->6:28
	movl	0(%ebp), %eax	#test/cls-bug2.ml:7:11->7:16
	subl	$1, %eax	#test/cls-bug2.ml:7:11->7:16
	jmp	*(%edi)	#test/cls-bug2.ml:7:4->7:17
jge_else.26:
	ret	#test/cls-bug2.ml:4:17->4:19
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
	movl	min_caml_hp, %edi	#test/cls-bug2.ml:3:1->8:4
	addl	$8, min_caml_hp	#test/cls-bug2.ml:3:1->8:4
	movl	$f.9, %eax	#test/cls-bug2.ml:3:1->8:4
	movl	%eax, 0(%edi)	#test/cls-bug2.ml:3:1->8:4
	movl	$9, %eax	#test/cls-bug2.ml:8:3->8:4
	call	*(%edi)	#test/cls-bug2.ml:8:1->8:4
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
