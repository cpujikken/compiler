.data
.balign	8
.text
f.56:
	movl	%eax, %ebx	#test/spill3.ml:3
	addl	$1, %ebx	#test/spill3.ml:3
	movl	%ebx, %ecx	#test/spill3.ml:4
	addl	$1, %ecx	#test/spill3.ml:4
	movl	%ecx, %edx	#test/spill3.ml:5
	addl	$1, %edx	#test/spill3.ml:5
	movl	%edx, %esi	#test/spill3.ml:6
	addl	$1, %esi	#test/spill3.ml:6
	movl	%esi, %edi	#test/spill3.ml:7
	addl	$1, %edi	#test/spill3.ml:7
	movl	%eax, 0(%ebp)	#test/spill3.ml:8
	movl	%edi, %eax	#test/spill3.ml:8
	addl	$1, %eax	#test/spill3.ml:8
	movl	%eax, 4(%ebp)	#test/spill3.ml:9
	addl	$1, %eax	#test/spill3.ml:9
	movl	%eax, 8(%ebp)	#test/spill3.ml:10
	addl	$1, %eax	#test/spill3.ml:10
	movl	%eax, 12(%ebp)	#test/spill3.ml:11
	addl	$1, %eax	#test/spill3.ml:11
	movl	%eax, 16(%ebp)	#test/spill3.ml:12
	addl	$1, %eax	#test/spill3.ml:12
	movl	%eax, 20(%ebp)	#test/spill3.ml:13
	addl	$1, %eax	#test/spill3.ml:13
	movl	%eax, 24(%ebp)	#test/spill3.ml:14
	addl	$1, %eax	#test/spill3.ml:14
	movl	%eax, 28(%ebp)	#test/spill3.ml:15
	addl	$1, %eax	#test/spill3.ml:15
	movl	%eax, 32(%ebp)	#test/spill3.ml:16
	addl	$1, %eax	#test/spill3.ml:16
	movl	%eax, 36(%ebp)	#test/spill3.ml:17
	addl	$1, %eax	#test/spill3.ml:17
	movl	%eax, 40(%ebp)	#test/spill3.ml:18
	addl	$1, %eax	#test/spill3.ml:18
	movl	%eax, 44(%ebp)	#test/spill3.ml:19
	addl	$1, %eax	#test/spill3.ml:19
	movl	%eax, 48(%ebp)	#test/spill3.ml:20
	addl	$1, %eax	#test/spill3.ml:20
	movl	%eax, 52(%ebp)	#test/spill3.ml:21
	addl	%ebx, %eax	#test/spill3.ml:21
	movl	%eax, 56(%ebp)	#test/spill3.ml:22
	addl	%ecx, %eax	#test/spill3.ml:22
	movl	%eax, 60(%ebp)	#test/spill3.ml:23
	addl	%edx, %eax	#test/spill3.ml:23
	movl	%eax, 64(%ebp)	#test/spill3.ml:24
	addl	%esi, %eax	#test/spill3.ml:24
	movl	%eax, 68(%ebp)	#test/spill3.ml:25
	addl	%edi, %eax	#test/spill3.ml:25
	movl	%eax, 72(%ebp)	#test/spill3.ml:26
	movl	%edi, 76(%ebp)	#test/spill3.ml:26
	movl	4(%ebp), %edi	#test/spill3.ml:26
	addl	%edi, %eax	#test/spill3.ml:26
	movl	%eax, 80(%ebp)	#test/spill3.ml:27
	movl	8(%ebp), %edi	#test/spill3.ml:27
	addl	%edi, %eax	#test/spill3.ml:27
	movl	%eax, 84(%ebp)	#test/spill3.ml:28
	movl	12(%ebp), %edi	#test/spill3.ml:28
	addl	%edi, %eax	#test/spill3.ml:28
	movl	%eax, 88(%ebp)	#test/spill3.ml:29
	movl	16(%ebp), %edi	#test/spill3.ml:29
	addl	%edi, %eax	#test/spill3.ml:29
	movl	%eax, 92(%ebp)	#test/spill3.ml:30
	movl	20(%ebp), %edi	#test/spill3.ml:30
	addl	%edi, %eax	#test/spill3.ml:30
	movl	%eax, 96(%ebp)	#test/spill3.ml:31
	movl	24(%ebp), %edi	#test/spill3.ml:31
	addl	%edi, %eax	#test/spill3.ml:31
	movl	%eax, 100(%ebp)	#test/spill3.ml:32
	movl	28(%ebp), %edi	#test/spill3.ml:32
	addl	%edi, %eax	#test/spill3.ml:32
	movl	%eax, 104(%ebp)	#test/spill3.ml:33
	movl	32(%ebp), %edi	#test/spill3.ml:33
	addl	%edi, %eax	#test/spill3.ml:33
	movl	%eax, 108(%ebp)	#test/spill3.ml:34
	movl	36(%ebp), %edi	#test/spill3.ml:34
	addl	%edi, %eax	#test/spill3.ml:34
	movl	%eax, 112(%ebp)	#test/spill3.ml:35
	movl	40(%ebp), %edi	#test/spill3.ml:35
	addl	%edi, %eax	#test/spill3.ml:35
	movl	%eax, 116(%ebp)	#test/spill3.ml:36
	movl	44(%ebp), %edi	#test/spill3.ml:36
	addl	%edi, %eax	#test/spill3.ml:36
	movl	%eax, 120(%ebp)	#test/spill3.ml:37
	movl	48(%ebp), %edi	#test/spill3.ml:37
	addl	%edi, %eax	#test/spill3.ml:37
	movl	0(%ebp), %edi	#test/spill3.ml:38
	addl	%eax, %edi	#test/spill3.ml:38
	addl	%ecx, %ebx	#test/spill3.ml:39
	addl	%edx, %ebx	#test/spill3.ml:39
	addl	%esi, %ebx	#test/spill3.ml:39
	movl	76(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	4(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	8(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	12(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	16(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	20(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	24(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	28(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	32(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	36(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	40(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	44(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	48(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	52(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	56(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	60(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	64(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	68(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	72(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	80(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	84(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	88(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	92(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	96(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	100(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	104(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	108(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	112(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	116(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	movl	120(%ebp), %ecx	#test/spill3.ml:39
	addl	%ecx, %ebx	#test/spill3.ml:39
	addl	%eax, %ebx	#test/spill3.ml:39
	addl	%edi, %ebx	#test/spill3.ml:39
	movl	0(%ebp), %eax	#test/spill3.ml:39
	addl	%ebx, %eax	#test/spill3.ml:39
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
	movl	$0, %eax	#test/spill3.ml:43
	call	f.56	#test/spill3.ml:43
	call	min_caml_print_int	#test/spill3.ml:43
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
