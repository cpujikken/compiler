.data
.balign	8
.text
f.43:
	movl	%eax, %esi	#test/spill.ml:2
	addl	%ebx, %esi	#test/spill.ml:2
	movl	%eax, %edi	#test/spill.ml:3
	addl	%ecx, %edi	#test/spill.ml:3
	movl	%eax, 0(%ebp)	#test/spill.ml:4
	addl	%edx, %eax	#test/spill.ml:4
	movl	%eax, 4(%ebp)	#test/spill.ml:5
	movl	%ebx, %eax	#test/spill.ml:5
	addl	%ecx, %eax	#test/spill.ml:5
	movl	%ebx, 8(%ebp)	#test/spill.ml:6
	addl	%edx, %ebx	#test/spill.ml:6
	movl	%edx, 12(%ebp)	#test/spill.ml:7
	addl	%ecx, %edx	#test/spill.ml:7
	movl	%ecx, 16(%ebp)	#test/spill.ml:9
	movl	%esi, %ecx	#test/spill.ml:9
	addl	%edi, %ecx	#test/spill.ml:9
	movl	%ecx, 20(%ebp)	#test/spill.ml:10
	movl	4(%ebp), %ecx	#test/spill.ml:10
	addl	%esi, %ecx	#test/spill.ml:10
	movl	%ecx, 24(%ebp)	#test/spill.ml:11
	movl	%esi, %ecx	#test/spill.ml:11
	addl	%eax, %ecx	#test/spill.ml:11
	movl	%ecx, 28(%ebp)	#test/spill.ml:12
	movl	%esi, %ecx	#test/spill.ml:12
	addl	%ebx, %ecx	#test/spill.ml:12
	movl	%esi, 32(%ebp)	#test/spill.ml:13
	addl	%edx, %esi	#test/spill.ml:13
	movl	%ecx, 36(%ebp)	#test/spill.ml:14
	movl	%esi, 40(%ebp)	#test/spill.ml:14
	movl	4(%ebp), %esi	#test/spill.ml:14
	movl	%edi, %ecx	#test/spill.ml:14
	addl	%esi, %ecx	#test/spill.ml:14
	movl	%ecx, 44(%ebp)	#test/spill.ml:15
	movl	%edi, %ecx	#test/spill.ml:15
	addl	%eax, %ecx	#test/spill.ml:15
	movl	%ecx, 48(%ebp)	#test/spill.ml:16
	movl	%edi, %ecx	#test/spill.ml:16
	addl	%ebx, %ecx	#test/spill.ml:16
	movl	%edi, 52(%ebp)	#test/spill.ml:17
	addl	%edx, %edi	#test/spill.ml:17
	movl	%edi, 56(%ebp)	#test/spill.ml:18
	movl	%esi, %edi	#test/spill.ml:18
	addl	%eax, %edi	#test/spill.ml:18
	movl	%edi, 60(%ebp)	#test/spill.ml:19
	movl	%esi, %edi	#test/spill.ml:19
	addl	%ebx, %edi	#test/spill.ml:19
	addl	%edx, %esi	#test/spill.ml:20
	movl	%esi, 64(%ebp)	#test/spill.ml:21
	movl	%eax, %esi	#test/spill.ml:21
	addl	%ebx, %esi	#test/spill.ml:21
	movl	%eax, 68(%ebp)	#test/spill.ml:22
	addl	%edx, %eax	#test/spill.ml:22
	movl	%edx, 72(%ebp)	#test/spill.ml:23
	addl	%ebx, %edx	#test/spill.ml:23
	movl	%ebx, 76(%ebp)	#test/spill.ml:25
	movl	24(%ebp), %ebx	#test/spill.ml:25
	movl	%edx, 80(%ebp)	#test/spill.ml:25
	movl	20(%ebp), %edx	#test/spill.ml:25
	addl	%edx, %ebx	#test/spill.ml:25
	movl	%ebx, 84(%ebp)	#test/spill.ml:26
	movl	28(%ebp), %ebx	#test/spill.ml:26
	addl	%edx, %ebx	#test/spill.ml:26
	movl	%ebx, 88(%ebp)	#test/spill.ml:27
	movl	36(%ebp), %ebx	#test/spill.ml:27
	addl	%edx, %ebx	#test/spill.ml:27
	movl	%ebx, 92(%ebp)	#test/spill.ml:28
	movl	40(%ebp), %ebx	#test/spill.ml:28
	addl	%edx, %ebx	#test/spill.ml:28
	movl	%ebx, 96(%ebp)	#test/spill.ml:29
	movl	44(%ebp), %ebx	#test/spill.ml:29
	addl	%edx, %ebx	#test/spill.ml:29
	movl	%ebx, 100(%ebp)	#test/spill.ml:30
	movl	48(%ebp), %ebx	#test/spill.ml:30
	addl	%edx, %ebx	#test/spill.ml:30
	movl	%ebx, 104(%ebp)	#test/spill.ml:31
	movl	%edx, %ebx	#test/spill.ml:31
	addl	%ecx, %ebx	#test/spill.ml:31
	movl	%ebx, 108(%ebp)	#test/spill.ml:32
	movl	56(%ebp), %ebx	#test/spill.ml:32
	addl	%edx, %ebx	#test/spill.ml:32
	movl	%ebx, 112(%ebp)	#test/spill.ml:33
	movl	60(%ebp), %ebx	#test/spill.ml:33
	addl	%edx, %ebx	#test/spill.ml:33
	movl	%ebx, 116(%ebp)	#test/spill.ml:34
	movl	%edx, %ebx	#test/spill.ml:34
	addl	%edi, %ebx	#test/spill.ml:34
	movl	%ebx, 120(%ebp)	#test/spill.ml:35
	movl	64(%ebp), %ebx	#test/spill.ml:35
	addl	%edx, %ebx	#test/spill.ml:35
	movl	%ebx, 124(%ebp)	#test/spill.ml:36
	movl	%edx, %ebx	#test/spill.ml:36
	addl	%esi, %ebx	#test/spill.ml:36
	movl	%ebx, 128(%ebp)	#test/spill.ml:37
	movl	%edx, %ebx	#test/spill.ml:37
	addl	%eax, %ebx	#test/spill.ml:37
	movl	%ebx, 132(%ebp)	#test/spill.ml:38
	movl	80(%ebp), %ebx	#test/spill.ml:38
	addl	%edx, %ebx	#test/spill.ml:38
	movl	%ebx, 136(%ebp)	#test/spill.ml:40
	movl	8(%ebp), %ebx	#test/spill.ml:40
	movl	%eax, 140(%ebp)	#test/spill.ml:40
	movl	0(%ebp), %eax	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	16(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	12(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	32(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	52(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	4(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	68(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	76(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	72(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	addl	%edx, %eax	#test/spill.ml:40
	movl	24(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	28(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	36(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	40(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	44(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	48(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	addl	%ecx, %eax	#test/spill.ml:40
	movl	56(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	60(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	addl	%edi, %eax	#test/spill.ml:40
	movl	64(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	addl	%esi, %eax	#test/spill.ml:40
	movl	140(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	80(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	84(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	88(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	92(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	96(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	100(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	104(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	108(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	112(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	116(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	120(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	124(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	128(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	132(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	movl	136(%ebp), %ebx	#test/spill.ml:40
	addl	%ebx, %eax	#test/spill.ml:40
	negl	%eax	#test/spill.ml:44
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
	movl	$1, %eax	#test/spill.ml:45
	movl	$2, %ebx	#test/spill.ml:45
	movl	$3, %ecx	#test/spill.ml:45
	movl	$4, %edx	#test/spill.ml:45
	call	f.43	#test/spill.ml:45
	call	min_caml_print_int	#test/spill.ml:45
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
