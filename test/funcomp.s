.data
.balign	8
.text
composed.22:
	movl	8(%edi), %ebx	#test/funcomp.ml:2
	movl	4(%edi), %edi	#test/funcomp.ml:2
	movl	%ebx, 0(%ebp)	#test/funcomp.ml:2
	addl	$8, %ebp	#test/funcomp.ml:2
	call	*(%edi)	#test/funcomp.ml:2
	subl	$8, %ebp	#test/funcomp.ml:2
	movl	0(%ebp), %edi	#test/funcomp.ml:2
	jmp	*(%edi)	#test/funcomp.ml:2
compose.7:
	movl	min_caml_hp, %ecx	#test/funcomp.ml:2
	addl	$16, min_caml_hp	#test/funcomp.ml:2
	movl	$composed.22, %edx	#test/funcomp.ml:2
	movl	%edx, 0(%ecx)	#test/funcomp.ml:2
	movl	%ebx, 8(%ecx)	#test/funcomp.ml:2
	movl	%eax, 4(%ecx)	#test/funcomp.ml:2
	movl	%ecx, %eax	#test/funcomp.ml:3
	ret
dbl.10:
	addl	%eax, %eax	#test/funcomp.ml:4
	ret
inc.12:
	addl	$1, %eax	#test/funcomp.ml:5
	ret
dec.14:
	subl	$1, %eax	#test/funcomp.ml:6
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
	movl	min_caml_hp, %eax	#test/funcomp.ml:4
	addl	$8, min_caml_hp	#test/funcomp.ml:4
	movl	$dbl.10, %ebx	#test/funcomp.ml:4
	movl	%ebx, 0(%eax)	#test/funcomp.ml:4
	movl	min_caml_hp, %ebx	#test/funcomp.ml:5
	addl	$8, min_caml_hp	#test/funcomp.ml:5
	movl	$inc.12, %ecx	#test/funcomp.ml:5
	movl	%ecx, 0(%ebx)	#test/funcomp.ml:5
	movl	min_caml_hp, %ecx	#test/funcomp.ml:6
	addl	$8, min_caml_hp	#test/funcomp.ml:6
	movl	$dec.14, %edx	#test/funcomp.ml:6
	movl	%edx, 0(%ecx)	#test/funcomp.ml:6
	movl	%ebx, 0(%ebp)	#test/funcomp.ml:7
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/funcomp.ml:7
	call	compose.7	#test/funcomp.ml:7
	subl	$8, %ebp	#test/funcomp.ml:7
	movl	%eax, %ebx	#test/funcomp.ml:7
	movl	0(%ebp), %eax	#test/funcomp.ml:7
	addl	$8, %ebp	#test/funcomp.ml:7
	call	compose.7	#test/funcomp.ml:7
	subl	$8, %ebp	#test/funcomp.ml:7
	movl	%eax, %edi	#test/funcomp.ml:7
	movl	$123, %eax	#test/funcomp.ml:8
	addl	$8, %ebp	#test/funcomp.ml:8
	call	*(%edi)	#test/funcomp.ml:8
	subl	$8, %ebp	#test/funcomp.ml:8
	addl	$8, %ebp	#test/funcomp.ml:8
	call	min_caml_print_int	#test/funcomp.ml:8
	subl	$8, %ebp	#test/funcomp.ml:8
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
