	.file	"msadsc.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/msadsc.c",100,0,2,.Ltext0
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
	.stabs	"msadsc_t_init:F(0,1)",36,0,8,msadsc_t_init
	.stabs	"initp:p(0,6)=*(0,7)=(0,8)=xss_MSADSC:",160,0,8,8
	.stabs	"s_MSADSC:T(0,8)=s40md_list:(0,3),0,128;md_lock:(0,9)=(0,10)=s4lock:(0,11)=B(0,12)=(0,13)=r(0,13);0;037777777777;,0,32;;,128,32;md_indxflgs:(0,14)=(0,15)=xss_MSADFLGS:,160,32;md_phyadrs:(0,16)=(0,17)=xss_PHYADRFLGS:,192,64;md_odlink:(0,18)=*(0,1),256,64;;",128,0,0,0
	.stabs	"u32_t:t(0,12)",128,0,10,0
	.stabs	"unsigned int:t(0,13)",128,0,0,0
	.stabs	"s_MSADFLGS:T(0,15)=s4mf_olkty:(0,12),0,2;mf_lstty:(0,12),2,1;mf_mocty:(0,12),3,2;mf_marty:(0,12),5,3;mf_uindx:(0,12),8,24;;",128,0,0,0
	.stabs	"s_PHYADRFLGS:T(0,17)=s8paf_alloc:(0,19)=(0,20)=@s64;r(0,20);0;01777777777777777777777;,0,1;paf_shared:(0,19),1,1;paf_swap:(0,19),2,1;paf_cache:(0,19),3,1;paf_kmap:(0,19),4,1;paf_lock:(0,19),5,1;paf_dirty:(0,19),6,1;paf_busy:(0,19),7,1;paf_rv2:(0,19),8,4;paf_padrs:(0,19),12,52;;",128,0,0,0
	.stabs	"u64_t:t(0,19)",128,0,11,0
	.stabs	"long unsigned int:t(0,20)",128,0,0,0
	.globl	msadsc_t_init
	.type	msadsc_t_init, @function
msadsc_t_init:
	.stabs	"../hal/x86/msadsc.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,9,.LM5-.LFBB2
.LM5:
.LFBB2:
.LFB32:
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
.L6:
	leaq	.L6(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L6, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,10,.LM6-.LFBB2
.LM6:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,11,.LM7-.LFBB2
.LM7:
	movq	8(%rsp), %rax
	addq	$16, %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_init@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,12,.LM8-.LFBB2
.LM8:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,13,.LM9-.LFBB2
.LM9:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,14,.LM10-.LFBB2
.LM10:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-25, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,15,.LM11-.LFBB2
.LM11:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$31, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,16,.LM12-.LFBB2
.LM12:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %edx
	andl	$0, %edx
	movb	%dl, 21(%rax)
	movzbl	22(%rax), %edx
	andl	$0, %edx
	movb	%dl, 22(%rax)
	movzbl	23(%rax), %edx
	andl	$0, %edx
	movb	%dl, 23(%rax)
	.stabn	68,0,17,.LM13-.LFBB2
.LM13:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,18,.LM14-.LFBB2
.LM14:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-3, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,19,.LM15-.LFBB2
.LM15:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-5, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,20,.LM16-.LFBB2
.LM16:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-9, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,21,.LM17-.LFBB2
.LM17:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-17, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,22,.LM18-.LFBB2
.LM18:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-33, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,23,.LM19-.LFBB2
.LM19:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-65, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,24,.LM20-.LFBB2
.LM20:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$127, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,25,.LM21-.LFBB2
.LM21:
	movq	8(%rsp), %rax
	movzbl	25(%rax), %edx
	andl	$-16, %edx
	movb	%dl, 25(%rax)
	.stabn	68,0,26,.LM22-.LFBB2
.LM22:
	movq	8(%rsp), %rax
	movzbl	25(%rax), %edx
	andl	$15, %edx
	movb	%dl, 25(%rax)
	movzbl	26(%rax), %edx
	andl	$0, %edx
	movb	%dl, 26(%rax)
	movzbl	27(%rax), %edx
	andl	$0, %edx
	movb	%dl, 27(%rax)
	movzbl	28(%rax), %edx
	andl	$0, %edx
	movb	%dl, 28(%rax)
	movzbl	29(%rax), %edx
	andl	$0, %edx
	movb	%dl, 29(%rax)
	movzbl	30(%rax), %edx
	andl	$0, %edx
	movb	%dl, 30(%rax)
	movzbl	31(%rax), %edx
	andl	$0, %edx
	movb	%dl, 31(%rax)
	.stabn	68,0,27,.LM23-.LFBB2
.LM23:
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,28,.LM24-.LFBB2
.LM24:
	nop
	.stabn	68,0,29,.LM25-.LFBB2
.LM25:
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
.LFE32:
	.size	msadsc_t_init, .-msadsc_t_init
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.section	.rodata
	.align 8
.LC0:
	.string	"msadsc_t.md_f:_ux[%x],_my[%x],md_phyadrs:_alc[%x],_shd[%x],_swp[%x],_che[%x],_kmp[%x],_lck[%x],_dty[%x],_bsy[%x],_padrs[%x]\n"
	.text
	.stabs	"disp_one_msadsc:F(0,1)",36,0,31,disp_one_msadsc
	.stabs	"uint_t:t(0,21)=(0,20)",128,0,17,0
	.stabs	"mp:p(0,6)",160,0,31,8
	.globl	disp_one_msadsc
	.type	disp_one_msadsc, @function
disp_one_msadsc:
	.stabn	68,0,32,.LM26-.LFBB3
.LM26:
.LFBB3:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%r14
	.cfi_def_cfa_offset 24
	.cfi_offset 14, -24
	pushq	%r13
	.cfi_def_cfa_offset 32
	.cfi_offset 13, -32
	pushq	%r12
	.cfi_def_cfa_offset 40
	.cfi_offset 12, -40
	pushq	%rbp
	.cfi_def_cfa_offset 48
	.cfi_offset 6, -48
	pushq	%rbx
	.cfi_def_cfa_offset 56
	.cfi_offset 3, -56
	subq	$24, %rsp
	.cfi_def_cfa_offset 80
.L9:
	leaq	.L9(%rip), %r10
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L9, %r11
	addq	%r11, %r10
	movq	%rdi, 8(%rsp)
	.stabn	68,0,35,.LM27-.LFBB3
.LM27:
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
	.stabn	68,0,35,.LM28-.LFBB3
.LM28:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,33,.LM29-.LFBB3
.LM29:
	movq	%rax, %r13
	.stabn	68,0,35,.LM30-.LFBB3
.LM30:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	$7, %al
	.stabn	68,0,33,.LM31-.LFBB3
.LM31:
	movzbl	%al, %r11d
	.stabn	68,0,35,.LM32-.LFBB3
.LM32:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	$6, %al
	andl	$1, %eax
	.stabn	68,0,33,.LM33-.LFBB3
.LM33:
	movzbl	%al, %r9d
	.stabn	68,0,34,.LM34-.LFBB3
.LM34:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	$5, %al
	andl	$1, %eax
	.stabn	68,0,33,.LM35-.LFBB3
.LM35:
	movzbl	%al, %r8d
	.stabn	68,0,34,.LM36-.LFBB3
.LM36:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	$4, %al
	andl	$1, %eax
	.stabn	68,0,33,.LM37-.LFBB3
.LM37:
	movzbl	%al, %edi
	.stabn	68,0,34,.LM38-.LFBB3
.LM38:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	$3, %al
	andl	$1, %eax
	.stabn	68,0,33,.LM39-.LFBB3
.LM39:
	movzbl	%al, %esi
	.stabn	68,0,34,.LM40-.LFBB3
.LM40:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	$2, %al
	andl	$1, %eax
	.stabn	68,0,33,.LM41-.LFBB3
.LM41:
	movzbl	%al, %r12d
	.stabn	68,0,34,.LM42-.LFBB3
.LM42:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	shrb	%al
	andl	$1, %eax
	.stabn	68,0,33,.LM43-.LFBB3
.LM43:
	movzbl	%al, %ebp
	.stabn	68,0,34,.LM44-.LFBB3
.LM44:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,33,.LM45-.LFBB3
.LM45:
	movzbl	%al, %ecx
	.stabn	68,0,34,.LM46-.LFBB3
.LM46:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$3, %al
	andl	$3, %eax
	.stabn	68,0,33,.LM47-.LFBB3
.LM47:
	movzbl	%al, %edx
	.stabn	68,0,34,.LM48-.LFBB3
.LM48:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %r14d
	movzbl	22(%rax), %ebx
	salq	$8, %rbx
	orq	%r14, %rbx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rbx, %rax
	.stabn	68,0,33,.LM49-.LFBB3
.LM49:
	movl	%eax, %eax
	pushq	%r13
	.cfi_def_cfa_offset 88
	pushq	%r11
	.cfi_def_cfa_offset 96
	pushq	%r9
	.cfi_def_cfa_offset 104
	pushq	%r8
	.cfi_def_cfa_offset 112
	pushq	%rdi
	.cfi_def_cfa_offset 120
	pushq	%rsi
	.cfi_def_cfa_offset 128
	movq	%r12, %r9
	movq	%rbp, %r8
	movq	%rax, %rsi
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%r10,%rax), %rax
	movq	%rax, %rdi
	movq	%r10, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r11
	addq	%r10, %r11
	call	*%r11
	addq	$48, %rsp
	.cfi_def_cfa_offset 80
	.stabn	68,0,36,.LM50-.LFBB3
