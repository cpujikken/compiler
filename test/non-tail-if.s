.data
.balign	8
l.32:	# -7.890000
	.long	0x28f5c28f
	.long	0xc01f8f5c
l.30:	# 4.560000
	.long	0xa3d70a3d
	.long	0x40123d70
l.28:	# 1.230000
	.long	0x7ae147ae
	.long	0x3ff3ae14
.text
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
	movl	$l.28, %eax	#test/non-tail-if.ml:1:18->1:22
	movsd	0(%eax), %xmm0	#test/non-tail-if.ml:1:18->1:22
	call	min_caml_truncate	#test/non-tail-if.ml:1:9->1:22
	movl	$l.30, %ebx	#test/non-tail-if.ml:2:18->2:22
	movsd	0(%ebx), %xmm0	#test/non-tail-if.ml:2:18->2:22
	movl	%eax, 0(%ebp)	#test/non-tail-if.ml:2:9->2:22
	addl	$8, %ebp	#test/non-tail-if.ml:2:9->2:22
	call	min_caml_truncate	#test/non-tail-if.ml:2:9->2:22
	subl	$8, %ebp	#test/non-tail-if.ml:2:9->2:22
	movl	$l.32, %ebx	#test/non-tail-if.ml:3:19->3:25
	movsd	0(%ebx), %xmm0	#test/non-tail-if.ml:3:19->3:25
	movl	%eax, 4(%ebp)	#test/non-tail-if.ml:3:9->3:26
	addl	$8, %ebp	#test/non-tail-if.ml:3:9->3:26
	call	min_caml_truncate	#test/non-tail-if.ml:3:9->3:26
	subl	$8, %ebp	#test/non-tail-if.ml:3:9->3:26
	cmpl	$0, %eax	#test/non-tail-if.ml:5:5->5:27
	jl	jge_else.37
	movl	0(%ebp), %ebx	#test/non-tail-if.ml:5:26->5:27
	jmp	jge_cont.38
jge_else.37:
	movl	4(%ebp), %ebx	#test/non-tail-if.ml:5:19->5:20
jge_cont.38:
	movl	0(%ebp), %ecx	#test/non-tail-if.ml:6:5->6:27
	cmpl	$0, %ecx	#test/non-tail-if.ml:6:5->6:27
	jg	jle_else.39
	movl	4(%ebp), %edx	#test/non-tail-if.ml:6:26->6:27
	jmp	jle_cont.40
jle_else.39:
	movl	%eax, %edx	#test/non-tail-if.ml:6:19->6:20
jle_cont.40:
	addl	%edx, %ebx	#test/non-tail-if.ml:5:4->6:28
	movl	4(%ebp), %edx	#test/non-tail-if.ml:7:5->7:27
	cmpl	$0, %edx	#test/non-tail-if.ml:7:5->7:27
	jl	jge_else.41
	jmp	jge_cont.42
jge_else.41:
	movl	%ecx, %eax	#test/non-tail-if.ml:7:19->7:20
jge_cont.42:
	addl	%ebx, %eax	#test/non-tail-if.ml:5:4->7:28
	addl	$8, %ebp	#test/non-tail-if.ml:4:1->7:29
	call	min_caml_print_int	#test/non-tail-if.ml:4:1->7:29
	subl	$8, %ebp	#test/non-tail-if.ml:4:1->7:29
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
