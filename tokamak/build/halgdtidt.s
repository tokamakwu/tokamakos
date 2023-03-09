	.file	"halgdtidt.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halgdtidt.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"set_idt_desc:F(0,1)=(0,1)",36,0,12,set_idt_desc
	.stabs	"u8_t:t(0,2)=(0,3)=@s8;r(0,3);0;255;",128,0,8,0
	.stabs	"u16_t:t(0,4)=(0,5)=@s16;r(0,5);0;65535;",128,0,9,0
	.stabs	"u32_t:t(0,6)=(0,7)=r(0,7);0;037777777777;",128,0,10,0
	.stabs	"u64_t:t(0,8)=(0,9)=@s64;r(0,9);0;01777777777777777777777;",128,0,11,0
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"unsigned char:t(0,3)",128,0,0,0
	.stabs	"short unsigned int:t(0,5)",128,0,0,0
	.stabs	"unsigned int:t(0,7)",128,0,0,0
	.stabs	"long unsigned int:t(0,9)",128,0,0,0
	.stabs	"vector:p(0,2)",160,0,12,16
	.stabs	"desc_type:p(0,2)",160,0,12,12
	.stabs	"handler:p(0,10)=(0,11)=*(0,12)=f(0,1)",160,0,12,4
	.stabs	"privilege:p(0,2)",160,0,12,0
	.stabs	"inthandler_t:t(0,10)",128,0,34,0
	.globl	set_idt_desc
	.type	set_idt_desc, @function
