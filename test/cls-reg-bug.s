.data
.balign	8
.text
g.52:
	movl	40(%edi), %ebx	#test/cls-reg-bug.ml:5:13->5:25
	movl	36(%edi), %ecx	#test/cls-reg-bug.ml:5:13->5:25
	movl	32(%edi), %edx	#test/cls-reg-bug.ml:5:13->5:25
	movl	28(%edi), %esi	#test/cls-reg-bug.ml:5:13->5:25
	movl	%eax, 0(%ebp)	#test/cls-reg-bug.ml:5:13->5:25
	movl	24(%edi), %eax	#test/cls-reg-bug.ml:5:13->5:25
	movl	%ebx, 4(%ebp)	#test/cls-reg-bug.ml:5:13->5:25
	movl	20(%edi), %ebx	#test/cls-reg-bug.ml:5:13->5:25
	movl	%ecx, 8(%ebp)	#test/cls-reg-bug.ml:5:13->5:25
	movl	16(%edi), %ecx	#test/cls-reg-bug.ml:5:13->5:25
	movl	%edx, 12(%ebp)	#test/cls-reg-bug.ml:5:13->5:25
	movl	12(%edi), %edx	#test/cls-reg-bug.ml:5:13->5:25
	movl	%esi, 16(%ebp)	#test/cls-reg-bug.ml:5:13->5:25
	movl	8(%edi), %esi	#test/cls-reg-bug.ml:5:13->5:25
	movl	%edi, 20(%ebp)	#test/cls-reg-bug.ml:5:13->5:25
	movl	4(%edi), %edi	#test/cls-reg-bug.ml:5:13->5:25
	addl	%edx, %edi	#test/cls-reg-bug.ml:5:13->5:20
	addl	%ecx, %edi	#test/cls-reg-bug.ml:5:13->5:25
	addl	%ebx, %edi	#test/cls-reg-bug.ml:5:13->5:30
	addl	%eax, %edi	#test/cls-reg-bug.ml:5:13->5:35
	movl	16(%ebp), %eax	#test/cls-reg-bug.ml:5:13->5:40
	addl	%eax, %edi	#test/cls-reg-bug.ml:5:13->5:40
	movl	12(%ebp), %eax	#test/cls-reg-bug.ml:5:13->5:45
	addl	%eax, %edi	#test/cls-reg-bug.ml:5:13->5:45
	movl	8(%ebp), %eax	#test/cls-reg-bug.ml:5:13->5:50
	addl	%eax, %edi	#test/cls-reg-bug.ml:5:13->5:50
	movl	4(%ebp), %eax	#test/cls-reg-bug.ml:5:13->5:55
	addl	%eax, %edi	#test/cls-reg-bug.ml:5:13->5:55
	movl	%edi, %eax	#test/cls-reg-bug.ml:5:13->5:61
	addl	%esi, %eax	#test/cls-reg-bug.ml:5:13->5:61
	movl	0(%ebp), %ebx	#test/cls-reg-bug.ml:6:5->6:32
	cmpl	$0, %ebx	#test/cls-reg-bug.ml:6:5->6:32
	jg	jle_else.107
	movl	%ebx, %eax	#test/cls-reg-bug.ml:6:29->6:31
	negl	%eax	#test/cls-reg-bug.ml:6:29->6:31
	movl	20(%ebp), %edi	#test/cls-reg-bug.ml:6:26->6:32
	jmp	*(%edi)	#test/cls-reg-bug.ml:6:26->6:32
jle_else.107:
	ret
