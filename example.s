.data
.balign	8
.text
gcd.7:
	cmpl	$0, %eax	#example.ml:3:5->7:22
	jne	je_else.16
	movl	%ebx, %eax	#example.ml:3:19->3:20
	ret
je_else.16:
	cmpl	%ebx, %eax	#example.ml:4:9->7:22
	jg	jle_else.17
	subl	%eax, %ebx	#example.ml:5:20->5:25
	jmp	gcd.7	#example.ml:5:13->5:26
jle_else.17:
	subl	%ebx, %eax	#example.ml:7:16->7:21
	movl	%ebx, 0(%ebp)
	movl	%eax, %ebx
	movl	0(%ebp), %eax
	jmp	gcd.7	#example.ml:7:9->7:22
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
	movl	$4, %eax	#example.ml:9:5->9:6
	movl	$5, %ebx	#example.ml:9:7->9:8
	call	gcd.7	#example.ml:9:1->9:8
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