.LM50:
	nop
	.stabn	68,0,37,.LM51-.LFBB3
.LM51:
	addq	$24, %rsp
	.cfi_def_cfa_offset 56
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 48
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 40
	popq	%r12
	.cfi_restore 12
	.cfi_def_cfa_offset 32
	popq	%r13
	.cfi_restore 13
	.cfi_def_cfa_offset 24
	popq	%r14
	.cfi_restore 14
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	disp_one_msadsc, .-disp_one_msadsc
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.section	.rodata
	.align 8
.LC1:
	.string	"ret_msadsc_vadrandsz initchkadr_is_ok err\n"
	.text
	.stabs	"ret_msadsc_vadrandsz:F(0,22)=(0,23)=(0,24)=@s64;r(0,24);01000000000000000000000;00777777777777777777777;",36,0,39,ret_msadsc_vadrandsz
	.stabs	"adr_t:t(0,25)=(0,20)",128,0,19,0
	.stabs	"s_PHYMMARGE:T(0,26)=s80pmr_lock:(0,9),0,32;pmr_type:(0,12),32,32;pmr_stype:(0,12),64,32;pmr_dtype:(0,12),96,32;pmr_flgs:(0,12),128,32;pmr_stus:(0,12),160,32;pmr_saddr:(0,19),192,64;pmr_lsize:(0,19),256,64;pmr_end:(0,19),320,64;pmr_rrvmsaddr:(0,19),384,64;pmr_rrvmend:(0,19),448,64;pmr_prip:(0,18),512,64;pmr_extp:(0,18),576,64;;",128,0,0,0
	.stabs	"bool_t:t(0,22)",128,0,21,0
	.stabs	"sint_t:t(0,23)",128,0,16,0
	.stabs	"long int:t(0,24)",128,0,0,0
	.stabs	"mbsp:p(0,27)=*(0,28)=(0,29)=xss_MACHBSTART:",160,0,39,24
	.stabs	"retmasvp:p(0,30)=*(0,6)",160,0,39,16
	.stabs	"retmasnr:p(0,31)=*(0,19)",160,0,39,8
	.stabs	"s_MACHBSTART:T(0,29)=s1207mb_migc:(0,19),0,64;mb_chksum:(0,19),64,64;mb_krlinitstack:(0,19),128,64;mb_krlitstacksz:(0,19),192,64;mb_imgpadr:(0,19),256,64;mb_imgsz:(0,19),320,64;mb_krlimgpadr:(0,19),384,64;mb_krlsz:(0,19),448,64;mb_krlvec:(0,19),512,64;mb_krlrunmode:(0,19),576,64;mb_kalldendpadr:(0,19),640,64;mb_ksepadrs:(0,19),704,64;mb_ksepadre:(0,19),768,64;mb_kservadrs:(0,19),832,64;mb_kservadre:(0,19),896,64;mb_nextwtpadr:(0,19),960,64;mb_bfontpadr:(0,19),1024,64;mb_bfontsz:(0,19),1088,64;mb_fvrmphyadr:(0,19),1152,64;mb_fvrmsz:(0,19),1216,64;mb_cpumode:(0,19),1280,64;mb_memsz:(0,19),1344,64;mb_e820padr:(0,19),1408,64;mb_e820nr:(0,19),1472,64;mb_e820sz:(0,19),1536,64;mb_e820expadr:(0,19),1600,64;mb_e820exnr:(0,19),1664,64;mb_e820exsz:(0,19),1728,64;mb_memznpadr:(0,19),1792,64;mb_memznnr:(0,19),1856,64;mb_memznsz:(0,19),1920,64;mb_memznchksum:(0,19),1984,64;mb_memmappadr:(0,19),2048,64;mb_memmapnr:(0,19),2112,64;mb_memmapsz:(0,19),2176,64;mb_memmapchksum:(0,19),2240,64;mb_pml4padr:(0,19),2304,64;mb_subpageslen:(0,19),2368,64;mb_kpmapphymemsz:(0,19),2432,64;mb_ebdaphyadr:(0,19),2496,64;mb_mrsdp:(0,32)=(0,33)=xss_MRSDP:,2560,288;mb_ghparm:(0,34)=(0,35)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"s_MRSDP:T(0,33)=s36rp_sign:(0,19),0,64;rp_chksum:(0,36)=(0,37)=@s8;r(0,37);0;255;,64,8;rp_oemid:(0,38)=ar(0,39)=@s64;r(0,39);0;01777777777777777777777;;0;00000000000000000000005;(0,36),72,48;rp_revn:(0,36),120,8;rp_rsdtphyadr:(0,12),128,32;rp_len:(0,12),160,32;rp_xsdtphyadr:(0,19),192,64;rp_echksum:(0,36),256,8;rp_resv:(0,40)=ar(0,39);0;00000000000000000000002;(0,36),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,35)=s851gh_mode:(0,12),0,32;gh_x:(0,12),32,32;gh_y:(0,12),64,32;gh_framphyadr:(0,12),96,32;gh_onepixbits:(0,12),128,32;gh_vbemodenr:(0,12),160,32;gh_vifphyadr:(0,12),192,32;gh_vmifphyadr:(0,12),224,32;gh_bank:(0,12),256,32;gh_curdipbnk:(0,12),288,32;gh_nextbnk:(0,12),320,32;gh_banksz:(0,12),352,32;gh_logophyadrs:(0,12),384,32;gh_logophyadre:(0,12),416,32;gh_fontadr:(0,12),448,32;gh_ftsectadr:(0,12),480,32;gh_ftsectnr:(0,12),512,32;gh_fnthight:(0,12),544,32;gh_nxtcharsx:(0,12),576,32;gh_nxtcharsy:(0,12),608,32;gh_linesz:(0,12),640,32;gh_vbeinfo:(0,41)=(0,42)=xss_VBEINFO:,672,4096;gh_vminfo:(0,43)=(0,44)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"u8_t:t(0,36)",128,0,8,0
	.stabs	"unsigned char:t(0,37)",128,0,0,0
	.stabs	"s_VBEINFO:T(0,42)=s512vbesignature:(0,45)=ar(0,39);0;00000000000000000000003;(0,46)=r(0,46);0;127;,0,32;vbeversion:(0,47)=(0,48)=@s16;r(0,48);0;65535;,32,16;oemstringptr:(0,12),48,32;capabilities:(0,12),80,32;videomodeptr:(0,12),112,32;totalmemory:(0,47),144,16;oemsoftwarerev:(0,47),160,16;oemvendornameptr:(0,12),176,32;oemproductnameptr:(0,12),208,32;oemproductrevptr:(0,12),240,32;reserved:(0,49)=ar(0,39);0;00000000000000000000335;(0,36),272,1776;oemdata:(0,50)=ar(0,39);0;00000000000000000000377;(0,36),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,44)=s255ModeAttributes:(0,47),0,16;WinAAttributes:(0,36),16,8;WinBAttributes:(0,36),24,8;WinGranularity:(0,47),32,16;WinSize:(0,47),48,16;WinASegment:(0,47),64,16;WinBSegment:(0,47),80,16;WinFuncPtr:(0,12),96,32;BytesPerScanLine:(0,47),128,16;XResolution:(0,47),144,16;YResolution:(0,47),160,16;XCharSize:(0,36),176,8;YCharSize:(0,36),184,8;NumberOfPlanes:(0,36),192,8;BitsPerPixel:(0,36),200,8;NumberOfBanks:(0,36),208,8;MemoryModel:(0,36),216,8;BankSize:(0,36),224,8;NumberOfImagePages:(0,36),232,8;Reserved:(0,36),240,8;RedMaskSize:(0,36),248,8;RedFieldPosition:(0,36),256,8;GreenMaskSize:(0,36),264,8;GreenFieldPosition:(0,36),272,8;BlueMaskSize:(0,36),280,8;BlueFieldPosition:(0,36),288,8;RsvdMaskSize:(0,36),296,8;RsvdFieldPosition:(0,36),304,8;DirectColorModeInfo:(0,36),312,8;PhysBasePtr:(0,12),320,32;Reserved1:(0,12),352,32;Reserved2:(0,47),384,16;LinBytesPerScanLine:(0,47),400,16;BnkNumberOfImagePages:(0,36),416,8;LinNumberOfImagePages:(0,36),424,8;LinRedMaskSize:(0,36),432,8;LinRedFieldPosition:(0,36),440,8;LinGreenMaskSize:(0,36),448,8;LinGreenFieldPosition:(0,36),456,8;LinBlueMaskSize:(0,36),464,8;LinBlueFieldPosition:(0,36),472,8;LinRsvdMaskSize:(0,36),480,8;LinRsvdFieldPosition:(0,36),488,8;MaxPixelClock:(0,12),496,32;Reserved3:(0,51)=ar(0,39);0;00000000000000000000274;(0,36),528,1512;;",128,0,0,0
	.stabs	"char:t(0,46)",128,0,0,0
	.stabs	"u16_t:t(0,47)",128,0,9,0
	.stabs	"short unsigned int:t(0,48)",128,0,0,0
	.globl	ret_msadsc_vadrandsz
	.type	ret_msadsc_vadrandsz, @function
