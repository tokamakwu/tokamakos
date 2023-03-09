	.file	"hal_start.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/hal_start.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"hal_start:F(0,1)=(0,1)",36,0,8,hal_start
	.stabs	"void:t(0,1)",128,0,0,0
	.globl	hal_start
	.type	hal_start, @function
hal_start:
	.stabn	68,0,9,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L3:
	leaq	.L3(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L3, %r11
	addq	%r11, %rbx
	.stabn	68,0,10,.LM1-.LFBB1
.LM1:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_hal@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,13,.LM2-.LFBB1
.LM2:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_krl@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
.L2:
	.stabn	68,0,16,.LM3-.LFBB1
.LM3:
	jmp	.L2
	.cfi_endproc
.LFE32:
	.size	hal_start, .-hal_start
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
