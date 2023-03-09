	.file	"i8259.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/i8259.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"out_u8_p:f(0,1)=(0,1)",36,0,86,out_u8_p
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"port:p(0,2)=k(0,3)=(0,4)=@s16;r(0,4);0;65535;",160,0,86,4
	.stabs	"val:p(0,5)=k(0,6)=(0,7)=@s8;r(0,7);0;255;",160,0,86,0
	.stabs	"u16_t:t(0,3)",128,0,9,0
	.stabs	"short unsigned int:t(0,4)",128,0,0,0
	.stabs	"u8_t:t(0,6)",128,0,8,0
	.stabs	"unsigned char:t(0,7)",128,0,0,0
	.type	out_u8_p, @function
out_u8_p:
	.stabs	"../include/halinc/io.h",132,0,0,.Ltext1
.Ltext1:
	.stabn	68,0,87,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB12:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L2:
	leaq	.L2(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L2, %r11
	addq	%r11, %rax
	movl	%edi, %eax
	movl	%esi, %edx
	movw	%ax, 4(%rsp)
	movl	%edx, %eax
	movb	%al, (%rsp)
	.stabn	68,0,89,.LM1-.LFBB1
.LM1:
	movzwl	4(%rsp), %edx
	movzbl	(%rsp), %eax
#APP
# 89 "../include/halinc/io.h" 1
	outb  %al, %dx
	nop 
	nop 
	
# 0 "" 2
	.stabn	68,0,95,.LM2-.LFBB1
.LM2:
#NO_APP
	nop
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE12:
	.size	out_u8_p, .-out_u8_p
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"in_u8:f(0,6)",36,0,97,in_u8
	.stabs	"port:p(0,2)",160,0,97,0
	.type	in_u8, @function
in_u8:
	.stabn	68,0,98,.LM3-.LFBB2
.LM3:
.LFBB2:
.LFB13:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L5:
	leaq	.L5(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L5, %r11
	addq	%r11, %rax
	movl	%edi, %eax
	movw	%ax, 4(%rsp)
	.stabn	68,0,101,.LM4-.LFBB2
.LM4:
	movzwl	4(%rsp), %eax
	movl	%eax, %edx
#APP
# 101 "../include/halinc/io.h" 1
	inb %dx, %al

# 0 "" 2
#NO_APP
	movb	%al, 23(%rsp)
	.stabn	68,0,104,.LM5-.LFBB2
.LM5:
	movzbl	23(%rsp), %eax
	.stabn	68,0,105,.LM6-.LFBB2
.LM6:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE13:
	.size	in_u8, .-in_u8
	.stabs	"tmp:(0,6)",128,0,99,19
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"save_flags_cli:f(0,1)",36,0,214,save_flags_cli
	.stabs	"flags:p(0,8)=*(0,9)=(0,10)=(0,11)=@s64;r(0,11);0;01777777777777777777777;",160,0,214,0
	.stabs	"cpuflg_t:t(0,9)",128,0,18,0
	.stabs	"u64_t:t(0,10)",128,0,11,0
	.stabs	"long unsigned int:t(0,11)",128,0,0,0
	.type	save_flags_cli, @function
save_flags_cli:
	.stabn	68,0,215,.LM7-.LFBB3
.LM7:
.LFBB3:
.LFB23:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L8:
	leaq	.L8(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L8, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,216,.LM8-.LFBB3
.LM8:
	movq	(%rsp), %rax
#APP
# 216 "../include/halinc/io.h" 1
	pushfq 	
cli    	
popq (%rax) 	

# 0 "" 2
	.stabn	68,0,224,.LM9-.LFBB3
.LM9:
#NO_APP
	nop
	.stabn	68,0,225,.LM10-.LFBB3
.LM10:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE23:
	.size	save_flags_cli, .-save_flags_cli
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"restore_flags_sti:f(0,1)",36,0,227,restore_flags_sti
	.stabs	"flagsres:p(0,8)",160,0,227,0
	.type	restore_flags_sti, @function
restore_flags_sti:
	.stabn	68,0,228,.LM11-.LFBB4
.LM11:
.LFBB4:
.LFB24:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L11:
	leaq	.L11(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L11, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,229,.LM12-.LFBB4
.LM12:
	movq	(%rsp), %rax
#APP
# 229 "../include/halinc/io.h" 1
	pushq (%rax) 	
popfq 	

# 0 "" 2
	.stabn	68,0,235,.LM13-.LFBB4
.LM13:
#NO_APP
	nop
	.stabn	68,0,236,.LM14-.LFBB4
.LM14:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE24:
	.size	restore_flags_sti, .-restore_flags_sti
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"init_i8259:F(0,1)",36,0,7,init_i8259
	.globl	init_i8259
	.type	init_i8259, @function
init_i8259:
	.stabs	"../hal/x86/i8259.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,8,.LM15-.LFBB5
.LM15:
.LFBB5:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L14:
	leaq	.L14(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L14, %r11
	addq	%r11, %rbx
	.stabn	68,0,10,.LM16-.LFBB5
.LM16:
	movl	$17, %esi
	movl	$32, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,11,.LM17-.LFBB5
.LM17:
	movl	$17, %esi
	movl	$160, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,12,.LM18-.LFBB5
.LM18:
	movl	$32, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,13,.LM19-.LFBB5
.LM19:
	movl	$40, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,14,.LM20-.LFBB5
.LM20:
	movl	$4, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,15,.LM21-.LFBB5
.LM21:
	movl	$2, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,16,.LM22-.LFBB5
.LM22:
	movl	$1, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,17,.LM23-.LFBB5
.LM23:
	movl	$1, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,20,.LM24-.LFBB5
.LM24:
	movl	$255, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,21,.LM25-.LFBB5
.LM25:
	movl	$255, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,23,.LM26-.LFBB5
.LM26:
	nop
	.stabn	68,0,24,.LM27-.LFBB5
.LM27:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	init_i8259, .-init_i8259
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"i8259_send_eoi:F(0,1)",36,0,26,i8259_send_eoi
	.globl	i8259_send_eoi
	.type	i8259_send_eoi, @function
i8259_send_eoi:
	.stabn	68,0,27,.LM28-.LFBB6
.LM28:
.LFBB6:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L17:
	leaq	.L17(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L17, %r11
	addq	%r11, %rbx
	.stabn	68,0,28,.LM29-.LFBB6
.LM29:
	movl	$32, %esi
	movl	$32, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,29,.LM30-.LFBB6
.LM30:
	movl	$32, %esi
	movl	$160, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,30,.LM31-.LFBB6
.LM31:
	nop
	.stabn	68,0,31,.LM32-.LFBB6
.LM32:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	i8259_send_eoi, .-i8259_send_eoi
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"i8259_enabled_line:F(0,1)",36,0,33,i8259_enabled_line
	.stabs	"line:p(0,12)=(0,13)=r(0,13);0;037777777777;",160,0,33,4
	.stabs	"u32_t:t(0,12)",128,0,10,0
	.stabs	"unsigned int:t(0,13)",128,0,0,0
	.globl	i8259_enabled_line
	.type	i8259_enabled_line, @function
i8259_enabled_line:
	.stabn	68,0,34,.LM33-.LFBB7
.LM33:
.LFBB7:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L22:
	leaq	.L22(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L22, %r11
	addq	%r11, %rbx
	movl	%edi, 4(%rsp)
	.stabn	68,0,36,.LM34-.LFBB7
.LM34:
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$save_flags_cli@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,37,.LM35-.LFBB7
.LM35:
	cmpl	$7, 4(%rsp)
	ja	.L19
.LBB2:
	.stabn	68,0,39,.LM36-.LFBB7
.LM36:
	movl	$33, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 22(%rsp)
	.stabn	68,0,40,.LM37-.LFBB7
.LM37:
	movl	4(%rsp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.stabn	68,0,40,.LM38-.LFBB7
.LM38:
	notl	%eax
	.stabn	68,0,40,.LM39-.LFBB7
.LM39:
	andb	%al, 22(%rsp)
	.stabn	68,0,41,.LM40-.LFBB7
.LM40:
	movzbl	22(%rsp), %eax
	movl	%eax, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.LBE2:
	jmp	.L20
.L19:
.LBB3:
	.stabn	68,0,45,.LM41-.LFBB7
.LM41:
	movl	$33, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 23(%rsp)
	.stabn	68,0,46,.LM42-.LFBB7
.LM42:
	andb	$-5, 23(%rsp)
	.stabn	68,0,47,.LM43-.LFBB7
.LM43:
	movzbl	23(%rsp), %eax
	movl	%eax, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,48,.LM44-.LFBB7
.LM44:
	movl	$161, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 23(%rsp)
	.stabn	68,0,49,.LM45-.LFBB7
.LM45:
	movl	4(%rsp), %eax
	subl	$8, %eax
	.stabn	68,0,49,.LM46-.LFBB7
.LM46:
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.stabn	68,0,49,.LM47-.LFBB7
.LM47:
	notl	%eax
	.stabn	68,0,49,.LM48-.LFBB7
.LM48:
	andb	%al, 23(%rsp)
	.stabn	68,0,50,.LM49-.LFBB7
.LM49:
	movzbl	23(%rsp), %eax
	movl	%eax, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L20:
.LBE3:
	.stabn	68,0,52,.LM50-.LFBB7
.LM50:
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$restore_flags_sti@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,53,.LM51-.LFBB7
.LM51:
	nop
	.stabn	68,0,54,.LM52-.LFBB7
.LM52:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	i8259_enabled_line, .-i8259_enabled_line
	.stabs	"flags:(0,9)",128,0,35,8
	.stabn	192,0,0,.LFBB7-.LFBB7
	.stabs	"amtmp:(0,6)",128,0,39,22
	.stabn	192,0,0,.LBB2-.LFBB7
	.stabn	224,0,0,.LBE2-.LFBB7
	.stabs	"astmp:(0,6)",128,0,45,23
	.stabn	192,0,0,.LBB3-.LFBB7
	.stabn	224,0,0,.LBE3-.LFBB7
	.stabn	224,0,0,.Lscope7-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"i8259_disable_line:F(0,1)",36,0,56,i8259_disable_line
	.stabs	"line:p(0,12)",160,0,56,4
	.globl	i8259_disable_line
	.type	i8259_disable_line, @function
i8259_disable_line:
	.stabn	68,0,57,.LM53-.LFBB8
.LM53:
.LFBB8:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L27:
	leaq	.L27(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L27, %r11
	addq	%r11, %rbx
	movl	%edi, 4(%rsp)
	.stabn	68,0,59,.LM54-.LFBB8
.LM54:
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$save_flags_cli@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,60,.LM55-.LFBB8
.LM55:
	cmpl	$7, 4(%rsp)
	ja	.L24
.LBB4:
	.stabn	68,0,62,.LM56-.LFBB8
.LM56:
	movl	$33, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 22(%rsp)
	.stabn	68,0,63,.LM57-.LFBB8
.LM57:
	movl	4(%rsp), %eax
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.stabn	68,0,63,.LM58-.LFBB8
.LM58:
	orb	%al, 22(%rsp)
	.stabn	68,0,64,.LM59-.LFBB8
.LM59:
	movzbl	22(%rsp), %eax
	movl	%eax, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.LBE4:
	jmp	.L25
.L24:
.LBB5:
	.stabn	68,0,68,.LM60-.LFBB8
.LM60:
	movl	$33, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 23(%rsp)
	.stabn	68,0,69,.LM61-.LFBB8
.LM61:
	orb	$4, 23(%rsp)
	.stabn	68,0,70,.LM62-.LFBB8
.LM62:
	movzbl	23(%rsp), %eax
	movl	%eax, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,71,.LM63-.LFBB8
.LM63:
	movl	$161, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 23(%rsp)
	.stabn	68,0,72,.LM64-.LFBB8
.LM64:
	movl	4(%rsp), %eax
	subl	$8, %eax
	.stabn	68,0,72,.LM65-.LFBB8
.LM65:
	movl	$1, %edx
	movl	%eax, %ecx
	sall	%cl, %edx
	movl	%edx, %eax
	.stabn	68,0,72,.LM66-.LFBB8
.LM66:
	orb	%al, 23(%rsp)
	.stabn	68,0,73,.LM67-.LFBB8
.LM67:
	movzbl	23(%rsp), %eax
	movl	%eax, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L25:
.LBE5:
	.stabn	68,0,75,.LM68-.LFBB8
.LM68:
	leaq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$restore_flags_sti@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,76,.LM69-.LFBB8
.LM69:
	nop
	.stabn	68,0,77,.LM70-.LFBB8
.LM70:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	i8259_disable_line, .-i8259_disable_line
	.stabs	"flags:(0,9)",128,0,58,8
	.stabn	192,0,0,.LFBB8-.LFBB8
	.stabs	"amtmp:(0,6)",128,0,62,22
	.stabn	192,0,0,.LBB4-.LFBB8
	.stabn	224,0,0,.LBE4-.LFBB8
	.stabs	"astmp:(0,6)",128,0,68,23
	.stabn	192,0,0,.LBB5-.LFBB8
	.stabn	224,0,0,.LBE5-.LFBB8
	.stabn	224,0,0,.Lscope8-.LFBB8
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"i8259_save_disableline:F(0,1)",36,0,79,i8259_save_disableline
	.stabs	"svline:p(0,14)=*(0,10)",160,0,79,8
	.stabs	"line:p(0,12)",160,0,79,4
	.globl	i8259_save_disableline
	.type	i8259_save_disableline, @function
i8259_save_disableline:
	.stabn	68,0,80,.LM71-.LFBB9
.LM71:
.LFBB9:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L30:
	leaq	.L30(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L30, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	.stabn	68,0,83,.LM72-.LFBB9
.LM72:
	leaq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$save_flags_cli@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,84,.LM73-.LFBB9
.LM73:
	movl	$33, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 31(%rsp)
	.stabn	68,0,85,.LM74-.LFBB9
.LM74:
	movzbl	31(%rsp), %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,86,.LM75-.LFBB9
.LM75:
	movl	$161, %edi
	movabsq	$in_u8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movb	%al, 31(%rsp)
	.stabn	68,0,87,.LM76-.LFBB9
.LM76:
	movl	24(%rsp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	.stabn	68,0,87,.LM77-.LFBB9
.LM77:
	movzbl	31(%rsp), %eax
	.stabn	68,0,87,.LM78-.LFBB9
.LM78:
	orl	%edx, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,88,.LM79-.LFBB9
.LM79:
	movl	24(%rsp), %edx
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,89,.LM80-.LFBB9
.LM80:
	movl	4(%rsp), %eax
	movl	%eax, %edi
	movabsq	$i8259_disable_line@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,91,.LM81-.LFBB9
.LM81:
	leaq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$restore_flags_sti@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,92,.LM82-.LFBB9
.LM82:
	nop
	.stabn	68,0,93,.LM83-.LFBB9
.LM83:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	i8259_save_disableline, .-i8259_save_disableline
	.stabs	"intftmp:(0,12)",128,0,81,24
	.stabs	"flags:(0,9)",128,0,82,16
	.stabs	"altmp:(0,6)",128,0,84,31
	.stabn	192,0,0,.LFBB9-.LFBB9
	.stabn	224,0,0,.Lscope9-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"i8259_rest_enabledline:F(0,1)",36,0,95,i8259_rest_enabledline
	.stabs	"svline:p(0,14)",160,0,95,8
	.stabs	"line:p(0,12)",160,0,95,4
	.globl	i8259_rest_enabledline
	.type	i8259_rest_enabledline, @function
i8259_rest_enabledline:
	.stabn	68,0,96,.LM84-.LFBB10
.LM84:
.LFBB10:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L33:
	leaq	.L33(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L33, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	.stabn	68,0,98,.LM85-.LFBB10
.LM85:
	leaq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$save_flags_cli@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,100,.LM86-.LFBB10
.LM86:
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	.stabn	68,0,100,.LM87-.LFBB10
.LM87:
	movl	%eax, 28(%rsp)
	.stabn	68,0,102,.LM88-.LFBB10
.LM88:
	movl	28(%rsp), %eax
	movb	%al, 27(%rsp)
	.stabn	68,0,103,.LM89-.LFBB10
.LM89:
	movzbl	27(%rsp), %eax
	movl	%eax, %esi
	movl	$161, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,104,.LM90-.LFBB10
.LM90:
	movl	28(%rsp), %eax
	shrl	$8, %eax
	.stabn	68,0,104,.LM91-.LFBB10
.LM91:
	movb	%al, 27(%rsp)
	.stabn	68,0,105,.LM92-.LFBB10
.LM92:
	movzbl	27(%rsp), %eax
	movl	%eax, %esi
	movl	$33, %edi
	movabsq	$out_u8_p@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,107,.LM93-.LFBB10
.LM93:
	leaq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$restore_flags_sti@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,109,.LM94-.LFBB10
.LM94:
	nop
	.stabn	68,0,110,.LM95-.LFBB10
.LM95:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	i8259_rest_enabledline, .-i8259_rest_enabledline
	.stabs	"flags:(0,9)",128,0,97,16
	.stabs	"intftmp:(0,12)",128,0,100,28
	.stabs	"altmp:(0,6)",128,0,102,27
	.stabn	192,0,0,.LFBB10-.LFBB10
	.stabn	224,0,0,.Lscope10-.LFBB10
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
