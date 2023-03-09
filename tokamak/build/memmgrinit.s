	.file	"memmgrinit.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/memmgrinit.c",100,0,2,.Ltext0
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
	.stabs	"m2mcopy:f(0,6)=(0,7)=@s64;r(0,7);01000000000000000000000;00777777777777777777777;",36,0,174,m2mcopy
	.stabs	"u8_t:t(0,8)=(0,9)=@s8;r(0,9);0;255;",128,0,8,0
	.stabs	"sint_t:t(0,6)",128,0,16,0
	.stabs	"long int:t(0,7)",128,0,0,0
	.stabs	"unsigned char:t(0,9)",128,0,0,0
	.stabs	"sadr:p(0,10)=*(0,1)",160,0,174,16
	.stabs	"dadr:p(0,10)",160,0,174,8
	.stabs	"len:p(0,6)",160,0,174,0
	.type	m2mcopy, @function
m2mcopy:
	.stabs	"../include/halinc/io.h",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,175,.LM5-.LFBB2
.LM5:
.LFBB2:
.LFB21:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
.L15:
	leaq	.L15(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L15, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,176,.LM6-.LFBB2
.LM6:
	cmpq	$0, 16(%rsp)
	je	.L5
	.stabn	68,0,176,.LM7-.LFBB2
.LM7:
	cmpq	$0, 8(%rsp)
	je	.L5
	.stabn	68,0,176,.LM8-.LFBB2
.LM8:
	cmpq	$0, (%rsp)
	jg	.L6
.L5:
	.stabn	68,0,178,.LM9-.LFBB2
.LM9:
	movl	$0, %eax
	jmp	.L7
.L6:
	.stabn	68,0,180,.LM10-.LFBB2
.LM10:
	movq	16(%rsp), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,180,.LM11-.LFBB2
.LM11:
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,181,.LM12-.LFBB2
.LM12:
	movq	32(%rsp), %rax
	cmpq	24(%rsp), %rax
	jnb	.L8
.LBB2:
	.stabn	68,0,183,.LM13-.LFBB2
.LM13:
	movq	(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,183,.LM14-.LFBB2
.LM14:
	jmp	.L9
.L10:
	.stabn	68,0,185,.LM15-.LFBB2
.LM15:
	movq	48(%rsp), %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,185,.LM16-.LFBB2
.LM16:
	movq	48(%rsp), %rcx
	movq	24(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,185,.LM17-.LFBB2
.LM17:
	movzbl	(%rax), %eax
	.stabn	68,0,185,.LM18-.LFBB2
.LM18:
	movb	%al, (%rdx)
	.stabn	68,0,183,.LM19-.LFBB2
.LM19:
	subq	$1, 48(%rsp)
.L9:
	.stabn	68,0,183,.LM20-.LFBB2
.LM20:
	cmpq	$0, 48(%rsp)
	jns	.L10
.LBE2:
	.stabn	68,0,187,.LM21-.LFBB2
.LM21:
	movq	(%rsp), %rax
	jmp	.L7
.L8:
	.stabn	68,0,189,.LM22-.LFBB2
.LM22:
	movq	32(%rsp), %rax
	cmpq	24(%rsp), %rax
	jbe	.L11
.LBB3:
	.stabn	68,0,191,.LM23-.LFBB2
.LM23:
	movq	$0, 40(%rsp)
	.stabn	68,0,191,.LM24-.LFBB2
.LM24:
	jmp	.L12
.L13:
	.stabn	68,0,193,.LM25-.LFBB2
.LM25:
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,193,.LM26-.LFBB2
.LM26:
	movq	40(%rsp), %rcx
	movq	24(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,193,.LM27-.LFBB2
.LM27:
	movzbl	(%rax), %eax
	.stabn	68,0,193,.LM28-.LFBB2
.LM28:
	movb	%al, (%rdx)
	.stabn	68,0,191,.LM29-.LFBB2
.LM29:
	addq	$1, 40(%rsp)
.L12:
	.stabn	68,0,191,.LM30-.LFBB2
.LM30:
	movq	40(%rsp), %rax
	cmpq	(%rsp), %rax
	jl	.L13
.LBE3:
	.stabn	68,0,195,.LM31-.LFBB2
.LM31:
	movq	(%rsp), %rax
	jmp	.L7
.L11:
	.stabn	68,0,197,.LM32-.LFBB2
.LM32:
	movq	32(%rsp), %rax
	cmpq	24(%rsp), %rax
	jne	.L14
	.stabn	68,0,199,.LM33-.LFBB2
.LM33:
	movq	(%rsp), %rax
	jmp	.L7
.L14:
	.stabn	68,0,201,.LM34-.LFBB2
.LM34:
	movl	$0, %eax
.L7:
	.stabn	68,0,202,.LM35-.LFBB2
.LM35:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE21:
	.size	m2mcopy, .-m2mcopy
	.stabs	"s:(0,11)=*(0,8)",128,0,180,32
	.stabs	"d:(0,11)",128,0,180,24
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabs	"i:(0,6)",128,0,183,48
	.stabn	192,0,0,.LBB2-.LFBB2
	.stabn	224,0,0,.LBE2-.LFBB2
	.stabs	"j:(0,6)",128,0,191,40
	.stabn	192,0,0,.LBB3-.LFBB2
	.stabn	224,0,0,.LBE3-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"set_cr3:f(0,1)",36,0,306,set_cr3
	.stabs	"pl4adr:p(0,12)=(0,13)=@s64;r(0,13);0;01777777777777777777777;",160,0,306,0
	.stabs	"u64_t:t(0,12)",128,0,11,0
	.stabs	"long unsigned int:t(0,13)",128,0,0,0
	.type	set_cr3, @function
set_cr3:
	.stabn	68,0,307,.LM36-.LFBB3
.LM36:
.LFBB3:
.LFB31:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L18:
	leaq	.L18(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L18, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,308,.LM37-.LFBB3
.LM37:
	movq	(%rsp), %rax
#APP
# 308 "../include/halinc/io.h" 1
	movq %rax,%cr3 
	
# 0 "" 2
	.stabn	68,0,315,.LM38-.LFBB3
.LM38:
#NO_APP
	nop
	.stabn	68,0,316,.LM39-.LFBB3
.LM39:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE31:
	.size	set_cr3, .-set_cr3
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"init_memmgr:F(0,1)",36,0,9,init_memmgr
	.globl	init_memmgr
	.type	init_memmgr, @function
init_memmgr:
	.stabs	"../hal/x86/memmgrinit.c",132,0,0,.Ltext3
.Ltext3:
	.stabn	68,0,10,.LM40-.LFBB4
.LM40:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L21:
	leaq	.L21(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L21, %r11
	addq	%r11, %rbx
	.stabn	68,0,14,.LM41-.LFBB4
.LM41:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_msadsc@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,15,.LM42-.LFBB4
.LM42:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_memarea@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,16,.LM43-.LFBB4
.LM43:
	movl	$0, %eax
	movabsq	$init_copy_pagesfvm@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,17,.LM44-.LFBB4
.LM44:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$init_search_krloccupymm@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,18,.LM45-.LFBB4
.LM45:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_merlove_mem@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,19,.LM46-.LFBB4
.LM46:
	movl	$0, %eax
	movabsq	$init_memmgrob@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,21,.LM47-.LFBB4
.LM47:
	nop
	.stabn	68,0,22,.LM48-.LFBB4
.LM48:
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
.LFE32:
	.size	init_memmgr, .-init_memmgr
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"disp_memmgrob:F(0,1)",36,0,24,disp_memmgrob
	.globl	disp_memmgrob
	.type	disp_memmgrob, @function
disp_memmgrob:
	.stabn	68,0,25,.LM49-.LFBB5
.LM49:
.LFBB5:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
.L24:
	leaq	.L24(%rip), %rdx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L24, %r11
	addq	%r11, %rdx
	.stabn	68,0,26,.LM50-.LFBB5
.LM50:
	movq	%rdx, %r15
	movl	$0, %eax
	movabsq	$test_divsion_pages@PLTOFF, %rcx
	addq	%rdx, %rcx
	call	*%rcx
	.stabn	68,0,27,.LM51-.LFBB5
.LM51:
	nop
	.stabn	68,0,28,.LM52-.LFBB5
.LM52:
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	disp_memmgrob, .-disp_memmgrob
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.section	.rodata
.LC0:
	.string	"mbsp->mb_e820expadr==NULL\n"
.LC1:
	.string	"mbsp->mb_memmappadr==NULL\n"
.LC2:
	.string	"mbsp->mb_memznpadr==NULL\n"
	.text
	.stabs	"init_memmgrob:F(0,1)",36,0,30,init_memmgrob
	.stabs	"adr_t:t(0,14)=(0,13)",128,0,19,0
	.stabs	"s_PHYMMARGE:T(0,15)=s80pmr_lock:(0,16)=(0,17)=s4lock:(0,18)=B(0,19)=(0,20)=r(0,20);0;037777777777;,0,32;;,0,32;pmr_type:(0,19),32,32;pmr_stype:(0,19),64,32;pmr_dtype:(0,19),96,32;pmr_flgs:(0,19),128,32;pmr_stus:(0,19),160,32;pmr_saddr:(0,12),192,64;pmr_lsize:(0,12),256,64;pmr_end:(0,12),320,64;pmr_rrvmsaddr:(0,12),384,64;pmr_rrvmend:(0,12),448,64;pmr_prip:(0,10),512,64;pmr_extp:(0,10),576,64;;",128,0,0,0
	.stabs	"s_MSADSC:T(0,21)=s40md_list:(0,3),0,128;md_lock:(0,16),128,32;md_indxflgs:(0,22)=(0,23)=xss_MSADFLGS:,160,32;md_phyadrs:(0,24)=(0,25)=xss_PHYADRFLGS:,192,64;md_odlink:(0,10),256,64;;",128,0,0,0
	.stabs	"s_MEMAREA:T(0,26)=s5912ma_list:(0,3),0,128;ma_lock:(0,16),128,32;ma_stus:(0,27)=(0,13),192,64;ma_flgs:(0,27),256,64;ma_type:(0,27),320,64;ma_sem:(0,28)=(0,29)=xss_SEM:,384,448;ma_waitlst:(0,30)=(0,31)=xss_WAIT_L_HEAD:,832,320;ma_maxpages:(0,27),1152,64;ma_allocpages:(0,27),1216,64;ma_freepages:(0,27),1280,64;ma_resvpages:(0,27),1344,64;ma_horizline:(0,27),1408,64;ma_logicstart:(0,14),1472,64;ma_logicend:(0,14),1536,64;ma_logicsz:(0,27),1600,64;ma_effectstart:(0,14),1664,64;ma_effectend:(0,14),1728,64;ma_effectsz:(0,27),1792,64;ma_allmsadsclst:(0,3),1856,128;ma_allmsadscnr:(0,27),1984,64;ma_arcpglst:(0,32)=(0,33)=xss_ARCLST:,2048,384;ma_funcobj:(0,34)=(0,35)=xss_MAFUNCOBJS:,2432,320;ma_mdmdata:(0,36)=(0,37)=xss_MEMDIVMER:,2752,44480;ma_privp:(0,10),47232,64;;",128,0,0,0
	.stabs	"u32_t:t(0,19)",128,0,10,0
	.stabs	"unsigned int:t(0,20)",128,0,0,0
	.stabs	"s_MSADFLGS:T(0,23)=s4mf_olkty:(0,19),0,2;mf_lstty:(0,19),2,1;mf_mocty:(0,19),3,2;mf_marty:(0,19),5,3;mf_uindx:(0,19),8,24;;",128,0,0,0
	.stabs	"s_PHYADRFLGS:T(0,25)=s8paf_alloc:(0,12),0,1;paf_shared:(0,12),1,1;paf_swap:(0,12),2,1;paf_cache:(0,12),3,1;paf_kmap:(0,12),4,1;paf_lock:(0,12),5,1;paf_dirty:(0,12),6,1;paf_busy:(0,12),7,1;paf_rv2:(0,12),8,4;paf_padrs:(0,12),12,52;;",128,0,0,0
	.stabs	"uint_t:t(0,27)",128,0,17,0
	.stabs	"s_SEM:T(0,29)=s56sem_lock:(0,16),0,32;sem_flg:(0,27),64,64;sem_count:(0,6),128,64;sem_waitlst:(0,38)=(0,39)=xss_KWLST:,192,256;;",128,0,0,0
	.stabs	"s_WAIT_L_HEAD:T(0,31)=s40wlh_llist:(0,3),0,128;wlh_lock:(0,16),128,32;wlh_count:(0,40)=(0,41)=xss_ATOMIC:,160,32;wlh_privte:(0,10),192,64;wlh_upfun:(0,42)=*(0,43)=f(0,44)=(0,6),256,64;;",128,0,0,0
	.stabs	"s_ARCLST:T(0,33)=s48al_lru1:(0,3),0,128;al_lru2:(0,3),128,128;al_lru1nr:(0,27),256,64;al_lru2nr:(0,27),320,64;;",128,0,0,0
	.stabs	"s_MAFUNCOBJS:T(0,35)=s40mafo_init:(0,45)=*(0,46)=f(0,47)=(0,12),0,64;mafo_exit:(0,48)=*(0,49)=f(0,47),64,64;mafo_aloc:(0,50)=*(0,51)=f(0,47),128,64;mafo_free:(0,50),192,64;mafo_recy:(0,50),256,64;;",128,0,0,0
	.stabs	"s_MEMDIVMER:T(0,37)=s5560dm_lock:(0,16),0,32;dm_stus:(0,19),32,32;dm_dmmaxindx:(0,27),64,64;dm_phydmindx:(0,27),128,64;dm_predmindx:(0,27),192,64;dm_divnr:(0,27),256,64;dm_mernr:(0,27),320,64;dm_mdmlielst:(0,52)=ar(0,53)=@s64;r(0,53);0;01777777777777777777777;;0;00000000000000000000063;(0,54)=(0,55)=xss_BAFHLST:,384,43264;dm_onemsalst:(0,54),43648,832;;",128,0,0,0
	.stabs	"s_KWLST:T(0,39)=s32wl_lock:(0,16),0,32;wl_tdnr:(0,27),64,64;wl_list:(0,3),128,128;;",128,0,0,0
	.stabs	"s_ATOMIC:T(0,41)=s4a_count:(0,56)=B(0,57)=(0,58)=r(0,58);-2147483648;2147483647;,0,32;;",128,0,0,0
	.stabs	"bool_t:t(0,44)",128,0,21,0
	.stabs	"mmstus_t:t(0,47)",128,0,38,0
	.stabs	"s_BAFHLST:T(0,55)=s104af_lock:(0,16),0,32;af_stus:(0,19),32,32;af_oder:(0,27),64,64;af_oderpnr:(0,27),128,64;af_fobjnr:(0,27),192,64;af_mobjnr:(0,27),256,64;af_alcindx:(0,27),320,64;af_freindx:(0,27),384,64;af_frelst:(0,3),448,128;af_alclst:(0,3),576,128;af_ovelst:(0,3),704,128;;",128,0,0,0
	.stabs	"s32_t:t(0,57)",128,0,14,0
	.stabs	"int:t(0,58)",128,0,0,0
	.globl	init_memmgrob
	.type	init_memmgrob, @function
init_memmgrob:
	.stabn	68,0,31,.LM53-.LFBB6
.LM53:
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
	subq	$40, %rsp
	.cfi_def_cfa_offset 64
.L36:
	leaq	.L36(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L36, %r11
	addq	%r11, %rbx
	.stabn	68,0,32,.LM54-.LFBB6
.LM54:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,33,.LM55-.LFBB6
.LM55:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, (%rsp)
	.stabn	68,0,34,.LM56-.LFBB6
.LM56:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$memmgrob_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,35,.LM57-.LFBB6
.LM57:
	movq	8(%rsp), %rax
	movq	200(%rax), %rax
	.stabn	68,0,35,.LM58-.LFBB6
.LM58:
	testq	%rax, %rax
	je	.L26
	.stabn	68,0,35,.LM59-.LFBB6
.LM59:
	movq	8(%rsp), %rax
	movq	208(%rax), %rax
	.stabn	68,0,35,.LM60-.LFBB6
.LM60:
	testq	%rax, %rax
	jne	.L27
.L26:
	.stabn	68,0,37,.LM61-.LFBB6
.LM61:
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L27:
	.stabn	68,0,39,.LM62-.LFBB6
.LM62:
	movq	8(%rsp), %rax
	movq	256(%rax), %rax
	.stabn	68,0,39,.LM63-.LFBB6
.LM63:
	testq	%rax, %rax
	je	.L28
	.stabn	68,0,39,.LM64-.LFBB6
.LM64:
	movq	8(%rsp), %rax
	movq	264(%rax), %rax
	.stabn	68,0,39,.LM65-.LFBB6
.LM65:
	testq	%rax, %rax
	jne	.L29
.L28:
	.stabn	68,0,41,.LM66-.LFBB6
.LM66:
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L29:
	.stabn	68,0,43,.LM67-.LFBB6
.LM67:
	movq	8(%rsp), %rax
	movq	224(%rax), %rax
	.stabn	68,0,43,.LM68-.LFBB6
.LM68:
	testq	%rax, %rax
	je	.L30
	.stabn	68,0,43,.LM69-.LFBB6
.LM69:
	movq	8(%rsp), %rax
	movq	232(%rax), %rax
	.stabn	68,0,43,.LM70-.LFBB6
.LM70:
	testq	%rax, %rax
	jne	.L31
.L30:
	.stabn	68,0,45,.LM71-.LFBB6
.LM71:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L31:
	.stabn	68,0,47,.LM72-.LFBB6
.LM72:
	movq	8(%rsp), %rax
	movq	200(%rax), %rax
	.stabn	68,0,47,.LM73-.LFBB6
.LM73:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,47,.LM74-.LFBB6
.LM74:
	movq	%rax, %rdx
	.stabn	68,0,47,.LM75-.LFBB6
.LM75:
	movq	(%rsp), %rax
	movq	%rdx, 144(%rax)
	.stabn	68,0,48,.LM76-.LFBB6
.LM76:
	movq	8(%rsp), %rax
	movq	208(%rax), %rdx
	.stabn	68,0,48,.LM77-.LFBB6
.LM77:
	movq	(%rsp), %rax
	movq	%rdx, 152(%rax)
	.stabn	68,0,49,.LM78-.LFBB6
.LM78:
	movq	8(%rsp), %rax
	movq	256(%rax), %rax
	.stabn	68,0,49,.LM79-.LFBB6
.LM79:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,49,.LM80-.LFBB6
.LM80:
	movq	%rax, %rdx
	.stabn	68,0,49,.LM81-.LFBB6
.LM81:
	movq	(%rsp), %rax
	movq	%rdx, 160(%rax)
	.stabn	68,0,50,.LM82-.LFBB6
.LM82:
	movq	8(%rsp), %rax
	movq	264(%rax), %rdx
	.stabn	68,0,50,.LM83-.LFBB6
.LM83:
	movq	(%rsp), %rax
	movq	%rdx, 168(%rax)
	.stabn	68,0,51,.LM84-.LFBB6
.LM84:
	movq	8(%rsp), %rax
	movq	224(%rax), %rax
	.stabn	68,0,51,.LM85-.LFBB6
.LM85:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,51,.LM86-.LFBB6
.LM86:
	movq	%rax, %rdx
	.stabn	68,0,51,.LM87-.LFBB6
.LM87:
	movq	(%rsp), %rax
	movq	%rdx, 176(%rax)
	.stabn	68,0,52,.LM88-.LFBB6
.LM88:
	movq	8(%rsp), %rax
	movq	232(%rax), %rdx
	.stabn	68,0,52,.LM89-.LFBB6
.LM89:
	movq	(%rsp), %rax
	movq	%rdx, 184(%rax)
	.stabn	68,0,53,.LM90-.LFBB6
.LM90:
	movq	8(%rsp), %rax
	movq	264(%rax), %rax
	.stabn	68,0,53,.LM91-.LFBB6
.LM91:
	salq	$12, %rax
	movq	%rax, %rdx
	.stabn	68,0,53,.LM92-.LFBB6
.LM92:
	movq	(%rsp), %rax
	movq	%rdx, 96(%rax)
	.stabn	68,0,54,.LM93-.LFBB6
.LM93:
	movq	8(%rsp), %rax
	movq	264(%rax), %rdx
	.stabn	68,0,54,.LM94-.LFBB6
.LM94:
	movq	(%rsp), %rax
	movq	%rdx, 104(%rax)
	.stabn	68,0,55,.LM95-.LFBB6
.LM95:
	movq	$0, 24(%rsp)
.LBB4:
	.stabn	68,0,56,.LM96-.LFBB6
.LM96:
	movq	$0, 16(%rsp)
	.stabn	68,0,56,.LM97-.LFBB6
.LM97:
	jmp	.L32
.L34:
	.stabn	68,0,58,.LM98-.LFBB6
.LM98:
	movq	(%rsp), %rax
	movq	160(%rax), %rcx
	.stabn	68,0,58,.LM99-.LFBB6
.LM99:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.stabn	68,0,58,.LM100-.LFBB6
.LM100:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,58,.LM101-.LFBB6
.LM101:
	cmpl	$1, %eax
	jne	.L33
	.stabn	68,0,59,.LM102-.LFBB6
.LM102:
	movq	(%rsp), %rax
	movq	160(%rax), %rcx
	.stabn	68,0,59,.LM103-.LFBB6
.LM103:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.stabn	68,0,59,.LM104-.LFBB6
.LM104:
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,58,.LM105-.LFBB6
.LM105:
	cmpb	$8, %al
	jne	.L33
	.stabn	68,0,60,.LM106-.LFBB6
.LM106:
	movq	(%rsp), %rax
	movq	160(%rax), %rcx
	.stabn	68,0,60,.LM107-.LFBB6
.LM107:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	.stabn	68,0,60,.LM108-.LFBB6
.LM108:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,59,.LM109-.LFBB6
.LM109:
	testb	%al, %al
	je	.L33
	.stabn	68,0,62,.LM110-.LFBB6
.LM110:
	addq	$1, 24(%rsp)
.L33:
	.stabn	68,0,56,.LM111-.LFBB6
.LM111:
	addq	$1, 16(%rsp)
.L32:
	.stabn	68,0,56,.LM112-.LFBB6
.LM112:
	movq	(%rsp), %rax
	movq	168(%rax), %rax
	.stabn	68,0,56,.LM113-.LFBB6
.LM113:
	cmpq	%rax, 16(%rsp)
	jb	.L34
.LBE4:
	.stabn	68,0,65,.LM114-.LFBB6
.LM114:
	movq	(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 120(%rax)
	.stabn	68,0,66,.LM115-.LFBB6
.LM115:
	movq	(%rsp), %rax
	movq	104(%rax), %rdx
	.stabn	68,0,66,.LM116-.LFBB6
.LM116:
	movq	(%rsp), %rax
	movq	120(%rax), %rax
	.stabn	68,0,66,.LM117-.LFBB6
.LM117:
	subq	%rax, %rdx
	.stabn	68,0,66,.LM118-.LFBB6
.LM118:
	movq	(%rsp), %rax
	movq	%rdx, 112(%rax)
	.stabn	68,0,67,.LM119-.LFBB6
.LM119:
	nop
	.stabn	68,0,68,.LM120-.LFBB6
.LM120:
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
.LFE34:
	.size	init_memmgrob, .-init_memmgrob
	.stabs	"mbsp:(0,59)=*(0,60)=(0,61)=xss_MACHBSTART:",128,0,32,8
	.stabs	"s_MACHBSTART:T(0,61)=s1207mb_migc:(0,12),0,64;mb_chksum:(0,12),64,64;mb_krlinitstack:(0,12),128,64;mb_krlitstacksz:(0,12),192,64;mb_imgpadr:(0,12),256,64;mb_imgsz:(0,12),320,64;mb_krlimgpadr:(0,12),384,64;mb_krlsz:(0,12),448,64;mb_krlvec:(0,12),512,64;mb_krlrunmode:(0,12),576,64;mb_kalldendpadr:(0,12),640,64;mb_ksepadrs:(0,12),704,64;mb_ksepadre:(0,12),768,64;mb_kservadrs:(0,12),832,64;mb_kservadre:(0,12),896,64;mb_nextwtpadr:(0,12),960,64;mb_bfontpadr:(0,12),1024,64;mb_bfontsz:(0,12),1088,64;mb_fvrmphyadr:(0,12),1152,64;mb_fvrmsz:(0,12),1216,64;mb_cpumode:(0,12),1280,64;mb_memsz:(0,12),1344,64;mb_e820padr:(0,12),1408,64;mb_e820nr:(0,12),1472,64;mb_e820sz:(0,12),1536,64;mb_e820expadr:(0,12),1600,64;mb_e820exnr:(0,12),1664,64;mb_e820exsz:(0,12),1728,64;mb_memznpadr:(0,12),1792,64;mb_memznnr:(0,12),1856,64;mb_memznsz:(0,12),1920,64;mb_memznchksum:(0,12),1984,64;mb_memmappadr:(0,12),2048,64;mb_memmapnr:(0,12),2112,64;mb_memmapsz:(0,12),2176,64;mb_memmapchksum:(0,12),2240,64;mb_pml4padr:(0,12),2304,64;mb_subpageslen:(0,12),2368,64;mb_kpmapphymemsz:(0,12),2432,64;mb_ebdaphyadr:(0,12),2496,64;mb_mrsdp:(0,62)=(0,63)=xss_MRSDP:,2560,288;mb_ghparm:(0,64)=(0,65)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"machbstart_t:t(0,60)",128,0,106,0
	.stabs	"s_MRSDP:T(0,63)=s36rp_sign:(0,12),0,64;rp_chksum:(0,8),64,8;rp_oemid:(0,66)=ar(0,53);0;00000000000000000000005;(0,8),72,48;rp_revn:(0,8),120,8;rp_rsdtphyadr:(0,19),128,32;rp_len:(0,19),160,32;rp_xsdtphyadr:(0,12),192,64;rp_echksum:(0,8),256,8;rp_resv:(0,67)=ar(0,53);0;00000000000000000000002;(0,8),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,65)=s851gh_mode:(0,19),0,32;gh_x:(0,19),32,32;gh_y:(0,19),64,32;gh_framphyadr:(0,19),96,32;gh_onepixbits:(0,19),128,32;gh_vbemodenr:(0,19),160,32;gh_vifphyadr:(0,19),192,32;gh_vmifphyadr:(0,19),224,32;gh_bank:(0,19),256,32;gh_curdipbnk:(0,19),288,32;gh_nextbnk:(0,19),320,32;gh_banksz:(0,19),352,32;gh_logophyadrs:(0,19),384,32;gh_logophyadre:(0,19),416,32;gh_fontadr:(0,19),448,32;gh_ftsectadr:(0,19),480,32;gh_ftsectnr:(0,19),512,32;gh_fnthight:(0,19),544,32;gh_nxtcharsx:(0,19),576,32;gh_nxtcharsy:(0,19),608,32;gh_linesz:(0,19),640,32;gh_vbeinfo:(0,68)=(0,69)=xss_VBEINFO:,672,4096;gh_vminfo:(0,70)=(0,71)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"s_VBEINFO:T(0,69)=s512vbesignature:(0,72)=ar(0,53);0;00000000000000000000003;(0,73)=r(0,73);0;127;,0,32;vbeversion:(0,74)=(0,75)=@s16;r(0,75);0;65535;,32,16;oemstringptr:(0,19),48,32;capabilities:(0,19),80,32;videomodeptr:(0,19),112,32;totalmemory:(0,74),144,16;oemsoftwarerev:(0,74),160,16;oemvendornameptr:(0,19),176,32;oemproductnameptr:(0,19),208,32;oemproductrevptr:(0,19),240,32;reserved:(0,76)=ar(0,53);0;00000000000000000000335;(0,8),272,1776;oemdata:(0,77)=ar(0,53);0;00000000000000000000377;(0,8),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,71)=s255ModeAttributes:(0,74),0,16;WinAAttributes:(0,8),16,8;WinBAttributes:(0,8),24,8;WinGranularity:(0,74),32,16;WinSize:(0,74),48,16;WinASegment:(0,74),64,16;WinBSegment:(0,74),80,16;WinFuncPtr:(0,19),96,32;BytesPerScanLine:(0,74),128,16;XResolution:(0,74),144,16;YResolution:(0,74),160,16;XCharSize:(0,8),176,8;YCharSize:(0,8),184,8;NumberOfPlanes:(0,8),192,8;BitsPerPixel:(0,8),200,8;NumberOfBanks:(0,8),208,8;MemoryModel:(0,8),216,8;BankSize:(0,8),224,8;NumberOfImagePages:(0,8),232,8;Reserved:(0,8),240,8;RedMaskSize:(0,8),248,8;RedFieldPosition:(0,8),256,8;GreenMaskSize:(0,8),264,8;GreenFieldPosition:(0,8),272,8;BlueMaskSize:(0,8),280,8;BlueFieldPosition:(0,8),288,8;RsvdMaskSize:(0,8),296,8;RsvdFieldPosition:(0,8),304,8;DirectColorModeInfo:(0,8),312,8;PhysBasePtr:(0,19),320,32;Reserved1:(0,19),352,32;Reserved2:(0,74),384,16;LinBytesPerScanLine:(0,74),400,16;BnkNumberOfImagePages:(0,8),416,8;LinNumberOfImagePages:(0,8),424,8;LinRedMaskSize:(0,8),432,8;LinRedFieldPosition:(0,8),440,8;LinGreenMaskSize:(0,8),448,8;LinGreenFieldPosition:(0,8),456,8;LinBlueMaskSize:(0,8),464,8;LinBlueFieldPosition:(0,8),472,8;LinRsvdMaskSize:(0,8),480,8;LinRsvdFieldPosition:(0,8),488,8;MaxPixelClock:(0,19),496,32;Reserved3:(0,78)=ar(0,53);0;00000000000000000000274;(0,8),528,1512;;",128,0,0,0
	.stabs	"char:t(0,73)",128,0,0,0
	.stabs	"u16_t:t(0,74)",128,0,9,0
	.stabs	"short unsigned int:t(0,75)",128,0,0,0
	.stabs	"mobp:(0,79)=*(0,80)=(0,81)=xss_MEMMGROB:",128,0,33,0
	.stabs	"s_MEMMGROB:T(0,81)=s2816mo_list:(0,3),0,128;mo_lock:(0,16),128,32;mo_stus:(0,27),192,64;mo_flgs:(0,27),256,64;mo_sem:(0,28),320,448;mo_memsz:(0,12),768,64;mo_maxpages:(0,12),832,64;mo_freepages:(0,12),896,64;mo_alocpages:(0,12),960,64;mo_resvpages:(0,12),1024,64;mo_horizline:(0,12),1088,64;mo_pmagestat:(0,82)=*(0,83)=(0,15),1152,64;mo_pmagenr:(0,12),1216,64;mo_msadscstat:(0,84)=*(0,85)=(0,21),1280,64;mo_msanr:(0,12),1344,64;mo_mareastat:(0,86)=*(0,87)=(0,26),1408,64;mo_mareanr:(0,12),1472,64;mo_kmsobmgr:(0,88)=(0,89)=xss_KMSOBMGRHED:,1536,20864;mo_privp:(0,10),22400,64;mo_extp:(0,10),22464,64;;",128,0,0,0
	.stabs	"memmgrob_t:t(0,80)",128,0,29,0
	.stabs	"s_KMSOBMGRHED:T(0,89)=s2608ks_lock:(0,16),0,32;ks_tclst:(0,3),64,128;ks_tcnr:(0,27),192,64;ks_msobnr:(0,27),256,64;ks_msobche:(0,90)=*(0,91)=(0,92)=xss_KMSOB:,320,64;ks_msoblst:(0,93)=ar(0,53);0;00000000000000000000077;(0,94)=(0,95)=xss_KOBLST:,384,20480;;",128,0,0,0
	.stabs	"s_KMSOB:T(0,92)=s368so_list:(0,3),0,128;so_lock:(0,16),128,32;so_stus:(0,27),192,64;so_flgs:(0,27),256,64;so_vstat:(0,14),320,64;so_vend:(0,14),384,64;so_objsz:(0,96)=(0,13),448,64;so_objrelsz:(0,96),512,64;so_mobjnr:(0,27),576,64;so_fobjnr:(0,27),640,64;so_frelst:(0,3),704,128;so_alclst:(0,3),832,128;so_mextlst:(0,3),960,128;so_mextnr:(0,27),1088,64;so_mc:(0,97)=(0,98)=xss_MSOMDC:,1152,1664;so_privp:(0,10),2816,64;so_extdp:(0,10),2880,64;;",128,0,0,0
	.stabs	"s_KOBLST:T(0,95)=s40ol_emplst:(0,3),0,128;ol_cahe:(0,90),128,64;ol_emnr:(0,27),192,64;ol_sz:(0,96),256,64;;",128,0,0,0
	.stabs	"size_t:t(0,96)",128,0,31,0
	.stabs	"s_MSOMDC:T(0,98)=s208mc_lst:(0,99)=ar(0,53);0;00000000000000000000004;(0,100)=(0,101)=xss_MSCLST:,0,1280;mc_msanr:(0,27),1280,64;mc_list:(0,3),1344,128;mc_kmobinlst:(0,3),1472,128;mc_kmobinpnr:(0,27),1600,64;;",128,0,0,0
	.stabs	"s_MSCLST:T(0,101)=s32ml_msanr:(0,27),0,64;ml_ompnr:(0,27),64,64;ml_list:(0,3),128,128;;",128,0,0,0
	.stabs	"aidx:(0,27)",128,0,55,24
	.stabn	192,0,0,.LFBB6-.LFBB6
	.stabs	"i:(0,27)",128,0,56,16
	.stabn	192,0,0,.LBB4-.LFBB6
	.stabn	224,0,0,.LBE4-.LFBB6
	.stabn	224,0,0,.Lscope6-.LFBB6
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"memmgrob_t_init:F(0,1)",36,0,70,memmgrob_t_init
	.stabs	"initp:p(0,79)",160,0,70,8
	.globl	memmgrob_t_init
	.type	memmgrob_t_init, @function
memmgrob_t_init:
	.stabn	68,0,71,.LM121-.LFBB7
.LM121:
.LFBB7:
.LFB35:
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
.L39:
	leaq	.L39(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L39, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,72,.LM122-.LFBB7
.LM122:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,73,.LM123-.LFBB7
.LM123:
	movq	8(%rsp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_init@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,74,.LM124-.LFBB7
.LM124:
	movq	8(%rsp), %rax
	movq	$0, 24(%rax)
	.stabn	68,0,75,.LM125-.LFBB7
.LM125:
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,76,.LM126-.LFBB7
.LM126:
	movq	8(%rsp), %rax
	movq	$0, 96(%rax)
	.stabn	68,0,77,.LM127-.LFBB7
.LM127:
	movq	8(%rsp), %rax
	movq	$0, 104(%rax)
	.stabn	68,0,78,.LM128-.LFBB7
.LM128:
	movq	8(%rsp), %rax
	movq	$0, 112(%rax)
	.stabn	68,0,79,.LM129-.LFBB7
.LM129:
	movq	8(%rsp), %rax
	movq	$0, 120(%rax)
	.stabn	68,0,80,.LM130-.LFBB7
.LM130:
	movq	8(%rsp), %rax
	movq	$0, 128(%rax)
	.stabn	68,0,81,.LM131-.LFBB7
.LM131:
	movq	8(%rsp), %rax
	movq	$0, 136(%rax)
	.stabn	68,0,82,.LM132-.LFBB7
.LM132:
	movq	8(%rsp), %rax
	movq	$0, 144(%rax)
	.stabn	68,0,83,.LM133-.LFBB7
.LM133:
	movq	8(%rsp), %rax
	movq	$0, 152(%rax)
	.stabn	68,0,84,.LM134-.LFBB7
.LM134:
	movq	8(%rsp), %rax
	movq	$0, 160(%rax)
	.stabn	68,0,85,.LM135-.LFBB7
.LM135:
	movq	8(%rsp), %rax
	movq	$0, 168(%rax)
	.stabn	68,0,86,.LM136-.LFBB7
.LM136:
	movq	8(%rsp), %rax
	movq	$0, 176(%rax)
	.stabn	68,0,87,.LM137-.LFBB7
.LM137:
	movq	8(%rsp), %rax
	movq	$0, 184(%rax)
	.stabn	68,0,88,.LM138-.LFBB7
.LM138:
	movq	8(%rsp), %rax
	movq	$0, 2800(%rax)
	.stabn	68,0,89,.LM139-.LFBB7
.LM139:
	movq	8(%rsp), %rax
	movq	$0, 2808(%rax)
	.stabn	68,0,90,.LM140-.LFBB7
.LM140:
	nop
	.stabn	68,0,91,.LM141-.LFBB7
.LM141:
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
.LFE35:
	.size	memmgrob_t_init, .-memmgrob_t_init
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"copy_pages_data:F(0,44)",36,0,93,copy_pages_data
	.stabs	"mbsp:p(0,59)",160,0,93,8
	.globl	copy_pages_data
	.type	copy_pages_data, @function
copy_pages_data:
	.stabn	68,0,94,.LM142-.LFBB8
.LM142:
.LFBB8:
.LFB36:
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
.L49:
	leaq	.L49(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L49, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,95,.LM143-.LFBB8
.LM143:
	movq	8(%rsp), %rax
	movq	120(%rax), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,97,.LM144-.LFBB8
.LM144:
	movq	8(%rsp), %rax
	movq	296(%rax), %rdx
	movq	48(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$initchkadr_is_ok@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,97,.LM145-.LFBB8
.LM145:
	testl	%eax, %eax
	je	.L41
	.stabn	68,0,99,.LM146-.LFBB8
.LM146:
	movl	$0, %eax
	jmp	.L42
.L41:
	.stabn	68,0,102,.LM147-.LFBB8
.LM147:
	movq	48(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,102,.LM148-.LFBB8
.LM148:
	movq	%rax, 40(%rsp)
	.stabn	68,0,103,.LM149-.LFBB8
.LM149:
	movq	40(%rsp), %rax
	.stabn	68,0,103,.LM150-.LFBB8
.LM150:
	addq	$4096, %rax
	.stabn	68,0,103,.LM151-.LFBB8
.LM151:
	movq	%rax, 32(%rsp)
	.stabn	68,0,104,.LM152-.LFBB8
.LM152:
	movq	40(%rsp), %rax
	.stabn	68,0,104,.LM153-.LFBB8
.LM153:
	addq	$8192, %rax
	.stabn	68,0,104,.LM154-.LFBB8
.LM154:
	movq	%rax, 88(%rsp)
.LBB5:
	.stabn	68,0,105,.LM155-.LFBB8
.LM155:
	movq	$0, 80(%rsp)
	.stabn	68,0,105,.LM156-.LFBB8
.LM156:
	jmp	.L43
.L44:
	.stabn	68,0,107,.LM157-.LFBB8
.LM157:
	movq	80(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,107,.LM158-.LFBB8
.LM158:
	movq	$0, (%rax)
	.stabn	68,0,108,.LM159-.LFBB8
.LM159:
	movq	80(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,108,.LM160-.LFBB8
.LM160:
	movq	$0, (%rax)
	.stabn	68,0,105,.LM161-.LFBB8
.LM161:
	addq	$1, 80(%rsp)
.L43:
	.stabn	68,0,105,.LM162-.LFBB8
.LM162:
	cmpq	$511, 80(%rsp)
	jbe	.L44
.LBE5:
	.stabn	68,0,110,.LM163-.LFBB8
.LM163:
	movq	$0, 72(%rsp)
	.stabn	68,0,111,.LM164-.LFBB8
.LM164:
	movq	$0, 24(%rsp)
.LBB6:
	.stabn	68,0,112,.LM165-.LFBB8
.LM165:
	movq	$0, 64(%rsp)
	.stabn	68,0,112,.LM166-.LFBB8
.LM166:
	jmp	.L45
.L48:
	.stabn	68,0,114,.LM167-.LFBB8
.LM167:
	movq	88(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$viradr_to_phyadr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,115,.LM168-.LFBB8
.LM168:
	movq	64(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,115,.LM169-.LFBB8
.LM169:
	movq	24(%rsp), %rdx
	orq	$3, %rdx
	.stabn	68,0,115,.LM170-.LFBB8
.LM170:
	movq	%rdx, (%rax)
.LBB7:
	.stabn	68,0,116,.LM171-.LFBB8
.LM171:
	movq	$0, 56(%rsp)
	.stabn	68,0,116,.LM172-.LFBB8
.LM172:
	jmp	.L46
.L47:
	.stabn	68,0,118,.LM173-.LFBB8
.LM173:
	movq	56(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	88(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,118,.LM174-.LFBB8
.LM174:
	movq	72(%rsp), %rdx
	orb	$-125, %dl
	.stabn	68,0,118,.LM175-.LFBB8
.LM175:
	movq	%rdx, (%rax)
	.stabn	68,0,119,.LM176-.LFBB8
.LM176:
	addq	$2097152, 72(%rsp)
	.stabn	68,0,116,.LM177-.LFBB8
.LM177:
	addq	$1, 56(%rsp)
.L46:
	.stabn	68,0,116,.LM178-.LFBB8
.LM178:
	cmpq	$511, 56(%rsp)
	jbe	.L47
.LBE7:
	.stabn	68,0,121,.LM179-.LFBB8
.LM179:
	movq	88(%rsp), %rax
	.stabn	68,0,121,.LM180-.LFBB8
.LM180:
	addq	$4096, %rax
	.stabn	68,0,121,.LM181-.LFBB8
.LM181:
	movq	%rax, 88(%rsp)
	.stabn	68,0,112,.LM182-.LFBB8
.LM182:
	addq	$1, 64(%rsp)
.L45:
	.stabn	68,0,112,.LM183-.LFBB8
.LM183:
	cmpq	$15, 64(%rsp)
	jbe	.L48
.LBE6:
	.stabn	68,0,123,.LM184-.LFBB8
.LM184:
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$viradr_to_phyadr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,124,.LM185-.LFBB8
.LM185:
	movq	40(%rsp), %rax
	addq	$2048, %rax
	.stabn	68,0,124,.LM186-.LFBB8
.LM186:
	movq	16(%rsp), %rdx
	orq	$3, %rdx
	.stabn	68,0,124,.LM187-.LFBB8
.LM187:
	movq	%rdx, (%rax)
	.stabn	68,0,125,.LM188-.LFBB8
.LM188:
	movq	16(%rsp), %rax
	orq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,125,.LM189-.LFBB8
.LM189:
	movq	40(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,126,.LM190-.LFBB8
.LM190:
	movq	8(%rsp), %rax
	movq	48(%rsp), %rdx
	movq	%rdx, 288(%rax)
	.stabn	68,0,127,.LM191-.LFBB8
.LM191:
	movq	8(%rsp), %rax
	movq	$73728, 296(%rax)
	.stabn	68,0,128,.LM192-.LFBB8
.LM192:
	movq	8(%rsp), %rax
	movabsq	$17179869184, %rsi
	movq	%rsi, 304(%rax)
	.stabn	68,0,129,.LM193-.LFBB8
.LM193:
	movq	8(%rsp), %rax
	movq	288(%rax), %rdx
	.stabn	68,0,129,.LM194-.LFBB8
.LM194:
	movq	8(%rsp), %rax
	movq	296(%rax), %rax
	.stabn	68,0,129,.LM195-.LFBB8
.LM195:
	addq	%rdx, %rax
	.stabn	68,0,129,.LM196-.LFBB8
.LM196:
	addq	$4095, %rax
	.stabn	68,0,129,.LM197-.LFBB8
.LM197:
	andq	$-4096, %rax
	movq	%rax, %rdx
	.stabn	68,0,129,.LM198-.LFBB8
.LM198:
	movq	8(%rsp), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,130,.LM199-.LFBB8
.LM199:
	movl	$1, %eax
.L42:
	.stabn	68,0,131,.LM200-.LFBB8
.LM200:
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
.LFE36:
	.size	copy_pages_data, .-copy_pages_data
	.stabs	"topgadr:(0,27)",128,0,95,48
	.stabs	"p:(0,102)=*(0,27)",128,0,102,40
	.stabs	"pdpte:(0,102)",128,0,103,32
	.stabs	"pde:(0,102)",128,0,104,88
	.stabs	"adr:(0,27)",128,0,110,72
	.stabs	"pdepd:(0,27)",128,0,111,24
	.stabs	"pdptepd:(0,27)",128,0,123,16
	.stabn	192,0,0,.LFBB8-.LFBB8
	.stabs	"mi:(0,27)",128,0,105,80
	.stabn	192,0,0,.LBB5-.LFBB8
	.stabn	224,0,0,.LBE5-.LFBB8
	.stabs	"pdei:(0,27)",128,0,112,64
	.stabn	192,0,0,.LBB6-.LFBB8
	.stabs	"pdeii:(0,27)",128,0,116,56
	.stabn	192,0,0,.LBB7-.LFBB8
	.stabn	224,0,0,.LBE7-.LFBB8
	.stabn	224,0,0,.LBE6-.LFBB8
	.stabn	224,0,0,.Lscope8-.LFBB8
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"copy_fvm_data:F(0,44)",36,0,133,copy_fvm_data
	.stabs	"mbsp:p(0,59)",160,0,133,8
	.stabs	"dgp:p(0,103)=*(0,104)=(0,105)=xss_DFTGRAPH:",160,0,133,0
	.stabs	"s_DFTGRAPH:T(0,105)=s312gh_mode:(0,12),0,64;gh_x:(0,12),64,64;gh_y:(0,12),128,64;gh_framphyadr:(0,12),192,64;gh_fvrmphyadr:(0,12),256,64;gh_fvrmsz:(0,12),320,64;gh_onepixbits:(0,12),384,64;gh_onepixbyte:(0,12),448,64;gh_vbemodenr:(0,12),512,64;gh_bank:(0,12),576,64;gh_curdipbnk:(0,12),640,64;gh_nextbnk:(0,12),704,64;gh_banksz:(0,12),768,64;gh_fontadr:(0,12),832,64;gh_fontsz:(0,12),896,64;gh_fnthight:(0,12),960,64;gh_nxtcharsx:(0,12),1024,64;gh_nxtcharsy:(0,12),1088,64;gh_linesz:(0,12),1152,64;gh_deffontpx:(0,106)=(0,19),1216,32;gh_chardxw:(0,12),1280,64;gh_flush:(0,12),1344,64;gh_framnr:(0,12),1408,64;gh_fshdata:(0,12),1472,64;gh_opfun:(0,107)=(0,108)=xss_DFTGHOPS:,1536,960;;",128,0,0,0
	.stabs	"pixl_t:t(0,106)",128,0,83,0
	.stabs	"s_DFTGHOPS:T(0,108)=s120dgo_read:(0,109)=*(0,110)=f(0,96),0,64;dgo_write:(0,109),64,64;dgo_ioctrl:(0,111)=*(0,112)=f(0,6),128,64;dgo_flush:(0,113)=*(0,114)=f(0,1),192,64;dgo_set_bank:(0,115)=*(0,116)=f(0,6),256,64;dgo_readpix:(0,117)=*(0,118)=f(0,106),320,64;dgo_writepix:(0,119)=*(0,120)=f(0,1),384,64;dgo_dxreadpix:(0,117),448,64;dgo_dxwritepix:(0,119),512,64;dgo_set_xy:(0,121)=*(0,122)=f(0,6),576,64;dgo_set_vwh:(0,121),640,64;dgo_set_xyoffset:(0,121),704,64;dgo_get_xy:(0,123)=*(0,124)=f(0,6),768,64;dgo_get_vwh:(0,123),832,64;dgo_get_xyoffset:(0,123),896,64;;",128,0,0,0
	.globl	copy_fvm_data
	.type	copy_fvm_data, @function
copy_fvm_data:
	.stabn	68,0,134,.LM201-.LFBB9
.LM201:
.LFBB9:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbp
	.cfi_def_cfa_offset 24
	.cfi_offset 6, -24
	pushq	%rbx
	.cfi_def_cfa_offset 32
	.cfi_offset 3, -32
	subq	$32, %rsp
	.cfi_def_cfa_offset 64
.L54:
	leaq	.L54(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L54, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,135,.LM202-.LFBB9
.LM202:
	movq	8(%rsp), %rax
	movq	120(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,136,.LM203-.LFBB9
.LM203:
	movq	(%rsp), %rax
	movq	40(%rax), %rdx
	movq	24(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$initchkadr_is_ok@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,136,.LM204-.LFBB9
.LM204:
	testl	%eax, %eax
	je	.L51
	.stabn	68,0,138,.LM205-.LFBB9
.LM205:
	movl	$0, %eax
	jmp	.L52
.L51:
	.stabn	68,0,140,.LM206-.LFBB9
.LM206:
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,140,.LM207-.LFBB9
.LM207:
	movq	%rax, %rbp
	.stabn	68,0,140,.LM208-.LFBB9
.LM208:
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,140,.LM209-.LFBB9
.LM209:
	movq	%rax, %rcx
	.stabn	68,0,140,.LM210-.LFBB9
.LM210:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,140,.LM211-.LFBB9
.LM211:
	movq	%rbp, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$m2mcopy@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,141,.LM212-.LFBB9
.LM212:
	movq	(%rsp), %rax
	movq	40(%rax), %rdx
	.stabn	68,0,141,.LM213-.LFBB9
.LM213:
	movq	16(%rsp), %rax
	.stabn	68,0,141,.LM214-.LFBB9
.LM214:
	cmpq	%rax, %rdx
	je	.L53
	.stabn	68,0,143,.LM215-.LFBB9
.LM215:
	movl	$0, %eax
	jmp	.L52
.L53:
	.stabn	68,0,145,.LM216-.LFBB9
.LM216:
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,145,.LM217-.LFBB9
.LM217:
	movq	(%rsp), %rdx
	movq	%rax, 32(%rdx)
	.stabn	68,0,146,.LM218-.LFBB9
.LM218:
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 144(%rax)
	.stabn	68,0,147,.LM219-.LFBB9
.LM219:
	movq	(%rsp), %rax
	movq	40(%rax), %rdx
	.stabn	68,0,147,.LM220-.LFBB9
.LM220:
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,147,.LM221-.LFBB9
.LM221:
	addq	$4095, %rax
	.stabn	68,0,147,.LM222-.LFBB9
.LM222:
	andq	$-4096, %rax
	movq	%rax, %rdx
	.stabn	68,0,147,.LM223-.LFBB9
.LM223:
	movq	8(%rsp), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,148,.LM224-.LFBB9
.LM224:
	movl	$1, %eax
.L52:
	.stabn	68,0,149,.LM225-.LFBB9
.LM225:
	addq	$32, %rsp
	.cfi_def_cfa_offset 32
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 24
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	copy_fvm_data, .-copy_fvm_data
	.stabs	"tofvadr:(0,12)",128,0,135,24
	.stabs	"retcl:(0,6)",128,0,140,16
	.stabn	192,0,0,.LFBB9-.LFBB9
	.stabn	224,0,0,.Lscope9-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"memi_set_mmutabl:F(0,1)",36,0,151,memi_set_mmutabl
	.stabs	"tblpadr:p(0,27)",160,0,151,8
	.stabs	"edatap:p(0,10)",160,0,151,0
	.globl	memi_set_mmutabl
	.type	memi_set_mmutabl, @function
memi_set_mmutabl:
	.stabn	68,0,152,.LM226-.LFBB10
.LM226:
.LFBB10:
.LFB38:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L57:
	leaq	.L57(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L57, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,153,.LM227-.LFBB10
.LM227:
	movq	8(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$set_cr3@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,154,.LM228-.LFBB10
.LM228:
	nop
	.stabn	68,0,155,.LM229-.LFBB10
.LM229:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	memi_set_mmutabl, .-memi_set_mmutabl
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.section	.rodata
.LC3:
	.string	"copy_pages_data fail"
.LC4:
	.string	"copy_fvm_data fail"
	.text
	.stabs	"init_copy_pagesfvm:F(0,1)",36,0,157,init_copy_pagesfvm
	.globl	init_copy_pagesfvm
	.type	init_copy_pagesfvm, @function
init_copy_pagesfvm:
	.stabn	68,0,158,.LM230-.LFBB11
.LM230:
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
	subq	$8, %rsp
	.cfi_def_cfa_offset 32
.L62:
	leaq	.L62(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L62, %r11
	addq	%r11, %rbx
	.stabn	68,0,159,.LM231-.LFBB11
.LM231:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$copy_pages_data@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,159,.LM232-.LFBB11
.LM232:
	testq	%rax, %rax
	jne	.L59
	.stabn	68,0,161,.LM233-.LFBB11
.LM233:
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L59:
	.stabn	68,0,163,.LM234-.LFBB11
.LM234:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rsi
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$copy_fvm_data@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,163,.LM235-.LFBB11
.LM235:
	testq	%rax, %rax
	jne	.L60
	.stabn	68,0,165,.LM236-.LFBB11
.LM236:
	movabsq	$.LC4@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L60:
	.stabn	68,0,167,.LM237-.LFBB11
.LM237:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	288(%rax), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memi_set_mmutabl@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,168,.LM238-.LFBB11
.LM238:
	nop
	.stabn	68,0,169,.LM239-.LFBB11
.LM239:
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
.LFE39:
	.size	init_copy_pagesfvm, .-init_copy_pagesfvm
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
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