h.26:
	movl	36(%eax), %ebx	#test/cls-reg-bug.ml:3:3->7:6
	movl	32(%eax), %ecx	#test/cls-reg-bug.ml:3:3->7:6
	movl	28(%eax), %edx	#test/cls-reg-bug.ml:3:3->7:6
	movl	24(%eax), %esi	#test/cls-reg-bug.ml:3:3->7:6
	movl	20(%eax), %edi	#test/cls-reg-bug.ml:3:3->7:6
	movl	%ebx, 0(%ebp)	#test/cls-reg-bug.ml:3:3->7:6
	movl	16(%eax), %ebx	#test/cls-reg-bug.ml:3:3->7:6
	movl	%ebx, 4(%ebp)	#test/cls-reg-bug.ml:3:3->7:6
	movl	12(%eax), %ebx	#test/cls-reg-bug.ml:3:3->7:6
	movl	%ebx, 8(%ebp)	#test/cls-reg-bug.ml:3:3->7:6
	movl	8(%eax), %ebx	#test/cls-reg-bug.ml:3:3->7:6
	movl	%ebx, 12(%ebp)	#test/cls-reg-bug.ml:3:3->7:6
	movl	4(%eax), %ebx	#test/cls-reg-bug.ml:3:3->7:6
	movl	0(%eax), %eax	#test/cls-reg-bug.ml:3:3->7:6
	movl	%eax, 16(%ebp)	#test/cls-reg-bug.ml:4:3->7:6
	movl	min_caml_hp, %eax	#test/cls-reg-bug.ml:4:3->7:6
	addl	$48, min_caml_hp	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 20(%ebp)	#test/cls-reg-bug.ml:4:3->7:6
	movl	$g.52, %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 0(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ecx, 40(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	%edx, 36(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	%esi, 32(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	%edi, 28(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	4(%ebp), %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 24(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	8(%ebp), %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 20(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	12(%ebp), %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 16(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	20(%ebp), %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 12(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	0(%ebp), %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 8(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	16(%ebp), %ebx	#test/cls-reg-bug.ml:4:3->7:6
	movl	%ebx, 4(%eax)	#test/cls-reg-bug.ml:4:3->7:6
	movl	$1, %ebx	#test/cls-reg-bug.ml:7:5->7:6
	movl	%eax, %edi
	movl	%ebx, %eax
	jmp	*(%edi)	#test/cls-reg-bug.ml:7:3->7:6
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
	movl	$1, %eax	#test/cls-reg-bug.ml:8:15->8:16
	movl	$2, %ebx	#test/cls-reg-bug.ml:8:17->8:18
	movl	$3, %ecx	#test/cls-reg-bug.ml:8:19->8:20
	movl	$4, %edx	#test/cls-reg-bug.ml:8:21->8:22
	movl	$5, %esi	#test/cls-reg-bug.ml:8:23->8:24
	movl	$6, %edi	#test/cls-reg-bug.ml:8:25->8:26
	movl	%eax, 0(%ebp)	#test/cls-reg-bug.ml:8:27->8:28
	movl	$7, %eax	#test/cls-reg-bug.ml:8:27->8:28
	movl	%ebx, 4(%ebp)	#test/cls-reg-bug.ml:8:29->8:30
	movl	$8, %ebx	#test/cls-reg-bug.ml:8:29->8:30
	movl	%ecx, 8(%ebp)	#test/cls-reg-bug.ml:8:31->8:32
	movl	$9, %ecx	#test/cls-reg-bug.ml:8:31->8:32
	movl	%edx, 12(%ebp)	#test/cls-reg-bug.ml:8:33->8:35
	movl	$10, %edx	#test/cls-reg-bug.ml:8:33->8:35
	movl	%esi, 16(%ebp)	#test/cls-reg-bug.ml:8:15->8:35
	movl	min_caml_hp, %esi	#test/cls-reg-bug.ml:8:15->8:35
	addl	$40, min_caml_hp	#test/cls-reg-bug.ml:8:15->8:35
	movl	%edx, 36(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	%ecx, 32(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	%ebx, 28(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	%eax, 24(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	%edi, 20(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	16(%ebp), %eax	#test/cls-reg-bug.ml:8:15->8:35
	movl	%eax, 16(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	12(%ebp), %eax	#test/cls-reg-bug.ml:8:15->8:35
	movl	%eax, 12(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	8(%ebp), %eax	#test/cls-reg-bug.ml:8:15->8:35
	movl	%eax, 8(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	4(%ebp), %eax	#test/cls-reg-bug.ml:8:15->8:35
	movl	%eax, 4(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	0(%ebp), %eax	#test/cls-reg-bug.ml:8:15->8:35
	movl	%eax, 0(%esi)	#test/cls-reg-bug.ml:8:15->8:35
	movl	%esi, %eax	#test/cls-reg-bug.ml:8:15->8:35
	addl	$24, %ebp	#test/cls-reg-bug.ml:8:12->8:36
	call	h.26	#test/cls-reg-bug.ml:8:12->8:36
	subl	$24, %ebp	#test/cls-reg-bug.ml:8:12->8:36
	addl	$24, %ebp	#test/cls-reg-bug.ml:8:1->8:37
	call	min_caml_print_int	#test/cls-reg-bug.ml:8:1->8:37
	subl	$24, %ebp	#test/cls-reg-bug.ml:8:1->8:37
	addl	$24, %ebp	#test/cls-reg-bug.ml:9:1->9:17
	call	min_caml_print_newline	#test/cls-reg-bug.ml:9:1->9:17
	subl	$24, %ebp	#test/cls-reg-bug.ml:9:1->9:17
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
