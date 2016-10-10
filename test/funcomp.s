.data
.balign	8
.text
composed.22:
	movl	8(%edi), %ebx	#test/funcomp.ml:2:24->2:31
	movl	4(%edi), %edi	#test/funcomp.ml:2:24->2:31
	movl	%ebx, 0(%ebp)	#test/funcomp.ml:2:27->2:30
	addl	$8, %ebp	#test/funcomp.ml:2:27->2:30
	call	*(%edi)	#test/funcomp.ml:2:27->2:30
	subl	$8, %ebp	#test/funcomp.ml:2:27->2:30
	movl	0(%ebp), %edi	#test/funcomp.ml:2:24->2:31
	jmp	*(%edi)	#test/funcomp.ml:2:24->2:31
compose.7:
	movl	min_caml_hp, %ecx	#test/funcomp.ml:2:3->3:11
	addl	$16, min_caml_hp	#test/funcomp.ml:2:3->3:11
	movl	$composed.22, %edx	#test/funcomp.ml:2:3->3:11
	movl	%edx, 0(%ecx)	#test/funcomp.ml:2:3->3:11
	movl	%ebx, 8(%ecx)	#test/funcomp.ml:2:3->3:11
	movl	%eax, 4(%ecx)	#test/funcomp.ml:2:3->3:11
	movl	%ecx, %eax	#test/funcomp.ml:3:3->3:11
	ret
dbl.10:
	addl	%eax, %eax	#test/funcomp.ml:4:17->4:22
	ret
inc.12:
	addl	$1, %eax	#test/funcomp.ml:5:17->5:22
	ret
dec.14:
	subl	$1, %eax	#test/funcomp.ml:6:17->6:22
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
	movl	min_caml_hp, %eax	#test/funcomp.ml:4:1->8:18
	addl	$8, min_caml_hp	#test/funcomp.ml:4:1->8:18
	movl	$dbl.10, %ebx	#test/funcomp.ml:4:1->8:18
	movl	%ebx, 0(%eax)	#test/funcomp.ml:4:1->8:18
	movl	min_caml_hp, %ebx	#test/funcomp.ml:5:1->8:18
	addl	$8, min_caml_hp	#test/funcomp.ml:5:1->8:18
	movl	$inc.12, %ecx	#test/funcomp.ml:5:1->8:18
	movl	%ecx, 0(%ebx)	#test/funcomp.ml:5:1->8:18
	movl	min_caml_hp, %ecx	#test/funcomp.ml:6:1->8:18
	addl	$8, min_caml_hp	#test/funcomp.ml:6:1->8:18
	movl	$dec.14, %edx	#test/funcomp.ml:6:1->8:18
	movl	%edx, 0(%ecx)	#test/funcomp.ml:6:1->8:18
	movl	%ebx, 0(%ebp)	#test/funcomp.ml:7:22->7:37
	movl	%ecx, %ebx
	addl	$8, %ebp	#test/funcomp.ml:7:22->7:37
	call	compose.7	#test/funcomp.ml:7:22->7:37
	subl	$8, %ebp	#test/funcomp.ml:7:22->7:37
	movl	%eax, %ebx	#test/funcomp.ml:7:22->7:37
	movl	0(%ebp), %eax	#test/funcomp.ml:7:9->7:38
	addl	$8, %ebp	#test/funcomp.ml:7:9->7:38
	call	compose.7	#test/funcomp.ml:7:9->7:38
	subl	$8, %ebp	#test/funcomp.ml:7:9->7:38
	movl	%eax, %edi	#test/funcomp.ml:7:9->7:38
	movl	$123, %eax	#test/funcomp.ml:8:14->8:17
	addl	$8, %ebp	#test/funcomp.ml:8:12->8:17
	call	*(%edi)	#test/funcomp.ml:8:12->8:17
	subl	$8, %ebp	#test/funcomp.ml:8:12->8:17
	addl	$8, %ebp	#test/funcomp.ml:8:1->8:18
	call	min_caml_print_int	#test/funcomp.ml:8:1->8:18
	subl	$8, %ebp	#test/funcomp.ml:8:1->8:18
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
