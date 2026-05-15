	.att_syntax
	.file	"test.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4, 0x0                          # -- Begin function main
.LCPI0_0:
	.long	0                               # 0x0
	.long	1                               # 0x1
	.long	2                               # 0x2
	.long	3                               # 0x3
.LCPI0_1:
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
	.long	5                               # 0x5
.LCPI0_2:
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
	.long	13                              # 0xd
.LCPI0_3:
	.long	21                              # 0x15
	.long	21                              # 0x15
	.long	21                              # 0x15
	.long	21                              # 0x15
.LCPI0_4:
	.long	29                              # 0x1d
	.long	29                              # 0x1d
	.long	29                              # 0x1d
	.long	29                              # 0x1d
.LCPI0_5:
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
	.long	16                              # 0x10
.LCPI0_6:
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
	.long	1                               # 0x1
.LCPI0_7:
	.long	200                             # 0xc8
	.long	200                             # 0xc8
	.long	200                             # 0xc8
	.long	200                             # 0xc8
.LCPI0_8:
	.long	5000                            # 0x1388
	.long	5000                            # 0x1388
	.long	5000                            # 0x1388
	.long	5000                            # 0x1388
.LCPI0_9:
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.long	4                               # 0x4
	.text
	.globl	main
	.prefalign	4, .Lfunc_end0, nop
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	pushq	%r15
	.cfi_def_cfa_offset 24
	pushq	%r14
	.cfi_def_cfa_offset 32
	pushq	%rbx
	.cfi_def_cfa_offset 40
	subq	$4008, %rsp                     # imm = 0xFA8
	.cfi_def_cfa_offset 4048
	.cfi_offset %rbx, -40
	.cfi_offset %r14, -32
	.cfi_offset %r15, -24
	.cfi_offset %rbp, -16
	movdqa	.LCPI0_0(%rip), %xmm0           # xmm0 = [0,1,2,3]
	movl	$12, %eax
	movdqa	.LCPI0_1(%rip), %xmm1           # xmm1 = [5,5,5,5]
	movdqa	.LCPI0_2(%rip), %xmm2           # xmm2 = [13,13,13,13]
	movdqa	.LCPI0_3(%rip), %xmm3           # xmm3 = [21,21,21,21]
	movdqa	.LCPI0_4(%rip), %xmm4           # xmm4 = [29,29,29,29]
	movdqa	.LCPI0_5(%rip), %xmm5           # xmm5 = [16,16,16,16]
	.p2align	4
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm6
	paddd	%xmm6, %xmm6
	movdqa	%xmm6, %xmm7
	paddd	%xmm1, %xmm7
	movdqa	%xmm6, %xmm8
	paddd	%xmm2, %xmm8
	movdqa	%xmm7, -48(%rsp,%rax,4)
	movdqa	%xmm8, -32(%rsp,%rax,4)
	cmpq	$1004, %rax                     # imm = 0x3EC
	je	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movdqa	%xmm6, %xmm7
	paddd	%xmm3, %xmm7
	paddd	%xmm4, %xmm6
	movdqa	%xmm7, -16(%rsp,%rax,4)
	movdqa	%xmm6, (%rsp,%rax,4)
	paddd	%xmm5, %xmm0
	addq	$16, %rax
	jmp	.LBB0_1
.LBB0_3:
	movdqa	.LCPI0_0(%rip), %xmm4           # xmm4 = [0,1,2,3]
	pxor	%xmm5, %xmm5
	pshufd	$0, (%rsp), %xmm3               # xmm3 = mem[0,0,0,0]
	xorl	%eax, %eax
	movdqa	.LCPI0_6(%rip), %xmm6           # xmm6 = [1,1,1,1]
	movdqa	.LCPI0_7(%rip), %xmm8           # xmm8 = [200,200,200,200]
	movdqa	.LCPI0_8(%rip), %xmm9           # xmm9 = [5000,5000,5000,5000]
	movdqa	.LCPI0_9(%rip), %xmm10          # xmm10 = [4,4,4,4]
	pxor	%xmm0, %xmm0
	pxor	%xmm1, %xmm1
	pxor	%xmm2, %xmm2
	movdqa	%xmm3, %xmm7
	.p2align	4
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movdqa	(%rsp,%rax,4), %xmm11
	movdqa	%xmm11, %xmm12
	pand	%xmm6, %xmm12
	pcmpeqd	%xmm5, %xmm12
	movdqa	%xmm11, %xmm13
	paddd	%xmm8, %xmm13
	movdqa	%xmm12, %xmm14
	pandn	%xmm13, %xmm14
	paddd	%xmm14, %xmm2
	pand	%xmm12, %xmm13
	paddd	%xmm13, %xmm1
	movdqa	%xmm11, %xmm12
	pcmpgtd	%xmm3, %xmm12
	movdqa	%xmm11, %xmm13
	pand	%xmm12, %xmm13
	pandn	%xmm3, %xmm12
	movdqa	%xmm12, %xmm3
	por	%xmm13, %xmm3
	movdqa	%xmm7, %xmm12
	pcmpgtd	%xmm11, %xmm12
	paddd	%xmm11, %xmm0
	pand	%xmm12, %xmm11
	pandn	%xmm7, %xmm12
	movdqa	%xmm12, %xmm7
	por	%xmm11, %xmm7
	movdqa	%xmm4, %xmm11
	pslld	$3, %xmm11
	movdqa	%xmm11, (%rsp,%rax,4)
	paddd	%xmm9, %xmm0
	addq	$4, %rax
	paddd	%xmm10, %xmm4
	cmpq	$1000, %rax                     # imm = 0x3E8
	jne	.LBB0_4
