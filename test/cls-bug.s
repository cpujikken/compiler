.data
.balign	8
.text
f.6:
	addl	$123, %eax	#test/cls-bug.ml:3:15->3:22
	ret
g.8:
	movl	4(%edi), %eax	#test/cls-bug.ml:4:15->4:16
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
	movl	min_caml_hp, %eax	#test/cls-bug.ml:3:1->5:24
	addl	$8, min_caml_hp	#test/cls-bug.ml:3:1->5:24
	movl	$f.6, %ebx	#test/cls-bug.ml:3:1->5:24
	movl	%ebx, 0(%eax)	#test/cls-bug.ml:3:1->5:24
	movl	min_caml_hp, %edi	#test/cls-bug.ml:4:1->5:24
	addl	$8, min_caml_hp	#test/cls-bug.ml:4:1->5:24
	movl	$g.8, %ebx	#test/cls-bug.ml:4:1->5:24
	movl	%ebx, 0(%edi)	#test/cls-bug.ml:4:1->5:24
	movl	%eax, 4(%edi)	#test/cls-bug.ml:4:1->5:24
	movl	$456, %eax	#test/cls-bug.ml:5:15->5:18
	call	*(%edi)	#test/cls-bug.ml:5:13->5:18
	movl	%eax, %edi	#test/cls-bug.ml:5:13->5:18
	movl	$789, %eax	#test/cls-bug.ml:5:20->5:23
	call	*(%edi)	#test/cls-bug.ml:5:12->5:23
	call	min_caml_print_int	#test/cls-bug.ml:5:1->5:24
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
