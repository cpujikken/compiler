.data
.balign	8
.text
f.6:
	addl	$123, %eax	#test/cls-bug.ml:3
	ret
g.8:
	movl	4(%edi), %eax	#test/cls-bug.ml:4
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
	movl	min_caml_hp, %eax	#test/cls-bug.ml:3
	addl	$8, min_caml_hp	#test/cls-bug.ml:3
	movl	$f.6, %ebx	#test/cls-bug.ml:3
	movl	%ebx, 0(%eax)	#test/cls-bug.ml:3
	movl	min_caml_hp, %edi	#test/cls-bug.ml:4
	addl	$8, min_caml_hp	#test/cls-bug.ml:4
	movl	$g.8, %ebx	#test/cls-bug.ml:4
	movl	%ebx, 0(%edi)	#test/cls-bug.ml:4
	movl	%eax, 4(%edi)	#test/cls-bug.ml:4
	movl	$456, %eax	#test/cls-bug.ml:5
	call	*(%edi)	#test/cls-bug.ml:5
	movl	%eax, %edi	#test/cls-bug.ml:5
	movl	$789, %eax	#test/cls-bug.ml:5
	call	*(%edi)	#test/cls-bug.ml:5
	call	min_caml_print_int	#test/cls-bug.ml:5
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
