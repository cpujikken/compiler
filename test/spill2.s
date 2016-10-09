.data
.balign	8
.text
f.26:
	movl	$12345, %eax	#test/spill2.ml:2:15->2:20
	ret
g.28:
	addl	$1, %eax	#test/spill2.ml:3:15->3:20
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
	movl	$10, %eax	#test/spill2.ml:4:22->4:24
	movl	$1, %ebx	#test/spill2.ml:4:25->4:26
	call	min_caml_create_array	#test/spill2.ml:4:9->4:26
	movl	%eax, 0(%ebp)	#test/spill2.ml:5:9->5:13
	addl	$8, %ebp	#test/spill2.ml:5:9->5:13
	call	f.26	#test/spill2.ml:5:9->5:13
	subl	$8, %ebp	#test/spill2.ml:5:9->5:13
	movl	$67890, %ebx	#test/spill2.ml:6:9->6:14
	movl	0(%ebp), %ecx	#test/spill2.ml:4:9->4:26
	movl	0(%ecx), %edx	#test/spill2.ml:4:9->4:26
	movl	%edx, %esi	#test/spill2.ml:8:10->8:17
	addl	%edx, %esi	#test/spill2.ml:8:10->8:17
	movl	%esi, %edi	#test/spill2.ml:9:10->9:17
	addl	%esi, %edi	#test/spill2.ml:9:10->9:17
	movl	%eax, 4(%ebp)	#test/spill2.ml:10:10->10:17
	movl	%edi, %eax	#test/spill2.ml:10:10->10:17
	addl	%edi, %eax	#test/spill2.ml:10:10->10:17
	movl	%eax, 8(%ebp)	#test/spill2.ml:11:10->11:17
	addl	%eax, %eax	#test/spill2.ml:11:10->11:17
	movl	%eax, 12(%ebp)	#test/spill2.ml:12:10->12:17
	addl	%eax, %eax	#test/spill2.ml:12:10->12:17
	movl	%eax, 16(%ebp)	#test/spill2.ml:13:10->13:17
	addl	%eax, %eax	#test/spill2.ml:13:10->13:17
	movl	%eax, 20(%ebp)	#test/spill2.ml:14:10->14:17
	addl	%eax, %eax	#test/spill2.ml:14:10->14:17
	movl	%eax, 24(%ebp)	#test/spill2.ml:15:10->15:17
	addl	%eax, %eax	#test/spill2.ml:15:10->15:17
	movl	%eax, 28(%ebp)	#test/spill2.ml:16:10->16:17
	addl	%eax, %eax	#test/spill2.ml:16:10->16:17
	movl	%eax, 32(%ebp)	#test/spill2.ml:17:11->17:18
	addl	%eax, %eax	#test/spill2.ml:17:11->17:18
	movl	%eax, 36(%ebp)	#test/spill2.ml:18:11->18:20
	addl	%eax, %eax	#test/spill2.ml:18:11->18:20
	movl	%eax, 40(%ebp)	#test/spill2.ml:19:11->19:20
	addl	%eax, %eax	#test/spill2.ml:19:11->19:20
	movl	%eax, 44(%ebp)	#test/spill2.ml:20:11->20:20
	addl	%eax, %eax	#test/spill2.ml:20:11->20:20
	movl	%eax, 48(%ebp)	#test/spill2.ml:21:11->21:20
	addl	%eax, %eax	#test/spill2.ml:21:11->21:20
	movl	%eax, 52(%ebp)	#test/spill2.ml:22:11->22:20
	addl	%eax, %eax	#test/spill2.ml:22:11->22:20
	movl	4(%ecx), %ecx	#test/spill2.ml:4:9->4:26
	cmpl	$0, %ecx	#test/spill2.ml:24:4->26:52
	jne	je_else.88
	movl	%ebx, %eax
	addl	$56, %ebp	#test/spill2.ml:24:22->24:25
	call	g.28	#test/spill2.ml:24:22->24:25
	subl	$56, %ebp	#test/spill2.ml:24:22->24:25
	jmp	je_cont.89
je_else.88:
	addl	%esi, %edx	#test/spill2.ml:25:3->25:10
	addl	%edi, %edx	#test/spill2.ml:25:3->25:15
	movl	8(%ebp), %ebx	#test/spill2.ml:25:3->25:20
	addl	%ebx, %edx	#test/spill2.ml:25:3->25:20
	movl	12(%ebp), %ebx	#test/spill2.ml:25:3->25:25
	addl	%ebx, %edx	#test/spill2.ml:25:3->25:25
	movl	16(%ebp), %ebx	#test/spill2.ml:25:3->25:30
	addl	%ebx, %edx	#test/spill2.ml:25:3->25:30
	movl	20(%ebp), %ebx	#test/spill2.ml:25:3->25:35
	addl	%ebx, %edx	#test/spill2.ml:25:3->25:35
	movl	24(%ebp), %ebx	#test/spill2.ml:25:3->25:40
	addl	%ebx, %edx	#test/spill2.ml:25:3->25:40
	movl	28(%ebp), %ebx	#test/spill2.ml:25:3->26:7
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:7
	movl	32(%ebp), %ebx	#test/spill2.ml:25:3->26:12
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:12
	movl	36(%ebp), %ebx	#test/spill2.ml:25:3->26:18
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:18
	movl	40(%ebp), %ebx	#test/spill2.ml:25:3->26:24
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:24
	movl	44(%ebp), %ebx	#test/spill2.ml:25:3->26:30
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:30
	movl	48(%ebp), %ebx	#test/spill2.ml:25:3->26:36
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:36
	movl	52(%ebp), %ebx	#test/spill2.ml:25:3->26:42
	addl	%ebx, %edx	#test/spill2.ml:25:3->26:42
	addl	%eax, %edx	#test/spill2.ml:25:3->26:48
	movl	4(%ebp), %eax	#test/spill2.ml:25:3->26:52
	addl	%edx, %eax	#test/spill2.ml:25:3->26:52
je_cont.89:
	addl	$56, %ebp	#test/spill2.ml:23:1->26:53
	call	min_caml_print_int	#test/spill2.ml:23:1->26:53
	subl	$56, %ebp	#test/spill2.ml:23:1->26:53
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