set_idt_desc:
	.stabn	68,0,13,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB32:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L3:
	leaq	.L3(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L3, %r11
	addq	%r11, %rax
	movq	%rdx, 8(%rsp)
	movl	%ecx, %edx
	movl	%edi, %ecx
	movb	%cl, 20(%rsp)
	movl	%esi, %ecx
	movb	%cl, 16(%rsp)
	movb	%dl, 4(%rsp)
	.stabn	68,0,14,.LM1-.LFBB1
.LM1:
	movzbl	20(%rsp), %edx
	.stabn	68,0,14,.LM2-.LFBB1
.LM2:
	movslq	%edx, %rdx
	movq	%rdx, %rcx
	salq	$4, %rcx
	movabsq	$x64_idt@GOT, %rdx
	movq	(%rax,%rdx), %rax
	addq	%rcx, %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,15,.LM3-.LFBB1
.LM3:
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,16,.LM4-.LFBB1
.LM4:
	movq	24(%rsp), %rax
	movl	%eax, %edx
	movq	32(%rsp), %rax
	movw	%dx, (%rax)
	.stabn	68,0,17,.LM5-.LFBB1
.LM5:
	movq	32(%rsp), %rax
	movw	$8, 2(%rax)
	.stabn	68,0,18,.LM6-.LFBB1
.LM6:
	movq	32(%rsp), %rax
	movb	$0, 4(%rax)
	.stabn	68,0,19,.LM7-.LFBB1
.LM7:
	movzbl	4(%rsp), %eax
	sall	$5, %eax
	.stabn	68,0,19,.LM8-.LFBB1
.LM8:
	movl	%eax, %edx
	movzbl	16(%rsp), %eax
	orl	%edx, %eax
	.stabn	68,0,19,.LM9-.LFBB1
.LM9:
	movl	%eax, %edx
	.stabn	68,0,19,.LM10-.LFBB1
.LM10:
	movq	32(%rsp), %rax
	movb	%dl, 5(%rax)
	.stabn	68,0,20,.LM11-.LFBB1
.LM11:
	movq	24(%rsp), %rax
	shrq	$16, %rax
	.stabn	68,0,20,.LM12-.LFBB1
.LM12:
	movl	%eax, %edx
	.stabn	68,0,20,.LM13-.LFBB1
.LM13:
	movq	32(%rsp), %rax
	movw	%dx, 6(%rax)
	.stabn	68,0,21,.LM14-.LFBB1
.LM14:
	movq	24(%rsp), %rax
	shrq	$32, %rax
	.stabn	68,0,21,.LM15-.LFBB1
.LM15:
	movl	%eax, %edx
	.stabn	68,0,21,.LM16-.LFBB1
.LM16:
	movq	32(%rsp), %rax
	movl	%edx, 8(%rax)
	.stabn	68,0,22,.LM17-.LFBB1
.LM17:
	movq	32(%rsp), %rax
	movl	$0, 12(%rax)
	.stabn	68,0,23,.LM18-.LFBB1
.LM18:
	nop
	.stabn	68,0,24,.LM19-.LFBB1
.LM19:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	set_idt_desc, .-set_idt_desc
	.stabs	"p_gate:(0,13)=*(0,14)=(0,15)=xss_GATE:",128,0,14,28
	.stabs	"s_GATE:T(0,15)=s16offset_low:(0,4),0,16;selector:(0,4),16,16;dcount:(0,2),32,8;attr:(0,2),40,8;offset_high:(0,4),48,16;offset_high_h:(0,6),64,32;offset_resv:(0,6),96,32;;",128,0,0,0
	.stabs	"gate_t:t(0,14)",128,0,120,0
	.stabs	"base:(0,8)",128,0,15,20
	.stabn	192,0,0,.LFBB1-.LFBB1
	.stabn	224,0,0,.Lscope1-.LFBB1
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"set_igdtr:F(0,1)",36,0,26,set_igdtr
	.stabs	"gdtptr:p(0,16)=*(0,17)=(0,18)=xss_descriptor:",160,0,26,0
	.stabs	"s_descriptor:T(0,18)=s8limit_low:(0,4),0,16;base_low:(0,4),16,16;base_mid:(0,2),32,8;attr1:(0,2),40,8;limit_high_attr2:(0,2),48,8;base_high:(0,2),56,8;;",128,0,0,0
	.globl	set_igdtr
	.type	set_igdtr, @function
set_igdtr:
	.stabn	68,0,27,.LM20-.LFBB2
.LM20:
.LFBB2:
.LFB33:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L6:
	leaq	.L6(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L6, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,28,.LM21-.LFBB2
.LM21:
	nop
	.stabn	68,0,29,.LM22-.LFBB2
.LM22:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	set_igdtr, .-set_igdtr
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"set_iidtr:F(0,1)",36,0,31,set_iidtr
	.stabs	"idtptr:p(0,13)",160,0,31,0
	.globl	set_iidtr
	.type	set_iidtr, @function
set_iidtr:
	.stabn	68,0,32,.LM23-.LFBB3
.LM23:
.LFBB3:
.LFB34:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L9:
	leaq	.L9(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L9, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,33,.LM24-.LFBB3
.LM24:
	movq	(%rsp), %rcx
	.stabn	68,0,33,.LM25-.LFBB3
.LM25:
	movabsq	$x64_iidt_reg@GOT, %rdx
	movq	(%rax,%rdx), %rdx
	movq	%rcx, 2(%rdx)
	.stabn	68,0,34,.LM26-.LFBB3
.LM26:
	movabsq	$x64_iidt_reg@GOT, %rdx
	movq	(%rax,%rdx), %rax
	movw	$4095, (%rax)
	.stabn	68,0,35,.LM27-.LFBB3
.LM27:
	nop
	.stabn	68,0,36,.LM28-.LFBB3
.LM28:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	set_iidtr, .-set_iidtr
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"set_descriptor:F(0,1)",36,0,38,set_descriptor
	.stabs	"p_desc:p(0,16)",160,0,38,12
	.stabs	"base:p(0,6)",160,0,38,8
	.stabs	"limit:p(0,6)",160,0,38,4
	.stabs	"attribute:p(0,4)",160,0,38,0
	.globl	set_descriptor
	.type	set_descriptor, @function
set_descriptor:
	.stabn	68,0,39,.LM29-.LFBB4
.LM29:
.LFBB4:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L12:
	leaq	.L12(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L12, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movl	%esi, 12(%rsp)
	movl	%edx, 8(%rsp)
	movl	%ecx, %eax
	movw	%ax, 4(%rsp)
	.stabn	68,0,40,.LM30-.LFBB4
.LM30:
	movl	8(%rsp), %eax
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movw	%dx, (%rax)
	.stabn	68,0,41,.LM31-.LFBB4
.LM31:
	movl	12(%rsp), %eax
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movw	%dx, 2(%rax)
	.stabn	68,0,42,.LM32-.LFBB4
.LM32:
	movl	12(%rsp), %eax
	shrl	$16, %eax
	.stabn	68,0,42,.LM33-.LFBB4
.LM33:
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movb	%dl, 4(%rax)
	.stabn	68,0,43,.LM34-.LFBB4
.LM34:
	movzwl	4(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,43,.LM35-.LFBB4
.LM35:
	movq	16(%rsp), %rax
	movb	%dl, 5(%rax)
	.stabn	68,0,44,.LM36-.LFBB4
.LM36:
	movl	8(%rsp), %eax
	shrl	$16, %eax
	.stabn	68,0,44,.LM37-.LFBB4
.LM37:
	andl	$15, %eax
	movl	%eax, %edx
	.stabn	68,0,44,.LM38-.LFBB4
.LM38:
	movzwl	4(%rsp), %eax
	shrw	$8, %ax
	andl	$-16, %eax
	.stabn	68,0,44,.LM39-.LFBB4
.LM39:
	orl	%eax, %edx
	.stabn	68,0,44,.LM40-.LFBB4
.LM40:
	movq	16(%rsp), %rax
	movb	%dl, 6(%rax)
	.stabn	68,0,45,.LM41-.LFBB4
.LM41:
	movl	12(%rsp), %eax
	shrl	$24, %eax
	.stabn	68,0,45,.LM42-.LFBB4
.LM42:
	movl	%eax, %edx
	.stabn	68,0,45,.LM43-.LFBB4
.LM43:
	movq	16(%rsp), %rax
	movb	%dl, 7(%rax)
	.stabn	68,0,46,.LM44-.LFBB4
.LM44:
	nop
	.stabn	68,0,47,.LM45-.LFBB4
.LM45:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	set_descriptor, .-set_descriptor
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"set_x64tss_descriptor:F(0,1)",36,0,49,set_x64tss_descriptor
	.stabs	"p_desc:p(0,16)",160,0,49,16
	.stabs	"base:p(0,8)",160,0,49,8
	.stabs	"limit:p(0,6)",160,0,49,4
	.stabs	"attribute:p(0,4)",160,0,49,0
	.globl	set_x64tss_descriptor
	.type	set_x64tss_descriptor, @function
set_x64tss_descriptor:
	.stabn	68,0,50,.LM46-.LFBB5
.LM46:
.LFBB5:
.LFB36:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L14:
	leaq	.L14(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L14, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, 4(%rsp)
	movl	%ecx, %eax
	movw	%ax, (%rsp)
	.stabn	68,0,51,.LM47-.LFBB5
.LM47:
	movq	16(%rsp), %rax
	addq	$8, %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,53,.LM48-.LFBB5
.LM48:
	movl	4(%rsp), %eax
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movw	%dx, (%rax)
	.stabn	68,0,54,.LM49-.LFBB5
.LM49:
	movq	8(%rsp), %rax
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movw	%dx, 2(%rax)
	.stabn	68,0,55,.LM50-.LFBB5
.LM50:
	movq	8(%rsp), %rax
	shrq	$16, %rax
	.stabn	68,0,55,.LM51-.LFBB5
.LM51:
	movl	%eax, %edx
	movq	16(%rsp), %rax
	movb	%dl, 4(%rax)
	.stabn	68,0,56,.LM52-.LFBB5
.LM52:
	movzwl	(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,56,.LM53-.LFBB5
.LM53:
	movq	16(%rsp), %rax
	movb	%dl, 5(%rax)
	.stabn	68,0,57,.LM54-.LFBB5
.LM54:
	movl	4(%rsp), %eax
	shrl	$16, %eax
	.stabn	68,0,57,.LM55-.LFBB5
.LM55:
	andl	$15, %eax
	movl	%eax, %edx
	.stabn	68,0,57,.LM56-.LFBB5
.LM56:
	movzwl	(%rsp), %eax
	shrw	$8, %ax
	andl	$-16, %eax
	.stabn	68,0,57,.LM57-.LFBB5
.LM57:
	orl	%eax, %edx
	.stabn	68,0,57,.LM58-.LFBB5
.LM58:
	movq	16(%rsp), %rax
	movb	%dl, 6(%rax)
	.stabn	68,0,58,.LM59-.LFBB5
.LM59:
	movq	8(%rsp), %rax
	shrq	$24, %rax
	.stabn	68,0,58,.LM60-.LFBB5
.LM60:
	movl	%eax, %edx
	.stabn	68,0,58,.LM61-.LFBB5
.LM61:
	movq	16(%rsp), %rax
	movb	%dl, 7(%rax)
	.stabn	68,0,60,.LM62-.LFBB5
.LM62:
	movq	8(%rsp), %rax
	shrq	$32, %rax
	.stabn	68,0,60,.LM63-.LFBB5
.LM63:
	movl	%eax, %edx
	.stabn	68,0,60,.LM64-.LFBB5
.LM64:
	movq	32(%rsp), %rax
	movl	%edx, (%rax)
	.stabn	68,0,62,.LM65-.LFBB5
.LM65:
	movq	32(%rsp), %rax
	addq	$4, %rax
	.stabn	68,0,62,.LM66-.LFBB5
.LM66:
	movl	$0, (%rax)
	.stabn	68,0,63,.LM67-.LFBB5
.LM67:
	nop
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	set_x64tss_descriptor, .-set_x64tss_descriptor
	.stabs	"x64tssb_h:(0,19)=*(0,6)",128,0,51,32
	.stabn	192,0,0,.LFBB5-.LFBB5
	.stabn	224,0,0,.Lscope5-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"load_x64_gdt:F(0,1)",36,0,65,load_x64_gdt
	.stabs	"igdtrp:p(0,20)=*(0,21)=(0,22)=xss_GDTPTR:",160,0,65,0
	.stabs	"s_GDTPTR:T(0,22)=s10gdtLen:(0,4),0,16;gdtbass:(0,8),16,64;;",128,0,0,0
	.globl	load_x64_gdt
	.type	load_x64_gdt, @function
load_x64_gdt:
	.stabn	68,0,66,.LM68-.LFBB6
.LM68:
.LFBB6:
.LFB37:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L17:
	leaq	.L17(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L17, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,68,.LM69-.LFBB6
.LM69:
	movq	(%rsp), %rdx
#APP
# 68 "../hal/x86/halgdtidt.c" 1
	cli 
	pushq %rax 
	lgdt (%rdx) 
	movabsq $1f,%rax 
	pushq   $8 
	pushq   %rax    
	lretq 
	1:
	movw $0x10,%ax
	movw %ax,%ds
	movw %ax,%es
	movw %ax,%ss
	movw %ax,%fs
	movw %ax,%gs
	popq %rax 
	
# 0 "" 2
	.stabn	68,0,88,.LM70-.LFBB6
.LM70:
#NO_APP
	nop
	.stabn	68,0,89,.LM71-.LFBB6
.LM71:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	load_x64_gdt, .-load_x64_gdt
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"load_x64_idt:F(0,1)",36,0,91,load_x64_idt
	.stabs	"idtptr:p(0,23)=*(0,24)=(0,25)=xss_IDTPTR:",160,0,91,0
	.stabs	"s_IDTPTR:T(0,25)=s10idtLen:(0,4),0,16;idtbass:(0,8),16,64;;",128,0,0,0
	.globl	load_x64_idt
	.type	load_x64_idt, @function
load_x64_idt:
	.stabn	68,0,92,.LM72-.LFBB7
.LM72:
.LFBB7:
.LFB38:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L20:
	leaq	.L20(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L20, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,93,.LM73-.LFBB7
.LM73:
	movq	(%rsp), %rax
#APP
# 93 "../hal/x86/halgdtidt.c" 1
	lidt (%rax) 
	
# 0 "" 2
	.stabn	68,0,98,.LM74-.LFBB7
.LM74:
#NO_APP
	nop
	.stabn	68,0,99,.LM75-.LFBB7
.LM75:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	load_x64_idt, .-load_x64_idt
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"load_x64_tr:F(0,1)",36,0,101,load_x64_tr
	.stabs	"trindx:p(0,4)",160,0,101,0
	.globl	load_x64_tr
	.type	load_x64_tr, @function
load_x64_tr:
	.stabn	68,0,102,.LM76-.LFBB8
.LM76:
.LFBB8:
.LFB39:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L22:
	leaq	.L22(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L22, %r11
	addq	%r11, %rax
	movl	%edi, %eax
	movw	%ax, 4(%rsp)
	.stabn	68,0,103,.LM77-.LFBB8
.LM77:
	movzwl	4(%rsp), %eax
#APP
# 103 "../hal/x86/halgdtidt.c" 1
	ltr %ax 
	
# 0 "" 2
	.stabn	68,0,108,.LM78-.LFBB8
.LM78:
#NO_APP
	nop
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	load_x64_tr, .-load_x64_tr
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"init_descriptor:F(0,1)",36,0,110,init_descriptor
	.globl	init_descriptor
	.type	init_descriptor, @function
init_descriptor:
	.stabn	68,0,111,.LM79-.LFBB9
.LM79:
.LFBB9:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L27:
	leaq	.L27(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L27, %r11
	addq	%r11, %rbx
.LBB2:
	.stabn	68,0,112,.LM80-.LFBB9
.LM80:
	movl	$0, 12(%rsp)
	.stabn	68,0,112,.LM81-.LFBB9
.LM81:
	jmp	.L24
.L25:
	.stabn	68,0,114,.LM82-.LFBB9
.LM82:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movabsq	$x64_gdt@GOT, %rdx
	movq	(%rbx,%rdx), %rdx
	addq	%rdx, %rax
	movl	$0, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$set_descriptor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,115,.LM83-.LFBB9
.LM83:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	8(%rax), %rdx
	movabsq	$x64_gdt@GOT, %rax
	movq	(%rbx,%rax), %rax
	addq	%rdx, %rax
	movl	$8346, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$set_descriptor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,116,.LM84-.LFBB9
.LM84:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	16(%rax), %rdx
	movabsq	$x64_gdt@GOT, %rax
	movq	(%rbx,%rax), %rax
	addq	%rdx, %rax
	movl	$8338, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$set_descriptor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,117,.LM85-.LFBB9
.LM85:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	24(%rax), %rdx
	movabsq	$x64_gdt@GOT, %rax
	movq	(%rbx,%rax), %rax
	addq	%rdx, %rax
	movl	$8442, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$set_descriptor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,118,.LM86-.LFBB9
.LM86:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	32(%rax), %rdx
	movabsq	$x64_gdt@GOT, %rax
	movq	(%rbx,%rax), %rax
	addq	%rdx, %rax
	movl	$8434, %ecx
	movl	$0, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$set_descriptor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,119,.LM87-.LFBB9
.LM87:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movabsq	$x64tss@GOT, %rdx
	movq	(%rbx,%rdx), %rdx
	addq	%rdx, %rax
	.stabn	68,0,119,.LM88-.LFBB9
.LM88:
	movq	%rax, %rsi
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	leaq	48(%rax), %rdx
	movabsq	$x64_gdt@GOT, %rax
	movq	(%rbx,%rax), %rax
	addq	%rdx, %rax
	movl	$137, %ecx
	movl	$103, %edx
	movq	%rax, %rdi
	movabsq	$set_x64tss_descriptor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,121,.LM89-.LFBB9
.LM89:
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movabsq	$x64_gdt@GOT, %rdx
	movq	(%rbx,%rdx), %rdx
	addq	%rdx, %rax
	.stabn	68,0,121,.LM90-.LFBB9
.LM90:
	movq	%rax, %rcx
	.stabn	68,0,121,.LM91-.LFBB9
.LM91:
	movabsq	$x64_igdt_reg@GOT, %rax
	movq	(%rbx,%rax), %rsi
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rsi, %rax
	movq	%rcx, 2(%rax)
	.stabn	68,0,122,.LM92-.LFBB9
.LM92:
	movabsq	$x64_igdt_reg@GOT, %rax
	movq	(%rbx,%rax), %rcx
	movl	12(%rsp), %edx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	addq	%rax, %rax
	addq	%rcx, %rax
	movw	$79, (%rax)
	.stabn	68,0,112,.LM93-.LFBB9
.LM93:
	addl	$1, 12(%rsp)
.L24:
	.stabn	68,0,112,.LM94-.LFBB9
.LM94:
	cmpl	$0, 12(%rsp)
	je	.L25
.LBE2:
	.stabn	68,0,125,.LM95-.LFBB9
.LM95:
	movabsq	$x64_igdt_reg@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$load_x64_gdt@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,126,.LM96-.LFBB9
.LM96:
	movl	$48, %edi
	movabsq	$load_x64_tr@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,128,.LM97-.LFBB9
.LM97:
	nop
	.stabn	68,0,129,.LM98-.LFBB9
.LM98:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	init_descriptor, .-init_descriptor
	.stabs	"gdtindx:(0,6)",128,0,112,12
	.stabn	192,0,0,.LBB2-.LFBB9
	.stabn	224,0,0,.LBE2-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"init_idt_descriptor:F(0,1)",36,0,131,init_idt_descriptor
	.globl	init_idt_descriptor
	.type	init_idt_descriptor, @function
init_idt_descriptor:
	.stabn	68,0,132,.LM99-.LFBB10
.LM99:
.LFBB10:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L32:
	leaq	.L32(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L32, %r11
	addq	%r11, %rbx
.LBB3:
	.stabn	68,0,134,.LM100-.LFBB10
.LM100:
	movw	$0, 14(%rsp)
	.stabn	68,0,134,.LM101-.LFBB10
.LM101:
	jmp	.L29
.L30:
	.stabn	68,0,136,.LM102-.LFBB10
.LM102:
	movzwl	14(%rsp), %eax
	.stabn	68,0,136,.LM103-.LFBB10
.LM103:
	movzbl	%al, %eax
	movl	$0, %ecx
	movabsq	$hxi_exc_general_intpfault@GOT, %rdx
	movq	(%rbx,%rdx), %rdx
	movl	$142, %esi
	movl	%eax, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,134,.LM104-.LFBB10
.LM104:
	movzwl	14(%rsp), %eax
	addl	$1, %eax
	movw	%ax, 14(%rsp)
.L29:
	.stabn	68,0,134,.LM105-.LFBB10
.LM105:
	cmpw	$255, 14(%rsp)
	jbe	.L30
.LBE3:
	.stabn	68,0,139,.LM106-.LFBB10
.LM106:
	movl	$0, %ecx
	movabsq	$exc_divide_error@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$0, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,141,.LM107-.LFBB10
.LM107:
	movl	$0, %ecx
	movabsq	$exc_single_step_exception@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$1, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,143,.LM108-.LFBB10
.LM108:
	movl	$0, %ecx
	movabsq	$exc_nmi@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$2, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,145,.LM109-.LFBB10
.LM109:
	movl	$3, %ecx
	movabsq	$exc_breakpoint_exception@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$3, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,147,.LM110-.LFBB10
.LM110:
	movl	$3, %ecx
	movabsq	$exc_overflow@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$4, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,149,.LM111-.LFBB10
.LM111:
	movl	$0, %ecx
	movabsq	$exc_bounds_check@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$5, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,151,.LM112-.LFBB10
.LM112:
	movl	$0, %ecx
	movabsq	$exc_inval_opcode@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$6, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,153,.LM113-.LFBB10
.LM113:
	movl	$0, %ecx
	movabsq	$exc_copr_not_available@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$7, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,155,.LM114-.LFBB10
.LM114:
	movl	$0, %ecx
	movabsq	$exc_double_fault@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$8, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,157,.LM115-.LFBB10
.LM115:
	movl	$0, %ecx
	movabsq	$exc_copr_seg_overrun@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$9, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,159,.LM116-.LFBB10
.LM116:
	movl	$0, %ecx
	movabsq	$exc_inval_tss@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$10, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,161,.LM117-.LFBB10
.LM117:
	movl	$0, %ecx
	movabsq	$exc_segment_not_present@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$11, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,163,.LM118-.LFBB10
.LM118:
	movl	$0, %ecx
	movabsq	$exc_stack_exception@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$12, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,165,.LM119-.LFBB10
.LM119:
	movl	$0, %ecx
	movabsq	$exc_general_protection@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$13, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,167,.LM120-.LFBB10
.LM120:
	movl	$0, %ecx
	movabsq	$exc_page_fault@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$14, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,171,.LM121-.LFBB10
.LM121:
	movl	$0, %ecx
	movabsq	$exc_copr_error@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$16, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,173,.LM122-.LFBB10
.LM122:
	movl	$0, %ecx
	movabsq	$exc_alignment_check@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$17, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,175,.LM123-.LFBB10
.LM123:
	movl	$0, %ecx
	movabsq	$exc_machine_check@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$18, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,177,.LM124-.LFBB10
.LM124:
	movl	$0, %ecx
	movabsq	$exc_simd_fault@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$19, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,179,.LM125-.LFBB10
.LM125:
	movl	$0, %ecx
	movabsq	$hxi_hwint00@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$32, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,181,.LM126-.LFBB10
.LM126:
	movl	$0, %ecx
	movabsq	$hxi_hwint01@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$33, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,183,.LM127-.LFBB10
.LM127:
	movl	$0, %ecx
	movabsq	$hxi_hwint02@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$34, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,185,.LM128-.LFBB10
.LM128:
	movl	$0, %ecx
	movabsq	$hxi_hwint03@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$35, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,187,.LM129-.LFBB10
.LM129:
	movl	$0, %ecx
	movabsq	$hxi_hwint04@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$36, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,189,.LM130-.LFBB10
.LM130:
	movl	$0, %ecx
	movabsq	$hxi_hwint05@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$37, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,191,.LM131-.LFBB10
.LM131:
	movl	$0, %ecx
	movabsq	$hxi_hwint06@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$38, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,193,.LM132-.LFBB10
.LM132:
	movl	$0, %ecx
	movabsq	$hxi_hwint07@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$39, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,195,.LM133-.LFBB10
.LM133:
	movl	$0, %ecx
	movabsq	$hxi_hwint08@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$40, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,197,.LM134-.LFBB10
.LM134:
	movl	$0, %ecx
	movabsq	$hxi_hwint09@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$41, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,199,.LM135-.LFBB10
.LM135:
	movl	$0, %ecx
	movabsq	$hxi_hwint10@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$42, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,201,.LM136-.LFBB10
.LM136:
	movl	$0, %ecx
	movabsq	$hxi_hwint11@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$43, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,203,.LM137-.LFBB10
.LM137:
	movl	$0, %ecx
	movabsq	$hxi_hwint12@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$44, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,205,.LM138-.LFBB10
.LM138:
	movl	$0, %ecx
	movabsq	$hxi_hwint13@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$45, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,207,.LM139-.LFBB10
.LM139:
	movl	$0, %ecx
	movabsq	$hxi_hwint14@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$46, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,209,.LM140-.LFBB10
.LM140:
	movl	$0, %ecx
	movabsq	$hxi_hwint15@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$47, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,211,.LM141-.LFBB10
.LM141:
	movl	$0, %ecx
	movabsq	$hxi_hwint16@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$48, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,213,.LM142-.LFBB10
.LM142:
	movl	$0, %ecx
	movabsq	$hxi_hwint17@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$49, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,215,.LM143-.LFBB10
.LM143:
	movl	$0, %ecx
	movabsq	$hxi_hwint18@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$50, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,217,.LM144-.LFBB10
.LM144:
	movl	$0, %ecx
	movabsq	$hxi_hwint19@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$51, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,219,.LM145-.LFBB10
.LM145:
	movl	$0, %ecx
	movabsq	$hxi_hwint20@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$52, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,221,.LM146-.LFBB10
.LM146:
	movl	$0, %ecx
	movabsq	$hxi_hwint21@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$53, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,223,.LM147-.LFBB10
.LM147:
	movl	$0, %ecx
	movabsq	$hxi_hwint22@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$54, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,225,.LM148-.LFBB10
.LM148:
	movl	$0, %ecx
	movabsq	$hxi_hwint23@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$55, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,227,.LM149-.LFBB10
.LM149:
	movl	$0, %ecx
	movabsq	$hxi_apic_ipi_schedul@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$224, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,229,.LM150-.LFBB10
.LM150:
	movl	$0, %ecx
	movabsq	$hxi_apic_svr@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$239, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,231,.LM151-.LFBB10
.LM151:
	movl	$0, %ecx
	movabsq	$hxi_apic_timer@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$240, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,233,.LM152-.LFBB10
.LM152:
	movl	$0, %ecx
	movabsq	$hxi_apic_thermal@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$241, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,235,.LM153-.LFBB10
.LM153:
	movl	$0, %ecx
	movabsq	$hxi_apic_performonitor@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$242, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,237,.LM154-.LFBB10
.LM154:
	movl	$0, %ecx
	movabsq	$hxi_apic_lint0@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$243, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,239,.LM155-.LFBB10
.LM155:
	movl	$0, %ecx
	movabsq	$hxi_apic_lint1@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$244, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,241,.LM156-.LFBB10
.LM156:
	movl	$0, %ecx
	movabsq	$hxi_apic_error@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$245, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,243,.LM157-.LFBB10
.LM157:
	movl	$3, %ecx
	movabsq	$exi_sys_call@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdx
	movl	$142, %esi
	movl	$255, %edi
	movabsq	$set_idt_desc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,245,.LM158-.LFBB10
.LM158:
	movabsq	$x64_idt@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$set_iidtr@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,246,.LM159-.LFBB10
.LM159:
	movabsq	$x64_iidt_reg@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$load_x64_idt@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,248,.LM160-.LFBB10
.LM160:
	nop
	.stabn	68,0,249,.LM161-.LFBB10
.LM161:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	init_idt_descriptor, .-init_idt_descriptor
	.stabs	"intindx:(0,4)",128,0,134,14
	.stabn	192,0,0,.LBB3-.LFBB10
	.stabn	224,0,0,.LBE3-.LFBB10
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
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
