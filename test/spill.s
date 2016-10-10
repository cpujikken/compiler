.data
.balign	8
.text
f.43:
	movl	%eax, %esi	#test/spill.ml:2:11->2:16
	addl	%ebx, %esi	#test/spill.ml:2:11->2:16
	movl	%eax, %edi	#test/spill.ml:3:11->3:16
	addl	%ecx, %edi	#test/spill.ml:3:11->3:16
	addl	%edx, %eax	#test/spill.ml:4:11->4:16
	movl	%eax, 0(%ebp)	#test/spill.ml:5:11->5:16
	movl	%ebx, %eax	#test/spill.ml:5:11->5:16
	addl	%ecx, %eax	#test/spill.ml:5:11->5:16
	addl	%edx, %ebx	#test/spill.ml:6:11->6:16
	movl	%edx, 4(%ebp)	#test/spill.ml:7:11->7:16
	addl	%ecx, %edx	#test/spill.ml:7:11->7:16
	movl	%ecx, 8(%ebp)	#test/spill.ml:9:11->9:16
	movl	%esi, %ecx	#test/spill.ml:9:11->9:16
	addl	%edi, %ecx	#test/spill.ml:9:11->9:16
	movl	%ecx, 12(%ebp)	#test/spill.ml:10:11->10:16
	movl	0(%ebp), %ecx	#test/spill.ml:10:11->10:16
	addl	%esi, %ecx	#test/spill.ml:10:11->10:16
	movl	%ecx, 16(%ebp)	#test/spill.ml:11:11->11:16
	movl	%esi, %ecx	#test/spill.ml:11:11->11:16
	addl	%eax, %ecx	#test/spill.ml:11:11->11:16
	movl	%ecx, 20(%ebp)	#test/spill.ml:12:11->12:16
	movl	%esi, %ecx	#test/spill.ml:12:11->12:16
	addl	%ebx, %ecx	#test/spill.ml:12:11->12:16
	movl	%esi, 24(%ebp)	#test/spill.ml:13:11->13:16
	addl	%edx, %esi	#test/spill.ml:13:11->13:16
	movl	%ecx, 28(%ebp)	#test/spill.ml:14:11->14:16
	movl	%esi, 32(%ebp)	#test/spill.ml:14:11->14:16
	movl	0(%ebp), %esi	#test/spill.ml:14:11->14:16
	movl	%edi, %ecx	#test/spill.ml:14:11->14:16
	addl	%esi, %ecx	#test/spill.ml:14:11->14:16
	movl	%ecx, 36(%ebp)	#test/spill.ml:15:11->15:16
	movl	%edi, %ecx	#test/spill.ml:15:11->15:16
	addl	%eax, %ecx	#test/spill.ml:15:11->15:16
	movl	%ecx, 40(%ebp)	#test/spill.ml:16:11->16:16
	movl	%edi, %ecx	#test/spill.ml:16:11->16:16
	addl	%ebx, %ecx	#test/spill.ml:16:11->16:16
	movl	%edi, 44(%ebp)	#test/spill.ml:17:11->17:16
	addl	%edx, %edi	#test/spill.ml:17:11->17:16
	movl	%edi, 48(%ebp)	#test/spill.ml:18:11->18:16
	movl	%esi, %edi	#test/spill.ml:18:11->18:16
	addl	%eax, %edi	#test/spill.ml:18:11->18:16
	movl	%edi, 52(%ebp)	#test/spill.ml:19:11->19:16
	movl	%esi, %edi	#test/spill.ml:19:11->19:16
	addl	%ebx, %edi	#test/spill.ml:19:11->19:16
	addl	%edx, %esi	#test/spill.ml:20:11->20:16
	movl	%esi, 56(%ebp)	#test/spill.ml:21:11->21:16
	movl	%eax, %esi	#test/spill.ml:21:11->21:16
	addl	%ebx, %esi	#test/spill.ml:21:11->21:16
	movl	%eax, 60(%ebp)	#test/spill.ml:22:11->22:16
	addl	%edx, %eax	#test/spill.ml:22:11->22:16
	movl	%edx, 64(%ebp)	#test/spill.ml:23:11->23:16
	addl	%ebx, %edx	#test/spill.ml:23:11->23:16
	movl	%ebx, 68(%ebp)	#test/spill.ml:25:12->25:17
	movl	16(%ebp), %ebx	#test/spill.ml:25:12->25:17
	movl	%edx, 72(%ebp)	#test/spill.ml:25:12->25:17
	movl	12(%ebp), %edx	#test/spill.ml:25:12->25:17
	addl	%edx, %ebx	#test/spill.ml:25:12->25:17
	movl	%ebx, 76(%ebp)	#test/spill.ml:26:12->26:17
	movl	20(%ebp), %ebx	#test/spill.ml:26:12->26:17
	addl	%edx, %ebx	#test/spill.ml:26:12->26:17
	movl	%ebx, 80(%ebp)	#test/spill.ml:27:12->27:17
	movl	28(%ebp), %ebx	#test/spill.ml:27:12->27:17
	addl	%edx, %ebx	#test/spill.ml:27:12->27:17
	movl	%ebx, 84(%ebp)	#test/spill.ml:28:12->28:17
	movl	32(%ebp), %ebx	#test/spill.ml:28:12->28:17
	addl	%edx, %ebx	#test/spill.ml:28:12->28:17
	movl	%ebx, 88(%ebp)	#test/spill.ml:29:12->29:17
	movl	36(%ebp), %ebx	#test/spill.ml:29:12->29:17
	addl	%edx, %ebx	#test/spill.ml:29:12->29:17
	movl	%ebx, 92(%ebp)	#test/spill.ml:30:12->30:17
	movl	40(%ebp), %ebx	#test/spill.ml:30:12->30:17
	addl	%edx, %ebx	#test/spill.ml:30:12->30:17
	movl	%ebx, 96(%ebp)	#test/spill.ml:31:12->31:17
	movl	%edx, %ebx	#test/spill.ml:31:12->31:17
	addl	%ecx, %ebx	#test/spill.ml:31:12->31:17
	movl	%ebx, 100(%ebp)	#test/spill.ml:32:12->32:17
	movl	48(%ebp), %ebx	#test/spill.ml:32:12->32:17
	addl	%edx, %ebx	#test/spill.ml:32:12->32:17
	movl	%ebx, 104(%ebp)	#test/spill.ml:33:12->33:17
	movl	52(%ebp), %ebx	#test/spill.ml:33:12->33:17
	addl	%edx, %ebx	#test/spill.ml:33:12->33:17
	movl	%ebx, 108(%ebp)	#test/spill.ml:34:12->34:17
	movl	%edx, %ebx	#test/spill.ml:34:12->34:17
	addl	%edi, %ebx	#test/spill.ml:34:12->34:17
	movl	%ebx, 112(%ebp)	#test/spill.ml:35:12->35:17
	movl	56(%ebp), %ebx	#test/spill.ml:35:12->35:17
	addl	%edx, %ebx	#test/spill.ml:35:12->35:17
	movl	%ebx, 116(%ebp)	#test/spill.ml:36:12->36:17
	movl	%edx, %ebx	#test/spill.ml:36:12->36:17
	addl	%esi, %ebx	#test/spill.ml:36:12->36:17
	movl	%ebx, 120(%ebp)	#test/spill.ml:37:12->37:17
	movl	%edx, %ebx	#test/spill.ml:37:12->37:17
	addl	%eax, %ebx	#test/spill.ml:37:12->37:17
	movl	%ebx, 124(%ebp)	#test/spill.ml:38:12->38:17
	movl	72(%ebp), %ebx	#test/spill.ml:38:12->38:17
	addl	%edx, %ebx	#test/spill.ml:38:12->38:17
	movl	%ebx, 128(%ebp)	#test/spill.ml:40:11->40:20
	movl	8(%ebp), %ebx	#test/spill.ml:40:11->40:20
	movl	%eax, 132(%ebp)	#test/spill.ml:40:11->40:20
	movl	24(%ebp), %eax	#test/spill.ml:40:11->40:20
	addl	%eax, %ebx	#test/spill.ml:40:11->40:20
	movl	%esi, 136(%ebp)	#test/spill.ml:40:11->40:24
	movl	4(%ebp), %esi	#test/spill.ml:40:11->40:24
	addl	%esi, %ebx	#test/spill.ml:40:11->40:24
	addl	%eax, %ebx	#test/spill.ml:40:11->41:8
	movl	44(%ebp), %eax	#test/spill.ml:40:11->41:12
	addl	%eax, %ebx	#test/spill.ml:40:11->41:12
	movl	0(%ebp), %eax	#test/spill.ml:40:11->41:16
	addl	%eax, %ebx	#test/spill.ml:40:11->41:16
	movl	60(%ebp), %eax	#test/spill.ml:40:11->41:20
	addl	%eax, %ebx	#test/spill.ml:40:11->41:20
	movl	68(%ebp), %eax	#test/spill.ml:40:11->41:24
	addl	%eax, %ebx	#test/spill.ml:40:11->41:24
	movl	64(%ebp), %eax	#test/spill.ml:40:11->41:28
	addl	%eax, %ebx	#test/spill.ml:40:11->41:28
	addl	%edx, %ebx	#test/spill.ml:40:11->42:8
	movl	16(%ebp), %eax	#test/spill.ml:40:11->42:12
	addl	%eax, %ebx	#test/spill.ml:40:11->42:12
	movl	20(%ebp), %eax	#test/spill.ml:40:11->42:16
	addl	%eax, %ebx	#test/spill.ml:40:11->42:16
	movl	28(%ebp), %eax	#test/spill.ml:40:11->42:20
	addl	%eax, %ebx	#test/spill.ml:40:11->42:20
	movl	32(%ebp), %eax	#test/spill.ml:40:11->42:24
	addl	%eax, %ebx	#test/spill.ml:40:11->42:24
	movl	36(%ebp), %eax	#test/spill.ml:40:11->42:28
	addl	%eax, %ebx	#test/spill.ml:40:11->42:28
	movl	40(%ebp), %eax	#test/spill.ml:40:11->42:32
	addl	%eax, %ebx	#test/spill.ml:40:11->42:32
	addl	%ecx, %ebx	#test/spill.ml:40:11->42:36
	movl	48(%ebp), %eax	#test/spill.ml:40:11->42:40
	addl	%eax, %ebx	#test/spill.ml:40:11->42:40
	movl	52(%ebp), %eax	#test/spill.ml:40:11->42:44
	addl	%eax, %ebx	#test/spill.ml:40:11->42:44
	addl	%edi, %ebx	#test/spill.ml:40:11->42:48
	movl	56(%ebp), %eax	#test/spill.ml:40:11->42:52
	addl	%eax, %ebx	#test/spill.ml:40:11->42:52
	movl	136(%ebp), %eax	#test/spill.ml:40:11->42:56
	addl	%eax, %ebx	#test/spill.ml:40:11->42:56
	movl	132(%ebp), %eax	#test/spill.ml:40:11->42:60
	addl	%eax, %ebx	#test/spill.ml:40:11->42:60
	movl	72(%ebp), %eax	#test/spill.ml:40:11->42:64
	addl	%eax, %ebx	#test/spill.ml:40:11->42:64
	movl	76(%ebp), %eax	#test/spill.ml:40:11->43:9
	addl	%eax, %ebx	#test/spill.ml:40:11->43:9
	movl	80(%ebp), %eax	#test/spill.ml:40:11->43:14
	addl	%eax, %ebx	#test/spill.ml:40:11->43:14
	movl	84(%ebp), %eax	#test/spill.ml:40:11->43:19
	addl	%eax, %ebx	#test/spill.ml:40:11->43:19
	movl	88(%ebp), %eax	#test/spill.ml:40:11->43:24
	addl	%eax, %ebx	#test/spill.ml:40:11->43:24
	movl	92(%ebp), %eax	#test/spill.ml:40:11->43:29
	addl	%eax, %ebx	#test/spill.ml:40:11->43:29
	movl	96(%ebp), %eax	#test/spill.ml:40:11->43:34
	addl	%eax, %ebx	#test/spill.ml:40:11->43:34
	movl	100(%ebp), %eax	#test/spill.ml:40:11->43:39
	addl	%eax, %ebx	#test/spill.ml:40:11->43:39
	movl	104(%ebp), %eax	#test/spill.ml:40:11->43:44
	addl	%eax, %ebx	#test/spill.ml:40:11->43:44
	movl	108(%ebp), %eax	#test/spill.ml:40:11->43:49
	addl	%eax, %ebx	#test/spill.ml:40:11->43:49
	movl	112(%ebp), %eax	#test/spill.ml:40:11->43:54
	addl	%eax, %ebx	#test/spill.ml:40:11->43:54
	movl	116(%ebp), %eax	#test/spill.ml:40:11->43:59
	addl	%eax, %ebx	#test/spill.ml:40:11->43:59
	movl	120(%ebp), %eax	#test/spill.ml:40:11->43:64
	addl	%eax, %ebx	#test/spill.ml:40:11->43:64
	movl	124(%ebp), %eax	#test/spill.ml:40:11->43:69
	addl	%eax, %ebx	#test/spill.ml:40:11->43:69
	movl	128(%ebp), %eax	#test/spill.ml:40:11->43:74
	addl	%eax, %ebx	#test/spill.ml:40:11->43:74
	movl	%ebx, %eax	#test/spill.ml:44:3->44:5
	negl	%eax	#test/spill.ml:44:3->44:5
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
	movl	$1, %eax	#test/spill.ml:45:14->45:15
	movl	$2, %ebx	#test/spill.ml:45:16->45:17
	movl	$3, %ecx	#test/spill.ml:45:18->45:19
	movl	$4, %edx	#test/spill.ml:45:20->45:21
	call	f.43	#test/spill.ml:45:12->45:21
	call	min_caml_print_int	#test/spill.ml:45:1->45:22
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
