.data
.balign	8
.text
g.52:
	movl	40(%edi), %ebx	#test/cls-reg-bug.ml:5
	movl	36(%edi), %ecx	#test/cls-reg-bug.ml:5
	movl	32(%edi), %edx	#test/cls-reg-bug.ml:5
	movl	28(%edi), %esi	#test/cls-reg-bug.ml:5
	movl	%eax, 0(%ebp)	#test/cls-reg-bug.ml:5
	movl	24(%edi), %eax	#test/cls-reg-bug.ml:5
	movl	%ebx, 4(%ebp)	#test/cls-reg-bug.ml:5
	movl	20(%edi), %ebx	#test/cls-reg-bug.ml:5
	movl	%ecx, 8(%ebp)	#test/cls-reg-bug.ml:5
	movl	16(%edi), %ecx	#test/cls-reg-bug.ml:5
	movl	%edx, 12(%ebp)	#test/cls-reg-bug.ml:5
	movl	12(%edi), %edx	#test/cls-reg-bug.ml:5
	movl	%esi, 16(%ebp)	#test/cls-reg-bug.ml:5
	movl	8(%edi), %esi	#test/cls-reg-bug.ml:5
	movl	%edi, 20(%ebp)	#test/cls-reg-bug.ml:5
	movl	4(%edi), %edi	#test/cls-reg-bug.ml:5
	addl	%edx, %edi	#test/cls-reg-bug.ml:5
	addl	%ecx, %edi	#test/cls-reg-bug.ml:5
	addl	%ebx, %edi	#test/cls-reg-bug.ml:5
	addl	%eax, %edi	#test/cls-reg-bug.ml:5
	movl	16(%ebp), %eax	#test/cls-reg-bug.ml:5
	addl	%eax, %edi	#test/cls-reg-bug.ml:5
	movl	12(%ebp), %eax	#test/cls-reg-bug.ml:5
	addl	%eax, %edi	#test/cls-reg-bug.ml:5
	movl	8(%ebp), %eax	#test/cls-reg-bug.ml:5
	addl	%eax, %edi	#test/cls-reg-bug.ml:5
	movl	4(%ebp), %eax	#test/cls-reg-bug.ml:5
	addl	%eax, %edi	#test/cls-reg-bug.ml:5
	movl	%edi, %eax	#test/cls-reg-bug.ml:5
	addl	%esi, %eax	#test/cls-reg-bug.ml:5
	movl	0(%ebp), %ebx	#test/cls-reg-bug.ml:6
	cmpl	$0, %ebx	#test/cls-reg-bug.ml:6
	jg	jle_else.107
	movl	%ebx, %eax	#test/cls-reg-bug.ml:6
	negl	%eax	#test/cls-reg-bug.ml:6
	movl	20(%ebp), %edi	#test/cls-reg-bug.ml:6
	jmp	*(%edi)	#test/cls-reg-bug.ml:6
jle_else.107:
	ret
