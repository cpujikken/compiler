.data
.balign	8
.text
f.26:
	movl	$12345, %eax	#test/spill2.ml:2
	ret
g.28:
	addl	$1, %eax	#test/spill2.ml:3
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
	movl	$10, %eax	#test/spill2.ml:4
	movl	$1, %ebx	#test/spill2.ml:4
	call	min_caml_create_array	#test/spill2.ml:4
	movl	%eax, 0(%ebp)	#test/spill2.ml:5
	addl	$8, %ebp	#test/spill2.ml:5
	call	f.26	#test/spill2.ml:5
	subl	$8, %ebp	#test/spill2.ml:5
	movl	$67890, %ebx	#test/spill2.ml:6
	movl	0(%ebp), %ecx	#test/spill2.ml:7
	movl	0(%ecx), %edx	#test/spill2.ml:7
	movl	%edx, %esi	#test/spill2.ml:8
	addl	%edx, %esi	#test/spill2.ml:8
	movl	%esi, %edi	#test/spill2.ml:9
	addl	%esi, %edi	#test/spill2.ml:9
	movl	%eax, 4(%ebp)	#test/spill2.ml:10
	movl	%edi, %eax	#test/spill2.ml:10
	addl	%edi, %eax	#test/spill2.ml:10
	movl	%eax, 8(%ebp)	#test/spill2.ml:11
	addl	%eax, %eax	#test/spill2.ml:11
	movl	%eax, 12(%ebp)	#test/spill2.ml:12
	addl	%eax, %eax	#test/spill2.ml:12
	movl	%eax, 16(%ebp)	#test/spill2.ml:13
	addl	%eax, %eax	#test/spill2.ml:13
	movl	%eax, 20(%ebp)	#test/spill2.ml:14
	addl	%eax, %eax	#test/spill2.ml:14
	movl	%eax, 24(%ebp)	#test/spill2.ml:15
	addl	%eax, %eax	#test/spill2.ml:15
	movl	%eax, 28(%ebp)	#test/spill2.ml:16
	addl	%eax, %eax	#test/spill2.ml:16
	movl	%eax, 32(%ebp)	#test/spill2.ml:17
	addl	%eax, %eax	#test/spill2.ml:17
	movl	%eax, 36(%ebp)	#test/spill2.ml:18
	addl	%eax, %eax	#test/spill2.ml:18
	movl	%eax, 40(%ebp)	#test/spill2.ml:19
	addl	%eax, %eax	#test/spill2.ml:19
	movl	%eax, 44(%ebp)	#test/spill2.ml:20
	addl	%eax, %eax	#test/spill2.ml:20
	movl	%eax, 48(%ebp)	#test/spill2.ml:21
	addl	%eax, %eax	#test/spill2.ml:21
	movl	%eax, 52(%ebp)	#test/spill2.ml:22
	addl	%eax, %eax	#test/spill2.ml:22
	movl	4(%ecx), %ecx	#test/spill2.ml:24
	cmpl	$0, %ecx	#test/spill2.ml:24
	jne	je_else.88
	movl	%ebx, %eax
	addl	$56, %ebp	#test/spill2.ml:24
	call	g.28	#test/spill2.ml:24
	subl	$56, %ebp	#test/spill2.ml:24
	jmp	je_cont.89
je_else.88:
	addl	%esi, %edx	#test/spill2.ml:25
	addl	%edi, %edx	#test/spill2.ml:25
	movl	8(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	12(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	16(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	20(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	24(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	28(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	32(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	36(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	40(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	44(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	48(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	movl	52(%ebp), %ebx	#test/spill2.ml:25
	addl	%ebx, %edx	#test/spill2.ml:25
	addl	%eax, %edx	#test/spill2.ml:25
	movl	4(%ebp), %eax	#test/spill2.ml:25
	addl	%edx, %eax	#test/spill2.ml:25
je_cont.89:
	addl	$56, %ebp	#test/spill2.ml:23
	call	min_caml_print_int	#test/spill2.ml:23
	subl	$56, %ebp	#test/spill2.ml:23
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