# %bb.5:
	pshufd	$238, %xmm7, %xmm4              # xmm4 = xmm7[2,3,2,3]
	movdqa	%xmm4, %xmm5
	pcmpgtd	%xmm7, %xmm5
	pand	%xmm5, %xmm7
	pandn	%xmm4, %xmm5
	por	%xmm7, %xmm5
	movd	%xmm5, %eax
	pshufd	$85, %xmm5, %xmm4               # xmm4 = xmm5[1,1,1,1]
	movd	%xmm4, %ebx
	cmpl	%ebx, %eax
	cmovll	%eax, %ebx
	pshufd	$238, %xmm3, %xmm4              # xmm4 = xmm3[2,3,2,3]
	movdqa	%xmm3, %xmm5
	pcmpgtd	%xmm4, %xmm5
	pand	%xmm5, %xmm3
	pandn	%xmm4, %xmm5
	por	%xmm3, %xmm5
	movd	%xmm5, %eax
	pshufd	$85, %xmm5, %xmm3               # xmm3 = xmm5[1,1,1,1]
	movd	%xmm3, %ebp
	cmpl	%ebp, %eax
	cmovgl	%eax, %ebp
	pshufd	$238, %xmm2, %xmm3              # xmm3 = xmm2[2,3,2,3]
	paddd	%xmm2, %xmm3
	pshufd	$85, %xmm3, %xmm2               # xmm2 = xmm3[1,1,1,1]
	paddd	%xmm3, %xmm2
	movd	%xmm2, %r14d
	pshufd	$238, %xmm1, %xmm2              # xmm2 = xmm1[2,3,2,3]
	paddd	%xmm1, %xmm2
	pshufd	$85, %xmm2, %xmm1               # xmm1 = xmm2[1,1,1,1]
	paddd	%xmm2, %xmm1
	movd	%xmm1, %r15d
	pshufd	$238, %xmm0, %xmm1              # xmm1 = xmm0[2,3,2,3]
	paddd	%xmm0, %xmm1
	pshufd	$85, %xmm1, %xmm0               # xmm0 = xmm1[1,1,1,1]
	paddd	%xmm1, %xmm0
	movd	%xmm0, %esi
	leaq	.L.str(%rip), %rdi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.1(%rip), %rdi
	movl	%r15d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.2(%rip), %rdi
	movl	%r14d, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.3(%rip), %rdi
	movl	%ebp, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.4(%rip), %rdi
	movl	%ebx, %esi
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.5(%rip), %rdi
	movl	$1048576, %esi                  # imm = 0x100000
	xorl	%eax, %eax
	callq	printf@PLT
	leaq	.L.str.6(%rip), %rdi
	movl	$122500, %esi                   # imm = 0x1DE84
	xorl	%eax, %eax
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$4008, %rsp                     # imm = 0xFA8
	.cfi_def_cfa_offset 40
	popq	%rbx
	.cfi_def_cfa_offset 32
	popq	%r14
	.cfi_def_cfa_offset 24
	popq	%r15
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_def_cfa_offset 8
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc
                                        # -- End function
	.type	.L.str,@object                  # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Sum        : %d\n"
	.size	.L.str, 17

	.type	.L.str.1,@object                # @.str.1
.L.str.1:
	.asciz	"Even Sum   : %d\n"
	.size	.L.str.1, 17

	.type	.L.str.2,@object                # @.str.2
.L.str.2:
	.asciz	"Odd Sum    : %d\n"
	.size	.L.str.2, 17

	.type	.L.str.3,@object                # @.str.3
.L.str.3:
	.asciz	"Max        : %d\n"
	.size	.L.str.3, 17

	.type	.L.str.4,@object                # @.str.4
.L.str.4:
	.asciz	"Min        : %d\n"
	.size	.L.str.4, 17

	.type	.L.str.5,@object                # @.str.5
.L.str.5:
	.asciz	"Product    : %d\n"
	.size	.L.str.5, 17

	.type	.L.str.6,@object                # @.str.6
.L.str.6:
	.asciz	"Matrix Sum : %d\n"
	.size	.L.str.6, 17

	.ident	"clang version 23.0.0git (https://github.com/llvm/llvm-project.git 7377bac59b4aea64da09873b44df1430571e93c3)"
	.section	".note.GNU-stack","",@progbits
	.addrsig
