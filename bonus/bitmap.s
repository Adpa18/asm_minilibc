	.file	"bitmap.c"
	.section	.rodata
.LC0:
	.string	"rendu.bmp"
	.text
	.globl	makeBMP
	.type	makeBMP, @function
makeBMP:
.LFB2:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$64, %rsp
	movw	$19778, -64(%rbp)
	movl	$4000054, -62(%rbp)
	movw	$0, -58(%rbp)
	movw	$0, -56(%rbp)
	movl	$54, -54(%rbp)
	movl	$40, -50(%rbp)
	movl	$1000, -46(%rbp)
	movl	$1000, -42(%rbp)
	movw	$1, -38(%rbp)
	movw	$32, -36(%rbp)
	movl	$0, -34(%rbp)
	movl	$4000000, -30(%rbp)
	movl	$0, -26(%rbp)
	movl	$0, -22(%rbp)
	movl	$0, -18(%rbp)
	movl	$0, -14(%rbp)
	movl	$420, %edx
	movl	$577, %esi
	movl	$.LC0, %edi
	movl	$0, %eax
	call	open
	movl	%eax, -4(%rbp)
	leaq	-64(%rbp), %rcx
	movl	-4(%rbp), %eax
	movl	$54, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	makeBMP, .-makeBMP
	.globl	interSphere
	.type	interSphere, @function
interSphere:
.LFB3:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -40(%rbp)
	movsd	16(%rbp), %xmm1
	movsd	16(%rbp), %xmm0
	mulsd	%xmm0, %xmm1
	movsd	24(%rbp), %xmm2
	movsd	24(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	32(%rbp), %xmm2
	movsd	32(%rbp), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	movsd	16(%rbp), %xmm1
	pxor	%xmm0, %xmm0
	mulsd	%xmm0, %xmm1
	movsd	24(%rbp), %xmm2
	pxor	%xmm0, %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm0, %xmm1
	movsd	32(%rbp), %xmm2
	movsd	.LC2(%rip), %xmm0
	mulsd	%xmm2, %xmm0
	addsd	%xmm1, %xmm0
	addsd	%xmm0, %xmm0
	movsd	%xmm0, -24(%rbp)
	movl	64(%rbp), %edx
	movl	64(%rbp), %eax
	imull	%edx, %eax
	movl	$262144, %edx
	subl	%eax, %edx
	movl	%edx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L4
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L5
.L4:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L5:
	movsd	%xmm0, -16(%rbp)
	movsd	-24(%rbp), %xmm1
	movsd	-24(%rbp), %xmm0
	mulsd	%xmm1, %xmm0
	movsd	-32(%rbp), %xmm2
	movsd	.LC3(%rip), %xmm1
	mulsd	%xmm2, %xmm1
	movsd	-16(%rbp), %xmm2
	mulsd	%xmm2, %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
	movsd	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jnb	.L8
	jmp	.L9
.L8:
	movl	68(%rbp), %edx
	movq	-40(%rbp), %rax
	movl	%edx, (%rax)
.L9:
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE3:
	.size	interSphere, .-interSphere
	.globl	calc_color
	.type	calc_color, @function
calc_color:
.LFB4:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movl	$0, -4(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -48(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -32(%rbp)
	movl	$100, -24(%rbp)
	movl	$-16711936, -20(%rbp)
	leaq	-4(%rbp), %rax
	pushq	-24(%rbp)
	pushq	-32(%rbp)
	pushq	-40(%rbp)
	pushq	-48(%rbp)
	pushq	32(%rbp)
	pushq	24(%rbp)
	pushq	16(%rbp)
	movq	%rax, %rdi
	call	interSphere
	addq	$56, %rsp
	movl	-4(%rbp), %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE4:
	.size	calc_color, .-calc_color
	.section	.rodata
.LC6:
	.string	"\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB5:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movl	$1000000, -20(%rbp)
	movl	$0, %eax
	call	makeBMP
	movl	%eax, -24(%rbp)
	movl	$4000000, %edi
	call	malloc
	movq	%rax, -32(%rbp)
	jmp	.L13
.L18:
	movl	-20(%rbp), %ecx
	movl	$274877907, %edx
	movl	%ecx, %eax
	mull	%edx
	movl	%edx, %eax
	shrl	$6, %eax
	imull	$1000, %eax, %eax
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L14
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L15
.L14:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L15:
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -64(%rbp)
	movl	-20(%rbp), %eax
	movl	$274877907, %edx
	mull	%edx
	movl	%edx, %eax
	shrl	$6, %eax
	movl	%eax, %eax
	testq	%rax, %rax
	js	.L16
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	jmp	.L17
.L16:
	movq	%rax, %rdx
	shrq	%rdx
	andl	$1, %eax
	orq	%rax, %rdx
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rdx, %xmm0
	addsd	%xmm0, %xmm0
.L17:
	movsd	.LC4(%rip), %xmm1
	subsd	%xmm0, %xmm1
	movapd	%xmm1, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -48(%rbp)
	movl	-20(%rbp), %eax
	leaq	0(,%rax,4), %rdx
	movq	-32(%rbp), %rax
	leaq	(%rdx,%rax), %rbx
	subq	$8, %rsp
	pushq	-48(%rbp)
	pushq	-56(%rbp)
	pushq	-64(%rbp)
	call	calc_color
	addq	$32, %rsp
	movl	%eax, (%rbx)
.L13:
	subl	$1, -20(%rbp)
	cmpl	$0, -20(%rbp)
	jne	.L18
	movl	$1, %edx
	movl	$.LC6, %esi
	movl	$1, %edi
	call	write
	movq	-32(%rbp), %rcx
	movl	-24(%rbp), %eax
	movl	$4000000, %edx
	movq	%rcx, %rsi
	movl	%eax, %edi
	call	write
	movl	-24(%rbp), %eax
	movl	%eax, %edi
	call	close
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	free
	movl	$0, %eax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE5:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	-1065353216
	.align 8
.LC3:
	.long	0
	.long	1074790400
	.align 8
.LC4:
	.long	0
	.long	1082081280
	.align 8
.LC5:
	.long	2333510123
	.long	1084276995
	.ident	"GCC: (GNU) 5.3.1 20151207 (Red Hat 5.3.1-2)"
	.section	.note.GNU-stack,"",@progbits
