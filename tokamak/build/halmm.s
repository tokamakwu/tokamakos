	.file	"halmm.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halmm.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"memcopy:f(0,1)=(0,1)",36,0,163,memcopy
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"src:p(0,2)=*(0,1)",160,0,163,16
	.stabs	"dest:p(0,2)",160,0,163,8
	.stabs	"count:p(0,3)=(0,4)=@s64;r(0,4);0;01777777777777777777777;",160,0,163,0
	.stabs	"uint_t:t(0,3)",128,0,17,0
	.stabs	"long unsigned int:t(0,4)",128,0,0,0
	.type	memcopy, @function
memcopy:
	.stabs	"../include/halinc/io.h",132,0,0,.Ltext1
.Ltext1:
	.stabn	68,0,164,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB20:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
.L5:
	leaq	.L5(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L5, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,166,.LM1-.LFBB1
.LM1:
	movq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,166,.LM2-.LFBB1
.LM2:
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
.LBB2:
	.stabn	68,0,167,.LM3-.LFBB1
.LM3:
	movq	$0, 48(%rsp)
	.stabn	68,0,167,.LM4-.LFBB1
.LM4:
	jmp	.L2
.L3:
	.stabn	68,0,169,.LM5-.LFBB1
.LM5:
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,169,.LM6-.LFBB1
.LM6:
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,169,.LM7-.LFBB1
.LM7:
	movzbl	(%rax), %eax
	.stabn	68,0,169,.LM8-.LFBB1
.LM8:
	movb	%al, (%rdx)
	.stabn	68,0,167,.LM9-.LFBB1
.LM9:
	addq	$1, 48(%rsp)
.L2:
	.stabn	68,0,167,.LM10-.LFBB1
.LM10:
	movq	48(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L3
.LBE2:
	.stabn	68,0,171,.LM11-.LFBB1
.LM11:
	nop
	.stabn	68,0,172,.LM12-.LFBB1
.LM12:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE20:
	.size	memcopy, .-memcopy
	.stabs	"ss:(0,5)=*(0,6)=(0,7)=@s8;r(0,7);0;255;",128,0,166,40
	.stabs	"u8_t:t(0,6)",128,0,8,0
	.stabs	"unsigned char:t(0,7)",128,0,0,0
	.stabs	"sd:(0,5)",128,0,166,32
	.stabn	192,0,0,.LFBB1-.LFBB1
	.stabs	"i:(0,3)",128,0,167,48
	.stabn	192,0,0,.LBB2-.LFBB1
	.stabn	224,0,0,.LBE2-.LFBB1
	.stabn	224,0,0,.Lscope1-.LFBB1
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"phymmarge_t_init:F(0,1)",36,0,4,phymmarge_t_init
	.stabs	"initp:p(0,8)=*(0,9)=(0,10)=xss_PHYMMARGE:",160,0,4,8
	.stabs	"s_PHYMMARGE:T(0,10)=s80pmr_lock:(0,11)=(0,12)=s4lock:(0,13)=B(0,14)=(0,15)=r(0,15);0;037777777777;,0,32;;,0,32;pmr_type:(0,14),32,32;pmr_stype:(0,14),64,32;pmr_dtype:(0,14),96,32;pmr_flgs:(0,14),128,32;pmr_stus:(0,14),160,32;pmr_saddr:(0,16)=(0,4),192,64;pmr_lsize:(0,16),256,64;pmr_end:(0,16),320,64;pmr_rrvmsaddr:(0,16),384,64;pmr_rrvmend:(0,16),448,64;pmr_prip:(0,2),512,64;pmr_extp:(0,2),576,64;;",128,0,0,0
	.stabs	"u32_t:t(0,14)",128,0,10,0
	.stabs	"unsigned int:t(0,15)",128,0,0,0
	.stabs	"u64_t:t(0,16)",128,0,11,0
	.globl	phymmarge_t_init
	.type	phymmarge_t_init, @function
phymmarge_t_init:
	.stabs	"../hal/x86/halmm.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,5,.LM13-.LFBB2
.LM13:
.LFBB2:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L10:
	leaq	.L10(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L10, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,6,.LM14-.LFBB2
.LM14:
	cmpq	$0, 8(%rsp)
	je	.L9
	.stabn	68,0,11,.LM15-.LFBB2
.LM15:
	movq	8(%rsp), %rdx
	movq	%rdx, %rdi
	movq	%rax, %r15
	movabsq	$hal_spinlock_init@PLTOFF, %rdx
	addq	%rax, %rdx
	call	*%rdx
	.stabn	68,0,12,.LM16-.LFBB2
.LM16:
	movq	8(%rsp), %rax
	movl	$0, 4(%rax)
	.stabn	68,0,13,.LM17-.LFBB2
.LM17:
	movq	8(%rsp), %rax
	movl	$0, 8(%rax)
	.stabn	68,0,14,.LM18-.LFBB2
.LM18:
	movq	8(%rsp), %rax
	movl	$0, 12(%rax)
	.stabn	68,0,15,.LM19-.LFBB2
.LM19:
	movq	8(%rsp), %rax
	movl	$0, 16(%rax)
	.stabn	68,0,16,.LM20-.LFBB2
.LM20:
	movq	8(%rsp), %rax
	movl	$0, 20(%rax)
	.stabn	68,0,17,.LM21-.LFBB2
.LM21:
	movq	8(%rsp), %rax
	movq	$0, 24(%rax)
	.stabn	68,0,18,.LM22-.LFBB2
.LM22:
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,19,.LM23-.LFBB2
.LM23:
	movq	8(%rsp), %rax
	movq	$0, 40(%rax)
	.stabn	68,0,20,.LM24-.LFBB2
.LM24:
	movq	8(%rsp), %rax
	movq	$0, 48(%rax)
	.stabn	68,0,21,.LM25-.LFBB2
.LM25:
	movq	8(%rsp), %rax
	movq	$0, 56(%rax)
	.stabn	68,0,22,.LM26-.LFBB2
.LM26:
	movq	8(%rsp), %rax
	movq	$0, 64(%rax)
	.stabn	68,0,23,.LM27-.LFBB2
.LM27:
	movq	8(%rsp), %rax
	movq	$0, 72(%rax)
	.stabn	68,0,24,.LM28-.LFBB2
.LM28:
	jmp	.L6
.L9:
	.stabn	68,0,8,.LM29-.LFBB2
.LM29:
	nop
.L6:
	.stabn	68,0,25,.LM30-.LFBB2
.LM30:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	phymmarge_t_init, .-phymmarge_t_init
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"ret_phymmarge_adrandsz:F(0,1)",36,0,27,ret_phymmarge_adrandsz
	.stabs	"adr_t:t(0,17)=(0,4)",128,0,19,0
	.stabs	"mbsp:p(0,18)=*(0,19)=(0,20)=xss_MACHBSTART:",160,0,27,24
	.stabs	"retpmrvadr:p(0,21)=*(0,8)",160,0,27,16
	.stabs	"retpmrsz:p(0,22)=*(0,16)",160,0,27,8
	.stabs	"s_MACHBSTART:T(0,20)=s1207mb_migc:(0,16),0,64;mb_chksum:(0,16),64,64;mb_krlinitstack:(0,16),128,64;mb_krlitstacksz:(0,16),192,64;mb_imgpadr:(0,16),256,64;mb_imgsz:(0,16),320,64;mb_krlimgpadr:(0,16),384,64;mb_krlsz:(0,16),448,64;mb_krlvec:(0,16),512,64;mb_krlrunmode:(0,16),576,64;mb_kalldendpadr:(0,16),640,64;mb_ksepadrs:(0,16),704,64;mb_ksepadre:(0,16),768,64;mb_kservadrs:(0,16),832,64;mb_kservadre:(0,16),896,64;mb_nextwtpadr:(0,16),960,64;mb_bfontpadr:(0,16),1024,64;mb_bfontsz:(0,16),1088,64;mb_fvrmphyadr:(0,16),1152,64;mb_fvrmsz:(0,16),1216,64;mb_cpumode:(0,16),1280,64;mb_memsz:(0,16),1344,64;mb_e820padr:(0,16),1408,64;mb_e820nr:(0,16),1472,64;mb_e820sz:(0,16),1536,64;mb_e820expadr:(0,16),1600,64;mb_e820exnr:(0,16),1664,64;mb_e820exsz:(0,16),1728,64;mb_memznpadr:(0,16),1792,64;mb_memznnr:(0,16),1856,64;mb_memznsz:(0,16),1920,64;mb_memznchksum:(0,16),1984,64;mb_memmappadr:(0,16),2048,64;mb_memmapnr:(0,16),2112,64;mb_memmapsz:(0,16),2176,64;mb_memmapchksum:(0,16),2240,64;mb_pml4padr:(0,16),2304,64;mb_subpageslen:(0,16),2368,64;mb_kpmapphymemsz:(0,16),2432,64;mb_ebdaphyadr:(0,16),2496,64;mb_mrsdp:(0,23)=(0,24)=xss_MRSDP:,2560,288;mb_ghparm:(0,25)=(0,26)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"s_MRSDP:T(0,24)=s36rp_sign:(0,16),0,64;rp_chksum:(0,6),64,8;rp_oemid:(0,27)=ar(0,28)=@s64;r(0,28);0;01777777777777777777777;;0;00000000000000000000005;(0,6),72,48;rp_revn:(0,6),120,8;rp_rsdtphyadr:(0,14),128,32;rp_len:(0,14),160,32;rp_xsdtphyadr:(0,16),192,64;rp_echksum:(0,6),256,8;rp_resv:(0,29)=ar(0,28);0;00000000000000000000002;(0,6),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,26)=s851gh_mode:(0,14),0,32;gh_x:(0,14),32,32;gh_y:(0,14),64,32;gh_framphyadr:(0,14),96,32;gh_onepixbits:(0,14),128,32;gh_vbemodenr:(0,14),160,32;gh_vifphyadr:(0,14),192,32;gh_vmifphyadr:(0,14),224,32;gh_bank:(0,14),256,32;gh_curdipbnk:(0,14),288,32;gh_nextbnk:(0,14),320,32;gh_banksz:(0,14),352,32;gh_logophyadrs:(0,14),384,32;gh_logophyadre:(0,14),416,32;gh_fontadr:(0,14),448,32;gh_ftsectadr:(0,14),480,32;gh_ftsectnr:(0,14),512,32;gh_fnthight:(0,14),544,32;gh_nxtcharsx:(0,14),576,32;gh_nxtcharsy:(0,14),608,32;gh_linesz:(0,14),640,32;gh_vbeinfo:(0,30)=(0,31)=xss_VBEINFO:,672,4096;gh_vminfo:(0,32)=(0,33)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"s_VBEINFO:T(0,31)=s512vbesignature:(0,34)=ar(0,28);0;00000000000000000000003;(0,35)=r(0,35);0;127;,0,32;vbeversion:(0,36)=(0,37)=@s16;r(0,37);0;65535;,32,16;oemstringptr:(0,14),48,32;capabilities:(0,14),80,32;videomodeptr:(0,14),112,32;totalmemory:(0,36),144,16;oemsoftwarerev:(0,36),160,16;oemvendornameptr:(0,14),176,32;oemproductnameptr:(0,14),208,32;oemproductrevptr:(0,14),240,32;reserved:(0,38)=ar(0,28);0;00000000000000000000335;(0,6),272,1776;oemdata:(0,39)=ar(0,28);0;00000000000000000000377;(0,6),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,33)=s255ModeAttributes:(0,36),0,16;WinAAttributes:(0,6),16,8;WinBAttributes:(0,6),24,8;WinGranularity:(0,36),32,16;WinSize:(0,36),48,16;WinASegment:(0,36),64,16;WinBSegment:(0,36),80,16;WinFuncPtr:(0,14),96,32;BytesPerScanLine:(0,36),128,16;XResolution:(0,36),144,16;YResolution:(0,36),160,16;XCharSize:(0,6),176,8;YCharSize:(0,6),184,8;NumberOfPlanes:(0,6),192,8;BitsPerPixel:(0,6),200,8;NumberOfBanks:(0,6),208,8;MemoryModel:(0,6),216,8;BankSize:(0,6),224,8;NumberOfImagePages:(0,6),232,8;Reserved:(0,6),240,8;RedMaskSize:(0,6),248,8;RedFieldPosition:(0,6),256,8;GreenMaskSize:(0,6),264,8;GreenFieldPosition:(0,6),272,8;BlueMaskSize:(0,6),280,8;BlueFieldPosition:(0,6),288,8;RsvdMaskSize:(0,6),296,8;RsvdFieldPosition:(0,6),304,8;DirectColorModeInfo:(0,6),312,8;PhysBasePtr:(0,14),320,32;Reserved1:(0,14),352,32;Reserved2:(0,36),384,16;LinBytesPerScanLine:(0,36),400,16;BnkNumberOfImagePages:(0,6),416,8;LinNumberOfImagePages:(0,6),424,8;LinRedMaskSize:(0,6),432,8;LinRedFieldPosition:(0,6),440,8;LinGreenMaskSize:(0,6),448,8;LinGreenFieldPosition:(0,6),456,8;LinBlueMaskSize:(0,6),464,8;LinBlueFieldPosition:(0,6),472,8;LinRsvdMaskSize:(0,6),480,8;LinRsvdFieldPosition:(0,6),488,8;MaxPixelClock:(0,14),496,32;Reserved3:(0,40)=ar(0,28);0;00000000000000000000274;(0,6),528,1512;;",128,0,0,0
	.stabs	"char:t(0,35)",128,0,0,0
	.stabs	"u16_t:t(0,36)",128,0,9,0
	.stabs	"short unsigned int:t(0,37)",128,0,0,0
	.globl	ret_phymmarge_adrandsz
	.type	ret_phymmarge_adrandsz, @function
ret_phymmarge_adrandsz:
	.stabn	68,0,28,.LM31-.LFBB3
.LM31:
.LFBB3:
.LFB33:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
.L16:
	leaq	.L16(%rip), %rcx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L16, %r11
	addq	%r11, %rcx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,29,.LM32-.LFBB3
.LM32:
	cmpq	$0, 24(%rsp)
	je	.L12
	.stabn	68,0,29,.LM33-.LFBB3
.LM33:
	movq	24(%rsp), %rax
	movq	192(%rax), %rax
	.stabn	68,0,29,.LM34-.LFBB3
.LM34:
	testq	%rax, %rax
	je	.L12
	.stabn	68,0,29,.LM35-.LFBB3
.LM35:
	movq	24(%rsp), %rax
	movq	176(%rax), %rax
	.stabn	68,0,29,.LM36-.LFBB3
.LM36:
	testq	%rax, %rax
	je	.L12
	.stabn	68,0,29,.LM37-.LFBB3
.LM37:
	movq	24(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,29,.LM38-.LFBB3
.LM38:
	testq	%rax, %rax
	jne	.L13
.L12:
	.stabn	68,0,31,.LM39-.LFBB3
.LM39:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,32,.LM40-.LFBB3
.LM40:
	movq	16(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,33,.LM41-.LFBB3
.LM41:
	jmp	.L11
.L13:
	.stabn	68,0,36,.LM42-.LFBB3
.LM42:
	movq	24(%rsp), %rax
	movq	184(%rax), %rdx
	.stabn	68,0,36,.LM43-.LFBB3
.LM43:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,37,.LM44-.LFBB3
.LM44:
	movq	24(%rsp), %rax
	movq	120(%rax), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,38,.LM45-.LFBB3
.LM45:
	movq	40(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movq	%rcx, %r15
	movabsq	$initchkadr_is_ok@PLTOFF, %rax
	addq	%rcx, %rax
	call	*%rax
	.stabn	68,0,38,.LM46-.LFBB3
.LM46:
	testl	%eax, %eax
	je	.L15
	.stabn	68,0,40,.LM47-.LFBB3
.LM47:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,41,.LM48-.LFBB3
.LM48:
	movq	16(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,42,.LM49-.LFBB3
.LM49:
	jmp	.L11
.L15:
	.stabn	68,0,45,.LM50-.LFBB3
.LM50:
	movq	8(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,46,.LM51-.LFBB3
.LM51:
	movq	32(%rsp), %rdx
	.stabn	68,0,46,.LM52-.LFBB3
.LM52:
	movq	16(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,47,.LM53-.LFBB3
.LM53:
	nop
.L11:
	.stabn	68,0,48,.LM54-.LFBB3
.LM54:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	ret_phymmarge_adrandsz, .-ret_phymmarge_adrandsz
	.stabs	"tmpsz:(0,16)",128,0,36,40
	.stabs	"tmpphyadr:(0,16)",128,0,37,32
	.stabn	192,0,0,.LFBB3-.LFBB3
	.stabn	224,0,0,.Lscope3-.LFBB3
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"init_one_pmrge:F(0,41)=(0,42)=(0,43)=@s64;r(0,43);01000000000000000000000;00777777777777777777777;",36,0,50,init_one_pmrge
	.stabs	"bool_t:t(0,41)",128,0,21,0
	.stabs	"sint_t:t(0,42)",128,0,16,0
	.stabs	"long int:t(0,43)",128,0,0,0
	.stabs	"e8p:p(0,44)=*(0,45)=(0,46)=xss_e820:",160,0,50,8
	.stabs	"pmargep:p(0,8)",160,0,50,0
	.stabs	"s_e820:T(0,46)=s20saddr:(0,16),0,64;lsize:(0,16),64,64;type:(0,14),128,32;;",128,0,0,0
	.globl	init_one_pmrge
	.type	init_one_pmrge, @function
init_one_pmrge:
	.stabn	68,0,51,.LM55-.LFBB4
.LM55:
.LFBB4:
.LFB34:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L31:
	leaq	.L31(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L31, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,52,.LM56-.LFBB4
.LM56:
	movl	$0, 28(%rsp)
	.stabn	68,0,52,.LM57-.LFBB4
.LM57:
	movl	$0, 24(%rsp)
	.stabn	68,0,53,.LM58-.LFBB4
.LM58:
	cmpq	$0, 8(%rsp)
	je	.L18
	.stabn	68,0,53,.LM59-.LFBB4
.LM59:
	cmpq	$0, (%rsp)
	jne	.L19
.L18:
	.stabn	68,0,55,.LM60-.LFBB4
.LM60:
	movl	$0, %eax
	jmp	.L20
.L19:
	.stabn	68,0,58,.LM61-.LFBB4
.LM61:
	movq	(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$phymmarge_t_init@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,59,.LM62-.LFBB4
.LM62:
	movq	8(%rsp), %rax
	movl	16(%rax), %eax
	.stabn	68,0,59,.LM63-.LFBB4
.LM63:
	cmpl	$5, %eax
	ja	.L30
	movl	%eax, %eax
	leaq	0(,%rax,8), %rdx
	leaq	.L23(%rip), %rax
	movq	(%rdx,%rax), %rax
	leaq	.L23(%rip), %rdx
	addq	%rdx, %rax
	notrack jmp	*%rax
	.section	.rodata
	.align 8
	.align 4
.L23:
	.quad	.L30-.L23
	.quad	.L27-.L23
	.quad	.L26-.L23
	.quad	.L25-.L23
	.quad	.L24-.L23
	.quad	.L22-.L23
	.text
.L27:
	.stabn	68,0,62,.LM64-.LFBB4
.LM64:
	movl	$1, 28(%rsp)
	.stabn	68,0,63,.LM65-.LFBB4
.LM65:
	movl	$1, 24(%rsp)
	.stabn	68,0,64,.LM66-.LFBB4
.LM66:
	jmp	.L28
.L26:
	.stabn	68,0,66,.LM67-.LFBB4
.LM67:
	movl	$2, 28(%rsp)
	.stabn	68,0,67,.LM68-.LFBB4
.LM68:
	movl	$2, 24(%rsp)
	.stabn	68,0,68,.LM69-.LFBB4
.LM69:
	jmp	.L28
.L25:
	.stabn	68,0,70,.LM70-.LFBB4
.LM70:
	movl	$8, 28(%rsp)
	.stabn	68,0,71,.LM71-.LFBB4
.LM71:
	movl	$3, 24(%rsp)
	.stabn	68,0,72,.LM72-.LFBB4
.LM72:
	jmp	.L28
.L24:
	.stabn	68,0,74,.LM73-.LFBB4
.LM73:
	movl	$8, 28(%rsp)
	.stabn	68,0,75,.LM74-.LFBB4
.LM74:
	movl	$4, 24(%rsp)
	.stabn	68,0,76,.LM75-.LFBB4
.LM75:
	jmp	.L28
.L22:
	.stabn	68,0,78,.LM76-.LFBB4
.LM76:
	movl	$255, 28(%rsp)
	.stabn	68,0,79,.LM77-.LFBB4
.LM77:
	movl	$5, 24(%rsp)
	.stabn	68,0,80,.LM78-.LFBB4
.LM78:
	jmp	.L28
.L30:
	.stabn	68,0,82,.LM79-.LFBB4
.LM79:
	nop
.L28:
	.stabn	68,0,85,.LM80-.LFBB4
.LM80:
	cmpl	$0, 28(%rsp)
	jne	.L29
	.stabn	68,0,87,.LM81-.LFBB4
.LM81:
	movl	$0, %eax
	jmp	.L20
.L29:
	.stabn	68,0,90,.LM82-.LFBB4
.LM82:
	movq	(%rsp), %rax
	movl	28(%rsp), %edx
	movl	%edx, 4(%rax)
	.stabn	68,0,91,.LM83-.LFBB4
.LM83:
	movq	(%rsp), %rax
	movl	24(%rsp), %edx
	movl	%edx, 8(%rax)
	.stabn	68,0,92,.LM84-.LFBB4
.LM84:
	movq	(%rsp), %rax
	movl	$2, 16(%rax)
	.stabn	68,0,93,.LM85-.LFBB4
.LM85:
	movq	8(%rsp), %rax
	movq	(%rax), %rdx
	.stabn	68,0,93,.LM86-.LFBB4
.LM86:
	movq	(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,94,.LM87-.LFBB4
.LM87:
	movq	8(%rsp), %rax
	movq	8(%rax), %rdx
	.stabn	68,0,94,.LM88-.LFBB4
.LM88:
	movq	(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,95,.LM89-.LFBB4
.LM89:
	movq	8(%rsp), %rax
	movq	(%rax), %rdx
	.stabn	68,0,95,.LM90-.LFBB4
.LM90:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,95,.LM91-.LFBB4
.LM91:
	addq	%rdx, %rax
	.stabn	68,0,95,.LM92-.LFBB4
.LM92:
	leaq	-1(%rax), %rdx
	.stabn	68,0,95,.LM93-.LFBB4
.LM93:
	movq	(%rsp), %rax
	movq	%rdx, 40(%rax)
	.stabn	68,0,96,.LM94-.LFBB4
.LM94:
	movl	$1, %eax
.L20:
	.stabn	68,0,97,.LM95-.LFBB4
.LM95:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	init_one_pmrge, .-init_one_pmrge
	.stabs	"ptype:(0,14)",128,0,52,28
	.stabs	"pstype:(0,14)",128,0,52,24
	.stabn	192,0,0,.LFBB4-.LFBB4
	.stabn	224,0,0,.Lscope4-.LFBB4
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"phymmarge_swap:F(0,1)",36,0,102,phymmarge_swap
	.stabs	"s:p(0,8)",160,0,102,8
	.stabs	"d:p(0,8)",160,0,102,0
	.globl	phymmarge_swap
	.type	phymmarge_swap, @function
phymmarge_swap:
	.stabn	68,0,103,.LM96-.LFBB5
.LM96:
.LFBB5:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$96, %rsp
	.cfi_def_cfa_offset 112
.L34:
	leaq	.L34(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L34, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,105,.LM97-.LFBB5
.LM97:
	leaq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$phymmarge_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,106,.LM98-.LFBB5
.LM98:
	leaq	16(%rsp), %rcx
	movq	8(%rsp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcopy@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,107,.LM99-.LFBB5
.LM99:
	movq	8(%rsp), %rcx
	movq	(%rsp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcopy@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,108,.LM100-.LFBB5
.LM100:
	movq	(%rsp), %rcx
	leaq	16(%rsp), %rax
	movl	$80, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$memcopy@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,109,.LM101-.LFBB5
.LM101:
	nop
	.stabn	68,0,110,.LM102-.LFBB5
.LM102:
	addq	$96, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	phymmarge_swap, .-phymmarge_swap
	.stabs	"tmp:(0,9)",128,0,104,16
	.stabs	"phymmarge_t:t(0,9)",128,0,114,0
	.stabn	192,0,0,.LFBB5-.LFBB5
	.stabn	224,0,0,.Lscope5-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"phymmarge_sort:F(0,1)",36,0,112,phymmarge_sort
	.stabs	"argp:p(0,8)",160,0,112,8
	.stabs	"nr:p(0,16)",160,0,112,0
	.globl	phymmarge_sort
	.type	phymmarge_sort, @function
phymmarge_sort:
	.stabn	68,0,113,.LM103-.LFBB6
.LM103:
.LFBB6:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
.L42:
	leaq	.L42(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L42, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,114,.LM104-.LFBB6
.LM104:
	movq	(%rsp), %rax
	subq	$1, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,115,.LM105-.LFBB6
.LM105:
	movq	$0, 32(%rsp)
	.stabn	68,0,115,.LM106-.LFBB6
.LM106:
	jmp	.L36
.L40:
	.stabn	68,0,117,.LM107-.LFBB6
.LM107:
	movq	$0, 40(%rsp)
	.stabn	68,0,117,.LM108-.LFBB6
.LM108:
	jmp	.L37
.L39:
	.stabn	68,0,119,.LM109-.LFBB6
.LM109:
	movq	40(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,119,.LM110-.LFBB6
.LM110:
	movq	24(%rax), %rdx
	.stabn	68,0,119,.LM111-.LFBB6
.LM111:
	movq	40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rax
	addq	%rcx, %rax
	.stabn	68,0,119,.LM112-.LFBB6
.LM112:
	movq	24(%rax), %rax
	.stabn	68,0,119,.LM113-.LFBB6
.LM113:
	cmpq	%rax, %rdx
	jbe	.L38
	.stabn	68,0,121,.LM114-.LFBB6
.LM114:
	movq	40(%rsp), %rax
	leaq	1(%rax), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,121,.LM115-.LFBB6
.LM115:
	movq	40(%rsp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$4, %rax
	movq	%rax, %rcx
	.stabn	68,0,121,.LM116-.LFBB6
.LM116:
	movq	8(%rsp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$phymmarge_swap@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L38:
	.stabn	68,0,117,.LM117-.LFBB6
.LM117:
	addq	$1, 40(%rsp)
.L37:
	.stabn	68,0,117,.LM118-.LFBB6
.LM118:
	movq	24(%rsp), %rax
	subq	32(%rsp), %rax
	.stabn	68,0,117,.LM119-.LFBB6
.LM119:
	cmpq	%rax, 40(%rsp)
	jb	.L39
	.stabn	68,0,115,.LM120-.LFBB6
.LM120:
	addq	$1, 32(%rsp)
.L36:
	.stabn	68,0,115,.LM121-.LFBB6
.LM121:
	movq	32(%rsp), %rax
	cmpq	24(%rsp), %rax
	jb	.L40
	.stabn	68,0,125,.LM122-.LFBB6
.LM122:
	nop
	.stabn	68,0,126,.LM123-.LFBB6
.LM123:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	phymmarge_sort, .-phymmarge_sort
	.stabs	"i:(0,16)",128,0,114,40
	.stabs	"j:(0,16)",128,0,114,32
	.stabs	"k:(0,16)",128,0,114,24
	.stabn	192,0,0,.LFBB6-.LFBB6
	.stabn	224,0,0,.Lscope6-.LFBB6
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"initpmrge_core:F(0,16)",36,0,129,initpmrge_core
	.stabs	"e8sp:p(0,44)",160,0,129,24
	.stabs	"e8nr:p(0,16)",160,0,129,16
	.stabs	"pmargesp:p(0,8)",160,0,129,8
	.globl	initpmrge_core
	.type	initpmrge_core, @function
initpmrge_core:
	.stabn	68,0,130,.LM124-.LFBB7
.LM124:
.LFBB7:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
.L50:
	leaq	.L50(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L50, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,131,.LM125-.LFBB7
.LM125:
	movq	$0, 40(%rsp)
	.stabn	68,0,132,.LM126-.LFBB7
.LM126:
	cmpq	$0, 24(%rsp)
	je	.L44
	.stabn	68,0,132,.LM127-.LFBB7
.LM127:
	cmpq	$0, 8(%rsp)
	je	.L44
	.stabn	68,0,132,.LM128-.LFBB7
.LM128:
	cmpq	$0, 16(%rsp)
	jne	.L45
.L44:
	.stabn	68,0,134,.LM129-.LFBB7
.LM129:
	movl	$0, %eax
	jmp	.L46
.L45:
.LBB3:
	.stabn	68,0,137,.LM130-.LFBB7
.LM130:
	movq	$0, 32(%rsp)
	.stabn	68,0,137,.LM131-.LFBB7
.LM131:
	jmp	.L47
.L49:
	.stabn	68,0,140,.LM132-.LFBB7
.LM132:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.stabn	68,0,140,.LM133-.LFBB7
.LM133:
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,140,.LM134-.LFBB7
.LM134:
	movq	32(%rsp), %rcx
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$2, %rax
	movq	%rax, %rcx
	.stabn	68,0,140,.LM135-.LFBB7
.LM135:
	movq	24(%rsp), %rax
	addq	%rcx, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$init_one_pmrge@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,140,.LM136-.LFBB7
.LM136:
	testq	%rax, %rax
	jne	.L48
	.stabn	68,0,142,.LM137-.LFBB7
.LM137:
	movq	40(%rsp), %rax
	jmp	.L46
.L48:
	.stabn	68,0,144,.LM138-.LFBB7
.LM138:
	addq	$1, 40(%rsp)
	.stabn	68,0,137,.LM139-.LFBB7
.LM139:
	addq	$1, 32(%rsp)
.L47:
	.stabn	68,0,137,.LM140-.LFBB7
.LM140:
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	jb	.L49
.LBE3:
	.stabn	68,0,147,.LM141-.LFBB7
.LM141:
	movq	40(%rsp), %rax
.L46:
	.stabn	68,0,148,.LM142-.LFBB7
.LM142:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	initpmrge_core, .-initpmrge_core
	.stabs	"retnr:(0,16)",128,0,131,40
	.stabn	192,0,0,.LFBB7-.LFBB7
	.stabs	"i:(0,16)",128,0,137,32
	.stabn	192,0,0,.LBB3-.LFBB7
	.stabn	224,0,0,.LBE3-.LFBB7
	.stabn	224,0,0,.Lscope7-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.section	.rodata
	.align 8
.LC0:
	.string	"init_phymmarge->NULL==pmarge_adr||0==pmrgesz\n"
	.align 8
.LC1:
	.string	"init_phymmarge->tmppmrphyadr!=pmarge_adr2phyadr\n"
	.align 8
.LC2:
	.string	"init_phymmarge->initpmrge_core ret 0\n"
	.align 8
.LC3:
	.string	"init_phymmarge->ipmgnr*sizeof(phymmarge_t))!=pmrgesz\n"
	.text
	.stabs	"init_phymmarge:F(0,1)",36,0,150,init_phymmarge
	.globl	init_phymmarge
	.type	init_phymmarge, @function
init_phymmarge:
	.stabn	68,0,151,.LM143-.LFBB8
.LM143:
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
.L59:
	leaq	.L59(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L59, %r11
	addq	%r11, %rbx
	.stabn	68,0,152,.LM144-.LFBB8
.LM144:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,153,.LM145-.LFBB8
.LM145:
	movq	$0, 8(%rsp)
	.stabn	68,0,154,.LM146-.LFBB8
.LM146:
	movq	$0, (%rsp)
	.stabn	68,0,157,.LM147-.LFBB8
.LM147:
	movq	%rsp, %rdx
	leaq	8(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$ret_phymmarge_adrandsz@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,158,.LM148-.LFBB8
.LM148:
	movq	8(%rsp), %rax
	.stabn	68,0,158,.LM149-.LFBB8
.LM149:
	testq	%rax, %rax
	je	.L52
	.stabn	68,0,158,.LM150-.LFBB8
.LM150:
	movq	(%rsp), %rax
	.stabn	68,0,158,.LM151-.LFBB8
.LM151:
	testq	%rax, %rax
	jne	.L53
.L52:
	.stabn	68,0,160,.LM152-.LFBB8
.LM152:
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,161,.LM153-.LFBB8
.LM153:
	jmp	.L51
.L53:
	.stabn	68,0,164,.LM154-.LFBB8
.LM154:
	movq	40(%rsp), %rax
	movq	120(%rax), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,165,.LM155-.LFBB8
.LM155:
	movq	8(%rsp), %rax
	.stabn	68,0,165,.LM156-.LFBB8
.LM156:
	cmpq	%rax, 32(%rsp)
	je	.L55
	.stabn	68,0,167,.LM157-.LFBB8
.LM157:
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,168,.LM158-.LFBB8
.LM158:
	jmp	.L51
.L55:
	.stabn	68,0,171,.LM159-.LFBB8
.LM159:
	movq	40(%rsp), %rax
	movq	176(%rax), %rax
	.stabn	68,0,171,.LM160-.LFBB8
.LM160:
	movq	%rax, 24(%rsp)
	.stabn	68,0,173,.LM161-.LFBB8
.LM161:
	movq	8(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	184(%rax), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$initpmrge_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,174,.LM162-.LFBB8
.LM162:
	cmpq	$0, 16(%rsp)
	jne	.L56
	.stabn	68,0,176,.LM163-.LFBB8
.LM163:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,177,.LM164-.LFBB8
.LM164:
	jmp	.L51
.L56:
	.stabn	68,0,179,.LM165-.LFBB8
.LM165:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.stabn	68,0,179,.LM166-.LFBB8
.LM166:
	movq	(%rsp), %rax
	.stabn	68,0,179,.LM167-.LFBB8
.LM167:
	cmpq	%rax, %rdx
	je	.L57
	.stabn	68,0,181,.LM168-.LFBB8
.LM168:
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,182,.LM169-.LFBB8
.LM169:
	jmp	.L51
.L57:
	.stabn	68,0,186,.LM170-.LFBB8
.LM170:
	movq	40(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rdx, 200(%rax)
	.stabn	68,0,187,.LM171-.LFBB8
.LM171:
	movq	40(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, 208(%rax)
	.stabn	68,0,188,.LM172-.LFBB8
.LM172:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$4, %rax
	movq	%rax, %rdx
	.stabn	68,0,188,.LM173-.LFBB8
.LM173:
	movq	40(%rsp), %rax
	movq	%rdx, 216(%rax)
	.stabn	68,0,190,.LM174-.LFBB8
.LM174:
	movq	40(%rsp), %rax
	movq	200(%rax), %rdx
	.stabn	68,0,190,.LM175-.LFBB8
.LM175:
	movq	40(%rsp), %rax
	movq	216(%rax), %rax
	.stabn	68,0,190,.LM176-.LFBB8
.LM176:
	addq	%rdx, %rax
	.stabn	68,0,190,.LM177-.LFBB8
.LM177:
	addq	$4095, %rax
	.stabn	68,0,190,.LM178-.LFBB8
.LM178:
	andq	$-4096, %rax
	movq	%rax, %rdx
	.stabn	68,0,190,.LM179-.LFBB8
.LM179:
	movq	40(%rsp), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,193,.LM180-.LFBB8
.LM180:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$phymmarge_sort@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,194,.LM181-.LFBB8
.LM181:
	nop
.L51:
	.stabn	68,0,195,.LM182-.LFBB8
.LM182:
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
	.size	init_phymmarge, .-init_phymmarge
	.stabs	"mbsp:(0,18)",128,0,152,40
	.stabs	"machbstart_t:t(0,19)",128,0,106,0
	.stabs	"pmarge_adr:(0,8)",128,0,153,8
	.stabs	"pmrgesz:(0,16)",128,0,154,0
	.stabs	"tmppmrphyadr:(0,16)",128,0,164,32
	.stabs	"e8p:(0,44)",128,0,171,24
	.stabs	"e820map_t:t(0,45)",128,0,135,0
	.stabs	"ipmgnr:(0,16)",128,0,173,16
	.stabn	192,0,0,.LFBB8-.LFBB8
	.stabn	224,0,0,.Lscope8-.LFBB8
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"init_halmm:F(0,1)",36,0,197,init_halmm
	.globl	init_halmm
	.type	init_halmm, @function
init_halmm:
	.stabn	68,0,198,.LM183-.LFBB9
.LM183:
.LFBB9:
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
	.stabn	68,0,200,.LM184-.LFBB9
.LM184:
	movl	$0, %eax
	movabsq	$init_phymmarge@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,204,.LM185-.LFBB9
.LM185:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_memmgr@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,205,.LM186-.LFBB9
.LM186:
	nop
	.stabn	68,0,206,.LM187-.LFBB9
.LM187:
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
	.size	init_halmm, .-init_halmm
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
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
