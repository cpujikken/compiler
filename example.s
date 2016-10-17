.data
.balign	8
.text
f.14:
	movl	4(%edi), %ebx	#example.ml:7:19->7:26
	addl	%ebx, %eax	#example.ml:7:19->7:26
	ret
t.5:
	movl	min_caml_hp, %ebx	#example.ml:7:5->9:6
	addl	$8, min_caml_hp	#example.ml:7:5->9:6
	movl	$f.14, %ecx	#example.ml:7:5->9:6
	movl	%ecx, 0(%ebx)	#example.ml:7:5->9:6
	movl	%eax, 4(%ebx)	#example.ml:7:5->9:6
	movl	%ebx, %eax	#example.ml:9:5->9:6
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
	movl	$1, %eax	#example.ml:1:9->1:10
	movl	$2, %ebx	#example.ml:3:9->3:10
	movl	%ebx, 0(%ebp)	#example.ml:11:10->11:13
	addl	$8, %ebp	#example.ml:11:10->11:13
	call	t.5	#example.ml:11:10->11:13
	subl	$8, %ebp	#example.ml:11:10->11:13
	movl	0(%ebp), %eax	#example.ml:13:10->13:13
	addl	$8, %ebp	#example.ml:13:10->13:13
	call	t.5	#example.ml:13:10->13:13
	subl	$8, %ebp	#example.ml:13:10->13:13
	movl	%eax, %edi	#example.ml:13:10->13:13
	movl	$3, %eax	#example.ml:15:12->15:13
	movl	%edi, 4(%ebp)	#example.ml:15:9->15:13
	addl	$8, %ebp	#example.ml:15:9->15:13
	call	*(%edi)	#example.ml:15:9->15:13
	subl	$8, %ebp	#example.ml:15:9->15:13
	movl	$4, %eax	#example.ml:17:12->17:13
	movl	4(%ebp), %edi	#example.ml:17:9->17:13
	addl	$8, %ebp	#example.ml:17:9->17:13
	call	*(%edi)	#example.ml:17:9->17:13
	subl	$8, %ebp	#example.ml:17:9->17:13
	addl	$8, %ebp	#example.ml:18:4->18:11
	call	min_caml_print	#example.ml:18:4->18:11
	subl	$8, %ebp	#example.ml:18:4->18:11
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
