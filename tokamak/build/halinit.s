	.file	"halinit.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halinit.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.section	.head.text,"ax",@progbits
	.stabs	"init_hal:F(0,1)=(0,1)",36,0,4,init_hal
	.stabs	"void:t(0,1)",128,0,0,0
	.globl	init_hal
	.type	init_hal, @function
init_hal:
	.stabn	68,0,5,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.L3:
	leaq	.L3(%rip), %rdx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L3, %r11
	addq	%r11, %rdx
	.stabn	68,0,7,.LM1-.LFBB1
.LM1:
	movq	%rdx, %r15
	movl	$0, %eax
	movabsq	$init_halplaltform@PLTOFF, %rcx
	addq	%rdx, %rcx
	call	*%rcx
	.stabn	68,0,16,.LM2-.LFBB1
.LM2:
	nop
	.stabn	68,0,17,.LM3-.LFBB1
.LM3:
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	init_hal, .-init_hal
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.text
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
