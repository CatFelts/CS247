	.file	"homework6.c"
	.text
	.globl	var_prod_ele
	.type	var_prod_ele, @function
var_prod_ele:
.LFB0:
	.cfi_startproc
	pushl	%edi
	.cfi_def_cfa_offset 8
	.cfi_offset 7, -8
	pushl	%esi
	.cfi_def_cfa_offset 12
	.cfi_offset 6, -12
	pushl	%ebx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	movl	16(%esp), %esi
	movl	%esi, %edx
	subl	$1, %edx
	js	.L4
	movl	28(%esp), %eax
	leal	0(,%eax,4), %edi
	imull	%esi, %edi
	addl	20(%esp), %edi
	sall	$2, %esi
	movl	%edx, %eax
	imull	%esi, %eax
	addl	24(%esp), %eax
	movl	32(%esp), %ecx
	leal	(%eax,%ecx,4), %ecx
	movl	$0, %eax
.L3:
	movl	(%edi,%edx,4), %ebx
	imull	(%ecx), %ebx
	addl	%ebx, %eax
	subl	$1, %edx
	subl	%esi, %ecx
	cmpl	$-1, %edx
	jne	.L3
	jmp	.L2
.L4:
	movl	$0, %eax
.L2:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 12
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	var_prod_ele, .-var_prod_ele
	.globl	otherprog
	.type	otherprog, @function
otherprog:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	movl	20(%esp), %esi
	testl	%esi, %esi
	jle	.L9
	movl	32(%esp), %eax
	leal	0(,%eax,4), %ebp
	imull	%esi, %ebp
	addl	24(%esp), %ebp
	leal	0(,%esi,4), %edi
	movl	36(%esp), %edx
	movl	28(%esp), %eax
	leal	(%eax,%edx,4), %ecx
	movl	$0, %eax
	movl	$0, %edx
.L8:
	movl	0(%ebp,%edx,4), %ebx
	imull	(%ecx), %ebx
	addl	%ebx, %eax
	addl	$1, %edx
	addl	%edi, %ecx
	cmpl	%esi, %edx
	jne	.L8
	jmp	.L7
.L9:
	movl	$0, %eax
.L7:
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE1:
	.size	otherprog, .-otherprog
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"my prod = %d\nsecond prod =%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB26:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$160, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	movl	$1, 32(%esp)
	movl	$2, 36(%esp)
	movl	$3, 40(%esp)
	movl	$4, 44(%esp)
	movl	$1, 48(%esp)
	movl	$2, 52(%esp)
	movl	$4, 56(%esp)
	movl	$5, 60(%esp)
	movl	$5, 64(%esp)
	movl	$4, 68(%esp)
	movl	$3, 72(%esp)
	movl	$2, 76(%esp)
	movl	$3, 80(%esp)
	movl	$2, 84(%esp)
	movl	$5, 88(%esp)
	movl	$7, 92(%esp)
	movl	$1, 96(%esp)
	movl	$2, 100(%esp)
	movl	$3, 104(%esp)
	movl	$4, 108(%esp)
	movl	$1, 112(%esp)
	movl	$2, 116(%esp)
	movl	$4, 120(%esp)
	movl	$5, 124(%esp)
	movl	$5, 128(%esp)
	movl	$4, 132(%esp)
	movl	$3, 136(%esp)
	movl	$2, 140(%esp)
	movl	$3, 144(%esp)
	movl	$2, 148(%esp)
	movl	$5, 152(%esp)
	movl	$7, 156(%esp)
	movl	$3, 16(%esp)
	movl	$2, 12(%esp)
	leal	96(%esp), %esi
	movl	%esi, 8(%esp)
	leal	32(%esp), %ebx
	movl	%ebx, 4(%esp)
	movl	$4, (%esp)
	call	var_prod_ele
	movl	%eax, %edi
	movl	$3, 16(%esp)
	movl	$2, 12(%esp)
	movl	%esi, 8(%esp)
	movl	%ebx, 4(%esp)
	movl	$4, (%esp)
	call	otherprog
	movl	%eax, 12(%esp)
	movl	%edi, 8(%esp)
	movl	$.LC0, 4(%esp)
	movl	$1, (%esp)
	call	__printf_chk
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE26:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 4.8.2-19ubuntu1) 4.8.2"
	.section	.note.GNU-stack,"",@progbits
