.data
.balign	8
.text
f.56:
	movl	%eax, %ebx	#test/spill3.ml:3:12->3:18
	addl	$1, %ebx	#test/spill3.ml:3:12->3:18
	movl	%ebx, %ecx	#test/spill3.ml:4:12->4:18
	addl	$1, %ecx	#test/spill3.ml:4:12->4:18
	movl	%ecx, %edx	#test/spill3.ml:5:12->5:18
	addl	$1, %edx	#test/spill3.ml:5:12->5:18
	movl	%edx, %esi	#test/spill3.ml:6:12->6:18
	addl	$1, %esi	#test/spill3.ml:6:12->6:18
	movl	%esi, %edi	#test/spill3.ml:7:12->7:18
	addl	$1, %edi	#test/spill3.ml:7:12->7:18
	movl	%eax, 0(%ebp)	#test/spill3.ml:8:12->8:18
	movl	%edi, %eax	#test/spill3.ml:8:12->8:18
	addl	$1, %eax	#test/spill3.ml:8:12->8:18
	movl	%eax, 4(%ebp)	#test/spill3.ml:9:12->9:18
	addl	$1, %eax	#test/spill3.ml:9:12->9:18
	movl	%eax, 8(%ebp)	#test/spill3.ml:10:12->10:18
	addl	$1, %eax	#test/spill3.ml:10:12->10:18
	movl	%eax, 12(%ebp)	#test/spill3.ml:11:12->11:18
	addl	$1, %eax	#test/spill3.ml:11:12->11:18
	movl	%eax, 16(%ebp)	#test/spill3.ml:12:13->12:19
	addl	$1, %eax	#test/spill3.ml:12:13->12:19
	movl	%eax, 20(%ebp)	#test/spill3.ml:13:13->13:20
	addl	$1, %eax	#test/spill3.ml:13:13->13:20
	movl	%eax, 24(%ebp)	#test/spill3.ml:14:13->14:20
	addl	$1, %eax	#test/spill3.ml:14:13->14:20
	movl	%eax, 28(%ebp)	#test/spill3.ml:15:13->15:20
	addl	$1, %eax	#test/spill3.ml:15:13->15:20
	movl	%eax, 32(%ebp)	#test/spill3.ml:16:13->16:20
	addl	$1, %eax	#test/spill3.ml:16:13->16:20
	movl	%eax, 36(%ebp)	#test/spill3.ml:17:13->17:20
	addl	$1, %eax	#test/spill3.ml:17:13->17:20
	movl	%eax, 40(%ebp)	#test/spill3.ml:18:13->18:20
	addl	$1, %eax	#test/spill3.ml:18:13->18:20
	movl	%eax, 44(%ebp)	#test/spill3.ml:19:13->19:20
	addl	$1, %eax	#test/spill3.ml:19:13->19:20
	movl	%eax, 48(%ebp)	#test/spill3.ml:20:13->20:20
	addl	$1, %eax	#test/spill3.ml:20:13->20:20
	movl	%eax, 52(%ebp)	#test/spill3.ml:21:13->21:21
	addl	%ebx, %eax	#test/spill3.ml:21:13->21:21
	movl	%eax, 56(%ebp)	#test/spill3.ml:22:13->22:21
	addl	%ecx, %eax	#test/spill3.ml:22:13->22:21
	movl	%eax, 60(%ebp)	#test/spill3.ml:23:13->23:21
	addl	%edx, %eax	#test/spill3.ml:23:13->23:21
	movl	%eax, 64(%ebp)	#test/spill3.ml:24:13->24:21
	addl	%esi, %eax	#test/spill3.ml:24:13->24:21
	movl	%eax, 68(%ebp)	#test/spill3.ml:25:13->25:21
	addl	%edi, %eax	#test/spill3.ml:25:13->25:21
	movl	%eax, 72(%ebp)	#test/spill3.ml:26:13->26:21
	movl	%edi, 76(%ebp)	#test/spill3.ml:26:13->26:21
	movl	4(%ebp), %edi	#test/spill3.ml:26:13->26:21
	addl	%edi, %eax	#test/spill3.ml:26:13->26:21
	movl	%eax, 80(%ebp)	#test/spill3.ml:27:13->27:21
	movl	8(%ebp), %edi	#test/spill3.ml:27:13->27:21
	addl	%edi, %eax	#test/spill3.ml:27:13->27:21
	movl	%eax, 84(%ebp)	#test/spill3.ml:28:13->28:21
	movl	12(%ebp), %edi	#test/spill3.ml:28:13->28:21
	addl	%edi, %eax	#test/spill3.ml:28:13->28:21
	movl	%eax, 88(%ebp)	#test/spill3.ml:29:13->29:21
	movl	16(%ebp), %edi	#test/spill3.ml:29:13->29:21
	addl	%edi, %eax	#test/spill3.ml:29:13->29:21
	movl	%eax, 92(%ebp)	#test/spill3.ml:30:13->30:22
	movl	20(%ebp), %edi	#test/spill3.ml:30:13->30:22
	addl	%edi, %eax	#test/spill3.ml:30:13->30:22
	movl	%eax, 96(%ebp)	#test/spill3.ml:31:13->31:22
	movl	24(%ebp), %edi	#test/spill3.ml:31:13->31:22
	addl	%edi, %eax	#test/spill3.ml:31:13->31:22
	movl	%eax, 100(%ebp)	#test/spill3.ml:32:13->32:22
	movl	28(%ebp), %edi	#test/spill3.ml:32:13->32:22
	addl	%edi, %eax	#test/spill3.ml:32:13->32:22
	movl	%eax, 104(%ebp)	#test/spill3.ml:33:13->33:22
	movl	32(%ebp), %edi	#test/spill3.ml:33:13->33:22
	addl	%edi, %eax	#test/spill3.ml:33:13->33:22
	movl	%eax, 108(%ebp)	#test/spill3.ml:34:13->34:22
	movl	36(%ebp), %edi	#test/spill3.ml:34:13->34:22
	addl	%edi, %eax	#test/spill3.ml:34:13->34:22
	movl	%eax, 112(%ebp)	#test/spill3.ml:35:13->35:22
	movl	40(%ebp), %edi	#test/spill3.ml:35:13->35:22
	addl	%edi, %eax	#test/spill3.ml:35:13->35:22
	movl	%eax, 116(%ebp)	#test/spill3.ml:36:13->36:22
	movl	44(%ebp), %edi	#test/spill3.ml:36:13->36:22
	addl	%edi, %eax	#test/spill3.ml:36:13->36:22
	movl	%eax, 120(%ebp)	#test/spill3.ml:37:13->37:22
	movl	48(%ebp), %edi	#test/spill3.ml:37:13->37:22
	addl	%edi, %eax	#test/spill3.ml:37:13->37:22
	movl	0(%ebp), %edi	#test/spill3.ml:38:13->38:21
	addl	%eax, %edi	#test/spill3.ml:38:13->38:21
	addl	%ecx, %ebx	#test/spill3.ml:39:3->39:10
	addl	%edx, %ebx	#test/spill3.ml:39:3->39:15
	addl	%esi, %ebx	#test/spill3.ml:39:3->39:20
	movl	76(%ebp), %ecx	#test/spill3.ml:39:3->39:25
	addl	%ecx, %ebx	#test/spill3.ml:39:3->39:25
	movl	4(%ebp), %ecx	#test/spill3.ml:39:3->39:30
	addl	%ecx, %ebx	#test/spill3.ml:39:3->39:30
	movl	8(%ebp), %ecx	#test/spill3.ml:39:3->39:35
	addl	%ecx, %ebx	#test/spill3.ml:39:3->39:35
	movl	12(%ebp), %ecx	#test/spill3.ml:39:3->39:40
	addl	%ecx, %ebx	#test/spill3.ml:39:3->39:40
	movl	16(%ebp), %ecx	#test/spill3.ml:39:3->39:45
	addl	%ecx, %ebx	#test/spill3.ml:39:3->39:45
	movl	20(%ebp), %ecx	#test/spill3.ml:39:3->40:8
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:8
	movl	24(%ebp), %ecx	#test/spill3.ml:39:3->40:14
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:14
	movl	28(%ebp), %ecx	#test/spill3.ml:39:3->40:20
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:20
	movl	32(%ebp), %ecx	#test/spill3.ml:39:3->40:26
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:26
	movl	36(%ebp), %ecx	#test/spill3.ml:39:3->40:32
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:32
	movl	40(%ebp), %ecx	#test/spill3.ml:39:3->40:38
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:38
	movl	44(%ebp), %ecx	#test/spill3.ml:39:3->40:44
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:44
	movl	48(%ebp), %ecx	#test/spill3.ml:39:3->40:50
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:50
	movl	52(%ebp), %ecx	#test/spill3.ml:39:3->40:56
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:56
	movl	56(%ebp), %ecx	#test/spill3.ml:39:3->40:62
	addl	%ecx, %ebx	#test/spill3.ml:39:3->40:62
	movl	60(%ebp), %ecx	#test/spill3.ml:39:3->41:8
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:8
	movl	64(%ebp), %ecx	#test/spill3.ml:39:3->41:14
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:14
	movl	68(%ebp), %ecx	#test/spill3.ml:39:3->41:20
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:20
	movl	72(%ebp), %ecx	#test/spill3.ml:39:3->41:26
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:26
	movl	80(%ebp), %ecx	#test/spill3.ml:39:3->41:32
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:32
	movl	84(%ebp), %ecx	#test/spill3.ml:39:3->41:38
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:38
	movl	88(%ebp), %ecx	#test/spill3.ml:39:3->41:44
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:44
	movl	92(%ebp), %ecx	#test/spill3.ml:39:3->41:50
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:50
	movl	96(%ebp), %ecx	#test/spill3.ml:39:3->41:56
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:56
	movl	100(%ebp), %ecx	#test/spill3.ml:39:3->41:62
	addl	%ecx, %ebx	#test/spill3.ml:39:3->41:62
	movl	104(%ebp), %ecx	#test/spill3.ml:39:3->42:8
	addl	%ecx, %ebx	#test/spill3.ml:39:3->42:8
	movl	108(%ebp), %ecx	#test/spill3.ml:39:3->42:14
	addl	%ecx, %ebx	#test/spill3.ml:39:3->42:14
	movl	112(%ebp), %ecx	#test/spill3.ml:39:3->42:20
	addl	%ecx, %ebx	#test/spill3.ml:39:3->42:20
	movl	116(%ebp), %ecx	#test/spill3.ml:39:3->42:26
	addl	%ecx, %ebx	#test/spill3.ml:39:3->42:26
	movl	120(%ebp), %ecx	#test/spill3.ml:39:3->42:32
	addl	%ecx, %ebx	#test/spill3.ml:39:3->42:32
	addl	%eax, %ebx	#test/spill3.ml:39:3->42:38
	addl	%edi, %ebx	#test/spill3.ml:39:3->42:44
	movl	0(%ebp), %eax	#test/spill3.ml:39:3->42:49
	addl	%ebx, %eax	#test/spill3.ml:39:3->42:49
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
	movl	$0, %eax	#test/spill3.ml:43:14->43:15
	call	f.56	#test/spill3.ml:43:12->43:15
	call	min_caml_print_int	#test/spill3.ml:43:1->43:16
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
