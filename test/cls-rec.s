.data
.balign	8
.text
f.8:
	movl	4(%edi), %ebx	#test/cls-rec.ml:4:3->5:16
	cmpl	$0, %eax	#test/cls-rec.ml:4:3->5:16
	jne	je_else.21
	movl	$0, %eax	#test/cls-rec.ml:4:17->4:18
	ret
je_else.21:
	subl	$1, %eax	#test/cls-rec.ml:5:10->5:15
	movl	%ebx, 0(%ebp)	#test/cls-rec.ml:5:7->5:16
	addl	$8, %ebp	#test/cls-rec.ml:5:7->5:16
	call	*(%edi)	#test/cls-rec.ml:5:7->5:16
	subl	$8, %ebp	#test/cls-rec.ml:5:7->5:16
	movl	0(%ebp), %ebx	#test/cls-rec.ml:5:3->5:16
	addl	%ebx, %eax	#test/cls-rec.ml:5:3->5:16
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
	movl	$10, %eax	#test/cls-rec.ml:2:9->2:11
	movl	min_caml_hp, %edi	#test/cls-rec.ml:3:1->6:18
	addl	$8, min_caml_hp	#test/cls-rec.ml:3:1->6:18
	movl	$f.8, %ebx	#test/cls-rec.ml:3:1->6:18
	movl	%ebx, 0(%edi)	#test/cls-rec.ml:3:1->6:18
	movl	%eax, 4(%edi)	#test/cls-rec.ml:3:1->6:18
	movl	$123, %eax	#test/cls-rec.ml:6:14->6:17
	call	*(%edi)	#test/cls-rec.ml:6:12->6:17
	call	min_caml_print_int	#test/cls-rec.ml:6:1->6:18
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
