	.att_syntax
	.file	"test.c"
	.text
	.globl	main                            # -- Begin function main
	.prefalign	4, .Lfunc_end0, nop
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# %bb.0:
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register %rbp
	subq	$4080, %rsp                     # imm = 0xFF0
	movl	$0, -4(%rbp)
	movl	$0, -4020(%rbp)
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -4020(%rbp)              # imm = 0x3E8
	jge	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movl	-4020(%rbp), %ecx
	shll	%ecx
	addl	$5, %ecx
	movslq	-4020(%rbp), %rax
	movl	%ecx, -4016(%rbp,%rax,4)
	movl	-4020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4020(%rbp)
	jmp	.LBB0_1
.LBB0_3:
	movl	$0, -4024(%rbp)
	movl	$0, -4028(%rbp)
	movl	$0, -4032(%rbp)
	movl	-4016(%rbp), %eax
	movl	%eax, -4036(%rbp)
	movl	-4016(%rbp), %eax
	movl	%eax, -4040(%rbp)
	movl	$0, -4020(%rbp)
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$1000, -4020(%rbp)              # imm = 0x3E8
	jge	.LBB0_13
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movslq	-4020(%rbp), %rax
	movl	-4016(%rbp,%rax,4), %eax
	movl	%eax, -4044(%rbp)
	movl	$200, -4048(%rbp)
	imull	$999, -4044(%rbp), %eax         # imm = 0x3E7
	movl	%eax, -4052(%rbp)
	movl	-4044(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -4056(%rbp)
	movl	-4044(%rbp), %eax
	shll	$2, %eax
	movl	%eax, -4060(%rbp)
	movl	-4044(%rbp), %eax
	addl	-4024(%rbp), %eax
	movl	%eax, -4024(%rbp)
	movl	-4044(%rbp), %eax
	movl	$2, %ecx
	cltd
	idivl	%ecx
	cmpl	$0, %edx
	jne	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-4044(%rbp), %eax
	addl	-4048(%rbp), %eax
	addl	-4028(%rbp), %eax
	movl	%eax, -4028(%rbp)
	jmp	.LBB0_8
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-4044(%rbp), %eax
	addl	-4048(%rbp), %eax
	addl	-4032(%rbp), %eax
	movl	%eax, -4032(%rbp)
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-4044(%rbp), %eax
	cmpl	-4036(%rbp), %eax
	jle	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-4044(%rbp), %eax
	movl	%eax, -4036(%rbp)
.LBB0_10:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-4044(%rbp), %eax
	cmpl	-4040(%rbp), %eax
	jge	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-4044(%rbp), %eax
	movl	%eax, -4040(%rbp)
.LBB0_12:                               #   in Loop: Header=BB0_4 Depth=1
	movl	-4020(%rbp), %ecx
	shll	$3, %ecx
	movslq	-4020(%rbp), %rax
	movl	%ecx, -4016(%rbp,%rax,4)
	movl	-4024(%rbp), %eax
	addl	$5000, %eax                     # imm = 0x1388
	movl	%eax, -4024(%rbp)
	movl	-4044(%rbp), %eax
	imull	-4044(%rbp), %eax
	subl	-4044(%rbp), %eax
	movl	%eax, -4064(%rbp)
	movl	-4020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4020(%rbp)
	jmp	.LBB0_4
.LBB0_13:
	movl	$0, -4020(%rbp)
	movl	$1, -4068(%rbp)
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	cmpl	$20, -4020(%rbp)
	jge	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movl	-4068(%rbp), %eax
	shll	%eax
	movl	%eax, -4068(%rbp)
	movl	-4020(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4020(%rbp)
	jmp	.LBB0_14
.LBB0_16:
	movl	$0, -4072(%rbp)
	movl	$0, -4076(%rbp)
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_19 Depth 2
	cmpl	$50, -4076(%rbp)
	jge	.LBB0_22
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	$0, -4080(%rbp)
.LBB0_19:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$50, -4080(%rbp)
	jge	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=2
	movl	-4076(%rbp), %eax
	addl	-4080(%rbp), %eax
	addl	-4072(%rbp), %eax
	movl	%eax, -4072(%rbp)
	movl	-4080(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4080(%rbp)
	jmp	.LBB0_19
.LBB0_21:                               #   in Loop: Header=BB0_17 Depth=1
	movl	-4076(%rbp), %eax
	addl	$1, %eax
	movl	%eax, -4076(%rbp)
	jmp	.LBB0_17
.LBB0_22:
	movl	-4024(%rbp), %esi
	leaq	.L.str(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4028(%rbp), %esi
	leaq	.L.str.1(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4032(%rbp), %esi
	leaq	.L.str.2(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4036(%rbp), %esi
	leaq	.L.str.3(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4040(%rbp), %esi
	leaq	.L.str.4(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4068(%rbp), %esi
	leaq	.L.str.5(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	movl	-4072(%rbp), %esi
	leaq	.L.str.6(%rip), %rdi
	movb	$0, %al
	callq	printf@PLT
	xorl	%eax, %eax
	addq	$4080, %rsp                     # imm = 0xFF0
	popq	%rbp
	.cfi_def_cfa %rsp, 8
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
	.addrsig_sym printf
