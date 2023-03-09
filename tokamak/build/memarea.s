	.file	"memarea.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/memarea.c",100,0,2,.Ltext0
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
	.stabs	"arclst_t_init:F(0,1)",36,0,8,arclst_t_init
	.stabs	"initp:p(0,6)=*(0,7)=(0,8)=xss_ARCLST:",160,0,8,0
	.stabs	"s_ARCLST:T(0,8)=s48al_lru1:(0,3),0,128;al_lru2:(0,3),128,128;al_lru1nr:(0,9)=(0,10)=@s64;r(0,10);0;01777777777777777777777;,256,64;al_lru2nr:(0,9),320,64;;",128,0,0,0
	.stabs	"uint_t:t(0,9)",128,0,17,0
	.stabs	"long unsigned int:t(0,10)",128,0,0,0
	.globl	arclst_t_init
	.type	arclst_t_init, @function
arclst_t_init:
	.stabs	"../hal/x86/memarea.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,9,.LM17-.LFBB4
.LM17:
.LFBB4:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
.L12:
	leaq	.L12(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L12, %r11
	addq	%r11, %rbx
	movq	%rdi, (%rsp)
	.stabn	68,0,10,.LM18-.LFBB4
.LM18:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,11,.LM19-.LFBB4
.LM19:
	movq	(%rsp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,12,.LM20-.LFBB4
.LM20:
	movq	(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,13,.LM21-.LFBB4
.LM21:
	movq	(%rsp), %rax
	movq	$0, 40(%rax)
	.stabn	68,0,14,.LM22-.LFBB4
.LM22:
	nop
	.stabn	68,0,15,.LM23-.LFBB4
.LM23:
	addq	$8, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	arclst_t_init, .-arclst_t_init
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"mafo_deft_init:F(0,11)=(0,12)=(0,10)",36,0,17,mafo_deft_init
	.stabs	"mmstus_t:t(0,11)",128,0,38,0
	.stabs	"u64_t:t(0,12)",128,0,11,0
	.stabs	"memarea:p(0,13)=*(0,14)=xss_MEMAREA:",160,0,17,16
	.stabs	"valp:p(0,15)=*(0,1)",160,0,17,8
	.stabs	"val:p(0,9)",160,0,17,0
	.stabs	"s_MEMAREA:T(0,14)=s5912ma_list:(0,3),0,128;ma_lock:(0,16)=(0,17)=s4lock:(0,18)=B(0,19)=(0,20)=r(0,20);0;037777777777;,0,32;;,128,32;ma_stus:(0,9),192,64;ma_flgs:(0,9),256,64;ma_type:(0,9),320,64;ma_sem:(0,21)=(0,22)=xss_SEM:,384,448;ma_waitlst:(0,23)=(0,24)=xss_WAIT_L_HEAD:,832,320;ma_maxpages:(0,9),1152,64;ma_allocpages:(0,9),1216,64;ma_freepages:(0,9),1280,64;ma_resvpages:(0,9),1344,64;ma_horizline:(0,9),1408,64;ma_logicstart:(0,25)=(0,10),1472,64;ma_logicend:(0,25),1536,64;ma_logicsz:(0,9),1600,64;ma_effectstart:(0,25),1664,64;ma_effectend:(0,25),1728,64;ma_effectsz:(0,9),1792,64;ma_allmsadsclst:(0,3),1856,128;ma_allmsadscnr:(0,9),1984,64;ma_arcpglst:(0,7),2048,384;ma_funcobj:(0,26)=(0,27)=xss_MAFUNCOBJS:,2432,320;ma_mdmdata:(0,28)=(0,29)=xss_MEMDIVMER:,2752,44480;ma_privp:(0,15),47232,64;;",128,0,0,0
	.stabs	"u32_t:t(0,19)",128,0,10,0
	.stabs	"unsigned int:t(0,20)",128,0,0,0
	.stabs	"s_SEM:T(0,22)=s56sem_lock:(0,16),0,32;sem_flg:(0,9),64,64;sem_count:(0,30)=(0,31)=@s64;r(0,31);01000000000000000000000;00777777777777777777777;,128,64;sem_waitlst:(0,32)=(0,33)=xss_KWLST:,192,256;;",128,0,0,0
	.stabs	"s_WAIT_L_HEAD:T(0,24)=s40wlh_llist:(0,3),0,128;wlh_lock:(0,16),128,32;wlh_count:(0,34)=(0,35)=xss_ATOMIC:,160,32;wlh_privte:(0,15),192,64;wlh_upfun:(0,36)=*(0,37)=f(0,38)=(0,30),256,64;;",128,0,0,0
	.stabs	"adr_t:t(0,25)",128,0,19,0
	.stabs	"s_MAFUNCOBJS:T(0,27)=s40mafo_init:(0,39)=*(0,40)=f(0,11),0,64;mafo_exit:(0,41)=*(0,42)=f(0,11),64,64;mafo_aloc:(0,43)=*(0,44)=f(0,11),128,64;mafo_free:(0,43),192,64;mafo_recy:(0,43),256,64;;",128,0,0,0
	.stabs	"s_MEMDIVMER:T(0,29)=s5560dm_lock:(0,16),0,32;dm_stus:(0,19),32,32;dm_dmmaxindx:(0,9),64,64;dm_phydmindx:(0,9),128,64;dm_predmindx:(0,9),192,64;dm_divnr:(0,9),256,64;dm_mernr:(0,9),320,64;dm_mdmlielst:(0,45)=ar(0,46)=@s64;r(0,46);0;01777777777777777777777;;0;00000000000000000000063;(0,47)=(0,48)=xss_BAFHLST:,384,43264;dm_onemsalst:(0,47),43648,832;;",128,0,0,0
	.stabs	"sint_t:t(0,30)",128,0,16,0
	.stabs	"long int:t(0,31)",128,0,0,0
	.stabs	"s_KWLST:T(0,33)=s32wl_lock:(0,16),0,32;wl_tdnr:(0,9),64,64;wl_list:(0,3),128,128;;",128,0,0,0
	.stabs	"s_ATOMIC:T(0,35)=s4a_count:(0,49)=B(0,50)=(0,51)=r(0,51);-2147483648;2147483647;,0,32;;",128,0,0,0
	.stabs	"bool_t:t(0,38)",128,0,21,0
	.stabs	"s_BAFHLST:T(0,48)=s104af_lock:(0,16),0,32;af_stus:(0,19),32,32;af_oder:(0,9),64,64;af_oderpnr:(0,9),128,64;af_fobjnr:(0,9),192,64;af_mobjnr:(0,9),256,64;af_alcindx:(0,9),320,64;af_freindx:(0,9),384,64;af_frelst:(0,3),448,128;af_alclst:(0,3),576,128;af_ovelst:(0,3),704,128;;",128,0,0,0
	.stabs	"s32_t:t(0,50)",128,0,14,0
	.stabs	"int:t(0,51)",128,0,0,0
	.globl	mafo_deft_init
	.type	mafo_deft_init, @function
mafo_deft_init:
	.stabn	68,0,18,.LM24-.LFBB5
.LM24:
.LFBB5:
.LFB33:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L15:
	leaq	.L15(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L15, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,19,.LM25-.LFBB5
.LM25:
	movl	$0, %eax
	.stabn	68,0,20,.LM26-.LFBB5
.LM26:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	mafo_deft_init, .-mafo_deft_init
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"mafo_deft_exit:F(0,11)",36,0,22,mafo_deft_exit
	.stabs	"memarea:p(0,13)",160,0,22,0
	.globl	mafo_deft_exit
	.type	mafo_deft_exit, @function
mafo_deft_exit:
	.stabn	68,0,23,.LM27-.LFBB6
.LM27:
.LFBB6:
.LFB34:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L18:
	leaq	.L18(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L18, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,24,.LM28-.LFBB6
.LM28:
	movl	$0, %eax
	.stabn	68,0,25,.LM29-.LFBB6
.LM29:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	mafo_deft_exit, .-mafo_deft_exit
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"mafo_deft_afry:F(0,11)",36,0,27,mafo_deft_afry
	.stabs	"memarea:p(0,13)",160,0,27,24
	.stabs	"mafrspack:p(0,52)=*(0,53)=(0,54)=xss_MMAFRETS:",160,0,27,16
	.stabs	"valp:p(0,15)",160,0,27,8
	.stabs	"val:p(0,9)",160,0,27,0
	.stabs	"s_MMAFRETS:T(0,54)=s32mat_fist:(0,55)=*(0,56)=(0,57)=xss_MSADSC:,0,64;mat_sz:(0,9),64,64;mat_phyadr:(0,9),128,64;mat_runmode:(0,58)=(0,59)=@s16;r(0,59);0;65535;,192,16;mat_gen:(0,58),208,16;mat_mask:(0,19),224,32;;",128,0,0,0
	.stabs	"s_MSADSC:T(0,57)=s40md_list:(0,3),0,128;md_lock:(0,16),128,32;md_indxflgs:(0,60)=(0,61)=xss_MSADFLGS:,160,32;md_phyadrs:(0,62)=(0,63)=xss_PHYADRFLGS:,192,64;md_odlink:(0,15),256,64;;",128,0,0,0
	.stabs	"u16_t:t(0,58)",128,0,9,0
	.stabs	"short unsigned int:t(0,59)",128,0,0,0
	.stabs	"s_MSADFLGS:T(0,61)=s4mf_olkty:(0,19),0,2;mf_lstty:(0,19),2,1;mf_mocty:(0,19),3,2;mf_marty:(0,19),5,3;mf_uindx:(0,19),8,24;;",128,0,0,0
	.stabs	"s_PHYADRFLGS:T(0,63)=s8paf_alloc:(0,12),0,1;paf_shared:(0,12),1,1;paf_swap:(0,12),2,1;paf_cache:(0,12),3,1;paf_kmap:(0,12),4,1;paf_lock:(0,12),5,1;paf_dirty:(0,12),6,1;paf_busy:(0,12),7,1;paf_rv2:(0,12),8,4;paf_padrs:(0,12),12,52;;",128,0,0,0
	.globl	mafo_deft_afry
	.type	mafo_deft_afry, @function
mafo_deft_afry:
	.stabn	68,0,28,.LM30-.LFBB7
.LM30:
.LFBB7:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L21:
	leaq	.L21(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L21, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,29,.LM31-.LFBB7
.LM31:
	movl	$0, %eax
	.stabn	68,0,30,.LM32-.LFBB7
.LM32:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	mafo_deft_afry, .-mafo_deft_afry
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"mafuncobjs_t_init:F(0,1)",36,0,32,mafuncobjs_t_init
	.stabs	"initp:p(0,64)=*(0,26)",160,0,32,0
	.globl	mafuncobjs_t_init
	.type	mafuncobjs_t_init, @function
mafuncobjs_t_init:
	.stabn	68,0,33,.LM33-.LFBB8
.LM33:
.LFBB8:
.LFB36:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L24:
	leaq	.L24(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L24, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,34,.LM34-.LFBB8
.LM34:
	movq	(%rsp), %rdx
	movabsq	$mafo_deft_init@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, (%rdx)
	.stabn	68,0,35,.LM35-.LFBB8
.LM35:
	movq	(%rsp), %rdx
	movabsq	$mafo_deft_exit@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 8(%rdx)
	.stabn	68,0,36,.LM36-.LFBB8
.LM36:
	movq	(%rsp), %rdx
	movabsq	$mafo_deft_afry@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 16(%rdx)
	.stabn	68,0,37,.LM37-.LFBB8
.LM37:
	movq	(%rsp), %rdx
	movabsq	$mafo_deft_afry@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 24(%rdx)
	.stabn	68,0,38,.LM38-.LFBB8
.LM38:
	movq	(%rsp), %rdx
	movabsq	$mafo_deft_afry@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	movq	%rax, 32(%rdx)
	.stabn	68,0,39,.LM39-.LFBB8
.LM39:
	nop
	.stabn	68,0,40,.LM40-.LFBB8
.LM40:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	mafuncobjs_t_init, .-mafuncobjs_t_init
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"bafhlst_t_init:F(0,1)",36,0,43,bafhlst_t_init
	.stabs	"initp:p(0,65)=*(0,47)",160,0,43,24
	.stabs	"stus:p(0,19)",160,0,43,20
	.stabs	"oder:p(0,9)",160,0,43,8
	.stabs	"oderpnr:p(0,9)",160,0,43,0
	.globl	bafhlst_t_init
	.type	bafhlst_t_init, @function
bafhlst_t_init:
	.stabn	68,0,44,.LM41-.LFBB9
.LM41:
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
.L27:
	leaq	.L27(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L27, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,45,.LM42-.LFBB9
.LM42:
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_init@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,46,.LM43-.LFBB9
.LM43:
	movq	24(%rsp), %rax
	movl	20(%rsp), %edx
	movl	%edx, 4(%rax)
	.stabn	68,0,47,.LM44-.LFBB9
.LM44:
	movq	24(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,48,.LM45-.LFBB9
.LM45:
	movq	24(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 16(%rax)
	.stabn	68,0,49,.LM46-.LFBB9
.LM46:
	movq	24(%rsp), %rax
	movq	$0, 24(%rax)
	.stabn	68,0,51,.LM47-.LFBB9
.LM47:
	movq	24(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,52,.LM48-.LFBB9
.LM48:
	movq	24(%rsp), %rax
	movq	$0, 40(%rax)
	.stabn	68,0,53,.LM49-.LFBB9
.LM49:
	movq	24(%rsp), %rax
	movq	$0, 48(%rax)
	.stabn	68,0,54,.LM50-.LFBB9
.LM50:
	movq	24(%rsp), %rax
	addq	$56, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,55,.LM51-.LFBB9
.LM51:
	movq	24(%rsp), %rax
	addq	$72, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,56,.LM52-.LFBB9
.LM52:
	movq	24(%rsp), %rax
	addq	$88, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,57,.LM53-.LFBB9
.LM53:
	nop
	.stabn	68,0,58,.LM54-.LFBB9
.LM54:
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
	.size	bafhlst_t_init, .-bafhlst_t_init
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"memdivmer_t_init:F(0,1)",36,0,61,memdivmer_t_init
	.stabs	"initp:p(0,66)=*(0,28)",160,0,61,8
	.globl	memdivmer_t_init
	.type	memdivmer_t_init, @function
memdivmer_t_init:
	.stabn	68,0,62,.LM55-.LFBB10
.LM55:
.LFBB10:
.LFB38:
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
.L32:
	leaq	.L32(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L32, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,63,.LM56-.LFBB10
.LM56:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_init@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,64,.LM57-.LFBB10
.LM57:
	movq	8(%rsp), %rax
	movl	$0, 4(%rax)
	.stabn	68,0,65,.LM58-.LFBB10
.LM58:
	movq	8(%rsp), %rax
	movq	$0, 8(%rax)
	.stabn	68,0,66,.LM59-.LFBB10
.LM59:
	movq	8(%rsp), %rax
	movq	$0, 16(%rax)
	.stabn	68,0,67,.LM60-.LFBB10
.LM60:
	movq	8(%rsp), %rax
	movq	$0, 24(%rax)
	.stabn	68,0,68,.LM61-.LFBB10
.LM61:
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,69,.LM62-.LFBB10
.LM62:
	movq	8(%rsp), %rax
	movq	$0, 40(%rax)
.LBB2:
	.stabn	68,0,72,.LM63-.LFBB10
.LM63:
	movq	$0, 24(%rsp)
	.stabn	68,0,72,.LM64-.LFBB10
.LM64:
	jmp	.L29
.L30:
	.stabn	68,0,74,.LM65-.LFBB10
.LM65:
	movq	24(%rsp), %rax
	movl	$1, %edx
	movl	%eax, %ecx
	salq	%cl, %rdx
	movq	%rdx, %rcx
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	48(%rax), %rdx
	movq	8(%rsp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	24(%rsp), %rax
	movq	%rax, %rdx
	movl	$3, %esi
	movabsq	$bafhlst_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,72,.LM66-.LFBB10
.LM66:
	addq	$1, 24(%rsp)
.L29:
	.stabn	68,0,72,.LM67-.LFBB10
.LM67:
	cmpq	$51, 24(%rsp)
	jbe	.L30
.LBE2:
	.stabn	68,0,76,.LM68-.LFBB10
.LM68:
	movq	8(%rsp), %rax
	addq	$5456, %rax
	movl	$1, %ecx
	movl	$0, %edx
	movl	$1, %esi
	movq	%rax, %rdi
	movabsq	$bafhlst_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,77,.LM69-.LFBB10
.LM69:
	nop
	.stabn	68,0,78,.LM70-.LFBB10
.LM70:
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
.LFE38:
	.size	memdivmer_t_init, .-memdivmer_t_init
	.stabs	"li:(0,9)",128,0,72,24
	.stabn	192,0,0,.LBB2-.LFBB10
	.stabn	224,0,0,.LBE2-.LFBB10
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabs	"memarea_t_init:F(0,1)",36,0,81,memarea_t_init
	.stabs	"initp:p(0,67)=*(0,68)=(0,14)",160,0,81,8
	.globl	memarea_t_init
	.type	memarea_t_init, @function
memarea_t_init:
	.stabn	68,0,82,.LM71-.LFBB11
.LM71:
.LFBB11:
.LFB39:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
.L35:
	leaq	.L35(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L35, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,83,.LM72-.LFBB11
.LM72:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,84,.LM73-.LFBB11
.LM73:
	movq	8(%rsp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_init@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,85,.LM74-.LFBB11
.LM74:
	movq	8(%rsp), %rax
	movq	$0, 24(%rax)
	.stabn	68,0,86,.LM75-.LFBB11
.LM75:
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,87,.LM76-.LFBB11
.LM76:
	movq	8(%rsp), %rax
	movq	$0, 40(%rax)
	.stabn	68,0,88,.LM77-.LFBB11
.LM77:
	movq	8(%rsp), %rax
	movq	$0, 144(%rax)
	.stabn	68,0,89,.LM78-.LFBB11
.LM78:
	movq	8(%rsp), %rax
	movq	$0, 152(%rax)
	.stabn	68,0,90,.LM79-.LFBB11
.LM79:
	movq	8(%rsp), %rax
	movq	$0, 160(%rax)
	.stabn	68,0,91,.LM80-.LFBB11
.LM80:
	movq	8(%rsp), %rax
	movq	$0, 168(%rax)
	.stabn	68,0,92,.LM81-.LFBB11
.LM81:
	movq	8(%rsp), %rax
	movq	$0, 176(%rax)
	.stabn	68,0,93,.LM82-.LFBB11
.LM82:
	movq	8(%rsp), %rax
	movq	$0, 184(%rax)
	.stabn	68,0,94,.LM83-.LFBB11
.LM83:
	movq	8(%rsp), %rax
	movq	$0, 192(%rax)
	.stabn	68,0,95,.LM84-.LFBB11
.LM84:
	movq	8(%rsp), %rax
	movq	$0, 200(%rax)
	.stabn	68,0,96,.LM85-.LFBB11
.LM85:
	movq	8(%rsp), %rax
	movq	$0, 208(%rax)
	.stabn	68,0,97,.LM86-.LFBB11
.LM86:
	movq	8(%rsp), %rax
	movq	$0, 216(%rax)
	.stabn	68,0,98,.LM87-.LFBB11
.LM87:
	movq	8(%rsp), %rax
	movq	$0, 224(%rax)
	.stabn	68,0,99,.LM88-.LFBB11
.LM88:
	movq	8(%rsp), %rax
	addq	$232, %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,100,.LM89-.LFBB11
.LM89:
	movq	8(%rsp), %rax
	movq	$0, 248(%rax)
	.stabn	68,0,101,.LM90-.LFBB11
.LM90:
	movq	8(%rsp), %rax
	addq	$256, %rax
	movq	%rax, %rdi
	movabsq	$arclst_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,102,.LM91-.LFBB11
.LM91:
	movq	8(%rsp), %rax
	addq	$304, %rax
	movq	%rax, %rdi
	movabsq	$mafuncobjs_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,105,.LM92-.LFBB11
.LM92:
	movq	8(%rsp), %rax
	addq	$344, %rax
	movq	%rax, %rdi
	movabsq	$memdivmer_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,106,.LM93-.LFBB11
.LM93:
	movq	8(%rsp), %rax
	movq	$0, 5904(%rax)
	.stabn	68,0,107,.LM94-.LFBB11
.LM94:
	nop
	.stabn	68,0,108,.LM95-.LFBB11
.LM95:
	addq	$24, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	memarea_t_init, .-memarea_t_init
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabs	"init_memarea_core:F(0,38)",36,0,110,init_memarea_core
	.stabs	"mbsp:p(0,69)=*(0,70)=(0,71)=xss_MACHBSTART:",160,0,110,8
	.stabs	"s_MACHBSTART:T(0,71)=s1207mb_migc:(0,12),0,64;mb_chksum:(0,12),64,64;mb_krlinitstack:(0,12),128,64;mb_krlitstacksz:(0,12),192,64;mb_imgpadr:(0,12),256,64;mb_imgsz:(0,12),320,64;mb_krlimgpadr:(0,12),384,64;mb_krlsz:(0,12),448,64;mb_krlvec:(0,12),512,64;mb_krlrunmode:(0,12),576,64;mb_kalldendpadr:(0,12),640,64;mb_ksepadrs:(0,12),704,64;mb_ksepadre:(0,12),768,64;mb_kservadrs:(0,12),832,64;mb_kservadre:(0,12),896,64;mb_nextwtpadr:(0,12),960,64;mb_bfontpadr:(0,12),1024,64;mb_bfontsz:(0,12),1088,64;mb_fvrmphyadr:(0,12),1152,64;mb_fvrmsz:(0,12),1216,64;mb_cpumode:(0,12),1280,64;mb_memsz:(0,12),1344,64;mb_e820padr:(0,12),1408,64;mb_e820nr:(0,12),1472,64;mb_e820sz:(0,12),1536,64;mb_e820expadr:(0,12),1600,64;mb_e820exnr:(0,12),1664,64;mb_e820exsz:(0,12),1728,64;mb_memznpadr:(0,12),1792,64;mb_memznnr:(0,12),1856,64;mb_memznsz:(0,12),1920,64;mb_memznchksum:(0,12),1984,64;mb_memmappadr:(0,12),2048,64;mb_memmapnr:(0,12),2112,64;mb_memmapsz:(0,12),2176,64;mb_memmapchksum:(0,12),2240,64;mb_pml4padr:(0,12),2304,64;mb_subpageslen:(0,12),2368,64;mb_kpmapphymemsz:(0,12),2432,64;mb_ebdaphyadr:(0,12),2496,64;mb_mrsdp:(0,72)=(0,73)=xss_MRSDP:,2560,288;mb_ghparm:(0,74)=(0,75)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"s_MRSDP:T(0,73)=s36rp_sign:(0,12),0,64;rp_chksum:(0,76)=(0,77)=@s8;r(0,77);0;255;,64,8;rp_oemid:(0,78)=ar(0,46);0;00000000000000000000005;(0,76),72,48;rp_revn:(0,76),120,8;rp_rsdtphyadr:(0,19),128,32;rp_len:(0,19),160,32;rp_xsdtphyadr:(0,12),192,64;rp_echksum:(0,76),256,8;rp_resv:(0,79)=ar(0,46);0;00000000000000000000002;(0,76),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,75)=s851gh_mode:(0,19),0,32;gh_x:(0,19),32,32;gh_y:(0,19),64,32;gh_framphyadr:(0,19),96,32;gh_onepixbits:(0,19),128,32;gh_vbemodenr:(0,19),160,32;gh_vifphyadr:(0,19),192,32;gh_vmifphyadr:(0,19),224,32;gh_bank:(0,19),256,32;gh_curdipbnk:(0,19),288,32;gh_nextbnk:(0,19),320,32;gh_banksz:(0,19),352,32;gh_logophyadrs:(0,19),384,32;gh_logophyadre:(0,19),416,32;gh_fontadr:(0,19),448,32;gh_ftsectadr:(0,19),480,32;gh_ftsectnr:(0,19),512,32;gh_fnthight:(0,19),544,32;gh_nxtcharsx:(0,19),576,32;gh_nxtcharsy:(0,19),608,32;gh_linesz:(0,19),640,32;gh_vbeinfo:(0,80)=(0,81)=xss_VBEINFO:,672,4096;gh_vminfo:(0,82)=(0,83)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"u8_t:t(0,76)",128,0,8,0
	.stabs	"unsigned char:t(0,77)",128,0,0,0
	.stabs	"s_VBEINFO:T(0,81)=s512vbesignature:(0,84)=ar(0,46);0;00000000000000000000003;(0,85)=r(0,85);0;127;,0,32;vbeversion:(0,58),32,16;oemstringptr:(0,19),48,32;capabilities:(0,19),80,32;videomodeptr:(0,19),112,32;totalmemory:(0,58),144,16;oemsoftwarerev:(0,58),160,16;oemvendornameptr:(0,19),176,32;oemproductnameptr:(0,19),208,32;oemproductrevptr:(0,19),240,32;reserved:(0,86)=ar(0,46);0;00000000000000000000335;(0,76),272,1776;oemdata:(0,87)=ar(0,46);0;00000000000000000000377;(0,76),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,83)=s255ModeAttributes:(0,58),0,16;WinAAttributes:(0,76),16,8;WinBAttributes:(0,76),24,8;WinGranularity:(0,58),32,16;WinSize:(0,58),48,16;WinASegment:(0,58),64,16;WinBSegment:(0,58),80,16;WinFuncPtr:(0,19),96,32;BytesPerScanLine:(0,58),128,16;XResolution:(0,58),144,16;YResolution:(0,58),160,16;XCharSize:(0,76),176,8;YCharSize:(0,76),184,8;NumberOfPlanes:(0,76),192,8;BitsPerPixel:(0,76),200,8;NumberOfBanks:(0,76),208,8;MemoryModel:(0,76),216,8;BankSize:(0,76),224,8;NumberOfImagePages:(0,76),232,8;Reserved:(0,76),240,8;RedMaskSize:(0,76),248,8;RedFieldPosition:(0,76),256,8;GreenMaskSize:(0,76),264,8;GreenFieldPosition:(0,76),272,8;BlueMaskSize:(0,76),280,8;BlueFieldPosition:(0,76),288,8;RsvdMaskSize:(0,76),296,8;RsvdFieldPosition:(0,76),304,8;DirectColorModeInfo:(0,76),312,8;PhysBasePtr:(0,19),320,32;Reserved1:(0,19),352,32;Reserved2:(0,58),384,16;LinBytesPerScanLine:(0,58),400,16;BnkNumberOfImagePages:(0,76),416,8;LinNumberOfImagePages:(0,76),424,8;LinRedMaskSize:(0,76),432,8;LinRedFieldPosition:(0,76),440,8;LinGreenMaskSize:(0,76),448,8;LinGreenFieldPosition:(0,76),456,8;LinBlueMaskSize:(0,76),464,8;LinBlueFieldPosition:(0,76),472,8;LinRsvdMaskSize:(0,76),480,8;LinRsvdFieldPosition:(0,76),488,8;MaxPixelClock:(0,19),496,32;Reserved3:(0,88)=ar(0,46);0;00000000000000000000274;(0,76),528,1512;;",128,0,0,0
	.stabs	"char:t(0,85)",128,0,0,0
	.globl	init_memarea_core
	.type	init_memarea_core, @function
init_memarea_core:
	.stabn	68,0,111,.LM96-.LFBB12
.LM96:
.LFBB12:
.LFB40:
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
.L41:
	leaq	.L41(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L41, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,113,.LM97-.LFBB12
.LM97:
	movq	8(%rsp), %rax
	movq	120(%rax), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,116,.LM98-.LFBB12
.LM98:
	movq	32(%rsp), %rcx
	movq	8(%rsp), %rax
	movl	$23648, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$initchkadr_is_ok@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,116,.LM99-.LFBB12
.LM99:
	testl	%eax, %eax
	je	.L37
	.stabn	68,0,118,.LM100-.LFBB12
.LM100:
	movl	$0, %eax
	jmp	.L38
.L37:
	.stabn	68,0,121,.LM101-.LFBB12
.LM101:
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,121,.LM102-.LFBB12
.LM102:
	movq	%rax, 24(%rsp)
.LBB3:
	.stabn	68,0,122,.LM103-.LFBB12
.LM103:
	movq	$0, 40(%rsp)
	.stabn	68,0,122,.LM104-.LFBB12
.LM104:
	jmp	.L39
.L40:
	.stabn	68,0,125,.LM105-.LFBB12
.LM105:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdx
	.stabn	68,0,125,.LM106-.LFBB12
.LM106:
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$memarea_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,122,.LM107-.LFBB12
.LM107:
	addq	$1, 40(%rsp)
.L39:
	.stabn	68,0,122,.LM108-.LFBB12
.LM108:
	cmpq	$3, 40(%rsp)
	jbe	.L40
.LBE3:
	.stabn	68,0,128,.LM109-.LFBB12
.LM109:
	movq	24(%rsp), %rax
	movq	$1, 40(%rax)
	.stabn	68,0,129,.LM110-.LFBB12
.LM110:
	movq	24(%rsp), %rax
	movq	$0, 184(%rax)
	.stabn	68,0,130,.LM111-.LFBB12
.LM111:
	movq	24(%rsp), %rax
	movq	$33554431, 192(%rax)
	.stabn	68,0,131,.LM112-.LFBB12
.LM112:
	movq	24(%rsp), %rax
	movq	$33554432, 200(%rax)
	.stabn	68,0,134,.LM113-.LFBB12
.LM113:
	movq	24(%rsp), %rax
	addq	$5912, %rax
	.stabn	68,0,134,.LM114-.LFBB12
.LM114:
	movq	$2, 40(%rax)
	.stabn	68,0,135,.LM115-.LFBB12
.LM115:
	movq	24(%rsp), %rax
	addq	$5912, %rax
	.stabn	68,0,135,.LM116-.LFBB12
.LM116:
	movq	$33554432, 184(%rax)
	.stabn	68,0,136,.LM117-.LFBB12
.LM117:
	movq	24(%rsp), %rax
	addq	$5912, %rax
	.stabn	68,0,136,.LM118-.LFBB12
.LM118:
	movabsq	$17179869183, %rsi
	movq	%rsi, 192(%rax)
	.stabn	68,0,137,.LM119-.LFBB12
.LM119:
	movq	24(%rsp), %rax
	addq	$5912, %rax
	.stabn	68,0,137,.LM120-.LFBB12
.LM120:
	movabsq	$17146314752, %rcx
	movq	%rcx, 200(%rax)
	.stabn	68,0,140,.LM121-.LFBB12
.LM121:
	movq	24(%rsp), %rax
	addq	$11824, %rax
	.stabn	68,0,140,.LM122-.LFBB12
.LM122:
	movq	$3, 40(%rax)
	.stabn	68,0,141,.LM123-.LFBB12
.LM123:
	movq	24(%rsp), %rax
	addq	$11824, %rax
	.stabn	68,0,141,.LM124-.LFBB12
.LM124:
	movabsq	$17179869184, %rsi
	movq	%rsi, 184(%rax)
	.stabn	68,0,142,.LM125-.LFBB12
.LM125:
	movq	24(%rsp), %rax
	addq	$11824, %rax
	.stabn	68,0,142,.LM126-.LFBB12
.LM126:
	movq	$-1, 192(%rax)
	.stabn	68,0,143,.LM127-.LFBB12
.LM127:
	movq	24(%rsp), %rax
	addq	$11824, %rax
	.stabn	68,0,143,.LM128-.LFBB12
.LM128:
	movabsq	$-17179869185, %rcx
	movq	%rcx, 200(%rax)
	.stabn	68,0,145,.LM129-.LFBB12
.LM129:
	movq	24(%rsp), %rax
	addq	$17736, %rax
	.stabn	68,0,145,.LM130-.LFBB12
.LM130:
	movq	$4, 40(%rax)
	.stabn	68,0,148,.LM131-.LFBB12
.LM131:
	movq	8(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rdx, 224(%rax)
	.stabn	68,0,151,.LM132-.LFBB12
.LM132:
	movq	8(%rsp), %rax
	movq	$4, 232(%rax)
	.stabn	68,0,152,.LM133-.LFBB12
.LM133:
	movq	8(%rsp), %rax
	movq	$23648, 240(%rax)
	.stabn	68,0,155,.LM134-.LFBB12
.LM134:
	movq	32(%rsp), %rax
	addq	$27743, %rax
	.stabn	68,0,155,.LM135-.LFBB12
.LM135:
	andq	$-4096, %rax
	movq	%rax, %rdx
	.stabn	68,0,155,.LM136-.LFBB12
.LM136:
	movq	8(%rsp), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,156,.LM137-.LFBB12
.LM137:
	movl	$1, %eax
.L38:
	.stabn	68,0,157,.LM138-.LFBB12
.LM138:
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
.LFE40:
	.size	init_memarea_core, .-init_memarea_core
	.stabs	"phymarea:(0,12)",128,0,113,32
	.stabs	"virmarea:(0,67)",128,0,121,24
	.stabs	"memarea_t:t(0,68)",128,0,125,0
	.stabn	192,0,0,.LFBB12-.LFBB12
	.stabs	"mai:(0,9)",128,0,122,40
	.stabn	192,0,0,.LBB3-.LFBB12
	.stabn	224,0,0,.LBE3-.LFBB12
	.stabn	224,0,0,.Lscope12-.LFBB12
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.section	.rodata
.LC0:
	.string	"init_memarea_core fail"
	.text
	.stabs	"init_memarea:F(0,1)",36,0,160,init_memarea
	.globl	init_memarea
	.type	init_memarea, @function
init_memarea:
	.stabn	68,0,161,.LM139-.LFBB13
.LM139:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L46:
	leaq	.L46(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L46, %r11
	addq	%r11, %rbx
	.stabn	68,0,162,.LM140-.LFBB13
.LM140:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$init_memarea_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,162,.LM141-.LFBB13
.LM141:
	testq	%rax, %rax
	jne	.L45
	.stabn	68,0,164,.LM142-.LFBB13
.LM142:
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,166,.LM143-.LFBB13
.LM143:
	nop
.L45:
	nop
	.stabn	68,0,167,.LM144-.LFBB13
.LM144:
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
.LFE41:
	.size	init_memarea, .-init_memarea
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.stabs	"find_inmarea_msadscsegmant:F(0,38)",36,0,169,find_inmarea_msadscsegmant
	.stabs	"mareap:p(0,67)",160,0,169,40
	.stabs	"fmstat:p(0,55)",160,0,169,32
	.stabs	"fmsanr:p(0,9)",160,0,169,24
	.stabs	"retmsastatp:p(0,89)=*(0,55)",160,0,169,16
	.stabs	"retmsaendp:p(0,89)",160,0,170,8
	.stabs	"retfmnr:p(0,90)=*(0,9)",160,0,170,0
	.globl	find_inmarea_msadscsegmant
	.type	find_inmarea_msadscsegmant, @function
find_inmarea_msadscsegmant:
	.stabn	68,0,171,.LM145-.LFBB14
.LM145:
.LFBB14:
.LFB42:
	.cfi_startproc
	endbr64
	subq	$48, %rsp
	.cfi_def_cfa_offset 56
.L51:
	leaq	.L51(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L51, %r11
	addq	%r11, %rax
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	.stabn	68,0,172,.LM146-.LFBB14
.LM146:
	cmpq	$0, 40(%rsp)
	je	.L48
	.stabn	68,0,172,.LM147-.LFBB14
.LM147:
	cmpq	$0, 32(%rsp)
	je	.L48
	.stabn	68,0,172,.LM148-.LFBB14
.LM148:
	cmpq	$0, 24(%rsp)
	je	.L48
	.stabn	68,0,172,.LM149-.LFBB14
.LM149:
	cmpq	$0, 16(%rsp)
	je	.L48
	.stabn	68,0,172,.LM150-.LFBB14
.LM150:
	cmpq	$0, 8(%rsp)
	je	.L48
	.stabn	68,0,173,.LM151-.LFBB14
.LM151:
	cmpq	$0, (%rsp)
	jne	.L49
.L48:
	.stabn	68,0,175,.LM152-.LFBB14
.LM152:
	movl	$0, %eax
	jmp	.L50
.L49:
	.stabn	68,0,178,.LM153-.LFBB14
.LM153:
	movl	$1, %eax
.L50:
	.stabn	68,0,179,.LM154-.LFBB14
.LM154:
	addq	$48, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE42:
	.size	find_inmarea_msadscsegmant, .-find_inmarea_msadscsegmant
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabs	"continumsadsc_is_ok:F(0,9)",36,0,181,continumsadsc_is_ok
	.stabs	"prevmsa:p(0,55)",160,0,181,16
	.stabs	"nextmsa:p(0,55)",160,0,181,8
	.stabs	"cmpmdfp:p(0,91)=*(0,60)",160,0,181,0
	.globl	continumsadsc_is_ok
	.type	continumsadsc_is_ok, @function
continumsadsc_is_ok:
	.stabn	68,0,182,.LM155-.LFBB15
.LM155:
.LFBB15:
.LFB43:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L60:
	leaq	.L60(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L60, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,183,.LM156-.LFBB15
.LM156:
	cmpq	$0, 16(%rsp)
	je	.L53
	.stabn	68,0,183,.LM157-.LFBB15
.LM157:
	cmpq	$0, (%rsp)
	jne	.L54
.L53:
	.stabn	68,0,185,.LM158-.LFBB15
.LM158:
	movq	$-1, %rax
	jmp	.L55
.L54:
	.stabn	68,0,188,.LM159-.LFBB15
.LM159:
	cmpq	$0, 16(%rsp)
	je	.L56
	.stabn	68,0,188,.LM160-.LFBB15
.LM160:
	cmpq	$0, 8(%rsp)
	je	.L56
	.stabn	68,0,190,.LM161-.LFBB15
.LM161:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,190,.LM162-.LFBB15
.LM162:
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,190,.LM163-.LFBB15
.LM163:
	cmpb	%al, %dl
	jne	.L57
	.stabn	68,0,191,.LM164-.LFBB15
.LM164:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,190,.LM165-.LFBB15
.LM165:
	testl	%eax, %eax
	jne	.L57
	.stabn	68,0,192,.LM166-.LFBB15
.LM166:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,191,.LM167-.LFBB15
.LM167:
	testb	%al, %al
	jne	.L57
	.stabn	68,0,193,.LM168-.LFBB15
.LM168:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,192,.LM169-.LFBB15
.LM169:
	testb	%al, %al
	jne	.L57
	.stabn	68,0,195,.LM170-.LFBB15
.LM170:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,195,.LM171-.LFBB15
.LM171:
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,195,.LM172-.LFBB15
.LM172:
	cmpb	%al, %dl
	jne	.L58
	.stabn	68,0,196,.LM173-.LFBB15
.LM173:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,195,.LM174-.LFBB15
.LM174:
	testl	%eax, %eax
	jne	.L58
	.stabn	68,0,197,.LM175-.LFBB15
.LM175:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,196,.LM176-.LFBB15
.LM176:
	testb	%al, %al
	jne	.L58
	.stabn	68,0,198,.LM177-.LFBB15
.LM177:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,197,.LM178-.LFBB15
.LM178:
	testb	%al, %al
	jne	.L58
	.stabn	68,0,200,.LM179-.LFBB15
.LM179:
	movq	8(%rsp), %rax
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,200,.LM180-.LFBB15
.LM180:
	salq	$12, %rax
	movq	%rax, %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	.stabn	68,0,200,.LM181-.LFBB15
.LM181:
	movq	16(%rsp), %rax
	movzbl	25(%rax), %ecx
	shrb	$4, %cl
	movzbl	%cl, %esi
	movzbl	26(%rax), %ecx
	salq	$4, %rcx
	orq	%rcx, %rsi
	movzbl	27(%rax), %ecx
	salq	$12, %rcx
	orq	%rcx, %rsi
	movzbl	28(%rax), %ecx
	salq	$20, %rcx
	orq	%rcx, %rsi
	movzbl	29(%rax), %ecx
	salq	$28, %rcx
	orq	%rcx, %rsi
	movzbl	30(%rax), %ecx
	salq	$36, %rcx
	orq	%rsi, %rcx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rcx, %rax
	.stabn	68,0,200,.LM182-.LFBB15
.LM182:
	salq	$12, %rax
	movq	%rax, %rcx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rcx
	.stabn	68,0,200,.LM183-.LFBB15
.LM183:
	movq	%rdx, %rax
	subq	%rcx, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,200,.LM184-.LFBB15
.LM184:
	cmpq	$4096, %rax
	jne	.L59
	.stabn	68,0,202,.LM185-.LFBB15
.LM185:
	movl	$2, %eax
	jmp	.L55
.L59:
	.stabn	68,0,204,.LM186-.LFBB15
.LM186:
	movl	$1, %eax
	jmp	.L55
.L58:
	.stabn	68,0,206,.LM187-.LFBB15
.LM187:
	movl	$1, %eax
	jmp	.L55
.L57:
	.stabn	68,0,208,.LM188-.LFBB15
.LM188:
	movl	$0, %eax
	jmp	.L55
.L56:
	.stabn	68,0,211,.LM189-.LFBB15
.LM189:
	movq	$-1, %rax
.L55:
	.stabn	68,0,212,.LM190-.LFBB15
.LM190:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	continumsadsc_is_ok, .-continumsadsc_is_ok
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.stabs	"scan_len_msadsc:F(0,38)",36,0,214,scan_len_msadsc
	.stabs	"mstat:p(0,55)",160,0,214,24
	.stabs	"cmpmdfp:p(0,91)",160,0,214,16
	.stabs	"mnr:p(0,9)",160,0,214,8
	.stabs	"retmnr:p(0,90)",160,0,214,0
	.globl	scan_len_msadsc
	.type	scan_len_msadsc, @function
scan_len_msadsc:
	.stabn	68,0,215,.LM191-.LFBB16
.LM191:
.LFBB16:
.LFB44:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
.L70:
	leaq	.L70(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L70, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,216,.LM192-.LFBB16
.LM192:
	movq	$0, 40(%rsp)
	.stabn	68,0,217,.LM193-.LFBB16
.LM193:
	movq	$0, 56(%rsp)
	.stabn	68,0,218,.LM194-.LFBB16
.LM194:
	cmpq	$0, 24(%rsp)
	je	.L62
	.stabn	68,0,218,.LM195-.LFBB16
.LM195:
	cmpq	$0, 16(%rsp)
	je	.L62
	.stabn	68,0,218,.LM196-.LFBB16
.LM196:
	cmpq	$0, 8(%rsp)
	je	.L62
	.stabn	68,0,218,.LM197-.LFBB16
.LM197:
	cmpq	$0, (%rsp)
	jne	.L63
.L62:
	.stabn	68,0,220,.LM198-.LFBB16
.LM198:
	movl	$0, %eax
	jmp	.L64
.L63:
.LBB4:
	.stabn	68,0,222,.LM199-.LFBB16
.LM199:
	movq	$0, 48(%rsp)
	.stabn	68,0,222,.LM200-.LFBB16
.LM200:
	jmp	.L65
.L69:
	.stabn	68,0,224,.LM201-.LFBB16
.LM201:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	24(%rsp), %rax
	leaq	(%rdx,%rax), %rsi
	.stabn	68,0,224,.LM202-.LFBB16
.LM202:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,224,.LM203-.LFBB16
.LM203:
	movq	24(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	16(%rsp), %rax
	movq	%rax, %rdx
	movq	%rcx, %rdi
	movabsq	$continumsadsc_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,225,.LM204-.LFBB16
.LM204:
	cmpq	$-1, 40(%rsp)
	jne	.L66
	.stabn	68,0,227,.LM205-.LFBB16
.LM205:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,228,.LM206-.LFBB16
.LM206:
	movl	$0, %eax
	jmp	.L64
.L66:
	.stabn	68,0,230,.LM207-.LFBB16
.LM207:
	cmpq	$0, 40(%rsp)
	jne	.L67
	.stabn	68,0,232,.LM208-.LFBB16
.LM208:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,233,.LM209-.LFBB16
.LM209:
	movl	$0, %eax
	jmp	.L64
.L67:
	.stabn	68,0,235,.LM210-.LFBB16
.LM210:
	cmpq	$1, 40(%rsp)
	jne	.L68
	.stabn	68,0,237,.LM211-.LFBB16
.LM211:
	movq	(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,238,.LM212-.LFBB16
.LM212:
	movl	$1, %eax
	jmp	.L64
.L68:
	.stabn	68,0,240,.LM213-.LFBB16
.LM213:
	addq	$1, 56(%rsp)
	.stabn	68,0,222,.LM214-.LFBB16
.LM214:
	addq	$1, 48(%rsp)
.L65:
	.stabn	68,0,222,.LM215-.LFBB16
.LM215:
	movq	8(%rsp), %rax
	subq	$1, %rax
	.stabn	68,0,222,.LM216-.LFBB16
.LM216:
	cmpq	%rax, 48(%rsp)
	jb	.L69
.LBE4:
	.stabn	68,0,242,.LM217-.LFBB16
.LM217:
	movq	(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,243,.LM218-.LFBB16
.LM218:
	movl	$1, %eax
.L64:
	.stabn	68,0,244,.LM219-.LFBB16
.LM219:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	scan_len_msadsc, .-scan_len_msadsc
	.stabs	"retclok:(0,9)",128,0,216,40
	.stabs	"retnr:(0,9)",128,0,217,56
	.stabn	192,0,0,.LFBB16-.LFBB16
	.stabs	"tmdx:(0,9)",128,0,222,48
	.stabn	192,0,0,.LBB4-.LFBB16
	.stabn	224,0,0,.LBE4-.LFBB16
	.stabn	224,0,0,.Lscope16-.LFBB16
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabs	"check_continumsadsc:F(0,9)",36,0,246,check_continumsadsc
	.stabs	"mareap:p(0,67)",160,0,246,24
	.stabs	"stat:p(0,55)",160,0,246,16
	.stabs	"end:p(0,55)",160,0,246,8
	.stabs	"fmnr:p(0,9)",160,0,246,0
	.globl	check_continumsadsc
	.type	check_continumsadsc, @function
check_continumsadsc:
	.stabn	68,0,247,.LM220-.LFBB17
.LM220:
.LFBB17:
.LFB45:
	.cfi_startproc
	endbr64
	subq	$80, %rsp
	.cfi_def_cfa_offset 88
.L102:
	leaq	.L102(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L102, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,248,.LM221-.LFBB17
.LM221:
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,248,.LM222-.LFBB17
.LM222:
	movq	8(%rsp), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,249,.LM223-.LFBB17
.LM223:
	movl	$0, 44(%rsp)
	.stabn	68,0,250,.LM224-.LFBB17
.LM224:
	movq	$0, 64(%rsp)
	.stabn	68,0,251,.LM225-.LFBB17
.LM225:
	cmpq	$0, 72(%rsp)
	je	.L72
	.stabn	68,0,251,.LM226-.LFBB17
.LM226:
	cmpq	$0, 48(%rsp)
	je	.L72
	.stabn	68,0,251,.LM227-.LFBB17
.LM227:
	cmpq	$0, (%rsp)
	je	.L72
	.stabn	68,0,251,.LM228-.LFBB17
.LM228:
	movq	72(%rsp), %rax
	cmpq	48(%rsp), %rax
	jbe	.L73
.L72:
	.stabn	68,0,253,.LM229-.LFBB17
.LM229:
	movl	$0, %eax
	jmp	.L101
.L73:
	.stabn	68,0,255,.LM230-.LFBB17
.LM230:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,255,.LM231-.LFBB17
.LM231:
	cmpq	$3, %rax
	je	.L75
	cmpq	$3, %rax
	ja	.L76
	cmpq	$1, %rax
	je	.L77
	cmpq	$2, %rax
	je	.L78
	jmp	.L76
.L77:
	.stabn	68,0,259,.LM232-.LFBB17
.LM232:
	movl	$32, 44(%rsp)
	.stabn	68,0,260,.LM233-.LFBB17
.LM233:
	leaq	44(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,261,.LM234-.LFBB17
.LM234:
	jmp	.L79
.L78:
	.stabn	68,0,265,.LM235-.LFBB17
.LM235:
	movl	$64, 44(%rsp)
	.stabn	68,0,266,.LM236-.LFBB17
.LM236:
	leaq	44(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,267,.LM237-.LFBB17
.LM237:
	jmp	.L79
.L75:
	.stabn	68,0,271,.LM238-.LFBB17
.LM238:
	movl	$96, 44(%rsp)
	.stabn	68,0,272,.LM239-.LFBB17
.LM239:
	leaq	44(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,273,.LM240-.LFBB17
.LM240:
	jmp	.L79
.L76:
	.stabn	68,0,277,.LM241-.LFBB17
.LM241:
	movl	$0, 44(%rsp)
	.stabn	68,0,278,.LM242-.LFBB17
.LM242:
	movq	$0, 64(%rsp)
	.stabn	68,0,279,.LM243-.LFBB17
.LM243:
	nop
.L79:
	.stabn	68,0,282,.LM244-.LFBB17
.LM244:
	movl	44(%rsp), %eax
	.stabn	68,0,282,.LM245-.LFBB17
.LM245:
	testl	%eax, %eax
	je	.L80
	.stabn	68,0,282,.LM246-.LFBB17
.LM246:
	cmpq	$0, 64(%rsp)
	jne	.L81
.L80:
	.stabn	68,0,284,.LM247-.LFBB17
.LM247:
	movl	$0, %eax
	jmp	.L101
.L81:
	.stabn	68,0,286,.LM248-.LFBB17
.LM248:
	movq	$0, 56(%rsp)
	.stabn	68,0,287,.LM249-.LFBB17
.LM249:
	movq	72(%rsp), %rax
	cmpq	48(%rsp), %rax
	jne	.L88
	.stabn	68,0,289,.LM250-.LFBB17
.LM250:
	movq	72(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,289,.LM251-.LFBB17
.LM251:
	testl	%eax, %eax
	je	.L83
	.stabn	68,0,291,.LM252-.LFBB17
.LM252:
	movl	$0, %eax
	jmp	.L101
.L83:
	.stabn	68,0,293,.LM253-.LFBB17
.LM253:
	movq	72(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,293,.LM254-.LFBB17
.LM254:
	movq	64(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,293,.LM255-.LFBB17
.LM255:
	cmpb	%al, %dl
	je	.L84
	.stabn	68,0,295,.LM256-.LFBB17
.LM256:
	movl	$0, %eax
	jmp	.L101
.L84:
	.stabn	68,0,297,.LM257-.LFBB17
.LM257:
	movq	72(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,297,.LM258-.LFBB17
.LM258:
	testb	%al, %al
	je	.L85
	.stabn	68,0,299,.LM259-.LFBB17
.LM259:
	movl	$0, %eax
	jmp	.L101
.L85:
	.stabn	68,0,301,.LM260-.LFBB17
.LM260:
	movq	72(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,301,.LM261-.LFBB17
.LM261:
	testb	%al, %al
	je	.L86
	.stabn	68,0,303,.LM262-.LFBB17
.LM262:
	movl	$0, %eax
	jmp	.L101
.L86:
	.stabn	68,0,306,.LM263-.LFBB17
.LM263:
	movq	56(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,306,.LM264-.LFBB17
.LM264:
	cmpq	%rax, (%rsp)
	je	.L87
	.stabn	68,0,308,.LM265-.LFBB17
.LM265:
	movl	$0, %eax
	jmp	.L101
.L87:
	.stabn	68,0,310,.LM266-.LFBB17
.LM266:
	movq	56(%rsp), %rax
	addq	$1, %rax
	jmp	.L101
.L98:
	.stabn	68,0,314,.LM267-.LFBB17
.LM267:
	movq	72(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,314,.LM268-.LFBB17
.LM268:
	movq	64(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,314,.LM269-.LFBB17
.LM269:
	cmpb	%al, %dl
	jne	.L89
	.stabn	68,0,315,.LM270-.LFBB17
.LM270:
	movq	72(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,315,.LM271-.LFBB17
.LM271:
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,315,.LM272-.LFBB17
.LM272:
	movq	64(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,314,.LM273-.LFBB17
.LM273:
	cmpb	%al, %dl
	je	.L90
.L89:
	.stabn	68,0,317,.LM274-.LFBB17
.LM274:
	movl	$0, %eax
	jmp	.L101
.L90:
	.stabn	68,0,319,.LM275-.LFBB17
.LM275:
	movq	72(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,319,.LM276-.LFBB17
.LM276:
	testb	%al, %al
	jne	.L91
	.stabn	68,0,320,.LM277-.LFBB17
.LM277:
	movq	72(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,320,.LM278-.LFBB17
.LM278:
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,319,.LM279-.LFBB17
.LM279:
	testb	%al, %al
	je	.L92
.L91:
	.stabn	68,0,322,.LM280-.LFBB17
.LM280:
	movl	$0, %eax
	jmp	.L101
.L92:
	.stabn	68,0,324,.LM281-.LFBB17
.LM281:
	movq	72(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,324,.LM282-.LFBB17
.LM282:
	testl	%eax, %eax
	jne	.L93
	.stabn	68,0,325,.LM283-.LFBB17
.LM283:
	movq	72(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,325,.LM284-.LFBB17
.LM284:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,324,.LM285-.LFBB17
.LM285:
	testl	%eax, %eax
	je	.L94
.L93:
	.stabn	68,0,327,.LM286-.LFBB17
.LM286:
	movl	$0, %eax
	jmp	.L101
.L94:
	.stabn	68,0,329,.LM287-.LFBB17
.LM287:
	movq	72(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,329,.LM288-.LFBB17
.LM288:
	testb	%al, %al
	jne	.L95
	.stabn	68,0,330,.LM289-.LFBB17
.LM289:
	movq	72(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,330,.LM290-.LFBB17
.LM290:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,329,.LM291-.LFBB17
.LM291:
	testb	%al, %al
	je	.L96
.L95:
	.stabn	68,0,332,.LM292-.LFBB17
.LM292:
	movl	$0, %eax
	jmp	.L101
.L96:
	.stabn	68,0,334,.LM293-.LFBB17
.LM293:
	movq	72(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,334,.LM294-.LFBB17
.LM294:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,334,.LM295-.LFBB17
.LM295:
	salq	$12, %rax
	movq	%rax, %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	.stabn	68,0,334,.LM296-.LFBB17
.LM296:
	movq	72(%rsp), %rax
	movzbl	25(%rax), %ecx
	shrb	$4, %cl
	movzbl	%cl, %esi
	movzbl	26(%rax), %ecx
	salq	$4, %rcx
	orq	%rcx, %rsi
	movzbl	27(%rax), %ecx
	salq	$12, %rcx
	orq	%rcx, %rsi
	movzbl	28(%rax), %ecx
	salq	$20, %rcx
	orq	%rcx, %rsi
	movzbl	29(%rax), %ecx
	salq	$28, %rcx
	orq	%rcx, %rsi
	movzbl	30(%rax), %ecx
	salq	$36, %rcx
	orq	%rsi, %rcx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rcx, %rax
	.stabn	68,0,334,.LM297-.LFBB17
.LM297:
	salq	$12, %rax
	movq	%rax, %rcx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rcx
	.stabn	68,0,334,.LM298-.LFBB17
.LM298:
	movq	%rdx, %rax
	subq	%rcx, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,334,.LM299-.LFBB17
.LM299:
	cmpq	$4096, %rax
	je	.L97
	.stabn	68,0,337,.LM300-.LFBB17
.LM300:
	movl	$0, %eax
	jmp	.L101
.L97:
	.stabn	68,0,339,.LM301-.LFBB17
.LM301:
	addq	$1, 56(%rsp)
	.stabn	68,0,312,.LM302-.LFBB17
.LM302:
	addq	$40, 72(%rsp)
.L88:
	.stabn	68,0,312,.LM303-.LFBB17
.LM303:
	movq	72(%rsp), %rax
	cmpq	48(%rsp), %rax
	jb	.L98
	.stabn	68,0,341,.LM304-.LFBB17
.LM304:
	cmpq	$0, 56(%rsp)
	jne	.L99
	.stabn	68,0,343,.LM305-.LFBB17
.LM305:
	movl	$0, %eax
	jmp	.L101
.L99:
	.stabn	68,0,345,.LM306-.LFBB17
.LM306:
	movq	56(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,345,.LM307-.LFBB17
.LM307:
	cmpq	%rax, (%rsp)
	je	.L100
	.stabn	68,0,347,.LM308-.LFBB17
.LM308:
	movl	$0, %eax
	jmp	.L101
.L100:
	.stabn	68,0,349,.LM309-.LFBB17
.LM309:
	movq	56(%rsp), %rax
.L101:
	.stabn	68,0,350,.LM310-.LFBB17
.LM310:
	addq	$80, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	check_continumsadsc, .-check_continumsadsc
	.stabs	"ms:(0,55)",128,0,248,72
	.stabs	"msadsc_t:t(0,56)",128,0,69,0
	.stabs	"me:(0,55)",128,0,248,48
	.stabs	"muindx:(0,19)",128,0,249,44
	.stabs	"mdfp:(0,91)",128,0,250,64
	.stabs	"msadflgs_t:t(0,60)",128,0,34,0
	.stabs	"ok:(0,9)",128,0,286,56
	.stabn	192,0,0,.LFBB17-.LFBB17
	.stabn	224,0,0,.Lscope17-.LFBB17
.Lscope17:
	.stabs	"",36,0,0,.Lscope17-.LFBB17
	.section	.rodata
.LC1:
	.string	"scan_len_msadsc err\n"
	.text
	.stabs	"merlove_scan_continumsadsc:F(0,38)",36,0,352,merlove_scan_continumsadsc
	.stabs	"mareap:p(0,67)",160,0,352,40
	.stabs	"fmstat:p(0,55)",160,0,352,32
	.stabs	"fntmsanr:p(0,90)",160,0,352,24
	.stabs	"fmsanr:p(0,9)",160,0,352,16
	.stabs	"retmsastatp:p(0,89)",160,0,353,8
	.stabs	"retmsaendp:p(0,89)",160,0,353,0
	.stabs	"retfmnr:p(0,90)",160,0,353,112
	.globl	merlove_scan_continumsadsc
	.type	merlove_scan_continumsadsc, @function
merlove_scan_continumsadsc:
	.stabn	68,0,354,.LM311-.LFBB18
.LM311:
.LFBB18:
.LFB46:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
.L121:
	leaq	.L121(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L121, %r11
	addq	%r11, %rbx
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	movq	%r9, (%rsp)
	.stabn	68,0,355,.LM312-.LFBB18
.LM312:
	cmpq	$0, 40(%rsp)
	je	.L104
	.stabn	68,0,355,.LM313-.LFBB18
.LM313:
	cmpq	$0, 32(%rsp)
	je	.L104
	.stabn	68,0,355,.LM314-.LFBB18
.LM314:
	cmpq	$0, 24(%rsp)
	je	.L104
	.stabn	68,0,355,.LM315-.LFBB18
.LM315:
	cmpq	$0, 16(%rsp)
	je	.L104
	.stabn	68,0,356,.LM316-.LFBB18
.LM316:
	cmpq	$0, 8(%rsp)
	je	.L104
	.stabn	68,0,356,.LM317-.LFBB18
.LM317:
	cmpq	$0, (%rsp)
	je	.L104
	.stabn	68,0,356,.LM318-.LFBB18
.LM318:
	cmpq	$0, 128(%rsp)
	jne	.L105
.L104:
	.stabn	68,0,358,.LM319-.LFBB18
.LM319:
	movl	$0, %eax
	jmp	.L120
.L105:
	.stabn	68,0,360,.LM320-.LFBB18
.LM320:
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	.stabn	68,0,360,.LM321-.LFBB18
.LM321:
	cmpq	%rax, 16(%rsp)
	ja	.L107
	.stabn	68,0,362,.LM322-.LFBB18
.LM322:
	movl	$0, %eax
	jmp	.L120
.L107:
	.stabn	68,0,364,.LM323-.LFBB18
.LM323:
	movl	$0, 60(%rsp)
	.stabn	68,0,365,.LM324-.LFBB18
.LM324:
	movq	$0, 88(%rsp)
	.stabn	68,0,366,.LM325-.LFBB18
.LM325:
	movq	40(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,366,.LM326-.LFBB18
.LM326:
	cmpq	$3, %rax
	je	.L108
	cmpq	$3, %rax
	ja	.L109
	cmpq	$1, %rax
	je	.L110
	cmpq	$2, %rax
	je	.L111
	jmp	.L109
.L110:
	.stabn	68,0,370,.LM327-.LFBB18
.LM327:
	movl	$32, 60(%rsp)
	.stabn	68,0,371,.LM328-.LFBB18
.LM328:
	leaq	60(%rsp), %rax
	movq	%rax, 88(%rsp)
	.stabn	68,0,372,.LM329-.LFBB18
.LM329:
	jmp	.L112
.L111:
	.stabn	68,0,376,.LM330-.LFBB18
.LM330:
	movl	$64, 60(%rsp)
	.stabn	68,0,377,.LM331-.LFBB18
.LM331:
	leaq	60(%rsp), %rax
	movq	%rax, 88(%rsp)
	.stabn	68,0,378,.LM332-.LFBB18
.LM332:
	jmp	.L112
.L108:
	.stabn	68,0,382,.LM333-.LFBB18
.LM333:
	movl	$96, 60(%rsp)
	.stabn	68,0,383,.LM334-.LFBB18
.LM334:
	leaq	60(%rsp), %rax
	movq	%rax, 88(%rsp)
	.stabn	68,0,384,.LM335-.LFBB18
.LM335:
	jmp	.L112
.L109:
	.stabn	68,0,388,.LM336-.LFBB18
.LM336:
	movl	$0, 60(%rsp)
	.stabn	68,0,389,.LM337-.LFBB18
.LM337:
	movq	$0, 88(%rsp)
	.stabn	68,0,390,.LM338-.LFBB18
.LM338:
	nop
.L112:
	.stabn	68,0,393,.LM339-.LFBB18
.LM339:
	movl	60(%rsp), %eax
	.stabn	68,0,393,.LM340-.LFBB18
.LM340:
	testl	%eax, %eax
	je	.L113
	.stabn	68,0,393,.LM341-.LFBB18
.LM341:
	cmpq	$0, 88(%rsp)
	jne	.L114
.L113:
	.stabn	68,0,395,.LM342-.LFBB18
.LM342:
	movl	$0, %eax
	jmp	.L120
.L114:
	.stabn	68,0,398,.LM343-.LFBB18
.LM343:
	movq	32(%rsp), %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,399,.LM344-.LFBB18
.LM344:
	movq	$0, 48(%rsp)
	.stabn	68,0,400,.LM345-.LFBB18
.LM345:
	movq	$0, 64(%rsp)
	.stabn	68,0,401,.LM346-.LFBB18
.LM346:
	movq	24(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 80(%rsp)
	.stabn	68,0,404,.LM347-.LFBB18
.LM347:
	jmp	.L115
.L118:
	.stabn	68,0,407,.LM348-.LFBB18
.LM348:
	movq	80(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,407,.LM349-.LFBB18
.LM349:
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,407,.LM350-.LFBB18
.LM350:
	movq	88(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,407,.LM351-.LFBB18
.LM351:
	cmpb	%al, %dl
	jne	.L116
	.stabn	68,0,408,.LM352-.LFBB18
.LM352:
	movq	80(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,408,.LM353-.LFBB18
.LM353:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,407,.LM354-.LFBB18
.LM354:
	testl	%eax, %eax
	jne	.L116
	.stabn	68,0,409,.LM355-.LFBB18
.LM355:
	movq	80(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,409,.LM356-.LFBB18
.LM356:
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,408,.LM357-.LFBB18
.LM357:
	testb	%al, %al
	jne	.L116
	.stabn	68,0,410,.LM358-.LFBB18
.LM358:
	movq	80(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,410,.LM359-.LFBB18
.LM359:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,409,.LM360-.LFBB18
.LM360:
	testb	%al, %al
	jne	.L116
	.stabn	68,0,413,.LM361-.LFBB18
.LM361:
	movq	80(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,413,.LM362-.LFBB18
.LM362:
	movq	72(%rsp), %rax
	leaq	(%rdx,%rax), %rdi
	leaq	48(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	88(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$scan_len_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,414,.LM363-.LFBB18
.LM363:
	cmpq	$0, 64(%rsp)
	jne	.L117
	.stabn	68,0,416,.LM364-.LFBB18
.LM364:
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L117:
	.stabn	68,0,420,.LM365-.LFBB18
.LM365:
	movq	48(%rsp), %rdx
	movq	80(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,420,.LM366-.LFBB18
.LM366:
	leaq	1(%rax), %rdx
	.stabn	68,0,420,.LM367-.LFBB18
.LM367:
	movq	24(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,423,.LM368-.LFBB18
.LM368:
	movq	80(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,423,.LM369-.LFBB18
.LM369:
	movq	72(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,423,.LM370-.LFBB18
.LM370:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,426,.LM371-.LFBB18
.LM371:
	movq	48(%rsp), %rdx
	movq	80(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,426,.LM372-.LFBB18
.LM372:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,426,.LM373-.LFBB18
.LM373:
	movq	72(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,426,.LM374-.LFBB18
.LM374:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,429,.LM375-.LFBB18
.LM375:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	.stabn	68,0,429,.LM376-.LFBB18
.LM376:
	movq	128(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,430,.LM377-.LFBB18
.LM377:
	movl	$1, %eax
	jmp	.L120
.L116:
	.stabn	68,0,404,.LM378-.LFBB18
.LM378:
	addq	$1, 80(%rsp)
.L115:
	.stabn	68,0,404,.LM379-.LFBB18
.LM379:
	movq	80(%rsp), %rax
	cmpq	16(%rsp), %rax
	jb	.L118
	.stabn	68,0,433,.LM380-.LFBB18
.LM380:
	movq	80(%rsp), %rax
	cmpq	16(%rsp), %rax
	jb	.L119
	.stabn	68,0,435,.LM381-.LFBB18
.LM381:
	movq	24(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,436,.LM382-.LFBB18
.LM382:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,437,.LM383-.LFBB18
.LM383:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,438,.LM384-.LFBB18
.LM384:
	movq	128(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,439,.LM385-.LFBB18
.LM385:
	movl	$1, %eax
	jmp	.L120
.L119:
	.stabn	68,0,441,.LM386-.LFBB18
.LM386:
	movl	$0, %eax
.L120:
	.stabn	68,0,442,.LM387-.LFBB18
.LM387:
	addq	$104, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	merlove_scan_continumsadsc, .-merlove_scan_continumsadsc
	.stabs	"muindx:(0,19)",128,0,364,60
	.stabs	"mdfp:(0,91)",128,0,365,88
	.stabs	"msastat:(0,55)",128,0,398,72
	.stabs	"retfindmnr:(0,9)",128,0,399,48
	.stabs	"rets:(0,38)",128,0,400,64
	.stabs	"tmidx:(0,9)",128,0,401,80
	.stabn	192,0,0,.LFBB18-.LFBB18
	.stabn	224,0,0,.Lscope18-.LFBB18
.Lscope18:
	.stabs	"",36,0,0,.Lscope18-.LFBB18
	.stabs	"merlove_setallmarflgs_onmemarea:F(0,9)",36,0,445,merlove_setallmarflgs_onmemarea
	.stabs	"mareap:p(0,67)",160,0,445,16
	.stabs	"mstat:p(0,55)",160,0,445,8
	.stabs	"msanr:p(0,9)",160,0,445,0
	.globl	merlove_setallmarflgs_onmemarea
	.type	merlove_setallmarflgs_onmemarea, @function
merlove_setallmarflgs_onmemarea:
	.stabn	68,0,446,.LM388-.LFBB19
.LM388:
.LFBB19:
.LFB47:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
.L138:
	leaq	.L138(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L138, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,447,.LM389-.LFBB19
.LM389:
	cmpq	$0, 16(%rsp)
	je	.L123
	.stabn	68,0,447,.LM390-.LFBB19
.LM390:
	cmpq	$0, 8(%rsp)
	je	.L123
	.stabn	68,0,447,.LM391-.LFBB19
.LM391:
	cmpq	$0, (%rsp)
	jne	.L124
.L123:
	.stabn	68,0,449,.LM392-.LFBB19
.LM392:
	movq	$-1, %rax
	jmp	.L137
.L124:
	.stabn	68,0,452,.LM393-.LFBB19
.LM393:
	movl	$0, 36(%rsp)
	.stabn	68,0,453,.LM394-.LFBB19
.LM394:
	movq	$0, 64(%rsp)
	.stabn	68,0,455,.LM395-.LFBB19
.LM395:
	movq	16(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,455,.LM396-.LFBB19
.LM396:
	cmpq	$4, %rax
	je	.L126
	cmpq	$4, %rax
	ja	.L127
	cmpq	$3, %rax
	je	.L128
	cmpq	$3, %rax
	ja	.L127
	cmpq	$1, %rax
	je	.L129
	cmpq	$2, %rax
	je	.L130
	jmp	.L127
.L129:
	.stabn	68,0,459,.LM397-.LFBB19
.LM397:
	movl	$32, 36(%rsp)
	.stabn	68,0,460,.LM398-.LFBB19
.LM398:
	leaq	36(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,461,.LM399-.LFBB19
.LM399:
	jmp	.L131
.L130:
	.stabn	68,0,465,.LM400-.LFBB19
.LM400:
	movl	$64, 36(%rsp)
	.stabn	68,0,466,.LM401-.LFBB19
.LM401:
	leaq	36(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,467,.LM402-.LFBB19
.LM402:
	jmp	.L131
.L128:
	.stabn	68,0,471,.LM403-.LFBB19
.LM403:
	movl	$96, 36(%rsp)
	.stabn	68,0,472,.LM404-.LFBB19
.LM404:
	leaq	36(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,473,.LM405-.LFBB19
.LM405:
	jmp	.L131
.L126:
	.stabn	68,0,477,.LM406-.LFBB19
.LM406:
	movl	$0, %eax
	jmp	.L137
.L127:
	.stabn	68,0,481,.LM407-.LFBB19
.LM407:
	movl	$0, 36(%rsp)
	.stabn	68,0,482,.LM408-.LFBB19
.LM408:
	movq	$0, 64(%rsp)
	.stabn	68,0,483,.LM409-.LFBB19
.LM409:
	nop
.L131:
	.stabn	68,0,486,.LM410-.LFBB19
.LM410:
	movl	36(%rsp), %eax
	.stabn	68,0,486,.LM411-.LFBB19
.LM411:
	testl	%eax, %eax
	je	.L132
	.stabn	68,0,486,.LM412-.LFBB19
.LM412:
	cmpq	$0, 64(%rsp)
	jne	.L133
.L132:
	.stabn	68,0,488,.LM413-.LFBB19
.LM413:
	movq	$-1, %rax
	jmp	.L137
.L133:
	.stabn	68,0,490,.LM414-.LFBB19
.LM414:
	movq	$0, 40(%rsp)
	.stabn	68,0,491,.LM415-.LFBB19
.LM415:
	movq	$0, 56(%rsp)
.LBB5:
	.stabn	68,0,493,.LM416-.LFBB19
.LM416:
	movq	$0, 48(%rsp)
	.stabn	68,0,493,.LM417-.LFBB19
.LM417:
	jmp	.L134
.L136:
	.stabn	68,0,495,.LM418-.LFBB19
.LM418:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,495,.LM419-.LFBB19
.LM419:
	movzbl	20(%rax), %eax
	andl	$-32, %eax
	.stabn	68,0,495,.LM420-.LFBB19
.LM420:
	testb	%al, %al
	jne	.L135
	.stabn	68,0,498,.LM421-.LFBB19
.LM421:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,498,.LM422-.LFBB19
.LM422:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,498,.LM423-.LFBB19
.LM423:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,498,.LM424-.LFBB19
.LM424:
	movq	%rax, 40(%rsp)
	.stabn	68,0,500,.LM425-.LFBB19
.LM425:
	movq	16(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,500,.LM426-.LFBB19
.LM426:
	cmpq	%rax, 40(%rsp)
	jb	.L135
	.stabn	68,0,500,.LM427-.LFBB19
.LM427:
	movq	40(%rsp), %rax
	leaq	4095(%rax), %rdx
	.stabn	68,0,500,.LM428-.LFBB19
.LM428:
	movq	16(%rsp), %rax
	movq	192(%rax), %rax
	.stabn	68,0,500,.LM429-.LFBB19
.LM429:
	cmpq	%rax, %rdx
	ja	.L135
	.stabn	68,0,503,.LM430-.LFBB19
.LM430:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,503,.LM431-.LFBB19
.LM431:
	movq	64(%rsp), %rdx
	movzbl	(%rdx), %edx
	shrb	$5, %dl
	.stabn	68,0,503,.LM432-.LFBB19
.LM432:
	movl	%edx, %ecx
	sall	$5, %ecx
	movzbl	20(%rax), %edx
	andl	$31, %edx
	orl	%ecx, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,504,.LM433-.LFBB19
.LM433:
	addq	$1, 56(%rsp)
.L135:
	.stabn	68,0,493,.LM434-.LFBB19
.LM434:
	addq	$1, 48(%rsp)
.L134:
	.stabn	68,0,493,.LM435-.LFBB19
.LM435:
	movq	48(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L136
.LBE5:
	.stabn	68,0,508,.LM436-.LFBB19
.LM436:
	movq	56(%rsp), %rax
.L137:
	.stabn	68,0,509,.LM437-.LFBB19
.LM437:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	merlove_setallmarflgs_onmemarea, .-merlove_setallmarflgs_onmemarea
	.stabs	"muindx:(0,19)",128,0,452,36
	.stabs	"mdfp:(0,91)",128,0,453,64
	.stabs	"phyadr:(0,12)",128,0,490,40
	.stabs	"retnr:(0,9)",128,0,491,56
	.stabn	192,0,0,.LFBB19-.LFBB19
	.stabs	"mix:(0,9)",128,0,493,48
	.stabn	192,0,0,.LBB5-.LFBB19
	.stabn	224,0,0,.LBE5-.LFBB19
	.stabn	224,0,0,.Lscope19-.LFBB19
.Lscope19:
	.stabs	"",36,0,0,.Lscope19-.LFBB19
	.stabs	"test_setflgs:F(0,9)",36,0,511,test_setflgs
	.stabs	"mareap:p(0,67)",160,0,511,16
	.stabs	"mstat:p(0,55)",160,0,511,8
	.stabs	"msanr:p(0,9)",160,0,511,0
	.globl	test_setflgs
	.type	test_setflgs, @function
test_setflgs:
	.stabn	68,0,512,.LM438-.LFBB20
.LM438:
.LFBB20:
.LFB48:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
.L155:
	leaq	.L155(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L155, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,513,.LM439-.LFBB20
.LM439:
	movl	$0, 36(%rsp)
	.stabn	68,0,514,.LM440-.LFBB20
.LM440:
	movq	$0, 64(%rsp)
	.stabn	68,0,515,.LM441-.LFBB20
.LM441:
	cmpq	$0, 16(%rsp)
	je	.L140
	.stabn	68,0,515,.LM442-.LFBB20
.LM442:
	cmpq	$0, 8(%rsp)
	je	.L140
	.stabn	68,0,515,.LM443-.LFBB20
.LM443:
	cmpq	$0, (%rsp)
	jne	.L141
.L140:
	.stabn	68,0,517,.LM444-.LFBB20
.LM444:
	movq	$-1, %rax
	jmp	.L154
.L141:
	.stabn	68,0,519,.LM445-.LFBB20
.LM445:
	movq	16(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,519,.LM446-.LFBB20
.LM446:
	cmpq	$4, %rax
	je	.L143
	cmpq	$4, %rax
	ja	.L144
	cmpq	$3, %rax
	je	.L145
	cmpq	$3, %rax
	ja	.L144
	cmpq	$1, %rax
	je	.L146
	cmpq	$2, %rax
	je	.L147
	jmp	.L144
.L146:
	.stabn	68,0,523,.LM447-.LFBB20
.LM447:
	movl	$32, 36(%rsp)
	.stabn	68,0,524,.LM448-.LFBB20
.LM448:
	leaq	36(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,525,.LM449-.LFBB20
.LM449:
	jmp	.L148
.L147:
	.stabn	68,0,529,.LM450-.LFBB20
.LM450:
	movl	$64, 36(%rsp)
	.stabn	68,0,530,.LM451-.LFBB20
.LM451:
	leaq	36(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,531,.LM452-.LFBB20
.LM452:
	jmp	.L148
.L145:
	.stabn	68,0,535,.LM453-.LFBB20
.LM453:
	movl	$96, 36(%rsp)
	.stabn	68,0,536,.LM454-.LFBB20
.LM454:
	leaq	36(%rsp), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,537,.LM455-.LFBB20
.LM455:
	jmp	.L148
.L143:
	.stabn	68,0,541,.LM456-.LFBB20
.LM456:
	movl	$0, %eax
	jmp	.L154
.L144:
	.stabn	68,0,545,.LM457-.LFBB20
.LM457:
	movl	$0, 36(%rsp)
	.stabn	68,0,546,.LM458-.LFBB20
.LM458:
	movq	$0, 64(%rsp)
	.stabn	68,0,547,.LM459-.LFBB20
.LM459:
	nop
.L148:
	.stabn	68,0,550,.LM460-.LFBB20
.LM460:
	movl	36(%rsp), %eax
	.stabn	68,0,550,.LM461-.LFBB20
.LM461:
	testl	%eax, %eax
	je	.L149
	.stabn	68,0,550,.LM462-.LFBB20
.LM462:
	cmpq	$0, 64(%rsp)
	jne	.L150
.L149:
	.stabn	68,0,552,.LM463-.LFBB20
.LM463:
	movq	$-1, %rax
	jmp	.L154
.L150:
	.stabn	68,0,554,.LM464-.LFBB20
.LM464:
	movq	$0, 40(%rsp)
	.stabn	68,0,555,.LM465-.LFBB20
.LM465:
	movq	$0, 56(%rsp)
.LBB6:
	.stabn	68,0,556,.LM466-.LFBB20
.LM466:
	movq	$0, 48(%rsp)
	.stabn	68,0,556,.LM467-.LFBB20
.LM467:
	jmp	.L151
.L153:
	.stabn	68,0,558,.LM468-.LFBB20
.LM468:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,558,.LM469-.LFBB20
.LM469:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,558,.LM470-.LFBB20
.LM470:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,558,.LM471-.LFBB20
.LM471:
	movq	%rax, 40(%rsp)
	.stabn	68,0,559,.LM472-.LFBB20
.LM472:
	movq	16(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,559,.LM473-.LFBB20
.LM473:
	cmpq	%rax, 40(%rsp)
	jb	.L152
	.stabn	68,0,559,.LM474-.LFBB20
.LM474:
	movq	40(%rsp), %rax
	leaq	4095(%rax), %rdx
	.stabn	68,0,559,.LM475-.LFBB20
.LM475:
	movq	16(%rsp), %rax
	movq	192(%rax), %rax
	.stabn	68,0,559,.LM476-.LFBB20
.LM476:
	cmpq	%rax, %rdx
	ja	.L152
	.stabn	68,0,561,.LM477-.LFBB20
.LM477:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,561,.LM478-.LFBB20
.LM478:
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,561,.LM479-.LFBB20
.LM479:
	movq	64(%rsp), %rax
	movzbl	(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,561,.LM480-.LFBB20
.LM480:
	cmpb	%al, %dl
	jne	.L152
	.stabn	68,0,562,.LM481-.LFBB20
.LM481:
	addq	$1, 56(%rsp)
.L152:
	.stabn	68,0,556,.LM482-.LFBB20
.LM482:
	addq	$1, 48(%rsp)
.L151:
	.stabn	68,0,556,.LM483-.LFBB20
.LM483:
	movq	48(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L153
.LBE6:
	.stabn	68,0,565,.LM484-.LFBB20
.LM484:
	movq	56(%rsp), %rax
.L154:
	.stabn	68,0,566,.LM485-.LFBB20
.LM485:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	test_setflgs, .-test_setflgs
	.stabs	"muindx:(0,19)",128,0,513,36
	.stabs	"mdfp:(0,91)",128,0,514,64
	.stabs	"phyadr:(0,12)",128,0,554,40
	.stabs	"retnr:(0,9)",128,0,555,56
	.stabn	192,0,0,.LFBB20-.LFBB20
	.stabs	"mix:(0,9)",128,0,556,48
	.stabn	192,0,0,.LBB6-.LFBB20
	.stabn	224,0,0,.LBE6-.LFBB20
	.stabn	224,0,0,.Lscope20-.LFBB20
.Lscope20:
	.stabs	"",36,0,0,.Lscope20-.LFBB20
	.stabs	"find_continumsa_inbafhlst:F(0,65)",36,0,568,find_continumsa_inbafhlst
	.stabs	"mareap:p(0,67)",160,0,568,8
	.stabs	"fmnr:p(0,9)",160,0,568,0
	.globl	find_continumsa_inbafhlst
	.type	find_continumsa_inbafhlst, @function
find_continumsa_inbafhlst:
	.stabn	68,0,569,.LM486-.LFBB21
.LM486:
.LFBB21:
.LFB49:
	.cfi_startproc
	endbr64
	subq	$48, %rsp
	.cfi_def_cfa_offset 56
.L167:
	leaq	.L167(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L167, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,570,.LM487-.LFBB21
.LM487:
	movq	$0, 40(%rsp)
	.stabn	68,0,571,.LM488-.LFBB21
.LM488:
	movq	$0, 32(%rsp)
	.stabn	68,0,572,.LM489-.LFBB21
.LM489:
	cmpq	$0, 8(%rsp)
	je	.L157
	.stabn	68,0,572,.LM490-.LFBB21
.LM490:
	cmpq	$0, (%rsp)
	jne	.L158
.L157:
	.stabn	68,0,574,.LM491-.LFBB21
.LM491:
	movl	$0, %eax
	jmp	.L159
.L158:
	.stabn	68,0,577,.LM492-.LFBB21
.LM492:
	movq	8(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,577,.LM493-.LFBB21
.LM493:
	cmpq	$3, %rax
	jne	.L160
	.stabn	68,0,579,.LM494-.LFBB21
.LM494:
	movq	8(%rsp), %rax
	addq	$5800, %rax
	jmp	.L159
.L160:
	.stabn	68,0,581,.LM495-.LFBB21
.LM495:
	movq	8(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,581,.LM496-.LFBB21
.LM496:
	cmpq	$4, %rax
	jne	.L161
	.stabn	68,0,583,.LM497-.LFBB21
.LM497:
	movl	$0, %eax
	jmp	.L159
.L161:
	.stabn	68,0,586,.LM498-.LFBB21
.LM498:
	movq	$0, 32(%rsp)
	.stabn	68,0,587,.LM499-.LFBB21
.LM499:
	movq	$0, 40(%rsp)
.LBB7:
	.stabn	68,0,588,.LM500-.LFBB21
.LM500:
	movq	$0, 24(%rsp)
	.stabn	68,0,588,.LM501-.LFBB21
.LM501:
	jmp	.L162
.L164:
	.stabn	68,0,590,.LM502-.LFBB21
.LM502:
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$408, %rax
	movq	(%rax), %rax
	.stabn	68,0,590,.LM503-.LFBB21
.LM503:
	cmpq	%rax, (%rsp)
	jb	.L163
	.stabn	68,0,592,.LM504-.LFBB21
.LM504:
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	384(%rax), %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,593,.LM505-.LFBB21
.LM505:
	addq	$1, 32(%rsp)
.L163:
	.stabn	68,0,588,.LM506-.LFBB21
.LM506:
	addq	$1, 24(%rsp)
.L162:
	.stabn	68,0,588,.LM507-.LFBB21
.LM507:
	cmpq	$51, 24(%rsp)
	jbe	.L164
.LBE7:
	.stabn	68,0,596,.LM508-.LFBB21
.LM508:
	cmpq	$51, 32(%rsp)
	ja	.L165
	.stabn	68,0,596,.LM509-.LFBB21
.LM509:
	cmpq	$0, 40(%rsp)
	jne	.L166
.L165:
	.stabn	68,0,598,.LM510-.LFBB21
.LM510:
	movl	$0, %eax
	jmp	.L159
.L166:
	.stabn	68,0,600,.LM511-.LFBB21
.LM511:
	movq	40(%rsp), %rax
.L159:
	.stabn	68,0,601,.LM512-.LFBB21
.LM512:
	addq	$48, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	find_continumsa_inbafhlst, .-find_continumsa_inbafhlst
	.stabs	"retbafhp:(0,65)",128,0,570,40
	.stabs	"bafhlst_t:t(0,47)",128,0,57,0
	.stabs	"in:(0,9)",128,0,571,32
	.stabn	192,0,0,.LFBB21-.LFBB21
	.stabs	"li:(0,9)",128,0,588,24
	.stabn	192,0,0,.LBB7-.LFBB21
	.stabn	224,0,0,.LBE7-.LFBB21
	.stabn	224,0,0,.Lscope21-.LFBB21
.Lscope21:
	.stabs	"",36,0,0,.Lscope21-.LFBB21
	.stabs	"continumsadsc_add_procmareabafh:F(0,38)",36,0,603,continumsadsc_add_procmareabafh
	.stabs	"mareap:p(0,67)",160,0,603,32
	.stabs	"bafhp:p(0,65)",160,0,603,24
	.stabs	"fstat:p(0,55)",160,0,603,16
	.stabs	"fend:p(0,55)",160,0,603,8
	.stabs	"fmnr:p(0,9)",160,0,603,0
	.globl	continumsadsc_add_procmareabafh
	.type	continumsadsc_add_procmareabafh, @function
continumsadsc_add_procmareabafh:
	.stabn	68,0,604,.LM513-.LFBB22
.LM513:
.LFBB22:
.LFB50:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$56, %rsp
	.cfi_def_cfa_offset 72
.L178:
	leaq	.L178(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L178, %r11
	addq	%r11, %rbx
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,605,.LM514-.LFBB22
.LM514:
	cmpq	$0, 32(%rsp)
	je	.L169
	.stabn	68,0,605,.LM515-.LFBB22
.LM515:
	cmpq	$0, 24(%rsp)
	je	.L169
	.stabn	68,0,605,.LM516-.LFBB22
.LM516:
	cmpq	$0, 16(%rsp)
	je	.L169
	.stabn	68,0,605,.LM517-.LFBB22
.LM517:
	cmpq	$0, 8(%rsp)
	je	.L169
	.stabn	68,0,605,.LM518-.LFBB22
.LM518:
	cmpq	$0, (%rsp)
	jne	.L170
.L169:
	.stabn	68,0,607,.LM519-.LFBB22
.LM519:
	movl	$0, %eax
	jmp	.L171
.L170:
	.stabn	68,0,609,.LM520-.LFBB22
.LM520:
	movq	24(%rsp), %rax
	movl	4(%rax), %eax
	.stabn	68,0,609,.LM521-.LFBB22
.LM521:
	cmpl	$1, %eax
	jne	.L172
	.stabn	68,0,609,.LM522-.LFBB22
.LM522:
	movq	32(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,609,.LM523-.LFBB22
.LM523:
	cmpq	$3, %rax
	je	.L173
.L172:
	.stabn	68,0,611,.LM524-.LFBB22
.LM524:
	movl	$0, %eax
	jmp	.L171
.L173:
	.stabn	68,0,613,.LM525-.LFBB22
.LM525:
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,613,.LM526-.LFBB22
.LM526:
	cmpq	$1, %rax
	je	.L174
	.stabn	68,0,615,.LM527-.LFBB22
.LM527:
	movl	$0, %eax
	jmp	.L171
.L174:
	.stabn	68,0,617,.LM528-.LFBB22
.LM528:
	movq	(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,617,.LM529-.LFBB22
.LM529:
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,617,.LM530-.LFBB22
.LM530:
	cmpq	%rax, 8(%rsp)
	je	.L175
	.stabn	68,0,619,.LM531-.LFBB22
.LM531:
	movl	$0, %eax
	jmp	.L171
.L175:
.LBB8:
	.stabn	68,0,621,.LM532-.LFBB22
.LM532:
	movq	$0, 48(%rsp)
	.stabn	68,0,621,.LM533-.LFBB22
.LM533:
	jmp	.L176
.L177:
	.stabn	68,0,623,.LM534-.LFBB22
.LM534:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,623,.LM535-.LFBB22
.LM535:
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,624,.LM536-.LFBB22
.LM536:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,624,.LM537-.LFBB22
.LM537:
	movq	24(%rsp), %rax
	movq	%rax, 32(%rdx)
	.stabn	68,0,625,.LM538-.LFBB22
.LM538:
	movq	24(%rsp), %rax
	leaq	56(%rax), %rdx
	.stabn	68,0,625,.LM539-.LFBB22
.LM539:
	movq	48(%rsp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	movq	%rax, %rcx
	movq	16(%rsp), %rax
	addq	%rcx, %rax
	.stabn	68,0,625,.LM540-.LFBB22
.LM540:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_add@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,626,.LM541-.LFBB22
.LM541:
	movq	24(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,626,.LM542-.LFBB22
.LM542:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,627,.LM543-.LFBB22
.LM543:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,627,.LM544-.LFBB22
.LM544:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,628,.LM545-.LFBB22
.LM545:
	movq	32(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,628,.LM546-.LFBB22
.LM546:
	leaq	1(%rax), %rdx
	movq	32(%rsp), %rax
	movq	%rdx, 144(%rax)
	.stabn	68,0,629,.LM547-.LFBB22
.LM547:
	movq	32(%rsp), %rax
	movq	160(%rax), %rax
	.stabn	68,0,629,.LM548-.LFBB22
.LM548:
	leaq	1(%rax), %rdx
	movq	32(%rsp), %rax
	movq	%rdx, 160(%rax)
	.stabn	68,0,630,.LM549-.LFBB22
.LM549:
	movq	32(%rsp), %rax
	movq	248(%rax), %rax
	.stabn	68,0,630,.LM550-.LFBB22
.LM550:
	leaq	1(%rax), %rdx
	movq	32(%rsp), %rax
	movq	%rdx, 248(%rax)
	.stabn	68,0,621,.LM551-.LFBB22
.LM551:
	addq	$1, 48(%rsp)
.L176:
	.stabn	68,0,621,.LM552-.LFBB22
.LM552:
	movq	48(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L177
.LBE8:
	.stabn	68,0,632,.LM553-.LFBB22
.LM553:
	movl	$1, %eax
.L171:
	.stabn	68,0,633,.LM554-.LFBB22
.LM554:
	addq	$56, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	continumsadsc_add_procmareabafh, .-continumsadsc_add_procmareabafh
	.stabs	"tmpnr:(0,9)",128,0,621,48
	.stabn	192,0,0,.LBB8-.LFBB22
	.stabn	224,0,0,.LBE8-.LFBB22
.Lscope22:
	.stabs	"",36,0,0,.Lscope22-.LFBB22
	.stabs	"continumsadsc_add_bafhlst:F(0,38)",36,0,635,continumsadsc_add_bafhlst
	.stabs	"mareap:p(0,67)",160,0,635,32
	.stabs	"bafhp:p(0,65)",160,0,635,24
	.stabs	"fstat:p(0,55)",160,0,635,16
	.stabs	"fend:p(0,55)",160,0,635,8
	.stabs	"fmnr:p(0,9)",160,0,635,0
	.globl	continumsadsc_add_bafhlst
	.type	continumsadsc_add_bafhlst, @function
continumsadsc_add_bafhlst:
	.stabn	68,0,636,.LM555-.LFBB23
.LM555:
.LFBB23:
.LFB51:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L185:
	leaq	.L185(%rip), %r9
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L185, %r11
	addq	%r11, %r9
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,637,.LM556-.LFBB23
.LM556:
	cmpq	$0, 32(%rsp)
	je	.L180
	.stabn	68,0,637,.LM557-.LFBB23
.LM557:
	cmpq	$0, 24(%rsp)
	je	.L180
	.stabn	68,0,637,.LM558-.LFBB23
.LM558:
	cmpq	$0, 16(%rsp)
	je	.L180
	.stabn	68,0,637,.LM559-.LFBB23
.LM559:
	cmpq	$0, 8(%rsp)
	je	.L180
	.stabn	68,0,637,.LM560-.LFBB23
.LM560:
	cmpq	$0, (%rsp)
	jne	.L181
.L180:
	.stabn	68,0,639,.LM561-.LFBB23
.LM561:
	movl	$0, %eax
	jmp	.L182
.L181:
	.stabn	68,0,641,.LM562-.LFBB23
.LM562:
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,641,.LM563-.LFBB23
.LM563:
	cmpq	%rax, (%rsp)
	je	.L183
	.stabn	68,0,643,.LM564-.LFBB23
.LM564:
	movl	$0, %eax
	jmp	.L182
.L183:
	.stabn	68,0,645,.LM565-.LFBB23
.LM565:
	movq	(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,645,.LM566-.LFBB23
.LM566:
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,645,.LM567-.LFBB23
.LM567:
	cmpq	%rax, 8(%rsp)
	je	.L184
	.stabn	68,0,647,.LM568-.LFBB23
.LM568:
	movl	$0, %eax
	jmp	.L182
.L184:
	.stabn	68,0,650,.LM569-.LFBB23
.LM569:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,652,.LM570-.LFBB23
.LM570:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,655,.LM571-.LFBB23
.LM571:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,658,.LM572-.LFBB23
.LM572:
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,661,.LM573-.LFBB23
.LM573:
	movq	24(%rsp), %rax
	leaq	56(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_add@GOTOFF, %rax
	leaq	(%r9,%rax), %rax
	call	*%rax
	.stabn	68,0,664,.LM574-.LFBB23
.LM574:
	movq	24(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,664,.LM575-.LFBB23
.LM575:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,665,.LM576-.LFBB23
.LM576:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,665,.LM577-.LFBB23
.LM577:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,666,.LM578-.LFBB23
.LM578:
	movq	32(%rsp), %rax
	movq	144(%rax), %rdx
	movq	(%rsp), %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	movq	%rdx, 144(%rax)
	.stabn	68,0,667,.LM579-.LFBB23
.LM579:
	movq	32(%rsp), %rax
	movq	160(%rax), %rdx
	movq	(%rsp), %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	movq	%rdx, 160(%rax)
	.stabn	68,0,668,.LM580-.LFBB23
.LM580:
	movq	32(%rsp), %rax
	movq	248(%rax), %rdx
	movq	(%rsp), %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	movq	%rdx, 248(%rax)
	.stabn	68,0,669,.LM581-.LFBB23
.LM581:
	movl	$1, %eax
.L182:
	.stabn	68,0,670,.LM582-.LFBB23
.LM582:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	continumsadsc_add_bafhlst, .-continumsadsc_add_bafhlst
.Lscope23:
	.stabs	"",36,0,0,.Lscope23-.LFBB23
	.stabs	"continumsadsc_mareabafh_core:F(0,38)",36,0,672,continumsadsc_mareabafh_core
	.stabs	"mareap:p(0,67)",160,0,672,24
	.stabs	"rfstat:p(0,89)",160,0,672,16
	.stabs	"rfend:p(0,89)",160,0,672,8
	.stabs	"rfmnr:p(0,90)",160,0,672,0
	.globl	continumsadsc_mareabafh_core
	.type	continumsadsc_mareabafh_core, @function
continumsadsc_mareabafh_core:
	.stabn	68,0,673,.LM583-.LFBB24
.LM583:
.LFBB24:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L199:
	leaq	.L199(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L199, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,674,.LM584-.LFBB24
.LM584:
	cmpq	$0, 24(%rsp)
	je	.L187
	.stabn	68,0,674,.LM585-.LFBB24
.LM585:
	cmpq	$0, 16(%rsp)
	je	.L187
	.stabn	68,0,674,.LM586-.LFBB24
.LM586:
	cmpq	$0, 8(%rsp)
	je	.L187
	.stabn	68,0,674,.LM587-.LFBB24
.LM587:
	cmpq	$0, (%rsp)
	jne	.L188
.L187:
	.stabn	68,0,676,.LM588-.LFBB24
.LM588:
	movl	$0, %eax
	jmp	.L189
.L188:
	.stabn	68,0,678,.LM589-.LFBB24
.LM589:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,678,.LM590-.LFBB24
.LM590:
	movq	$0, 64(%rsp)
	.stabn	68,0,679,.LM591-.LFBB24
.LM591:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,679,.LM592-.LFBB24
.LM592:
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,680,.LM593-.LFBB24
.LM593:
	cmpq	$0, 72(%rsp)
	jne	.L190
	.stabn	68,0,682,.LM594-.LFBB24
.LM594:
	movl	$0, %eax
	jmp	.L189
.L190:
	.stabn	68,0,686,.LM595-.LFBB24
.LM595:
	movq	72(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$find_continumsa_inbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,687,.LM596-.LFBB24
.LM596:
	cmpq	$0, 40(%rsp)
	jne	.L191
	.stabn	68,0,689,.LM597-.LFBB24
.LM597:
	movl	$0, %eax
	jmp	.L189
.L191:
	.stabn	68,0,691,.LM598-.LFBB24
.LM598:
	movq	40(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,691,.LM599-.LFBB24
.LM599:
	cmpq	%rax, 72(%rsp)
	jnb	.L192
	.stabn	68,0,693,.LM600-.LFBB24
.LM600:
	movl	$0, %eax
	jmp	.L189
.L192:
	.stabn	68,0,696,.LM601-.LFBB24
.LM601:
	movq	40(%rsp), %rax
	movl	4(%rax), %eax
	.stabn	68,0,696,.LM602-.LFBB24
.LM602:
	cmpl	$2, %eax
	je	.L193
	.stabn	68,0,696,.LM603-.LFBB24
.LM603:
	movq	40(%rsp), %rax
	movl	4(%rax), %eax
	.stabn	68,0,696,.LM604-.LFBB24
.LM604:
	cmpl	$3, %eax
	jne	.L194
.L193:
	.stabn	68,0,696,.LM605-.LFBB24
.LM605:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,696,.LM606-.LFBB24
.LM606:
	cmpq	$3, %rax
	je	.L194
	.stabn	68,0,699,.LM607-.LFBB24
.LM607:
	movq	40(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,699,.LM608-.LFBB24
.LM608:
	movq	72(%rsp), %rax
	subq	%rdx, %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,702,.LM609-.LFBB24
.LM609:
	movq	40(%rsp), %rax
	movq	16(%rax), %rdi
	.stabn	68,0,702,.LM610-.LFBB24
.LM610:
	movq	40(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,702,.LM611-.LFBB24
.LM611:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,702,.LM612-.LFBB24
.LM612:
	movq	56(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	56(%rsp), %rdx
	movq	40(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movabsq	$continumsadsc_add_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,702,.LM613-.LFBB24
.LM613:
	testq	%rax, %rax
	jne	.L195
	.stabn	68,0,704,.LM614-.LFBB24
.LM614:
	movl	$0, %eax
	jmp	.L189
.L195:
	.stabn	68,0,708,.LM615-.LFBB24
.LM615:
	cmpq	$0, 64(%rsp)
	jne	.L196
	.stabn	68,0,710,.LM616-.LFBB24
.LM616:
	movq	(%rsp), %rax
	movq	64(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,711,.LM617-.LFBB24
.LM617:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,712,.LM618-.LFBB24
.LM618:
	movl	$1, %eax
	jmp	.L189
.L196:
	.stabn	68,0,715,.LM619-.LFBB24
.LM619:
	movq	40(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,715,.LM620-.LFBB24
.LM620:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,715,.LM621-.LFBB24
.LM621:
	movq	56(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,715,.LM622-.LFBB24
.LM622:
	movq	16(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,718,.LM623-.LFBB24
.LM623:
	movq	(%rsp), %rax
	movq	64(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,720,.LM624-.LFBB24
.LM624:
	movl	$1, %eax
	jmp	.L189
.L194:
	.stabn	68,0,723,.LM625-.LFBB24
.LM625:
	movq	40(%rsp), %rax
	movl	4(%rax), %eax
	.stabn	68,0,723,.LM626-.LFBB24
.LM626:
	cmpl	$1, %eax
	jne	.L197
	.stabn	68,0,723,.LM627-.LFBB24
.LM627:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,723,.LM628-.LFBB24
.LM628:
	cmpq	$3, %rax
	jne	.L197
	.stabn	68,0,725,.LM629-.LFBB24
.LM629:
	movq	(%rsp), %rax
	movq	(%rax), %rdi
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rdx
	movq	40(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movabsq	$continumsadsc_add_procmareabafh@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,725,.LM630-.LFBB24
.LM630:
	testq	%rax, %rax
	jne	.L198
	.stabn	68,0,727,.LM631-.LFBB24
.LM631:
	movl	$0, %eax
	jmp	.L189
.L198:
	.stabn	68,0,729,.LM632-.LFBB24
.LM632:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,730,.LM633-.LFBB24
.LM633:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,731,.LM634-.LFBB24
.LM634:
	movl	$1, %eax
	jmp	.L189
.L197:
	.stabn	68,0,734,.LM635-.LFBB24
.LM635:
	movl	$0, %eax
.L189:
	.stabn	68,0,735,.LM636-.LFBB24
.LM636:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	continumsadsc_mareabafh_core, .-continumsadsc_mareabafh_core
	.stabs	"retval:(0,9)",128,0,678,72
	.stabs	"tmpmnr:(0,9)",128,0,678,64
	.stabs	"mstat:(0,55)",128,0,679,56
	.stabs	"mend:(0,55)",128,0,679,48
	.stabs	"bafhp:(0,65)",128,0,686,40
	.stabn	192,0,0,.LFBB24-.LFBB24
	.stabn	224,0,0,.Lscope24-.LFBB24
.Lscope24:
	.stabs	"",36,0,0,.Lscope24-.LFBB24
	.section	.rodata
	.align 8
.LC2:
	.string	"continumsadsc_mareabafh_core fail\n"
	.text
	.stabs	"merlove_continumsadsc_mareabafh:F(0,38)",36,0,737,merlove_continumsadsc_mareabafh
	.stabs	"mareap:p(0,67)",160,0,737,24
	.stabs	"mstat:p(0,55)",160,0,737,16
	.stabs	"mend:p(0,55)",160,0,737,8
	.stabs	"mnr:p(0,9)",160,0,737,0
	.globl	merlove_continumsadsc_mareabafh
	.type	merlove_continumsadsc_mareabafh, @function
merlove_continumsadsc_mareabafh:
	.stabn	68,0,738,.LM637-.LFBB25
.LM637:
.LFBB25:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$72, %rsp
	.cfi_def_cfa_offset 96
.L208:
	leaq	.L208(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L208, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,739,.LM638-.LFBB25
.LM638:
	cmpq	$0, 24(%rsp)
	je	.L201
	.stabn	68,0,739,.LM639-.LFBB25
.LM639:
	cmpq	$0, 16(%rsp)
	je	.L201
	.stabn	68,0,739,.LM640-.LFBB25
.LM640:
	cmpq	$0, 8(%rsp)
	je	.L201
	.stabn	68,0,739,.LM641-.LFBB25
.LM641:
	cmpq	$0, (%rsp)
	jne	.L202
.L201:
	.stabn	68,0,741,.LM642-.LFBB25
.LM642:
	movl	$0, %eax
	jmp	.L207
.L202:
	.stabn	68,0,743,.LM643-.LFBB25
.LM643:
	movq	(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,744,.LM644-.LFBB25
.LM644:
	movq	16(%rsp), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,744,.LM645-.LFBB25
.LM645:
	movq	8(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,747,.LM646-.LFBB25
.LM646:
	jmp	.L204
.L206:
	.stabn	68,0,750,.LM647-.LFBB25
.LM647:
	leaq	56(%rsp), %rcx
	leaq	40(%rsp), %rdx
	leaq	48(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$continumsadsc_mareabafh_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,750,.LM648-.LFBB25
.LM648:
	testq	%rax, %rax
	jne	.L204
	.stabn	68,0,752,.LM649-.LFBB25
.LM649:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L204:
	.stabn	68,0,747,.LM650-.LFBB25
.LM650:
	movq	56(%rsp), %rax
	.stabn	68,0,747,.LM651-.LFBB25
.LM651:
	testq	%rax, %rax
	je	.L205
	.stabn	68,0,747,.LM652-.LFBB25
.LM652:
	movq	40(%rsp), %rax
	.stabn	68,0,747,.LM653-.LFBB25
.LM653:
	testq	%rax, %rax
	jne	.L206
.L205:
	.stabn	68,0,755,.LM654-.LFBB25
.LM654:
	movl	$1, %eax
.L207:
	.stabn	68,0,756,.LM655-.LFBB25
.LM655:
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	merlove_continumsadsc_mareabafh, .-merlove_continumsadsc_mareabafh
	.stabs	"mnridx:(0,9)",128,0,743,56
	.stabs	"fstat:(0,55)",128,0,744,48
	.stabs	"fend:(0,55)",128,0,744,40
	.stabn	192,0,0,.LFBB25-.LFBB25
	.stabn	224,0,0,.Lscope25-.LFBB25
.Lscope25:
	.stabs	"",36,0,0,.Lscope25-.LFBB25
	.section	.rodata
	.align 8
.LC3:
	.string	"merlove_scan_continumsadsc fail\n"
.LC4:
	.string	"check_continumsadsc fail\n"
	.align 8
.LC5:
	.string	"merlove_continumsadsc_mareabafh fail\n"
	.text
	.stabs	"merlove_mem_onmemarea:F(0,38)",36,0,758,merlove_mem_onmemarea
	.stabs	"mareap:p(0,67)",160,0,758,24
	.stabs	"mstat:p(0,55)",160,0,758,16
	.stabs	"msanr:p(0,9)",160,0,758,8
	.globl	merlove_mem_onmemarea
	.type	merlove_mem_onmemarea, @function
merlove_mem_onmemarea:
	.stabn	68,0,759,.LM656-.LFBB26
.LM656:
.LFBB26:
.LFB54:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
.L220:
	leaq	.L220(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L220, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,760,.LM657-.LFBB26
.LM657:
	cmpq	$0, 24(%rsp)
	je	.L210
	.stabn	68,0,760,.LM658-.LFBB26
.LM658:
	cmpq	$0, 16(%rsp)
	je	.L210
	.stabn	68,0,760,.LM659-.LFBB26
.LM659:
	cmpq	$0, 8(%rsp)
	jne	.L211
.L210:
	.stabn	68,0,762,.LM660-.LFBB26
.LM660:
	movl	$0, %eax
	jmp	.L219
.L211:
	.stabn	68,0,764,.LM661-.LFBB26
.LM661:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,764,.LM662-.LFBB26
.LM662:
	cmpq	$4, %rax
	jne	.L213
	.stabn	68,0,766,.LM663-.LFBB26
.LM663:
	movl	$1, %eax
	jmp	.L219
.L213:
	.stabn	68,0,768,.LM664-.LFBB26
.LM664:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,768,.LM665-.LFBB26
.LM665:
	testq	%rax, %rax
	jne	.L214
	.stabn	68,0,770,.LM666-.LFBB26
.LM666:
	movl	$0, %eax
	jmp	.L219
.L214:
	.stabn	68,0,772,.LM667-.LFBB26
.LM667:
	movq	$0, 56(%rsp)
	.stabn	68,0,772,.LM668-.LFBB26
.LM668:
	movq	$0, 48(%rsp)
	.stabn	68,0,772,.LM669-.LFBB26
.LM669:
	movq	16(%rsp), %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,773,.LM670-.LFBB26
.LM670:
	movq	$0, 40(%rsp)
	.stabn	68,0,774,.LM671-.LFBB26
.LM671:
	movq	$0, 32(%rsp)
	.stabn	68,0,775,.LM672-.LFBB26
.LM672:
	movq	$0, 64(%rsp)
	.stabn	68,0,777,.LM673-.LFBB26
.LM673:
	jmp	.L215
.L218:
	.stabn	68,0,780,.LM674-.LFBB26
.LM674:
	leaq	48(%rsp), %r9
	leaq	56(%rsp), %r8
	movq	8(%rsp), %rcx
	leaq	32(%rsp), %rdx
	movq	72(%rsp), %rsi
	movq	24(%rsp), %rax
	subq	$8, %rsp
	.cfi_def_cfa_offset 120
	leaq	48(%rsp), %rdi
	pushq	%rdi
	.cfi_def_cfa_offset 128
	movq	%rax, %rdi
	movabsq	$merlove_scan_continumsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	addq	$16, %rsp
	.cfi_def_cfa_offset 112
	movq	%rax, 64(%rsp)
	.stabn	68,0,781,.LM675-.LFBB26
.LM675:
	cmpq	$0, 64(%rsp)
	jne	.L216
	.stabn	68,0,783,.LM676-.LFBB26
.LM676:
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L216:
	.stabn	68,0,785,.LM677-.LFBB26
.LM677:
	movq	56(%rsp), %rax
	.stabn	68,0,785,.LM678-.LFBB26
.LM678:
	testq	%rax, %rax
	je	.L215
	.stabn	68,0,785,.LM679-.LFBB26
.LM679:
	movq	48(%rsp), %rax
	.stabn	68,0,785,.LM680-.LFBB26
.LM680:
	testq	%rax, %rax
	je	.L215
	.stabn	68,0,787,.LM681-.LFBB26
.LM681:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$check_continumsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,787,.LM682-.LFBB26
.LM682:
	testq	%rax, %rax
	jne	.L217
	.stabn	68,0,789,.LM683-.LFBB26
.LM683:
	movabsq	$.LC4@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L217:
	.stabn	68,0,793,.LM684-.LFBB26
.LM684:
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$merlove_continumsadsc_mareabafh@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,793,.LM685-.LFBB26
.LM685:
	testq	%rax, %rax
	jne	.L215
	.stabn	68,0,795,.LM686-.LFBB26
.LM686:
	movabsq	$.LC5@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L215:
	.stabn	68,0,777,.LM687-.LFBB26
.LM687:
	movq	32(%rsp), %rax
	cmpq	%rax, 8(%rsp)
	ja	.L218
	.stabn	68,0,799,.LM688-.LFBB26
.LM688:
	movl	$1, %eax
.L219:
	.stabn	68,0,800,.LM689-.LFBB26
.LM689:
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.size	merlove_mem_onmemarea, .-merlove_mem_onmemarea
	.stabs	"retstatmsap:(0,55)",128,0,772,56
	.stabs	"retendmsap:(0,55)",128,0,772,48
	.stabs	"fntmsap:(0,55)",128,0,772,72
	.stabs	"retfindmnr:(0,9)",128,0,773,40
	.stabs	"fntmnr:(0,9)",128,0,774,32
	.stabs	"retscan:(0,38)",128,0,775,64
	.stabn	192,0,0,.LFBB26-.LFBB26
	.stabn	224,0,0,.Lscope26-.LFBB26
.Lscope26:
	.stabs	"",36,0,0,.Lscope26-.LFBB26
	.stabs	"merlove_mem_core:F(0,38)",36,0,802,merlove_mem_core
	.stabs	"mbsp:p(0,69)",160,0,802,8
	.globl	merlove_mem_core
	.type	merlove_mem_core, @function
merlove_mem_core:
	.stabn	68,0,803,.LM690-.LFBB27
.LM690:
.LFBB27:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
.L231:
	leaq	.L231(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L231, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,805,.LM691-.LFBB27
.LM691:
	movq	8(%rsp), %rax
	movq	256(%rax), %rax
	.stabn	68,0,805,.LM692-.LFBB27
.LM692:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,805,.LM693-.LFBB27
.LM693:
	movq	%rax, 48(%rsp)
	.stabn	68,0,808,.LM694-.LFBB27
.LM694:
	movq	8(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,808,.LM695-.LFBB27
.LM695:
	movq	$0, 72(%rsp)
	.stabn	68,0,811,.LM696-.LFBB27
.LM696:
	movq	8(%rsp), %rax
	movq	224(%rax), %rax
	.stabn	68,0,811,.LM697-.LFBB27
.LM697:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,811,.LM698-.LFBB27
.LM698:
	movq	%rax, 32(%rsp)
	.stabn	68,0,813,.LM699-.LFBB27
.LM699:
	movq	$-1, 24(%rsp)
	.stabn	68,0,813,.LM700-.LFBB27
.LM700:
	movq	$-1, 16(%rsp)
.LBB9:
	.stabn	68,0,815,.LM701-.LFBB27
.LM701:
	movq	$0, 64(%rsp)
	.stabn	68,0,815,.LM702-.LFBB27
.LM702:
	jmp	.L222
.L227:
	.stabn	68,0,818,.LM703-.LFBB27
.LM703:
	movq	64(%rsp), %rax
	imulq	$5912, %rax, %rdx
	.stabn	68,0,818,.LM704-.LFBB27
.LM704:
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$merlove_setallmarflgs_onmemarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,819,.LM705-.LFBB27
.LM705:
	cmpq	$-1, 24(%rsp)
	jne	.L223
	.stabn	68,0,821,.LM706-.LFBB27
.LM706:
	movl	$0, %eax
	jmp	.L224
.L223:
	.stabn	68,0,823,.LM707-.LFBB27
.LM707:
	movq	64(%rsp), %rax
	imulq	$5912, %rax, %rdx
	.stabn	68,0,823,.LM708-.LFBB27
.LM708:
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$test_setflgs@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,824,.LM709-.LFBB27
.LM709:
	cmpq	$-1, 16(%rsp)
	jne	.L225
	.stabn	68,0,826,.LM710-.LFBB27
.LM710:
	movl	$0, %eax
	jmp	.L224
.L225:
	.stabn	68,0,828,.LM711-.LFBB27
.LM711:
	movq	24(%rsp), %rax
	cmpq	16(%rsp), %rax
	je	.L226
	.stabn	68,0,830,.LM712-.LFBB27
.LM712:
	movl	$0, %eax
	jmp	.L224
.L226:
	.stabn	68,0,815,.LM713-.LFBB27
.LM713:
	addq	$1, 64(%rsp)
.L222:
	.stabn	68,0,815,.LM714-.LFBB27
.LM714:
	movq	8(%rsp), %rax
	movq	232(%rax), %rax
	.stabn	68,0,815,.LM715-.LFBB27
.LM715:
	cmpq	%rax, 64(%rsp)
	jb	.L227
.LBE9:
.LBB10:
	.stabn	68,0,835,.LM716-.LFBB27
.LM716:
	movq	$0, 56(%rsp)
	.stabn	68,0,835,.LM717-.LFBB27
.LM717:
	jmp	.L228
.L230:
	.stabn	68,0,838,.LM718-.LFBB27
.LM718:
	movq	56(%rsp), %rax
	imulq	$5912, %rax, %rdx
	.stabn	68,0,838,.LM719-.LFBB27
.LM719:
	movq	32(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rax
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$merlove_mem_onmemarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,838,.LM720-.LFBB27
.LM720:
	testq	%rax, %rax
	jne	.L229
	.stabn	68,0,840,.LM721-.LFBB27
.LM721:
	movl	$0, %eax
	jmp	.L224
.L229:
	.stabn	68,0,842,.LM722-.LFBB27
.LM722:
	movq	56(%rsp), %rax
	imulq	$5912, %rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,842,.LM723-.LFBB27
.LM723:
	movq	144(%rax), %rax
	.stabn	68,0,842,.LM724-.LFBB27
.LM724:
	addq	%rax, 72(%rsp)
	.stabn	68,0,835,.LM725-.LFBB27
.LM725:
	addq	$1, 56(%rsp)
.L228:
	.stabn	68,0,835,.LM726-.LFBB27
.LM726:
	movq	8(%rsp), %rax
	movq	232(%rax), %rax
	.stabn	68,0,835,.LM727-.LFBB27
.LM727:
	cmpq	%rax, 56(%rsp)
	jb	.L230
.LBE10:
	.stabn	68,0,845,.LM728-.LFBB27
.LM728:
	movl	$1, %eax
.L224:
	.stabn	68,0,846,.LM729-.LFBB27
.LM729:
	addq	$88, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.size	merlove_mem_core, .-merlove_mem_core
	.stabs	"mstatp:(0,55)",128,0,805,48
	.stabs	"msanr:(0,9)",128,0,808,40
	.stabs	"maxp:(0,9)",128,0,808,72
	.stabs	"marea:(0,67)",128,0,811,32
	.stabs	"sretf:(0,9)",128,0,813,24
	.stabs	"tretf:(0,9)",128,0,813,16
	.stabn	192,0,0,.LFBB27-.LFBB27
	.stabs	"mi:(0,9)",128,0,815,64
	.stabn	192,0,0,.LBB9-.LFBB27
	.stabn	224,0,0,.LBE9-.LFBB27
	.stabs	"maidx:(0,9)",128,0,835,56
	.stabn	192,0,0,.LBB10-.LFBB27
	.stabn	224,0,0,.LBE10-.LFBB27
	.stabn	224,0,0,.Lscope27-.LFBB27
.Lscope27:
	.stabs	"",36,0,0,.Lscope27-.LFBB27
	.stabs	"check_multi_msadsc:F(0,9)",36,0,848,check_multi_msadsc
	.stabs	"mstat:p(0,55)",160,0,848,16
	.stabs	"bafhp:p(0,65)",160,0,848,8
	.stabs	"mareap:p(0,67)",160,0,848,0
	.globl	check_multi_msadsc
	.type	check_multi_msadsc, @function
check_multi_msadsc:
	.stabn	68,0,849,.LM730-.LFBB28
.LM730:
.LFBB28:
.LFB56:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
.L260:
	leaq	.L260(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L260, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,850,.LM731-.LFBB28
.LM731:
	cmpq	$0, 16(%rsp)
	je	.L233
	.stabn	68,0,850,.LM732-.LFBB28
.LM732:
	cmpq	$0, 8(%rsp)
	je	.L233
	.stabn	68,0,850,.LM733-.LFBB28
.LM733:
	cmpq	$0, (%rsp)
	jne	.L234
.L233:
	.stabn	68,0,852,.LM734-.LFBB28
.LM734:
	movl	$0, %eax
	jmp	.L235
.L234:
	.stabn	68,0,854,.LM735-.LFBB28
.LM735:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,854,.LM736-.LFBB28
.LM736:
	cmpb	$1, %al
	je	.L236
	.stabn	68,0,855,.LM737-.LFBB28
.LM737:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,854,.LM738-.LFBB28
.LM738:
	cmpb	$2, %al
	je	.L236
	.stabn	68,0,857,.LM739-.LFBB28
.LM739:
	movl	$0, %eax
	jmp	.L235
.L236:
	.stabn	68,0,859,.LM740-.LFBB28
.LM740:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,859,.LM741-.LFBB28
.LM741:
	testq	%rax, %rax
	jne	.L237
	.stabn	68,0,861,.LM742-.LFBB28
.LM742:
	movl	$0, %eax
	jmp	.L235
.L237:
	.stabn	68,0,864,.LM743-.LFBB28
.LM743:
	movq	$0, 64(%rsp)
	.stabn	68,0,865,.LM744-.LFBB28
.LM744:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,865,.LM745-.LFBB28
.LM745:
	cmpb	$1, %al
	jne	.L238
	.stabn	68,0,867,.LM746-.LFBB28
.LM746:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 64(%rsp)
.L238:
	.stabn	68,0,869,.LM747-.LFBB28
.LM747:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,869,.LM748-.LFBB28
.LM748:
	cmpb	$2, %al
	jne	.L239
	.stabn	68,0,871,.LM749-.LFBB28
.LM749:
	movq	16(%rsp), %rax
	movq	%rax, 64(%rsp)
.L239:
	.stabn	68,0,873,.LM750-.LFBB28
.LM750:
	cmpq	$0, 64(%rsp)
	jne	.L240
	.stabn	68,0,875,.LM751-.LFBB28
.LM751:
	movl	$0, %eax
	jmp	.L235
.L240:
	.stabn	68,0,877,.LM752-.LFBB28
.LM752:
	movq	64(%rsp), %rax
	subq	16(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,877,.LM753-.LFBB28
.LM753:
	addq	$1, %rax
	.stabn	68,0,877,.LM754-.LFBB28
.LM754:
	movq	%rax, 40(%rsp)
	.stabn	68,0,878,.LM755-.LFBB28
.LM755:
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,878,.LM756-.LFBB28
.LM756:
	cmpq	%rax, 40(%rsp)
	je	.L241
	.stabn	68,0,880,.LM757-.LFBB28
.LM757:
	movl	$0, %eax
	jmp	.L235
.L241:
	.stabn	68,0,882,.LM758-.LFBB28
.LM758:
	movq	64(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,882,.LM759-.LFBB28
.LM759:
	cmpb	$2, %al
	je	.L242
	.stabn	68,0,884,.LM760-.LFBB28
.LM760:
	movl	$0, %eax
	jmp	.L235
.L242:
	.stabn	68,0,886,.LM761-.LFBB28
.LM761:
	movq	64(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,886,.LM762-.LFBB28
.LM762:
	cmpq	%rax, 8(%rsp)
	je	.L243
	.stabn	68,0,888,.LM763-.LFBB28
.LM763:
	movl	$0, %eax
	jmp	.L235
.L243:
	.stabn	68,0,891,.LM764-.LFBB28
.LM764:
	movq	$-1, 32(%rsp)
	.stabn	68,0,892,.LM765-.LFBB28
.LM765:
	cmpq	$1, 40(%rsp)
	jne	.L244
	.stabn	68,0,894,.LM766-.LFBB28
.LM766:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movzbl	%al, %edx
	.stabn	68,0,894,.LM767-.LFBB28
.LM767:
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,894,.LM768-.LFBB28
.LM768:
	cmpl	%eax, %edx
	je	.L245
	.stabn	68,0,896,.LM769-.LFBB28
.LM769:
	movl	$0, %eax
	jmp	.L235
.L245:
	.stabn	68,0,898,.LM770-.LFBB28
.LM770:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,898,.LM771-.LFBB28
.LM771:
	testb	%al, %al
	jne	.L246
	.stabn	68,0,899,.LM772-.LFBB28
.LM772:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,898,.LM773-.LFBB28
.LM773:
	testl	%eax, %eax
	je	.L247
.L246:
	.stabn	68,0,901,.LM774-.LFBB28
.LM774:
	movl	$0, %eax
	jmp	.L235
.L247:
	.stabn	68,0,903,.LM775-.LFBB28
.LM775:
	movq	16(%rsp), %rax
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,903,.LM776-.LFBB28
.LM776:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,903,.LM777-.LFBB28
.LM777:
	movq	%rax, 32(%rsp)
	.stabn	68,0,904,.LM778-.LFBB28
.LM778:
	movq	(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,904,.LM779-.LFBB28
.LM779:
	cmpq	%rax, 32(%rsp)
	jb	.L248
	.stabn	68,0,904,.LM780-.LFBB28
.LM780:
	movq	32(%rsp), %rax
	leaq	4095(%rax), %rdx
	.stabn	68,0,904,.LM781-.LFBB28
.LM781:
	movq	(%rsp), %rax
	movq	192(%rax), %rax
	.stabn	68,0,904,.LM782-.LFBB28
.LM782:
	cmpq	%rax, %rdx
	jbe	.L249
.L248:
	.stabn	68,0,906,.LM783-.LFBB28
.LM783:
	movl	$0, %eax
	jmp	.L235
.L249:
	.stabn	68,0,908,.LM784-.LFBB28
.LM784:
	movl	$1, %eax
	jmp	.L235
.L244:
	.stabn	68,0,910,.LM785-.LFBB28
.LM785:
	movq	$0, 56(%rsp)
.LBB11:
	.stabn	68,0,911,.LM786-.LFBB28
.LM786:
	movq	$0, 48(%rsp)
	.stabn	68,0,911,.LM787-.LFBB28
.LM787:
	jmp	.L250
.L259:
	.stabn	68,0,913,.LM788-.LFBB28
.LM788:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,913,.LM789-.LFBB28
.LM789:
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movzbl	%al, %edx
	.stabn	68,0,913,.LM790-.LFBB28
.LM790:
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,913,.LM791-.LFBB28
.LM791:
	cmpl	%eax, %edx
	je	.L251
	.stabn	68,0,915,.LM792-.LFBB28
.LM792:
	movl	$0, %eax
	jmp	.L235
.L251:
	.stabn	68,0,917,.LM793-.LFBB28
.LM793:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,917,.LM794-.LFBB28
.LM794:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,917,.LM795-.LFBB28
.LM795:
	testb	%al, %al
	jne	.L252
	.stabn	68,0,918,.LM796-.LFBB28
.LM796:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,918,.LM797-.LFBB28
.LM797:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,917,.LM798-.LFBB28
.LM798:
	testl	%eax, %eax
	je	.L253
.L252:
	.stabn	68,0,920,.LM799-.LFBB28
.LM799:
	movl	$0, %eax
	jmp	.L235
.L253:
	.stabn	68,0,922,.LM800-.LFBB28
.LM800:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,922,.LM801-.LFBB28
.LM801:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,922,.LM802-.LFBB28
.LM802:
	testb	%al, %al
	jne	.L254
	.stabn	68,0,923,.LM803-.LFBB28
.LM803:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,923,.LM804-.LFBB28
.LM804:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,922,.LM805-.LFBB28
.LM805:
	testl	%eax, %eax
	je	.L255
.L254:
	.stabn	68,0,925,.LM806-.LFBB28
.LM806:
	movl	$0, %eax
	jmp	.L235
.L255:
	.stabn	68,0,927,.LM807-.LFBB28
.LM807:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,927,.LM808-.LFBB28
.LM808:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,927,.LM809-.LFBB28
.LM809:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,927,.LM810-.LFBB28
.LM810:
	leaq	4096(%rax), %rcx
	.stabn	68,0,927,.LM811-.LFBB28
.LM811:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,927,.LM812-.LFBB28
.LM812:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %esi
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rsi
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rsi
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rsi
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rsi
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rsi, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,927,.LM813-.LFBB28
.LM813:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,927,.LM814-.LFBB28
.LM814:
	cmpq	%rax, %rcx
	je	.L256
	.stabn	68,0,929,.LM815-.LFBB28
.LM815:
	movl	$0, %eax
	jmp	.L235
.L256:
	.stabn	68,0,931,.LM816-.LFBB28
.LM816:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,931,.LM817-.LFBB28
.LM817:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,931,.LM818-.LFBB28
.LM818:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	movq	%rax, %rdx
	.stabn	68,0,931,.LM819-.LFBB28
.LM819:
	movq	(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,931,.LM820-.LFBB28
.LM820:
	cmpq	%rax, %rdx
	jb	.L257
	.stabn	68,0,932,.LM821-.LFBB28
.LM821:
	movq	48(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,932,.LM822-.LFBB28
.LM822:
	movzbl	25(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	26(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	27(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	28(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	29(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	30(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	.stabn	68,0,932,.LM823-.LFBB28
.LM823:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,932,.LM824-.LFBB28
.LM824:
	leaq	4095(%rax), %rdx
	.stabn	68,0,932,.LM825-.LFBB28
.LM825:
	movq	(%rsp), %rax
	movq	192(%rax), %rax
	.stabn	68,0,931,.LM826-.LFBB28
.LM826:
	cmpq	%rax, %rdx
	jbe	.L258
.L257:
	.stabn	68,0,934,.LM827-.LFBB28
.LM827:
	movl	$0, %eax
	jmp	.L235
.L258:
	.stabn	68,0,936,.LM828-.LFBB28
.LM828:
	addq	$1, 56(%rsp)
	.stabn	68,0,911,.LM829-.LFBB28
.LM829:
	addq	$1, 48(%rsp)
.L250:
	.stabn	68,0,911,.LM830-.LFBB28
.LM830:
	movq	40(%rsp), %rax
	subq	$1, %rax
	.stabn	68,0,911,.LM831-.LFBB28
.LM831:
	cmpq	%rax, 48(%rsp)
	jb	.L259
.LBE11:
	.stabn	68,0,938,.LM832-.LFBB28
.LM832:
	movq	56(%rsp), %rax
	addq	$1, %rax
.L235:
	.stabn	68,0,939,.LM833-.LFBB28
.LM833:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	check_multi_msadsc, .-check_multi_msadsc
	.stabs	"mend:(0,55)",128,0,864,64
	.stabs	"mnr:(0,9)",128,0,877,40
	.stabs	"phyadr:(0,12)",128,0,891,32
	.stabs	"idx:(0,9)",128,0,910,56
	.stabn	192,0,0,.LFBB28-.LFBB28
	.stabs	"mi:(0,9)",128,0,911,48
	.stabn	192,0,0,.LBB11-.LFBB28
	.stabn	224,0,0,.LBE11-.LFBB28
	.stabn	224,0,0,.Lscope28-.LFBB28
.Lscope28:
	.stabs	"",36,0,0,.Lscope28-.LFBB28
	.stabs	"check_one_bafhlst:F(0,38)",36,0,941,check_one_bafhlst
	.stabs	"bafhp:p(0,65)",160,0,941,8
	.stabs	"mareap:p(0,67)",160,0,941,0
	.globl	check_one_bafhlst
	.type	check_one_bafhlst, @function
check_one_bafhlst:
	.stabn	68,0,942,.LM834-.LFBB29
.LM834:
.LFBB29:
.LFB57:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$48, %rsp
	.cfi_def_cfa_offset 72
.L271:
	leaq	.L271(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L271, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,943,.LM835-.LFBB29
.LM835:
	cmpq	$0, 8(%rsp)
	je	.L262
	.stabn	68,0,943,.LM836-.LFBB29
.LM836:
	cmpq	$0, (%rsp)
	jne	.L263
.L262:
	.stabn	68,0,945,.LM837-.LFBB29
.LM837:
	movl	$0, %eax
	jmp	.L264
.L263:
	.stabn	68,0,947,.LM838-.LFBB29
.LM838:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,947,.LM839-.LFBB29
.LM839:
	testq	%rax, %rax
	jne	.L265
	.stabn	68,0,947,.LM840-.LFBB29
.LM840:
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,947,.LM841-.LFBB29
.LM841:
	testq	%rax, %rax
	jne	.L265
	.stabn	68,0,949,.LM842-.LFBB29
.LM842:
	movl	$1, %eax
	jmp	.L264
.L265:
	.stabn	68,0,951,.LM843-.LFBB29
.LM843:
	movq	$0, 40(%rsp)
	.stabn	68,0,952,.LM844-.LFBB29
.LM844:
	movq	$0, 32(%rsp)
	.stabn	68,0,953,.LM845-.LFBB29
.LM845:
	movq	$0, 24(%rsp)
	.stabn	68,0,954,.LM846-.LFBB29
.LM846:
	movq	8(%rsp), %rax
	movq	64(%rax), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,954,.LM847-.LFBB29
.LM847:
	jmp	.L266
.L268:
	.stabn	68,0,956,.LM848-.LFBB29
.LM848:
	movq	32(%rsp), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,957,.LM849-.LFBB29
.LM849:
	movq	8(%rsp), %rax
	movq	16(%rax), %rbp
	.stabn	68,0,957,.LM850-.LFBB29
.LM850:
	movq	(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$check_multi_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,957,.LM851-.LFBB29
.LM851:
	cmpq	%rax, %rbp
	je	.L267
	.stabn	68,0,959,.LM852-.LFBB29
.LM852:
	movl	$0, %eax
	jmp	.L264
.L267:
	.stabn	68,0,961,.LM853-.LFBB29
.LM853:
	addq	$1, 40(%rsp)
	.stabn	68,0,954,.LM854-.LFBB29
.LM854:
	movq	32(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 32(%rsp)
.L266:
	.stabn	68,0,954,.LM855-.LFBB29
.LM855:
	movq	8(%rsp), %rax
	addq	$56, %rax
	.stabn	68,0,954,.LM856-.LFBB29
.LM856:
	cmpq	%rax, 32(%rsp)
	jne	.L268
	.stabn	68,0,963,.LM857-.LFBB29
.LM857:
	movq	8(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,963,.LM858-.LFBB29
.LM858:
	cmpq	%rax, 40(%rsp)
	jne	.L269
	.stabn	68,0,963,.LM859-.LFBB29
.LM859:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,963,.LM860-.LFBB29
.LM860:
	cmpq	%rax, 40(%rsp)
	je	.L270
.L269:
	.stabn	68,0,965,.LM861-.LFBB29
.LM861:
	movl	$0, %eax
	jmp	.L264
.L270:
	.stabn	68,0,967,.LM862-.LFBB29
.LM862:
	movl	$1, %eax
.L264:
	.stabn	68,0,968,.LM863-.LFBB29
.LM863:
	addq	$48, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	check_one_bafhlst, .-check_one_bafhlst
	.stabs	"lindx:(0,9)",128,0,951,40
	.stabs	"tmplst:(0,2)",128,0,952,32
	.stabs	"list_h_t:t(0,3)",128,0,11,0
	.stabs	"msap:(0,55)",128,0,953,24
	.stabn	192,0,0,.LFBB29-.LFBB29
	.stabn	224,0,0,.Lscope29-.LFBB29
.Lscope29:
	.stabs	"",36,0,0,.Lscope29-.LFBB29
	.stabs	"check_one_memarea:F(0,38)",36,0,970,check_one_memarea
	.stabs	"mareap:p(0,67)",160,0,970,0
	.globl	check_one_memarea
	.type	check_one_memarea, @function
check_one_memarea:
	.stabn	68,0,971,.LM864-.LFBB30
.LM864:
.LFBB30:
.LFB58:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L280:
	leaq	.L280(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L280, %r11
	addq	%r11, %rbx
	movq	%rdi, (%rsp)
	.stabn	68,0,972,.LM865-.LFBB30
.LM865:
	cmpq	$0, (%rsp)
	jne	.L273
	.stabn	68,0,974,.LM866-.LFBB30
.LM866:
	movl	$0, %eax
	jmp	.L274
.L273:
	.stabn	68,0,976,.LM867-.LFBB30
.LM867:
	movq	(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,976,.LM868-.LFBB30
.LM868:
	testq	%rax, %rax
	jne	.L275
	.stabn	68,0,978,.LM869-.LFBB30
.LM869:
	movl	$1, %eax
	jmp	.L274
.L275:
.LBB12:
	.stabn	68,0,981,.LM870-.LFBB30
.LM870:
	movq	$0, 16(%rsp)
	.stabn	68,0,981,.LM871-.LFBB30
.LM871:
	jmp	.L276
.L278:
	.stabn	68,0,983,.LM872-.LFBB30
.LM872:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	384(%rax), %rdx
	movq	(%rsp), %rax
	addq	%rdx, %rax
	leaq	8(%rax), %rdx
	movq	(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$check_one_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,983,.LM873-.LFBB30
.LM873:
	testq	%rax, %rax
	jne	.L277
	.stabn	68,0,985,.LM874-.LFBB30
.LM874:
	movl	$0, %eax
	jmp	.L274
.L277:
	.stabn	68,0,981,.LM875-.LFBB30
.LM875:
	addq	$1, 16(%rsp)
.L276:
	.stabn	68,0,981,.LM876-.LFBB30
.LM876:
	cmpq	$51, 16(%rsp)
	jbe	.L278
.LBE12:
	.stabn	68,0,989,.LM877-.LFBB30
.LM877:
	movq	(%rsp), %rax
	leaq	5800(%rax), %rdx
	movq	(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$check_one_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,989,.LM878-.LFBB30
.LM878:
	testq	%rax, %rax
	jne	.L279
	.stabn	68,0,991,.LM879-.LFBB30
.LM879:
	movl	$0, %eax
	jmp	.L274
.L279:
	.stabn	68,0,993,.LM880-.LFBB30
.LM880:
	movl	$1, %eax
.L274:
	.stabn	68,0,994,.LM881-.LFBB30
.LM881:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	check_one_memarea, .-check_one_memarea
	.stabs	"li:(0,9)",128,0,981,16
	.stabn	192,0,0,.LBB12-.LFBB30
	.stabn	224,0,0,.LBE12-.LFBB30
.Lscope30:
	.stabs	"",36,0,0,.Lscope30-.LFBB30
	.section	.rodata
.LC6:
	.string	"check_one_memarea fail\n"
	.text
	.stabs	"mem_check_mareadata:F(0,1)",36,0,996,mem_check_mareadata
	.stabs	"mbsp:p(0,69)",160,0,996,8
	.globl	mem_check_mareadata
	.type	mem_check_mareadata, @function
mem_check_mareadata:
	.stabn	68,0,997,.LM882-.LFBB31
.LM882:
.LFBB31:
.LFB59:
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
.L286:
	leaq	.L286(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L286, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,998,.LM883-.LFBB31
.LM883:
	movq	8(%rsp), %rax
	movq	224(%rax), %rax
	.stabn	68,0,998,.LM884-.LFBB31
.LM884:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,998,.LM885-.LFBB31
.LM885:
	movq	%rax, 16(%rsp)
.LBB13:
	.stabn	68,0,999,.LM886-.LFBB31
.LM886:
	movq	$0, 24(%rsp)
	.stabn	68,0,999,.LM887-.LFBB31
.LM887:
	jmp	.L282
.L284:
	.stabn	68,0,1001,.LM888-.LFBB31
.LM888:
	movq	24(%rsp), %rax
	imulq	$5912, %rax, %rdx
	.stabn	68,0,1001,.LM889-.LFBB31
.LM889:
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$check_one_memarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1001,.LM890-.LFBB31
.LM890:
	testq	%rax, %rax
	jne	.L283
	.stabn	68,0,1003,.LM891-.LFBB31
.LM891:
	movabsq	$.LC6@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L283:
	.stabn	68,0,999,.LM892-.LFBB31
.LM892:
	addq	$1, 24(%rsp)
.L282:
	.stabn	68,0,999,.LM893-.LFBB31
.LM893:
	movq	8(%rsp), %rax
	movq	232(%rax), %rax
	.stabn	68,0,999,.LM894-.LFBB31
.LM894:
	cmpq	%rax, 24(%rsp)
	jb	.L284
.LBE13:
	.stabn	68,0,1006,.LM895-.LFBB31
.LM895:
	nop
	.stabn	68,0,1007,.LM896-.LFBB31
.LM896:
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
.LFE59:
	.size	mem_check_mareadata, .-mem_check_mareadata
	.stabs	"marea:(0,67)",128,0,998,16
	.stabn	192,0,0,.LFBB31-.LFBB31
	.stabs	"maidx:(0,9)",128,0,999,24
	.stabn	192,0,0,.LBB13-.LFBB31
	.stabn	224,0,0,.LBE13-.LFBB31
	.stabn	224,0,0,.Lscope31-.LFBB31
.Lscope31:
	.stabs	"",36,0,0,.Lscope31-.LFBB31
	.section	.rodata
.LC7:
	.string	"merlove_mem_core fail\n"
	.text
	.stabs	"init_merlove_mem:F(0,1)",36,0,1010,init_merlove_mem
	.globl	init_merlove_mem
	.type	init_merlove_mem, @function
init_merlove_mem:
	.stabn	68,0,1011,.LM897-.LFBB32
.LM897:
.LFBB32:
.LFB60:
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
.L290:
	leaq	.L290(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L290, %r11
	addq	%r11, %rbx
	.stabn	68,0,1012,.LM898-.LFBB32
.LM898:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$merlove_mem_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1012,.LM899-.LFBB32
.LM899:
	testq	%rax, %rax
	jne	.L288
	.stabn	68,0,1014,.LM900-.LFBB32
.LM900:
	movabsq	$.LC7@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L288:
	.stabn	68,0,1016,.LM901-.LFBB32
.LM901:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$mem_check_mareadata@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1017,.LM902-.LFBB32
.LM902:
	nop
	.stabn	68,0,1018,.LM903-.LFBB32
.LM903:
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
.LFE60:
	.size	init_merlove_mem, .-init_merlove_mem
.Lscope32:
	.stabs	"",36,0,0,.Lscope32-.LFBB32
	.section	.rodata
	.align 8
.LC8:
	.string	"bafhlst_t.af_stus:%x,af_indx:%x,af_onebnr:%x,af_fobjnr:%x\n"
	.text
	.stabs	"disp_bafhlst:F(0,1)",36,0,1020,disp_bafhlst
	.stabs	"bafhp:p(0,65)",160,0,1020,8
	.globl	disp_bafhlst
	.type	disp_bafhlst, @function
disp_bafhlst:
	.stabn	68,0,1021,.LM904-.LFBB33
.LM904:
.LFBB33:
.LFB61:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L295:
	leaq	.L295(%rip), %r9
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L295, %r11
	addq	%r11, %r9
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1022,.LM905-.LFBB33
.LM905:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1022,.LM906-.LFBB33
.LM906:
	testq	%rax, %rax
	je	.L294
	.stabn	68,0,1024,.LM907-.LFBB33
.LM907:
	movq	8(%rsp), %rax
	movq	24(%rax), %rsi
	movq	8(%rsp), %rax
	movq	16(%rax), %rcx
	movq	8(%rsp), %rax
	movq	8(%rax), %rdx
	movq	8(%rsp), %rax
	movl	4(%rax), %eax
	movq	%rsi, %r8
	movl	%eax, %esi
	movabsq	$.LC8@GOTOFF, %rax
	leaq	(%r9,%rax), %rax
	movq	%rax, %rdi
	movq	%r9, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r10
	addq	%r9, %r10
	call	*%r10
	.stabn	68,0,1027,.LM908-.LFBB33
.LM908:
	nop
.L294:
	nop
	.stabn	68,0,1028,.LM909-.LFBB33
.LM909:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	disp_bafhlst, .-disp_bafhlst
.Lscope33:
	.stabs	"",36,0,0,.Lscope33-.LFBB33
	.section	.rodata
	.align 8
.LC9:
	.string	"memarea.ma_type:%x,ma_maxpages:%x,ma_freepages:%x,ma_allmsadscnr:%x\n"
	.text
	.stabs	"disp_memarea:F(0,1)",36,0,1030,disp_memarea
	.stabs	"mbsp:p(0,69)",160,0,1030,8
	.globl	disp_memarea
	.type	disp_memarea, @function
disp_memarea:
	.stabn	68,0,1031,.LM910-.LFBB34
.LM910:
.LFBB34:
.LFB62:
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
.L302:
	leaq	.L302(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L302, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1032,.LM911-.LFBB34
.LM911:
	movq	8(%rsp), %rax
	movq	224(%rax), %rax
	.stabn	68,0,1032,.LM912-.LFBB34
.LM912:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,1032,.LM913-.LFBB34
.LM913:
	movq	%rax, 24(%rsp)
.LBB14:
	.stabn	68,0,1033,.LM914-.LFBB34
.LM914:
	movq	$0, 40(%rsp)
	.stabn	68,0,1033,.LM915-.LFBB34
.LM915:
	jmp	.L297
.L300:
	.stabn	68,0,1036,.LM916-.LFBB34
.LM916:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,1035,.LM917-.LFBB34
.LM917:
	movq	248(%rax), %rsi
	.stabn	68,0,1036,.LM918-.LFBB34
.LM918:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,1035,.LM919-.LFBB34
.LM919:
	movq	160(%rax), %rcx
	.stabn	68,0,1036,.LM920-.LFBB34
.LM920:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,1035,.LM921-.LFBB34
.LM921:
	movq	144(%rax), %rdx
	.stabn	68,0,1036,.LM922-.LFBB34
.LM922:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdi
	movq	24(%rsp), %rax
	addq	%rdi, %rax
	.stabn	68,0,1035,.LM923-.LFBB34
.LM923:
	movq	40(%rax), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movabsq	$.LC9@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r9
	addq	%rbx, %r9
	call	*%r9
.LBB15:
	.stabn	68,0,1038,.LM924-.LFBB34
.LM924:
	movq	$0, 32(%rsp)
	.stabn	68,0,1038,.LM925-.LFBB34
.LM925:
	jmp	.L298
.L299:
	.stabn	68,0,1040,.LM926-.LFBB34
.LM926:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdx
	movq	24(%rsp), %rax
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,1040,.LM927-.LFBB34
.LM927:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	$384, %rax
	addq	%rcx, %rax
	addq	$8, %rax
	movq	%rax, %rdi
	movabsq	$disp_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1038,.LM928-.LFBB34
.LM928:
	addq	$1, 32(%rsp)
.L298:
	.stabn	68,0,1038,.LM929-.LFBB34
.LM929:
	cmpq	$51, 32(%rsp)
	jbe	.L299
.LBE15:
	.stabn	68,0,1042,.LM930-.LFBB34
.LM930:
	movq	40(%rsp), %rax
	imulq	$5912, %rax, %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,1042,.LM931-.LFBB34
.LM931:
	addq	$5800, %rax
	movq	%rax, %rdi
	movabsq	$disp_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1033,.LM932-.LFBB34
.LM932:
	addq	$1, 40(%rsp)
.L297:
	.stabn	68,0,1033,.LM933-.LFBB34
.LM933:
	movq	8(%rsp), %rax
	movq	232(%rax), %rax
	.stabn	68,0,1033,.LM934-.LFBB34
.LM934:
	cmpq	%rax, 40(%rsp)
	jb	.L300
.LBE14:
	.stabn	68,0,1044,.LM935-.LFBB34
.LM935:
	nop
	.stabn	68,0,1045,.LM936-.LFBB34
.LM936:
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
.LFE62:
	.size	disp_memarea, .-disp_memarea
	.stabs	"marea:(0,67)",128,0,1032,24
	.stabn	192,0,0,.LFBB34-.LFBB34
	.stabs	"i:(0,9)",128,0,1033,40
	.stabn	192,0,0,.LBB14-.LFBB34
	.stabs	"li:(0,9)",128,0,1038,32
	.stabn	192,0,0,.LBB15-.LFBB34
	.stabn	224,0,0,.LBE15-.LFBB34
	.stabn	224,0,0,.LBE14-.LFBB34
	.stabn	224,0,0,.Lscope34-.LFBB34
.Lscope34:
	.stabs	"",36,0,0,.Lscope34-.LFBB34
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
