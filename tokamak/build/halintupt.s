	.file	"halintupt.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halintupt.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"list_init:f(0,1)=(0,1)",36,0,9,list_init
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"list:p(0,2)=*(0,3)=(0,4)=xss_LIST_H:",160,0,9,0
	.stabs	"s_LIST_H:T(0,4)=s16prev:(0,5)=*(0,4),0,64;next:(0,5),64,64;;",128,0,0,0
	.type	list_init, @function
list_init:
	.stabs	"../include/bastypeinc/list.h",132,0,0,.Ltext1
.Ltext1:
	.stabn	68,0,10,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB0:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L3:
	leaq	.L3(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L3, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,11,.LM1-.LFBB1
.LM1:
	movq	(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,12,.LM2-.LFBB1
.LM2:
	movq	(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,13,.LM3-.LFBB1
.LM3:
	nop
	.stabn	68,0,14,.LM4-.LFBB1
.LM4:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE0:
	.size	list_init, .-list_init
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"__list_add:f(0,1)",36,0,23,__list_add
	.stabs	"new:p(0,2)",160,0,23,16
	.stabs	"prev:p(0,2)",160,0,23,8
	.stabs	"next:p(0,2)",160,0,23,0
	.type	__list_add, @function
__list_add:
	.stabn	68,0,24,.LM5-.LFBB2
.LM5:
.LFBB2:
.LFB2:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L6:
	leaq	.L6(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L6, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,25,.LM6-.LFBB2
.LM6:
	movq	(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,26,.LM7-.LFBB2
.LM7:
	movq	16(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,27,.LM8-.LFBB2
.LM8:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,28,.LM9-.LFBB2
.LM9:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,29,.LM10-.LFBB2
.LM10:
	nop
	.stabn	68,0,30,.LM11-.LFBB2
.LM11:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	__list_add, .-__list_add
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"list_add:f(0,1)",36,0,32,list_add
	.stabs	"new:p(0,2)",160,0,32,8
	.stabs	"head:p(0,2)",160,0,32,0
	.type	list_add, @function
list_add:
	.stabn	68,0,33,.LM12-.LFBB3
.LM12:
.LFBB3:
.LFB3:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L9:
	leaq	.L9(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L9, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,34,.LM13-.LFBB3
.LM13:
	movq	(%rsp), %rdx
	movq	8(%rdx), %rdx
	.stabn	68,0,34,.LM14-.LFBB3
.LM14:
	movq	(%rsp), %rsi
	movq	8(%rsp), %rcx
	movq	%rcx, %rdi
	movabsq	$__list_add@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	call	*%rax
	.stabn	68,0,35,.LM15-.LFBB3
.LM15:
	nop
	.stabn	68,0,36,.LM16-.LFBB3
.LM16:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3:
	.size	list_add, .-list_add
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"intfltdsc_t_init:F(0,1)",36,0,8,intfltdsc_t_init
	.stabs	"initp:p(0,6)=*(0,7)=(0,8)=xss_INTFLTDSC:",160,0,8,24
	.stabs	"flg:p(0,9)=(0,10)=r(0,10);0;037777777777;",160,0,8,20
	.stabs	"sts:p(0,9)",160,0,8,16
	.stabs	"prity:p(0,11)=(0,12)=@s64;r(0,12);0;01777777777777777777777;",160,0,8,8
	.stabs	"irq:p(0,11)",160,0,8,0
	.stabs	"s_INTFLTDSC:T(0,8)=s160i_lock:(0,13)=(0,14)=s4lock:(0,15)=B(0,9),0,32;;,0,32;i_flg:(0,9),32,32;i_stus:(0,9),64,32;i_prity:(0,11),128,64;i_irqnr:(0,11),192,64;i_deep:(0,11),256,64;i_indx:(0,16)=(0,12),320,64;i_serlist:(0,3),384,128;i_sernr:(0,11),512,64;i_serthrdlst:(0,3),576,128;i_serthrdnr:(0,11),704,64;i_onethread:(0,17)=*(0,1),768,64;i_rbtreeroot:(0,17),832,64;i_serfisrlst:(0,3),896,128;i_serfisrnr:(0,11),1024,64;i_msgmpool:(0,17),1088,64;i_privp:(0,17),1152,64;i_extp:(0,17),1216,64;;",128,0,0,0
	.stabs	"u32_t:t(0,9)",128,0,10,0
	.stabs	"unsigned int:t(0,10)",128,0,0,0
	.stabs	"uint_t:t(0,11)",128,0,17,0
	.stabs	"long unsigned int:t(0,12)",128,0,0,0
	.stabs	"u64_t:t(0,16)",128,0,11,0
	.globl	intfltdsc_t_init
	.type	intfltdsc_t_init, @function
intfltdsc_t_init:
	.stabs	"../hal/x86/halintupt.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,9,.LM17-.LFBB4
.LM17:
.LFBB4:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
.L12:
	leaq	.L12(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L12, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movl	%edx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,10,.LM18-.LFBB4
.LM18:
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_spinlock_init@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,11,.LM19-.LFBB4
.LM19:
	movq	24(%rsp), %rax
	movl	20(%rsp), %edx
	movl	%edx, 4(%rax)
	.stabn	68,0,12,.LM20-.LFBB4
.LM20:
	movq	24(%rsp), %rax
	movl	16(%rsp), %edx
	movl	%edx, 8(%rax)
	.stabn	68,0,13,.LM21-.LFBB4
.LM21:
	movq	24(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, 16(%rax)
	.stabn	68,0,14,.LM22-.LFBB4
.LM22:
	movq	24(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 24(%rax)
	.stabn	68,0,15,.LM23-.LFBB4
.LM23:
	movq	24(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,16,.LM24-.LFBB4
.LM24:
	movq	24(%rsp), %rax
	movq	$0, 40(%rax)
	.stabn	68,0,17,.LM25-.LFBB4
.LM25:
	movq	24(%rsp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,18,.LM26-.LFBB4
.LM26:
	movq	24(%rsp), %rax
	movq	$0, 64(%rax)
	.stabn	68,0,19,.LM27-.LFBB4
.LM27:
	movq	24(%rsp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,20,.LM28-.LFBB4
.LM28:
	movq	24(%rsp), %rax
	movq	$0, 88(%rax)
	.stabn	68,0,21,.LM29-.LFBB4
.LM29:
	movq	24(%rsp), %rax
	movq	$0, 96(%rax)
	.stabn	68,0,22,.LM30-.LFBB4
.LM30:
	movq	24(%rsp), %rax
	movq	$0, 104(%rax)
	.stabn	68,0,23,.LM31-.LFBB4
.LM31:
	movq	24(%rsp), %rax
	addq	$112, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,24,.LM32-.LFBB4
.LM32:
	movq	24(%rsp), %rax
	movq	$0, 128(%rax)
	.stabn	68,0,25,.LM33-.LFBB4
.LM33:
	movq	24(%rsp), %rax
	movq	$0, 136(%rax)
	.stabn	68,0,26,.LM34-.LFBB4
.LM34:
	movq	24(%rsp), %rax
	movq	$0, 144(%rax)
	.stabn	68,0,27,.LM35-.LFBB4
.LM35:
	movq	24(%rsp), %rax
	movq	$0, 152(%rax)
	.stabn	68,0,28,.LM36-.LFBB4
.LM36:
	nop
	.stabn	68,0,29,.LM37-.LFBB4
.LM37:
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	intfltdsc_t_init, .-intfltdsc_t_init
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"init_intfltdsc:F(0,1)",36,0,31,init_intfltdsc
	.globl	init_intfltdsc
	.type	init_intfltdsc, @function
init_intfltdsc:
	.stabn	68,0,32,.LM38-.LFBB5
.LM38:
.LFBB5:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L17:
	leaq	.L17(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L17, %r11
	addq	%r11, %rbx
.LBB2:
	.stabn	68,0,33,.LM39-.LFBB5
.LM39:
	movq	$0, 8(%rsp)
	.stabn	68,0,33,.LM40-.LFBB5
.LM40:
	jmp	.L14
.L15:
	.stabn	68,0,35,.LM41-.LFBB5
.LM41:
	movq	8(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$5, %rax
	movabsq	$machintflt@GOT, %rdx
	movq	(%rbx,%rdx), %rdx
	leaq	(%rax,%rdx), %rdi
	movq	8(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, %r8
	movq	%rax, %rcx
	movl	$0, %edx
	movl	$0, %esi
	movabsq	$intfltdsc_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,33,.LM42-.LFBB5
.LM42:
	addq	$1, 8(%rsp)
.L14:
	.stabn	68,0,33,.LM43-.LFBB5
.LM43:
	cmpq	$255, 8(%rsp)
	jbe	.L15
.LBE2:
	.stabn	68,0,37,.LM44-.LFBB5
.LM44:
	nop
	.stabn	68,0,38,.LM45-.LFBB5
.LM45:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	init_intfltdsc, .-init_intfltdsc
	.stabs	"i:(0,11)",128,0,33,8
	.stabn	192,0,0,.LBB2-.LFBB5
	.stabn	224,0,0,.LBE2-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"init_halintupt:F(0,1)",36,0,40,init_halintupt
	.globl	init_halintupt
	.type	init_halintupt, @function
init_halintupt:
	.stabn	68,0,41,.LM46-.LFBB6
.LM46:
.LFBB6:
.LFB34:
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
.L20:
	leaq	.L20(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L20, %r11
	addq	%r11, %rbx
	.stabn	68,0,42,.LM47-.LFBB6
.LM47:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_descriptor@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,43,.LM48-.LFBB6
.LM48:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_idt_descriptor@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,44,.LM49-.LFBB6
.LM49:
	movl	$0, %eax
	movabsq	$init_intfltdsc@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,46,.LM50-.LFBB6
.LM50:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_i8259@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,47,.LM51-.LFBB6
.LM51:
	movl	$0, %edi
	movq	%rbx, %r15
	movabsq	$i8259_enabled_line@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,48,.LM52-.LFBB6
.LM52:
	nop
	.stabn	68,0,49,.LM53-.LFBB6
.LM53:
	addq	$8, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	init_halintupt, .-init_halintupt
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"hal_retn_intfltdsc:F(0,6)",36,0,51,hal_retn_intfltdsc
	.stabs	"irqnr:p(0,11)",160,0,51,0
	.globl	hal_retn_intfltdsc
	.type	hal_retn_intfltdsc, @function
hal_retn_intfltdsc:
	.stabn	68,0,52,.LM54-.LFBB7
.LM54:
.LFBB7:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L24:
	leaq	.L24(%rip), %rdx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L24, %r11
	addq	%r11, %rdx
	movq	%rdi, (%rsp)
	.stabn	68,0,53,.LM55-.LFBB7
.LM55:
	cmpq	$256, (%rsp)
	jbe	.L22
	.stabn	68,0,55,.LM56-.LFBB7
.LM56:
	movl	$0, %eax
	jmp	.L23
.L22:
	.stabn	68,0,57,.LM57-.LFBB7
.LM57:
	movq	(%rsp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$5, %rax
	movabsq	$machintflt@GOT, %rcx
	movq	(%rdx,%rcx), %rdx
	addq	%rdx, %rax
.L23:
	.stabn	68,0,58,.LM58-.LFBB7
.LM58:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	hal_retn_intfltdsc, .-hal_retn_intfltdsc
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"intserdsc_t_init:F(0,1)",36,0,60,intserdsc_t_init
	.stabs	"initp:p(0,18)=*(0,19)=(0,20)=xss_INTSERDSC:",160,0,60,32
	.stabs	"flg:p(0,9)",160,0,60,28
	.stabs	"intfltp:p(0,6)",160,0,60,16
	.stabs	"device:p(0,17)",160,0,60,8
	.stabs	"handle:p(0,21)=(0,22)=*(0,23)=f(0,24)=(0,25)=(0,26)=@s64;r(0,26);01000000000000000000000;00777777777777777777777;",160,0,60,0
	.stabs	"s_INTSERDSC:T(0,20)=s72s_list:(0,3),0,128;s_indevlst:(0,3),128,128;s_flg:(0,9),256,32;s_intfltp:(0,6),320,64;s_device:(0,17),384,64;s_indx:(0,11),448,64;s_handle:(0,21),512,64;;",128,0,0,0
	.stabs	"intflthandle_t:t(0,21)",128,0,37,0
	.stabs	"drvstus_t:t(0,24)",128,0,27,0
	.stabs	"sint_t:t(0,25)",128,0,16,0
	.stabs	"long int:t(0,26)",128,0,0,0
	.globl	intserdsc_t_init
	.type	intserdsc_t_init, @function
intserdsc_t_init:
	.stabn	68,0,61,.LM59-.LFBB8
.LM59:
.LFBB8:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$40, %rsp
	.cfi_def_cfa_offset 56
.L27:
	leaq	.L27(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L27, %r11
	addq	%r11, %rbx
	movq	%rdi, 32(%rsp)
	movl	%esi, 28(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,63,.LM60-.LFBB8
.LM60:
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,64,.LM61-.LFBB8
.LM61:
	movq	32(%rsp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,65,.LM62-.LFBB8
.LM62:
	movq	32(%rsp), %rax
	movl	28(%rsp), %edx
	movl	%edx, 32(%rax)
	.stabn	68,0,66,.LM63-.LFBB8
.LM63:
	movq	32(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, 40(%rax)
	.stabn	68,0,67,.LM64-.LFBB8
.LM64:
	movq	32(%rsp), %rax
	movq	$0, 56(%rax)
	.stabn	68,0,68,.LM65-.LFBB8
.LM65:
	movq	32(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, 48(%rax)
	.stabn	68,0,69,.LM66-.LFBB8
.LM66:
	movq	32(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 64(%rax)
	.stabn	68,0,70,.LM67-.LFBB8
.LM67:
	nop
	.stabn	68,0,71,.LM68-.LFBB8
.LM68:
	addq	$40, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	intserdsc_t_init, .-intserdsc_t_init
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"hal_add_ihandle:F(0,27)=(0,25)",36,0,73,hal_add_ihandle
	.stabs	"bool_t:t(0,27)",128,0,21,0
	.stabs	"intdscp:p(0,6)",160,0,73,8
	.stabs	"serdscp:p(0,18)",160,0,73,0
	.globl	hal_add_ihandle
	.type	hal_add_ihandle, @function
hal_add_ihandle:
	.stabn	68,0,74,.LM69-.LFBB9
.LM69:
.LFBB9:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
.L33:
	leaq	.L33(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L33, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,75,.LM70-.LFBB9
.LM70:
	cmpq	$0, 8(%rsp)
	je	.L29
	.stabn	68,0,75,.LM71-.LFBB9
.LM71:
	cmpq	$0, (%rsp)
	jne	.L30
.L29:
	.stabn	68,0,77,.LM72-.LFBB9
.LM72:
	movl	$0, %eax
	jmp	.L32
.L30:
	.stabn	68,0,80,.LM73-.LFBB9
.LM73:
	movq	8(%rsp), %rax
	leaq	24(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_spinlock_saveflg_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,81,.LM74-.LFBB9
.LM74:
	movq	8(%rsp), %rax
	leaq	48(%rax), %rdx
	movq	(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_add@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,82,.LM75-.LFBB9
.LM75:
	movq	8(%rsp), %rax
	movq	64(%rax), %rax
	.stabn	68,0,82,.LM76-.LFBB9
.LM76:
	leaq	1(%rax), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 64(%rax)
	.stabn	68,0,83,.LM77-.LFBB9
.LM77:
	movq	8(%rsp), %rax
	leaq	24(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_spinunlock_restflg_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,84,.LM78-.LFBB9
.LM78:
	movl	$1, %eax
.L32:
	.stabn	68,0,85,.LM79-.LFBB9
.LM79:
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	hal_add_ihandle, .-hal_add_ihandle
	.stabs	"cpuflg:(0,28)=(0,16)",128,0,79,24
	.stabs	"cpuflg_t:t(0,28)",128,0,18,0
	.stabn	192,0,0,.LFBB9-.LFBB9
	.stabn	224,0,0,.Lscope9-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"hal_enable_intline:F(0,24)",36,0,87,hal_enable_intline
	.stabs	"ifdnr:p(0,11)",160,0,87,8
	.globl	hal_enable_intline
	.type	hal_enable_intline, @function
hal_enable_intline:
	.stabn	68,0,88,.LM80-.LFBB10
.LM80:
.LFBB10:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L38:
	leaq	.L38(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L38, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,89,.LM81-.LFBB10
.LM81:
	cmpq	$19, 8(%rsp)
	jbe	.L35
	.stabn	68,0,89,.LM82-.LFBB10
.LM82:
	cmpq	$36, 8(%rsp)
	jbe	.L36
.L35:
	.stabn	68,0,91,.LM83-.LFBB10
.LM83:
	movq	$-1, %rax
	jmp	.L37
.L36:
	.stabn	68,0,93,.LM84-.LFBB10
.LM84:
	movq	8(%rsp), %rdx
	movl	%edx, %edi
	movq	%rax, %r15
	movabsq	$i8259_enabled_line@PLTOFF, %rdx
	addq	%rax, %rdx
	call	*%rdx
	.stabn	68,0,94,.LM85-.LFBB10
.LM85:
	movl	$0, %eax
.L37:
	.stabn	68,0,95,.LM86-.LFBB10
.LM86:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	hal_enable_intline, .-hal_enable_intline
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabs	"hal_disable_intline:F(0,24)",36,0,97,hal_disable_intline
	.stabs	"ifdnr:p(0,11)",160,0,97,8
	.globl	hal_disable_intline
	.type	hal_disable_intline, @function
hal_disable_intline:
	.stabn	68,0,98,.LM87-.LFBB11
.LM87:
.LFBB11:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L43:
	leaq	.L43(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L43, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,100,.LM88-.LFBB11
.LM88:
	cmpq	$19, 8(%rsp)
	jbe	.L40
	.stabn	68,0,100,.LM89-.LFBB11
.LM89:
	cmpq	$36, 8(%rsp)
	jbe	.L41
.L40:
	.stabn	68,0,102,.LM90-.LFBB11
.LM90:
	movq	$-1, %rax
	jmp	.L42
.L41:
	.stabn	68,0,104,.LM91-.LFBB11
.LM91:
	movq	8(%rsp), %rdx
	movl	%edx, %edi
	movq	%rax, %r15
	movabsq	$i8259_disable_line@PLTOFF, %rdx
	addq	%rax, %rdx
	call	*%rdx
	.stabn	68,0,105,.LM92-.LFBB11
.LM92:
	movl	$0, %eax
.L42:
	.stabn	68,0,106,.LM93-.LFBB11
.LM93:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	hal_disable_intline, .-hal_disable_intline
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabs	"hal_intflt_default:F(0,24)",36,0,108,hal_intflt_default
	.stabs	"ift_nr:p(0,11)",160,0,108,8
	.stabs	"sframe:p(0,17)",160,0,108,0
	.globl	hal_intflt_default
	.type	hal_intflt_default, @function
hal_intflt_default:
	.stabn	68,0,109,.LM94-.LFBB12
.LM94:
.LFBB12:
.LFB40:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L48:
	leaq	.L48(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L48, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,110,.LM95-.LFBB12
.LM95:
	movl	$4294967295, %eax
	cmpq	%rax, 8(%rsp)
	je	.L45
	.stabn	68,0,110,.LM96-.LFBB12
.LM96:
	cmpq	$0, (%rsp)
	jne	.L46
.L45:
	.stabn	68,0,112,.LM97-.LFBB12
.LM97:
	movq	$-1, %rax
	jmp	.L47
.L46:
	.stabn	68,0,114,.LM98-.LFBB12
.LM98:
	movl	$0, %eax
.L47:
	.stabn	68,0,115,.LM99-.LFBB12
.LM99:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	hal_intflt_default, .-hal_intflt_default
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.section	.rodata
.LC0:
	.string	"hal_run_intfdsc err"
	.text
	.stabs	"hal_run_intflthandle:F(0,1)",36,0,118,hal_run_intflthandle
	.stabs	"char:t(0,29)=r(0,29);0;127;",128,0,0,0
	.stabs	"ifdnr:p(0,11)",160,0,118,8
	.stabs	"sframe:p(0,17)",160,0,118,0
	.globl	hal_run_intflthandle
	.type	hal_run_intflthandle, @function
hal_run_intflthandle:
	.stabn	68,0,119,.LM100-.LFBB13
.LM100:
.LFBB13:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$56, %rsp
	.cfi_def_cfa_offset 80
.L54:
	leaq	.L54(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L54, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,124,.LM101-.LFBB13
.LM101:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$hal_retn_intfltdsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,125,.LM102-.LFBB13
.LM102:
	cmpq	$0, 32(%rsp)
	jne	.L50
	.stabn	68,0,127,.LM103-.LFBB13
.LM103:
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_sysdie@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,128,.LM104-.LFBB13
.LM104:
	jmp	.L49
.L50:
	.stabn	68,0,132,.LM105-.LFBB13
.LM105:
	movq	32(%rsp), %rax
	movq	56(%rax), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,132,.LM106-.LFBB13
.LM106:
	jmp	.L52
.L53:
	.stabn	68,0,135,.LM107-.LFBB13
.LM107:
	movq	40(%rsp), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,138,.LM108-.LFBB13
.LM108:
	movq	24(%rsp), %rax
	movq	64(%rax), %r8
	.stabn	68,0,138,.LM109-.LFBB13
.LM109:
	movq	24(%rsp), %rax
	movq	48(%rax), %rcx
	movq	(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	*%r8
	.stabn	68,0,132,.LM110-.LFBB13
.LM110:
	movq	40(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 40(%rsp)
.L52:
	.stabn	68,0,132,.LM111-.LFBB13
.LM111:
	movq	32(%rsp), %rax
	addq	$48, %rax
	.stabn	68,0,132,.LM112-.LFBB13
.LM112:
	cmpq	%rax, 40(%rsp)
	jne	.L53
	.stabn	68,0,141,.LM113-.LFBB13
.LM113:
	nop
.L49:
	.stabn	68,0,142,.LM114-.LFBB13
.LM114:
	addq	$56, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	hal_run_intflthandle, .-hal_run_intflthandle
	.stabs	"isdscp:(0,18)",128,0,120,24
	.stabs	"intserdsc_t:t(0,19)",128,0,50,0
	.stabs	"lst:(0,2)",128,0,121,40
	.stabs	"list_h_t:t(0,3)",128,0,11,0
	.stabs	"ifdscp:(0,6)",128,0,124,32
	.stabs	"intfltdsc_t:t(0,7)",128,0,39,0
	.stabn	192,0,0,.LFBB13-.LFBB13
	.stabn	224,0,0,.Lscope13-.LFBB13
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.section	.rodata
.LC1:
	.string	"hal_do_hwint fail\n"
.LC2:
	.string	"hal_do_hwint ifdscp NULL\n"
	.text
	.stabs	"hal_do_hwint:F(0,1)",36,0,145,hal_do_hwint
	.stabs	"intnumb:p(0,11)",160,0,145,8
	.stabs	"krnlsframp:p(0,17)",160,0,145,0
	.globl	hal_do_hwint
	.type	hal_do_hwint, @function
hal_do_hwint:
	.stabn	68,0,146,.LM115-.LFBB14
.LM115:
.LFBB14:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
.L61:
	leaq	.L61(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L61, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,147,.LM116-.LFBB14
.LM116:
	movq	$0, 24(%rsp)
	.stabn	68,0,149,.LM117-.LFBB14
.LM117:
	cmpq	$256, 8(%rsp)
	ja	.L56
	.stabn	68,0,149,.LM118-.LFBB14
.LM118:
	cmpq	$0, (%rsp)
	jne	.L57
.L56:
	.stabn	68,0,151,.LM119-.LFBB14
.LM119:
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_sysdie@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,152,.LM120-.LFBB14
.LM120:
	jmp	.L55
.L57:
	.stabn	68,0,156,.LM121-.LFBB14
.LM121:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$hal_retn_intfltdsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,157,.LM122-.LFBB14
.LM122:
	cmpq	$0, 24(%rsp)
	jne	.L59
	.stabn	68,0,159,.LM123-.LFBB14
.LM123:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_sysdie@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,160,.LM124-.LFBB14
.LM124:
	jmp	.L55
.L59:
	.stabn	68,0,164,.LM125-.LFBB14
.LM125:
	movq	24(%rsp), %rax
	leaq	16(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_spinlock_saveflg_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,165,.LM126-.LFBB14
.LM126:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,165,.LM127-.LFBB14
.LM127:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 40(%rax)
	.stabn	68,0,166,.LM128-.LFBB14
.LM128:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,166,.LM129-.LFBB14
.LM129:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,169,.LM130-.LFBB14
.LM130:
	movq	(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$hal_run_intflthandle@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,170,.LM131-.LFBB14
.LM131:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,170,.LM132-.LFBB14
.LM132:
	leaq	-1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,173,.LM133-.LFBB14
.LM133:
	movq	24(%rsp), %rax
	leaq	16(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$hal_spinunlock_restflg_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,174,.LM134-.LFBB14
.LM134:
	nop
.L55:
	.stabn	68,0,175,.LM135-.LFBB14
.LM135:
	addq	$40, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE42:
	.size	hal_do_hwint, .-hal_do_hwint
	.stabs	"ifdscp:(0,6)",128,0,147,24
	.stabs	"cpuflg:(0,28)",128,0,148,16
	.stabn	192,0,0,.LFBB14-.LFBB14
	.stabn	224,0,0,.Lscope14-.LFBB14
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabs	"hal_fault_allocator:F(0,1)",36,0,178,hal_fault_allocator
	.stabs	"faultnumb:p(0,11)",160,0,178,8
	.stabs	"krnlsframp:p(0,17)",160,0,178,0
	.globl	hal_fault_allocator
	.type	hal_fault_allocator, @function
hal_fault_allocator:
	.stabn	68,0,179,.LM136-.LFBB15
.LM136:
.LFBB15:
.LFB43:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L64:
	leaq	.L64(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L64, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,185,.LM137-.LFBB15
.LM137:
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movabsq	$hal_do_hwint@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,187,.LM138-.LFBB15
.LM138:
	nop
	.stabn	68,0,188,.LM139-.LFBB15
.LM139:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	hal_fault_allocator, .-hal_fault_allocator
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.stabs	"hal_syscl_allocator:F(0,30)=(0,25)",36,0,190,hal_syscl_allocator
	.stabs	"sysstus_t:t(0,30)",128,0,28,0
	.stabs	"sys_nr:p(0,11)",160,0,190,8
	.stabs	"msgp:p(0,17)",160,0,190,0
	.globl	hal_syscl_allocator
	.type	hal_syscl_allocator, @function
hal_syscl_allocator:
	.stabn	68,0,191,.LM140-.LFBB16
.LM140:
.LFBB16:
.LFB44:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L67:
	leaq	.L67(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L67, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,192,.LM141-.LFBB16
.LM141:
	movl	$0, %eax
	.stabn	68,0,193,.LM142-.LFBB16
.LM142:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	hal_syscl_allocator, .-hal_syscl_allocator
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabs	"hal_hwint_allocator:F(0,1)",36,0,196,hal_hwint_allocator
	.stabs	"intnumb:p(0,11)",160,0,196,8
	.stabs	"krnlsframp:p(0,17)",160,0,196,0
	.globl	hal_hwint_allocator
	.type	hal_hwint_allocator, @function
hal_hwint_allocator:
	.stabn	68,0,197,.LM143-.LFBB17
.LM143:
.LFBB17:
.LFB45:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L70:
	leaq	.L70(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L70, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,199,.LM144-.LFBB17
.LM144:
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movabsq	$hal_do_hwint@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,200,.LM145-.LFBB17
.LM145:
	nop
	.stabn	68,0,201,.LM146-.LFBB17
.LM146:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	hal_hwint_allocator, .-hal_hwint_allocator
.Lscope17:
	.stabs	"",36,0,0,.Lscope17-.LFBB17
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