h.26:
	movl	36(%eax), %ebx	#test/cls-reg-bug.ml:3
	movl	32(%eax), %ecx	#test/cls-reg-bug.ml:3
	movl	28(%eax), %edx	#test/cls-reg-bug.ml:3
	movl	24(%eax), %esi	#test/cls-reg-bug.ml:3
	movl	20(%eax), %edi	#test/cls-reg-bug.ml:3
	movl	%ebx, 0(%ebp)	#test/cls-reg-bug.ml:3
	movl	16(%eax), %ebx	#test/cls-reg-bug.ml:3
	movl	%ebx, 4(%ebp)	#test/cls-reg-bug.ml:3
	movl	12(%eax), %ebx	#test/cls-reg-bug.ml:3
	movl	%ebx, 8(%ebp)	#test/cls-reg-bug.ml:3
	movl	8(%eax), %ebx	#test/cls-reg-bug.ml:3
	movl	%ebx, 12(%ebp)	#test/cls-reg-bug.ml:3
	movl	4(%eax), %ebx	#test/cls-reg-bug.ml:3
	movl	0(%eax), %eax	#test/cls-reg-bug.ml:3
	movl	%eax, 16(%ebp)	#test/cls-reg-bug.ml:4
	movl	min_caml_hp, %eax	#test/cls-reg-bug.ml:4
	addl	$48, min_caml_hp	#test/cls-reg-bug.ml:4
	movl	%ebx, 20(%ebp)	#test/cls-reg-bug.ml:4
	movl	$g.52, %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 0(%eax)	#test/cls-reg-bug.ml:4
	movl	%ecx, 40(%eax)	#test/cls-reg-bug.ml:4
	movl	%edx, 36(%eax)	#test/cls-reg-bug.ml:4
	movl	%esi, 32(%eax)	#test/cls-reg-bug.ml:4
	movl	%edi, 28(%eax)	#test/cls-reg-bug.ml:4
	movl	4(%ebp), %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 24(%eax)	#test/cls-reg-bug.ml:4
	movl	8(%ebp), %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 20(%eax)	#test/cls-reg-bug.ml:4
	movl	12(%ebp), %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 16(%eax)	#test/cls-reg-bug.ml:4
	movl	20(%ebp), %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 12(%eax)	#test/cls-reg-bug.ml:4
	movl	0(%ebp), %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 8(%eax)	#test/cls-reg-bug.ml:4
	movl	16(%ebp), %ebx	#test/cls-reg-bug.ml:4
	movl	%ebx, 4(%eax)	#test/cls-reg-bug.ml:4
	movl	$1, %ebx	#test/cls-reg-bug.ml:7
	movl	%eax, %edi
	movl	%ebx, %eax
	jmp	*(%edi)	#test/cls-reg-bug.ml:7
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
	movl	$1, %eax	#test/cls-reg-bug.ml:8
	movl	$2, %ebx	#test/cls-reg-bug.ml:8
	movl	$3, %ecx	#test/cls-reg-bug.ml:8
	movl	$4, %edx	#test/cls-reg-bug.ml:8
	movl	$5, %esi	#test/cls-reg-bug.ml:8
	movl	$6, %edi	#test/cls-reg-bug.ml:8
	movl	%eax, 0(%ebp)	#test/cls-reg-bug.ml:8
	movl	$7, %eax	#test/cls-reg-bug.ml:8
	movl	%ebx, 4(%ebp)	#test/cls-reg-bug.ml:8
	movl	$8, %ebx	#test/cls-reg-bug.ml:8
	movl	%ecx, 8(%ebp)	#test/cls-reg-bug.ml:8
	movl	$9, %ecx	#test/cls-reg-bug.ml:8
	movl	%edx, 12(%ebp)	#test/cls-reg-bug.ml:8
	movl	$10, %edx	#test/cls-reg-bug.ml:8
	movl	%esi, 16(%ebp)	#test/cls-reg-bug.ml:8
	movl	min_caml_hp, %esi	#test/cls-reg-bug.ml:8
	addl	$40, min_caml_hp	#test/cls-reg-bug.ml:8
	movl	%edx, 36(%esi)	#test/cls-reg-bug.ml:8
	movl	%ecx, 32(%esi)	#test/cls-reg-bug.ml:8
	movl	%ebx, 28(%esi)	#test/cls-reg-bug.ml:8
	movl	%eax, 24(%esi)	#test/cls-reg-bug.ml:8
	movl	%edi, 20(%esi)	#test/cls-reg-bug.ml:8
	movl	16(%ebp), %eax	#test/cls-reg-bug.ml:8
	movl	%eax, 16(%esi)	#test/cls-reg-bug.ml:8
	movl	12(%ebp), %eax	#test/cls-reg-bug.ml:8
	movl	%eax, 12(%esi)	#test/cls-reg-bug.ml:8
	movl	8(%ebp), %eax	#test/cls-reg-bug.ml:8
	movl	%eax, 8(%esi)	#test/cls-reg-bug.ml:8
	movl	4(%ebp), %eax	#test/cls-reg-bug.ml:8
	movl	%eax, 4(%esi)	#test/cls-reg-bug.ml:8
	movl	0(%ebp), %eax	#test/cls-reg-bug.ml:8
	movl	%eax, 0(%esi)	#test/cls-reg-bug.ml:8
	movl	%esi, %eax	#test/cls-reg-bug.ml:8
	addl	$24, %ebp	#test/cls-reg-bug.ml:8
	call	h.26	#test/cls-reg-bug.ml:8
	subl	$24, %ebp	#test/cls-reg-bug.ml:8
	addl	$24, %ebp	#test/cls-reg-bug.ml:8
	call	min_caml_print_int	#test/cls-reg-bug.ml:8
	subl	$24, %ebp	#test/cls-reg-bug.ml:8
	addl	$24, %ebp	#test/cls-reg-bug.ml:9
	call	min_caml_print_newline	#test/cls-reg-bug.ml:9
	subl	$24, %ebp	#test/cls-reg-bug.ml:9
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
