.data
.balign	8
.text
f.7:
	movl	$3, %eax	#example.ml:5:15->5:16
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
	call	f.7	#example.ml:11:10->11:14
	call	f.7	#example.ml:13:10->13:14
	movl	$6, %eax	#example.ml:15:1->15:6
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