ret_msadsc_vadrandsz:
	.stabn	68,0,40,.LM52-.LFBB4
.LM52:
.LFBB4:
.LFB34:
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
.L22:
	leaq	.L22(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L22, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,41,.LM53-.LFBB4
.LM53:
	cmpq	$0, 24(%rsp)
	je	.L11
	.stabn	68,0,41,.LM54-.LFBB4
.LM54:
	cmpq	$0, 16(%rsp)
	je	.L11
	.stabn	68,0,41,.LM55-.LFBB4
.LM55:
	cmpq	$0, 8(%rsp)
	jne	.L12
.L11:
	.stabn	68,0,43,.LM56-.LFBB4
.LM56:
	movl	$0, %eax
	jmp	.L13
.L12:
	.stabn	68,0,45,.LM57-.LFBB4
.LM57:
	movq	24(%rsp), %rax
	movq	208(%rax), %rax
	.stabn	68,0,45,.LM58-.LFBB4
.LM58:
	testq	%rax, %rax
	je	.L14
	.stabn	68,0,45,.LM59-.LFBB4
.LM59:
	movq	24(%rsp), %rax
	movq	200(%rax), %rax
	.stabn	68,0,45,.LM60-.LFBB4
.LM60:
	testq	%rax, %rax
	je	.L14
	.stabn	68,0,45,.LM61-.LFBB4
.LM61:
	movq	24(%rsp), %rax
	movq	208(%rax), %rdx
	.stabn	68,0,45,.LM62-.LFBB4
.LM62:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.stabn	68,0,45,.LM63-.LFBB4
.LM63:
	movq	24(%rsp), %rax
	movq	216(%rax), %rax
	.stabn	68,0,45,.LM64-.LFBB4
.LM64:
	cmpq	%rax, %rdx
	je	.L15
.L14:
	.stabn	68,0,47,.LM65-.LFBB4
.LM65:
	movq	16(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,48,.LM66-.LFBB4
.LM66:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,49,.LM67-.LFBB4
.LM67:
	movl	$0, %eax
	jmp	.L13
.L15:
	.stabn	68,0,51,.LM68-.LFBB4
.LM68:
	movq	24(%rsp), %rax
	movq	200(%rax), %rax
	.stabn	68,0,51,.LM69-.LFBB4
.LM69:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,51,.LM70-.LFBB4
.LM70:
	movq	%rax, 32(%rsp)
	.stabn	68,0,52,.LM71-.LFBB4
.LM71:
	movq	$0, 56(%rsp)
	.stabn	68,0,52,.LM72-.LFBB4
.LM72:
	movq	$0, 48(%rsp)
.LBB2:
	.stabn	68,0,53,.LM73-.LFBB4
.LM73:
	movq	$0, 40(%rsp)
	.stabn	68,0,53,.LM74-.LFBB4
.LM74:
	jmp	.L16
.L18:
	.stabn	68,0,55,.LM75-.LFBB4
.LM75:
	movq	40(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,55,.LM76-.LFBB4
.LM76:
	movl	4(%rax), %eax
	.stabn	68,0,55,.LM77-.LFBB4
.LM77:
	cmpl	$1, %eax
	jne	.L17
	.stabn	68,0,57,.LM78-.LFBB4
.LM78:
	movq	40(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,57,.LM79-.LFBB4
.LM79:
	movq	32(%rax), %rax
	.stabn	68,0,57,.LM80-.LFBB4
.LM80:
	addq	%rax, 56(%rsp)
	.stabn	68,0,58,.LM81-.LFBB4
.LM81:
	movq	40(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,58,.LM82-.LFBB4
.LM82:
	movq	32(%rax), %rax
	.stabn	68,0,58,.LM83-.LFBB4
.LM83:
	shrq	$12, %rax
	.stabn	68,0,58,.LM84-.LFBB4
.LM84:
	addq	%rax, 48(%rsp)
.L17:
	.stabn	68,0,53,.LM85-.LFBB4
.LM85:
	addq	$1, 40(%rsp)
.L16:
	.stabn	68,0,53,.LM86-.LFBB4
.LM86:
	movq	24(%rsp), %rax
	movq	208(%rax), %rax
	.stabn	68,0,53,.LM87-.LFBB4
.LM87:
	cmpq	%rax, 40(%rsp)
	jb	.L18
.LBE2:
	.stabn	68,0,61,.LM88-.LFBB4
.LM88:
	cmpq	$0, 56(%rsp)
	je	.L19
	.stabn	68,0,61,.LM89-.LFBB4
.LM89:
	movq	56(%rsp), %rax
	shrq	$12, %rax
	.stabn	68,0,61,.LM90-.LFBB4
.LM90:
	testq	%rax, %rax
	je	.L19
	.stabn	68,0,61,.LM91-.LFBB4
.LM91:
	cmpq	$0, 48(%rsp)
	jne	.L20
.L19:
	.stabn	68,0,63,.LM92-.LFBB4
.LM92:
	movq	16(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,64,.LM93-.LFBB4
.LM93:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,65,.LM94-.LFBB4
.LM94:
	movl	$0, %eax
	jmp	.L13
.L20:
	.stabn	68,0,68,.LM95-.LFBB4
.LM95:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	24(%rsp), %rax
	movq	120(%rax), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$initchkadr_is_ok@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,68,.LM96-.LFBB4
.LM96:
	testl	%eax, %eax
	je	.L21
	.stabn	68,0,70,.LM97-.LFBB4
.LM97:
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L21:
	.stabn	68,0,73,.LM98-.LFBB4
.LM98:
	movq	24(%rsp), %rax
	movq	120(%rax), %rax
	.stabn	68,0,73,.LM99-.LFBB4
.LM99:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,73,.LM100-.LFBB4
.LM100:
	movq	%rax, %rdx
	.stabn	68,0,73,.LM101-.LFBB4
.LM101:
	movq	16(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,74,.LM102-.LFBB4
.LM102:
	movq	8(%rsp), %rax
	movq	48(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,75,.LM103-.LFBB4
.LM103:
	movl	$1, %eax
.L13:
	.stabn	68,0,76,.LM104-.LFBB4
.LM104:
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
.LFE34:
	.size	ret_msadsc_vadrandsz, .-ret_msadsc_vadrandsz
	.stabs	"pmagep:(0,52)=*(0,53)=(0,26)",128,0,51,32
	.stabs	"phymmarge_t:t(0,53)",128,0,114,0
	.stabs	"usrmemsz:(0,19)",128,0,52,56
	.stabs	"msadnr:(0,19)",128,0,52,48
	.stabn	192,0,0,.LFBB4-.LFBB4
	.stabs	"i:(0,19)",128,0,53,40
	.stabn	192,0,0,.LBB2-.LFBB4
	.stabn	224,0,0,.LBE2-.LFBB4
	.stabn	224,0,0,.Lscope4-.LFBB4
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"write_one_msadsc:F(0,1)",36,0,78,write_one_msadsc
	.stabs	"msap:p(0,6)",160,0,78,8
	.stabs	"phyadr:p(0,19)",160,0,78,0
	.globl	write_one_msadsc
	.type	write_one_msadsc, @function
write_one_msadsc:
	.stabn	68,0,79,.LM105-.LFBB5
.LM105:
.LFBB5:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L25:
	leaq	.L25(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L25, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,81,.LM106-.LFBB5
.LM106:
	movq	8(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$msadsc_t_init@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,84,.LM107-.LFBB5
.LM107:
	movq	%rsp, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,86,.LM108-.LFBB5
.LM108:
	movq	24(%rsp), %rax
	movzbl	1(%rax), %edx
	shrb	$4, %dl
	movzbl	%dl, %ecx
	movzbl	2(%rax), %edx
	salq	$4, %rdx
	orq	%rdx, %rcx
	movzbl	3(%rax), %edx
	salq	$12, %rdx
	orq	%rdx, %rcx
	movzbl	4(%rax), %edx
	salq	$20, %rdx
	orq	%rdx, %rcx
	movzbl	5(%rax), %edx
	salq	$28, %rdx
	orq	%rdx, %rcx
	movzbl	6(%rax), %edx
	salq	$36, %rdx
	orq	%rcx, %rdx
	movzbl	7(%rax), %eax
	salq	$44, %rax
	orq	%rdx, %rax
	movq	%rax, %rdx
	.stabn	68,0,86,.LM109-.LFBB5
.LM109:
	movq	8(%rsp), %rax
	movq	%rdx, %rcx
	andl	$15, %ecx
	movl	%ecx, %esi
	sall	$4, %esi
	movzbl	25(%rax), %ecx
	andl	$15, %ecx
	orl	%esi, %ecx
	movb	%cl, 25(%rax)
	movq	%rdx, %rcx
	shrq	$4, %rcx
	movzbl	%cl, %esi
	movzbl	26(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 26(%rax)
	movq	%rdx, %rcx
	shrq	$12, %rcx
	movzbl	%cl, %esi
	movzbl	27(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 27(%rax)
	movq	%rdx, %rcx
	shrq	$20, %rcx
	movzbl	%cl, %esi
	movzbl	28(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 28(%rax)
	movq	%rdx, %rcx
	shrq	$28, %rcx
	movzbl	%cl, %esi
	movzbl	29(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 29(%rax)
	movq	%rdx, %rcx
	shrq	$36, %rcx
	movzbl	%cl, %esi
	movzbl	30(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 30(%rax)
	shrq	$44, %rdx
	movzbl	%dl, %ecx
	movzbl	31(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 31(%rax)
	.stabn	68,0,87,.LM110-.LFBB5
.LM110:
	nop
	.stabn	68,0,88,.LM111-.LFBB5
.LM111:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	write_one_msadsc, .-write_one_msadsc
	.stabs	"tmp:(0,54)=*(0,16)",128,0,84,24
	.stabs	"phyadrflgs_t:t(0,16)",128,0,60,0
	.stabn	192,0,0,.LFBB5-.LFBB5
	.stabn	224,0,0,.Lscope5-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"init_msadsc_core:F(0,19)",36,0,90,init_msadsc_core
	.stabs	"mbsp:p(0,27)",160,0,90,24
	.stabs	"msavstart:p(0,6)",160,0,90,16
	.stabs	"msanr:p(0,19)",160,0,90,8
	.globl	init_msadsc_core
	.type	init_msadsc_core, @function
init_msadsc_core:
	.stabn	68,0,91,.LM112-.LFBB6
.LM112:
.LFBB6:
.LFB36:
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
.L34:
	leaq	.L34(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L34, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,93,.LM113-.LFBB6
.LM113:
	movq	24(%rsp), %rax
	movq	200(%rax), %rax
	.stabn	68,0,93,.LM114-.LFBB6
.LM114:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,93,.LM115-.LFBB6
.LM115:
	movq	%rax, 32(%rsp)
	.stabn	68,0,95,.LM116-.LFBB6
.LM116:
	movq	$0, 56(%rsp)
.LBB3:
	.stabn	68,0,97,.LM117-.LFBB6
.LM117:
	movq	$0, 48(%rsp)
	.stabn	68,0,97,.LM118-.LFBB6
.LM118:
	jmp	.L27
.L32:
	.stabn	68,0,100,.LM119-.LFBB6
.LM119:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,100,.LM120-.LFBB6
.LM120:
	movl	4(%rax), %eax
	.stabn	68,0,100,.LM121-.LFBB6
.LM121:
	cmpl	$1, %eax
	jne	.L28
.LBB4:
	.stabn	68,0,103,.LM122-.LFBB6
.LM122:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,103,.LM123-.LFBB6
.LM123:
	movq	24(%rax), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,103,.LM124-.LFBB6
.LM124:
	jmp	.L29
.L31:
	.stabn	68,0,106,.LM125-.LFBB6
.LM125:
	movq	40(%rsp), %rax
	leaq	4095(%rax), %rcx
	.stabn	68,0,106,.LM126-.LFBB6
.LM126:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,106,.LM127-.LFBB6
.LM127:
	movq	40(%rax), %rax
	.stabn	68,0,106,.LM128-.LFBB6
.LM128:
	cmpq	%rax, %rcx
	ja	.L30
	.stabn	68,0,108,.LM129-.LFBB6
.LM129:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,108,.LM130-.LFBB6
.LM130:
	movq	16(%rsp), %rax
	addq	%rax, %rdx
	movq	40(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$write_one_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,109,.LM131-.LFBB6
.LM131:
	addq	$1, 56(%rsp)
.L30:
	.stabn	68,0,103,.LM132-.LFBB6
.LM132:
	addq	$4096, 40(%rsp)
.L29:
	.stabn	68,0,103,.LM133-.LFBB6
.LM133:
	movq	48(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,103,.LM134-.LFBB6
.LM134:
	movq	40(%rax), %rax
	.stabn	68,0,103,.LM135-.LFBB6
.LM135:
	cmpq	%rax, 40(%rsp)
	jb	.L31
.L28:
.LBE4:
	.stabn	68,0,97,.LM136-.LFBB6
.LM136:
	addq	$1, 48(%rsp)
.L27:
	.stabn	68,0,97,.LM137-.LFBB6
.LM137:
	movq	24(%rsp), %rax
	movq	208(%rax), %rax
	.stabn	68,0,97,.LM138-.LFBB6
.LM138:
	cmpq	%rax, 48(%rsp)
	jb	.L32
.LBE3:
	.stabn	68,0,115,.LM139-.LFBB6
.LM139:
	movq	56(%rsp), %rax
	.stabn	68,0,116,.LM140-.LFBB6
.LM140:
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
.LFE36:
	.size	init_msadsc_core, .-init_msadsc_core
	.stabs	"pmagep:(0,52)",128,0,93,32
	.stabs	"mdindx:(0,19)",128,0,95,56
	.stabn	192,0,0,.LFBB6-.LFBB6
	.stabs	"i:(0,19)",128,0,97,48
	.stabn	192,0,0,.LBB3-.LFBB6
	.stabs	"start:(0,19)",128,0,103,40
	.stabn	192,0,0,.LBB4-.LFBB6
	.stabn	224,0,0,.LBE4-.LFBB6
	.stabn	224,0,0,.LBE3-.LFBB6
	.stabn	224,0,0,.Lscope6-.LFBB6
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.section	.rodata
	.align 8
.LC2:
	.string	"init_msadsc ret_msadsc_vadrandsz err\n"
	.align 8
.LC3:
	.string	"init_msadsc init_msadsc_core err\n"
	.text
	.stabs	"init_msadsc:F(0,1)",36,0,118,init_msadsc
	.globl	init_msadsc
	.type	init_msadsc, @function
init_msadsc:
	.stabn	68,0,119,.LM141-.LFBB7
.LM141:
.LFBB7:
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
.L39:
	leaq	.L39(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L39, %r11
	addq	%r11, %rbx
	.stabn	68,0,120,.LM142-.LFBB7
.LM142:
	movq	$0, 24(%rsp)
	.stabn	68,0,120,.LM143-.LFBB7
.LM143:
	movq	$0, 8(%rsp)
	.stabn	68,0,121,.LM144-.LFBB7
.LM144:
	movq	$0, (%rsp)
	.stabn	68,0,122,.LM145-.LFBB7
.LM145:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,125,.LM146-.LFBB7
.LM146:
	leaq	8(%rsp), %rdx
	movq	%rsp, %rcx
	movq	16(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$ret_msadsc_vadrandsz@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,125,.LM147-.LFBB7
.LM147:
	testq	%rax, %rax
	jne	.L36
	.stabn	68,0,127,.LM148-.LFBB7
.LM148:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L36:
	.stabn	68,0,131,.LM149-.LFBB7
.LM149:
	movq	8(%rsp), %rdx
	movq	(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$init_msadsc_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,132,.LM150-.LFBB7
.LM150:
	movq	8(%rsp), %rax
	.stabn	68,0,132,.LM151-.LFBB7
.LM151:
	cmpq	%rax, 24(%rsp)
	je	.L37
	.stabn	68,0,134,.LM152-.LFBB7
.LM152:
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L37:
	.stabn	68,0,138,.LM153-.LFBB7
.LM153:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$viradr_to_phyadr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,138,.LM154-.LFBB7
.LM154:
	movq	16(%rsp), %rdx
	movq	%rax, 256(%rdx)
	.stabn	68,0,141,.LM155-.LFBB7
.LM155:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 264(%rax)
	.stabn	68,0,144,.LM156-.LFBB7
.LM156:
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,144,.LM157-.LFBB7
.LM157:
	movq	16(%rsp), %rax
	movq	%rdx, 272(%rax)
	.stabn	68,0,147,.LM158-.LFBB7
.LM158:
	movq	16(%rsp), %rax
	movq	256(%rax), %rdx
	.stabn	68,0,147,.LM159-.LFBB7
.LM159:
	movq	16(%rsp), %rax
	movq	272(%rax), %rax
	.stabn	68,0,147,.LM160-.LFBB7
.LM160:
	addq	%rdx, %rax
	.stabn	68,0,147,.LM161-.LFBB7
.LM161:
	addq	$4095, %rax
	.stabn	68,0,147,.LM162-.LFBB7
.LM162:
	andq	$-4096, %rax
	movq	%rax, %rdx
	.stabn	68,0,147,.LM163-.LFBB7
.LM163:
	movq	16(%rsp), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,149,.LM164-.LFBB7
.LM164:
	nop
	.stabn	68,0,150,.LM165-.LFBB7
.LM165:
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
	.size	init_msadsc, .-init_msadsc
	.stabs	"coremdnr:(0,19)",128,0,120,24
	.stabs	"msadscnr:(0,19)",128,0,120,8
	.stabs	"msadscvp:(0,6)",128,0,121,0
	.stabs	"msadsc_t:t(0,7)",128,0,69,0
	.stabs	"mbsp:(0,27)",128,0,122,16
	.stabs	"machbstart_t:t(0,28)",128,0,106,0
	.stabn	192,0,0,.LFBB7-.LFBB7
	.stabn	224,0,0,.Lscope7-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"disp_phymsadsc:F(0,1)",36,0,152,disp_phymsadsc
	.globl	disp_phymsadsc
	.type	disp_phymsadsc, @function
disp_phymsadsc:
	.stabn	68,0,153,.LM166-.LFBB8
.LM166:
.LFBB8:
.LFB38:
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
.L48:
	leaq	.L48(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L48, %r11
	addq	%r11, %rbx
	.stabn	68,0,154,.LM167-.LFBB8
.LM167:
	movq	$0, 16(%rsp)
	.stabn	68,0,155,.LM168-.LFBB8
.LM168:
	movq	$0, 8(%rsp)
	.stabn	68,0,156,.LM169-.LFBB8
.LM169:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, (%rsp)
	.stabn	68,0,158,.LM170-.LFBB8
.LM170:
	movq	(%rsp), %rax
	movq	256(%rax), %rax
	.stabn	68,0,158,.LM171-.LFBB8
.LM171:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,158,.LM172-.LFBB8
.LM172:
	movq	%rax, 8(%rsp)
	.stabn	68,0,159,.LM173-.LFBB8
.LM173:
	movq	(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 16(%rsp)
.LBB5:
	.stabn	68,0,161,.LM174-.LFBB8
.LM174:
	movl	$0, 44(%rsp)
	.stabn	68,0,161,.LM175-.LFBB8
.LM175:
	jmp	.L41
.L42:
	.stabn	68,0,163,.LM176-.LFBB8
.LM176:
	movl	44(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,163,.LM177-.LFBB8
.LM177:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$disp_one_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,161,.LM178-.LFBB8
.LM178:
	addl	$1, 44(%rsp)
.L41:
	.stabn	68,0,161,.LM179-.LFBB8
.LM179:
	cmpl	$9, 44(%rsp)
	jle	.L42
.LBE5:
.LBB6:
	.stabn	68,0,166,.LM180-.LFBB8
.LM180:
	movq	16(%rsp), %rax
	shrq	%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,166,.LM181-.LFBB8
.LM181:
	jmp	.L43
.L44:
	.stabn	68,0,168,.LM182-.LFBB8
.LM182:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,168,.LM183-.LFBB8
.LM183:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$disp_one_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,166,.LM184-.LFBB8
.LM184:
	addq	$1, 32(%rsp)
.L43:
	.stabn	68,0,166,.LM185-.LFBB8
.LM185:
	movq	16(%rsp), %rax
	shrq	%rax
	.stabn	68,0,166,.LM186-.LFBB8
.LM186:
	addq	$10, %rax
	.stabn	68,0,166,.LM187-.LFBB8
.LM187:
	cmpq	%rax, 32(%rsp)
	jb	.L44
.LBE6:
.LBB7:
	.stabn	68,0,171,.LM188-.LFBB8
.LM188:
	movq	16(%rsp), %rax
	subq	$10, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,171,.LM189-.LFBB8
.LM189:
	jmp	.L45
.L46:
	.stabn	68,0,173,.LM190-.LFBB8
.LM190:
	movq	24(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,173,.LM191-.LFBB8
.LM191:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$disp_one_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,171,.LM192-.LFBB8
.LM192:
	addq	$1, 24(%rsp)
.L45:
	.stabn	68,0,171,.LM193-.LFBB8
.LM193:
	movq	24(%rsp), %rax
	cmpq	16(%rsp), %rax
	jb	.L46
.LBE7:
	.stabn	68,0,175,.LM194-.LFBB8
.LM194:
	nop
	.stabn	68,0,176,.LM195-.LFBB8
.LM195:
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
.LFE38:
	.size	disp_phymsadsc, .-disp_phymsadsc
	.stabs	"coremdnr:(0,19)",128,0,154,16
	.stabs	"msadscvp:(0,6)",128,0,155,8
	.stabs	"mbsp:(0,27)",128,0,156,0
	.stabn	192,0,0,.LFBB8-.LFBB8
	.stabs	"i:(0,55)=r(0,55);-2147483648;2147483647;",128,0,161,44
	.stabs	"int:t(0,55)",128,0,0,0
	.stabn	192,0,0,.LBB5-.LFBB8
	.stabn	224,0,0,.LBE5-.LFBB8
	.stabs	"i:(0,19)",128,0,166,32
	.stabn	192,0,0,.LBB6-.LFBB8
	.stabn	224,0,0,.LBE6-.LFBB8
	.stabs	"i:(0,19)",128,0,171,24
	.stabn	192,0,0,.LBB7-.LFBB8
	.stabn	224,0,0,.LBE7-.LFBB8
	.stabn	224,0,0,.Lscope8-.LFBB8
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"search_segment_occupymsadsc:F(0,19)",36,0,179,search_segment_occupymsadsc
	.stabs	"msastart:p(0,6)",160,0,179,24
	.stabs	"msanr:p(0,19)",160,0,179,16
	.stabs	"ocpystat:p(0,19)",160,0,179,8
	.stabs	"ocpyend:p(0,19)",160,0,179,0
	.globl	search_segment_occupymsadsc
	.type	search_segment_occupymsadsc, @function
search_segment_occupymsadsc:
	.stabn	68,0,180,.LM196-.LFBB9
.LM196:
.LFBB9:
.LFB39:
	.cfi_startproc
	endbr64
	subq	$80, %rsp
	.cfi_def_cfa_offset 88
.L64:
	leaq	.L64(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L64, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,181,.LM197-.LFBB9
.LM197:
	movq	$0, 40(%rsp)
	.stabn	68,0,181,.LM198-.LFBB9
.LM198:
	movq	$0, 72(%rsp)
	.stabn	68,0,182,.LM199-.LFBB9
.LM199:
	movq	$0, 64(%rsp)
.LBB8:
	.stabn	68,0,183,.LM200-.LFBB9
.LM200:
	movq	$0, 56(%rsp)
	.stabn	68,0,183,.LM201-.LFBB9
.LM201:
	jmp	.L50
.L53:
	.stabn	68,0,185,.LM202-.LFBB9
.LM202:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,185,.LM203-.LFBB9
.LM203:
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
	.stabn	68,0,185,.LM204-.LFBB9
.LM204:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,185,.LM205-.LFBB9
.LM205:
	cmpq	%rax, 8(%rsp)
	jne	.L51
	.stabn	68,0,188,.LM206-.LFBB9
.LM206:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,188,.LM207-.LFBB9
.LM207:
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,189,.LM208-.LFBB9
.LM208:
	jmp	.L52
.L51:
	.stabn	68,0,183,.LM209-.LFBB9
.LM209:
	addq	$1, 56(%rsp)
.L50:
	.stabn	68,0,183,.LM210-.LFBB9
.LM210:
	movq	56(%rsp), %rax
	cmpq	16(%rsp), %rax
	jb	.L53
.LBE8:
	.stabn	68,0,192,.LM211-.LFBB9
.LM211:
	nop
.L52:
	.stabn	68,0,193,.LM212-.LFBB9
.LM212:
	movq	$0, 72(%rsp)
	.stabn	68,0,194,.LM213-.LFBB9
.LM213:
	cmpq	$0, 64(%rsp)
	jne	.L54
	.stabn	68,0,196,.LM214-.LFBB9
.LM214:
	movl	$0, %eax
	jmp	.L55
.L54:
.LBB9:
	.stabn	68,0,198,.LM215-.LFBB9
.LM215:
	movq	8(%rsp), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,198,.LM216-.LFBB9
.LM216:
	jmp	.L56
.L60:
	.stabn	68,0,201,.LM217-.LFBB9
.LM217:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,201,.LM218-.LFBB9
.LM218:
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
	.stabn	68,0,201,.LM219-.LFBB9
.LM219:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,201,.LM220-.LFBB9
.LM220:
	movq	%rax, 40(%rsp)
	.stabn	68,0,202,.LM221-.LFBB9
.LM221:
	movq	40(%rsp), %rax
	cmpq	48(%rsp), %rax
	je	.L57
	.stabn	68,0,204,.LM222-.LFBB9
.LM222:
	movl	$0, %eax
	jmp	.L55
.L57:
	.stabn	68,0,206,.LM223-.LFBB9
.LM223:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,206,.LM224-.LFBB9
.LM224:
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,206,.LM225-.LFBB9
.LM225:
	testb	%al, %al
	jne	.L58
	.stabn	68,0,207,.LM226-.LFBB9
.LM226:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,207,.LM227-.LFBB9
.LM227:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,206,.LM228-.LFBB9
.LM228:
	testl	%eax, %eax
	jne	.L58
	.stabn	68,0,208,.LM229-.LFBB9
.LM229:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,208,.LM230-.LFBB9
.LM230:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,207,.LM231-.LFBB9
.LM231:
	testb	%al, %al
	je	.L59
.L58:
	.stabn	68,0,210,.LM232-.LFBB9
.LM232:
	movl	$0, %eax
	jmp	.L55
.L59:
	.stabn	68,0,214,.LM233-.LFBB9
.LM233:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,214,.LM234-.LFBB9
.LM234:
	movzbl	20(%rax), %edx
	andl	$-25, %edx
	orl	$8, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,215,.LM235-.LFBB9
.LM235:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,215,.LM236-.LFBB9
.LM236:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rdx, %rcx
	movzbl	23(%rax), %edx
	salq	$16, %rdx
	orq	%rcx, %rdx
	.stabn	68,0,215,.LM237-.LFBB9
.LM237:
	addl	$1, %edx
	andl	$16777215, %edx
	movl	%edx, %ecx
	movzbl	%cl, %esi
	movzbl	21(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 21(%rax)
	movl	%edx, %ecx
	shrl	$8, %ecx
	movl	%ecx, %ecx
	movzbl	%cl, %esi
	movzbl	22(%rax), %ecx
	andl	$0, %ecx
	orl	%esi, %ecx
	movb	%cl, 22(%rax)
	shrl	$16, %edx
	movl	%edx, %edx
	movzbl	%dl, %ecx
	movzbl	23(%rax), %edx
	andl	$0, %edx
	orl	%ecx, %edx
	movb	%dl, 23(%rax)
	.stabn	68,0,216,.LM238-.LFBB9
.LM238:
	movq	72(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	64(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,216,.LM239-.LFBB9
.LM239:
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,198,.LM240-.LFBB9
.LM240:
	addq	$4096, 48(%rsp)
	.stabn	68,0,198,.LM241-.LFBB9
.LM241:
	addq	$1, 72(%rsp)
.L56:
	.stabn	68,0,198,.LM242-.LFBB9
.LM242:
	movq	48(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L60
.LBE9:
	.stabn	68,0,220,.LM243-.LFBB9
.LM243:
	movq	(%rsp), %rax
	subq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,221,.LM244-.LFBB9
.LM244:
	movq	32(%rsp), %rax
	andl	$4095, %eax
	.stabn	68,0,221,.LM245-.LFBB9
.LM245:
	testq	%rax, %rax
	je	.L61
	.stabn	68,0,223,.LM246-.LFBB9
.LM246:
	movq	32(%rsp), %rax
	shrq	$12, %rax
	.stabn	68,0,223,.LM247-.LFBB9
.LM247:
	addq	$1, %rax
	.stabn	68,0,223,.LM248-.LFBB9
.LM248:
	cmpq	%rax, 72(%rsp)
	je	.L62
	.stabn	68,0,225,.LM249-.LFBB9
.LM249:
	movl	$0, %eax
	jmp	.L55
.L62:
	.stabn	68,0,227,.LM250-.LFBB9
.LM250:
	movq	72(%rsp), %rax
	jmp	.L55
.L61:
	.stabn	68,0,229,.LM251-.LFBB9
.LM251:
	movq	32(%rsp), %rax
	shrq	$12, %rax
	.stabn	68,0,229,.LM252-.LFBB9
.LM252:
	cmpq	%rax, 72(%rsp)
	je	.L63
	.stabn	68,0,231,.LM253-.LFBB9
.LM253:
	movl	$0, %eax
	jmp	.L55
.L63:
	.stabn	68,0,233,.LM254-.LFBB9
.LM254:
	movq	72(%rsp), %rax
.L55:
	.stabn	68,0,234,.LM255-.LFBB9
.LM255:
	addq	$80, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	search_segment_occupymsadsc, .-search_segment_occupymsadsc
	.stabs	"mphyadr:(0,19)",128,0,181,40
	.stabs	"fsmsnr:(0,19)",128,0,181,72
	.stabs	"fstatmp:(0,6)",128,0,182,64
	.stabs	"ocpysz:(0,19)",128,0,220,32
	.stabn	192,0,0,.LFBB9-.LFBB9
	.stabs	"mnr:(0,19)",128,0,183,56
	.stabn	192,0,0,.LBB8-.LFBB9
	.stabn	224,0,0,.LBE8-.LFBB9
	.stabs	"tmpadr:(0,19)",128,0,198,48
	.stabn	192,0,0,.LBB9-.LFBB9
	.stabn	224,0,0,.LBE9-.LFBB9
	.stabn	224,0,0,.Lscope9-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.section	.rodata
.LC4:
	.string	"fstatmp NULL\n"
.LC5:
	.string	"chkadr != err\n"
.LC6:
	.string	"PAF_ALLOC err\n"
.LC7:
	.string	"mf_uindx err\n"
.LC8:
	.string	"mf_olkty err\n"
.LC9:
	.string	"test_schkrloccuymm err\n"
	.text
	.stabs	"test_schkrloccuymm:F(0,1)",36,0,236,test_schkrloccuymm
	.stabs	"mbsp:p(0,27)",160,0,236,24
	.stabs	"ocpystat:p(0,19)",160,0,236,16
	.stabs	"sz:p(0,19)",160,0,236,8
	.globl	test_schkrloccuymm
	.type	test_schkrloccuymm, @function
test_schkrloccuymm:
	.stabn	68,0,237,.LM256-.LFBB10
.LM256:
.LFBB10:
.LFB40:
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
.L82:
	leaq	.L82(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L82, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,238,.LM257-.LFBB10
.LM257:
	movq	24(%rsp), %rax
	movq	256(%rax), %rax
	.stabn	68,0,238,.LM258-.LFBB10
.LM258:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,238,.LM259-.LFBB10
.LM259:
	movq	%rax, 48(%rsp)
	.stabn	68,0,239,.LM260-.LFBB10
.LM260:
	movq	24(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,240,.LM261-.LFBB10
.LM261:
	movq	$0, 88(%rsp)
	.stabn	68,0,241,.LM262-.LFBB10
.LM262:
	movq	16(%rsp), %rax
	movq	%rax, 80(%rsp)
	.stabn	68,0,242,.LM263-.LFBB10
.LM263:
	movq	8(%rsp), %rax
	andl	$4095, %eax
	.stabn	68,0,242,.LM264-.LFBB10
.LM264:
	testq	%rax, %rax
	je	.L66
	.stabn	68,0,244,.LM265-.LFBB10
.LM265:
	movq	8(%rsp), %rax
	shrq	$12, %rax
	.stabn	68,0,244,.LM266-.LFBB10
.LM266:
	addq	$1, %rax
	movq	%rax, 88(%rsp)
	jmp	.L67
.L66:
	.stabn	68,0,248,.LM267-.LFBB10
.LM267:
	movq	8(%rsp), %rax
	shrq	$12, %rax
	movq	%rax, 88(%rsp)
.L67:
	.stabn	68,0,250,.LM268-.LFBB10
.LM268:
	movq	$0, 72(%rsp)
.LBB10:
	.stabn	68,0,251,.LM269-.LFBB10
.LM269:
	movq	$0, 64(%rsp)
	.stabn	68,0,251,.LM270-.LFBB10
.LM270:
	jmp	.L68
.L71:
	.stabn	68,0,253,.LM271-.LFBB10
.LM271:
	movq	64(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,253,.LM272-.LFBB10
.LM272:
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
	.stabn	68,0,253,.LM273-.LFBB10
.LM273:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,253,.LM274-.LFBB10
.LM274:
	cmpq	%rax, 16(%rsp)
	jne	.L69
	.stabn	68,0,255,.LM275-.LFBB10
.LM275:
	movq	64(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,255,.LM276-.LFBB10
.LM276:
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,256,.LM277-.LFBB10
.LM277:
	jmp	.L70
.L69:
	.stabn	68,0,251,.LM278-.LFBB10
.LM278:
	addq	$1, 64(%rsp)
.L68:
	.stabn	68,0,251,.LM279-.LFBB10
.LM279:
	movq	64(%rsp), %rax
	cmpq	40(%rsp), %rax
	jb	.L71
.LBE10:
	.stabn	68,0,259,.LM280-.LFBB10
.LM280:
	nop
.L70:
	.stabn	68,0,260,.LM281-.LFBB10
.LM281:
	cmpq	$0, 72(%rsp)
	jne	.L72
	.stabn	68,0,262,.LM282-.LFBB10
.LM282:
	movabsq	$.LC4@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L72:
.LBB11:
	.stabn	68,0,265,.LM283-.LFBB10
.LM283:
	movq	$0, 56(%rsp)
	.stabn	68,0,265,.LM284-.LFBB10
.LM284:
	jmp	.L73
.L78:
	.stabn	68,0,267,.LM285-.LFBB10
.LM285:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,267,.LM286-.LFBB10
.LM286:
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
	.stabn	68,0,267,.LM287-.LFBB10
.LM287:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,267,.LM288-.LFBB10
.LM288:
	cmpq	%rax, 80(%rsp)
	je	.L74
	.stabn	68,0,269,.LM289-.LFBB10
.LM289:
	movabsq	$.LC5@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L74:
	.stabn	68,0,271,.LM290-.LFBB10
.LM290:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,271,.LM291-.LFBB10
.LM291:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,271,.LM292-.LFBB10
.LM292:
	testb	%al, %al
	jne	.L75
	.stabn	68,0,273,.LM293-.LFBB10
.LM293:
	movabsq	$.LC6@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L75:
	.stabn	68,0,275,.LM294-.LFBB10
.LM294:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,275,.LM295-.LFBB10
.LM295:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,275,.LM296-.LFBB10
.LM296:
	cmpl	$1, %eax
	je	.L76
	.stabn	68,0,277,.LM297-.LFBB10
.LM297:
	movabsq	$.LC7@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L76:
	.stabn	68,0,279,.LM298-.LFBB10
.LM298:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	72(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,279,.LM299-.LFBB10
.LM299:
	movzbl	20(%rax), %eax
	andl	$24, %eax
	.stabn	68,0,279,.LM300-.LFBB10
.LM300:
	cmpb	$8, %al
	je	.L77
	.stabn	68,0,281,.LM301-.LFBB10
.LM301:
	movabsq	$.LC8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L77:
	.stabn	68,0,265,.LM302-.LFBB10
.LM302:
	addq	$1, 56(%rsp)
	.stabn	68,0,265,.LM303-.LFBB10
.LM303:
	addq	$4096, 80(%rsp)
.L73:
	.stabn	68,0,265,.LM304-.LFBB10
.LM304:
	movq	56(%rsp), %rax
	cmpq	88(%rsp), %rax
	jb	.L78
.LBE11:
	.stabn	68,0,284,.LM305-.LFBB10
.LM305:
	movq	88(%rsp), %rax
	salq	$12, %rax
	movq	%rax, %rdx
	.stabn	68,0,284,.LM306-.LFBB10
.LM306:
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,284,.LM307-.LFBB10
.LM307:
	cmpq	%rax, 80(%rsp)
	je	.L81
	.stabn	68,0,286,.LM308-.LFBB10
.LM308:
	movabsq	$.LC9@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,288,.LM309-.LFBB10
.LM309:
	nop
.L81:
	nop
	.stabn	68,0,289,.LM310-.LFBB10
.LM310:
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
.LFE40:
	.size	test_schkrloccuymm, .-test_schkrloccuymm
	.stabs	"msadstat:(0,6)",128,0,238,48
	.stabs	"msanr:(0,19)",128,0,239,40
	.stabs	"chkmnr:(0,19)",128,0,240,88
	.stabs	"chkadr:(0,19)",128,0,241,80
	.stabs	"fstatmp:(0,6)",128,0,250,72
	.stabn	192,0,0,.LFBB10-.LFBB10
	.stabs	"mnr:(0,19)",128,0,251,64
	.stabn	192,0,0,.LBB10-.LFBB10
	.stabn	224,0,0,.LBE10-.LFBB10
	.stabs	"i:(0,19)",128,0,265,56
	.stabn	192,0,0,.LBB11-.LFBB10
	.stabn	224,0,0,.LBE11-.LFBB10
	.stabn	224,0,0,.Lscope10-.LFBB10
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabs	"search_krloccupymsadsc_core:F(0,22)",36,0,291,search_krloccupymsadsc_core
	.stabs	"mbsp:p(0,27)",160,0,291,8
	.globl	search_krloccupymsadsc_core
	.type	search_krloccupymsadsc_core, @function
search_krloccupymsadsc_core:
	.stabn	68,0,292,.LM311-.LFBB11
.LM311:
.LFBB11:
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
.L89:
	leaq	.L89(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L89, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,293,.LM312-.LFBB11
.LM312:
	movq	$0, 40(%rsp)
	.stabn	68,0,294,.LM313-.LFBB11
.LM313:
	movq	8(%rsp), %rax
	movq	256(%rax), %rax
	.stabn	68,0,294,.LM314-.LFBB11
.LM314:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,294,.LM315-.LFBB11
.LM315:
	movq	%rax, 32(%rsp)
	.stabn	68,0,295,.LM316-.LFBB11
.LM316:
	movq	8(%rsp), %rax
	movq	264(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,298,.LM317-.LFBB11
.LM317:
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rax
	movl	$4096, %ecx
	movl	$0, %edx
	movq	%rax, %rdi
	movabsq	$search_segment_occupymsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,299,.LM318-.LFBB11
.LM318:
	cmpq	$0, 40(%rsp)
	jne	.L84
	.stabn	68,0,301,.LM319-.LFBB11
.LM319:
	movl	$0, %eax
	jmp	.L85
.L84:
	.stabn	68,0,305,.LM320-.LFBB11
.LM320:
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,305,.LM321-.LFBB11
.LM321:
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,305,.LM322-.LFBB11
.LM322:
	andq	$-4096, %rax
	movq	%rax, %rdi
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
	movabsq	$search_segment_occupymsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,306,.LM323-.LFBB11
.LM323:
	cmpq	$0, 40(%rsp)
	jne	.L86
	.stabn	68,0,308,.LM324-.LFBB11
.LM324:
	movl	$0, %eax
	jmp	.L85
.L86:
	.stabn	68,0,312,.LM325-.LFBB11
.LM325:
	movq	8(%rsp), %rax
	movq	120(%rax), %rcx
	movq	8(%rsp), %rax
	movq	48(%rax), %rdx
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$search_segment_occupymsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,313,.LM326-.LFBB11
.LM326:
	cmpq	$0, 40(%rsp)
	jne	.L87
	.stabn	68,0,315,.LM327-.LFBB11
.LM327:
	movl	$0, %eax
	jmp	.L85
.L87:
	.stabn	68,0,319,.LM328-.LFBB11
.LM328:
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	.stabn	68,0,319,.LM329-.LFBB11
.LM329:
	movq	8(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,319,.LM330-.LFBB11
.LM330:
	leaq	(%rdx,%rax), %rcx
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	24(%rsp), %rsi
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$search_segment_occupymsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,320,.LM331-.LFBB11
.LM331:
	cmpq	$0, 40(%rsp)
	jne	.L88
	.stabn	68,0,322,.LM332-.LFBB11
.LM332:
	movl	$0, %eax
	jmp	.L85
.L88:
	.stabn	68,0,324,.LM333-.LFBB11
.LM333:
	movl	$1, %eax
.L85:
	.stabn	68,0,325,.LM334-.LFBB11
.LM334:
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
	.size	search_krloccupymsadsc_core, .-search_krloccupymsadsc_core
	.stabs	"retschmnr:(0,19)",128,0,293,40
	.stabs	"msadstat:(0,6)",128,0,294,32
	.stabs	"msanr:(0,19)",128,0,295,24
	.stabn	192,0,0,.LFBB11-.LFBB11
	.stabn	224,0,0,.Lscope11-.LFBB11
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.section	.rodata
	.align 8
.LC10:
	.string	"search_krloccupymsadsc_core fail\n"
	.text
	.stabs	"init_search_krloccupymm:F(0,1)",36,0,328,init_search_krloccupymm
	.stabs	"mbsp:p(0,27)",160,0,328,8
	.globl	init_search_krloccupymm
	.type	init_search_krloccupymm, @function
init_search_krloccupymm:
	.stabn	68,0,329,.LM335-.LFBB12
.LM335:
.LFBB12:
.LFB42:
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
.L94:
	leaq	.L94(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L94, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,331,.LM336-.LFBB12
.LM336:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$search_krloccupymsadsc_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,331,.LM337-.LFBB12
.LM337:
	testq	%rax, %rax
	jne	.L93
	.stabn	68,0,333,.LM338-.LFBB12
.LM338:
	movabsq	$.LC10@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,335,.LM339-.LFBB12
.LM339:
	nop
.L93:
	nop
	.stabn	68,0,336,.LM340-.LFBB12
.LM340:
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
.LFE42:
	.size	init_search_krloccupymm, .-init_search_krloccupymm
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
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
