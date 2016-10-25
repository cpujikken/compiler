.start	min_caml_start
.data
.align	8
l.7:	# 123456789123
	.long	0x1cbe991a83
.align	8
.text
min_caml_start:
	push	%r9
	push	%r10
	push	%r11
	push	%r12
	push	%r13
	addi	$%r01, %r0, l.7	#example.ml:1:9->1:21
	ld	 %r01, 0(%r01)	#example.ml:1:9->1:21
	addi	 %r02, %r0, $-10	#example.ml:3:9->3:12
	mov	%r01, 0(%rsp)	#example.ml:5:1->5:8
	mov	%r02, %r01
	addl	$8, %rsp	#example.ml:5:1->5:8
	call	min_caml_print	#example.ml:5:1->5:8
	subl	$8, %rsp	#example.ml:5:1->5:8
	mov	0(%rsp), %r01	#example.ml:6:1->6:8
	addl	$8, %rsp	#example.ml:6:1->6:8
	call	min_caml_print	#example.ml:6:1->6:8
	subl	$8, %rsp	#example.ml:6:1->6:8
	pop	%r9
	pop	%r10
	pop	%r11
	pop	%r12
	pop	%r13
	out
