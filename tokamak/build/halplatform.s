	.file	"halplatform.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halplatform.c",100,0,2,.Ltext0
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
	.stabs	"memset:f(0,1)",36,0,204,memset
	.stabs	"s:p(0,2)",160,0,204,16
	.stabs	"c:p(0,6)",160,0,204,12
	.stabs	"count:p(0,3)",160,0,204,0
	.type	memset, @function
memset:
	.stabn	68,0,205,.LM13-.LFBB2
.LM13:
.LFBB2:
.LFB22:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L10:
	leaq	.L10(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L10, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movl	%esi, %eax
	movq	%rdx, (%rsp)
	movb	%al, 12(%rsp)
	.stabn	68,0,206,.LM14-.LFBB2
.LM14:
	movq	16(%rsp), %rax
	movq	%rax, 24(%rsp)
.LBB3:
	.stabn	68,0,207,.LM15-.LFBB2
.LM15:
	movq	$0, 32(%rsp)
	.stabn	68,0,207,.LM16-.LFBB2
.LM16:
	jmp	.L7
.L8:
	.stabn	68,0,209,.LM17-.LFBB2
.LM17:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,209,.LM18-.LFBB2
.LM18:
	movzbl	12(%rsp), %eax
	movb	%al, (%rdx)
	.stabn	68,0,207,.LM19-.LFBB2
.LM19:
	addq	$1, 32(%rsp)
.L7:
	.stabn	68,0,207,.LM20-.LFBB2
.LM20:
	movq	32(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L8
.LBE3:
	.stabn	68,0,211,.LM21-.LFBB2
.LM21:
	nop
	.stabn	68,0,212,.LM22-.LFBB2
.LM22:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	memset, .-memset
	.stabs	"st:(0,5)",128,0,206,24
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabs	"i:(0,3)",128,0,207,32
	.stabn	192,0,0,.LBB3-.LFBB2
	.stabn	224,0,0,.LBE3-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"init_halplaltform:F(0,1)",36,0,5,init_halplaltform
	.globl	init_halplaltform
	.type	init_halplaltform, @function
init_halplaltform:
	.stabs	"../hal/x86/halplatform.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,6,.LM23-.LFBB3
.LM23:
.LFBB3:
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
.L13:
	leaq	.L13(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L13, %r11
	addq	%r11, %rbx
	.stabn	68,0,8,.LM24-.LFBB3
.LM24:
	movl	$0, %eax
	movabsq	$init_machbstart@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,11,.LM25-.LFBB3
.LM25:
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$init_bdvideo@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,13,.LM26-.LFBB3
.LM26:
	nop
	.stabn	68,0,14,.LM27-.LFBB3
.LM27:
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
	.size	init_halplaltform, .-init_halplaltform
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"machbstart_t_init:F(0,1)",36,0,16,machbstart_t_init
	.stabs	"initp:p(0,8)=*(0,9)=(0,10)=xss_MACHBSTART:",160,0,16,0
	.stabs	"s_MACHBSTART:T(0,10)=s1207mb_migc:(0,11)=(0,4),0,64;mb_chksum:(0,11),64,64;mb_krlinitstack:(0,11),128,64;mb_krlitstacksz:(0,11),192,64;mb_imgpadr:(0,11),256,64;mb_imgsz:(0,11),320,64;mb_krlimgpadr:(0,11),384,64;mb_krlsz:(0,11),448,64;mb_krlvec:(0,11),512,64;mb_krlrunmode:(0,11),576,64;mb_kalldendpadr:(0,11),640,64;mb_ksepadrs:(0,11),704,64;mb_ksepadre:(0,11),768,64;mb_kservadrs:(0,11),832,64;mb_kservadre:(0,11),896,64;mb_nextwtpadr:(0,11),960,64;mb_bfontpadr:(0,11),1024,64;mb_bfontsz:(0,11),1088,64;mb_fvrmphyadr:(0,11),1152,64;mb_fvrmsz:(0,11),1216,64;mb_cpumode:(0,11),1280,64;mb_memsz:(0,11),1344,64;mb_e820padr:(0,11),1408,64;mb_e820nr:(0,11),1472,64;mb_e820sz:(0,11),1536,64;mb_e820expadr:(0,11),1600,64;mb_e820exnr:(0,11),1664,64;mb_e820exsz:(0,11),1728,64;mb_memznpadr:(0,11),1792,64;mb_memznnr:(0,11),1856,64;mb_memznsz:(0,11),1920,64;mb_memznchksum:(0,11),1984,64;mb_memmappadr:(0,11),2048,64;mb_memmapnr:(0,11),2112,64;mb_memmapsz:(0,11),2176,64;mb_memmapchksum:(0,11),2240,64;mb_pml4padr:(0,11),2304,64;mb_subpageslen:(0,11),2368,64;mb_kpmapphymemsz:(0,11),2432,64;mb_ebdaphyadr:(0,11),2496,64;mb_mrsdp:(0,12)=(0,13)=xss_MRSDP:,2560,288;mb_ghparm:(0,14)=(0,15)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"u64_t:t(0,11)",128,0,11,0
	.stabs	"s_MRSDP:T(0,13)=s36rp_sign:(0,11),0,64;rp_chksum:(0,6),64,8;rp_oemid:(0,16)=ar(0,17)=@s64;r(0,17);0;01777777777777777777777;;0;00000000000000000000005;(0,6),72,48;rp_revn:(0,6),120,8;rp_rsdtphyadr:(0,18)=(0,19)=r(0,19);0;037777777777;,128,32;rp_len:(0,18),160,32;rp_xsdtphyadr:(0,11),192,64;rp_echksum:(0,6),256,8;rp_resv:(0,20)=ar(0,17);0;00000000000000000000002;(0,6),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,15)=s851gh_mode:(0,18),0,32;gh_x:(0,18),32,32;gh_y:(0,18),64,32;gh_framphyadr:(0,18),96,32;gh_onepixbits:(0,18),128,32;gh_vbemodenr:(0,18),160,32;gh_vifphyadr:(0,18),192,32;gh_vmifphyadr:(0,18),224,32;gh_bank:(0,18),256,32;gh_curdipbnk:(0,18),288,32;gh_nextbnk:(0,18),320,32;gh_banksz:(0,18),352,32;gh_logophyadrs:(0,18),384,32;gh_logophyadre:(0,18),416,32;gh_fontadr:(0,18),448,32;gh_ftsectadr:(0,18),480,32;gh_ftsectnr:(0,18),512,32;gh_fnthight:(0,18),544,32;gh_nxtcharsx:(0,18),576,32;gh_nxtcharsy:(0,18),608,32;gh_linesz:(0,18),640,32;gh_vbeinfo:(0,21)=(0,22)=xss_VBEINFO:,672,4096;gh_vminfo:(0,23)=(0,24)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"u32_t:t(0,18)",128,0,10,0
	.stabs	"unsigned int:t(0,19)",128,0,0,0
	.stabs	"s_VBEINFO:T(0,22)=s512vbesignature:(0,25)=ar(0,17);0;00000000000000000000003;(0,26)=r(0,26);0;127;,0,32;vbeversion:(0,27)=(0,28)=@s16;r(0,28);0;65535;,32,16;oemstringptr:(0,18),48,32;capabilities:(0,18),80,32;videomodeptr:(0,18),112,32;totalmemory:(0,27),144,16;oemsoftwarerev:(0,27),160,16;oemvendornameptr:(0,18),176,32;oemproductnameptr:(0,18),208,32;oemproductrevptr:(0,18),240,32;reserved:(0,29)=ar(0,17);0;00000000000000000000335;(0,6),272,1776;oemdata:(0,30)=ar(0,17);0;00000000000000000000377;(0,6),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,24)=s255ModeAttributes:(0,27),0,16;WinAAttributes:(0,6),16,8;WinBAttributes:(0,6),24,8;WinGranularity:(0,27),32,16;WinSize:(0,27),48,16;WinASegment:(0,27),64,16;WinBSegment:(0,27),80,16;WinFuncPtr:(0,18),96,32;BytesPerScanLine:(0,27),128,16;XResolution:(0,27),144,16;YResolution:(0,27),160,16;XCharSize:(0,6),176,8;YCharSize:(0,6),184,8;NumberOfPlanes:(0,6),192,8;BitsPerPixel:(0,6),200,8;NumberOfBanks:(0,6),208,8;MemoryModel:(0,6),216,8;BankSize:(0,6),224,8;NumberOfImagePages:(0,6),232,8;Reserved:(0,6),240,8;RedMaskSize:(0,6),248,8;RedFieldPosition:(0,6),256,8;GreenMaskSize:(0,6),264,8;GreenFieldPosition:(0,6),272,8;BlueMaskSize:(0,6),280,8;BlueFieldPosition:(0,6),288,8;RsvdMaskSize:(0,6),296,8;RsvdFieldPosition:(0,6),304,8;DirectColorModeInfo:(0,6),312,8;PhysBasePtr:(0,18),320,32;Reserved1:(0,18),352,32;Reserved2:(0,27),384,16;LinBytesPerScanLine:(0,27),400,16;BnkNumberOfImagePages:(0,6),416,8;LinNumberOfImagePages:(0,6),424,8;LinRedMaskSize:(0,6),432,8;LinRedFieldPosition:(0,6),440,8;LinGreenMaskSize:(0,6),448,8;LinGreenFieldPosition:(0,6),456,8;LinBlueMaskSize:(0,6),464,8;LinBlueFieldPosition:(0,6),472,8;LinRsvdMaskSize:(0,6),480,8;LinRsvdFieldPosition:(0,6),488,8;MaxPixelClock:(0,18),496,32;Reserved3:(0,31)=ar(0,17);0;00000000000000000000274;(0,6),528,1512;;",128,0,0,0
	.stabs	"char:t(0,26)",128,0,0,0
	.stabs	"u16_t:t(0,27)",128,0,9,0
	.stabs	"short unsigned int:t(0,28)",128,0,0,0
	.globl	machbstart_t_init
	.type	machbstart_t_init, @function
machbstart_t_init:
	.stabn	68,0,17,.LM28-.LFBB4
.LM28:
.LFBB4:
.LFB33:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L16:
	leaq	.L16(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L16, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,19,.LM29-.LFBB4
.LM29:
	movq	(%rsp), %rcx
	movl	$1207, %edx
	movl	$0, %esi
	movq	%rcx, %rdi
	movabsq	$memset@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	call	*%rax
	.stabn	68,0,20,.LM30-.LFBB4
.LM30:
	nop
	.stabn	68,0,21,.LM31-.LFBB4
.LM31:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	machbstart_t_init, .-machbstart_t_init
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"init_machbstart:F(0,1)",36,0,23,init_machbstart
	.stabs	"adr_t:t(0,32)=(0,4)",128,0,19,0
	.globl	init_machbstart
	.type	init_machbstart, @function
init_machbstart:
	.stabn	68,0,24,.LM32-.LFBB5
.LM32:
.LFBB5:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L19:
	leaq	.L19(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L19, %r11
	addq	%r11, %rbx
	.stabn	68,0,25,.LM33-.LFBB5
.LM33:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,26,.LM34-.LFBB5
.LM34:
	movq	$1048576, (%rsp)
	.stabn	68,0,27,.LM35-.LFBB5
.LM35:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$machbstart_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,31,.LM36-.LFBB5
.LM36:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$phyadr_to_viradr@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,31,.LM37-.LFBB5
.LM37:
	movq	%rax, %rcx
	movq	8(%rsp), %rax
	movl	$1207, %edx
	movq	%rax, %rsi
	movq	%rcx, %rdi
	movabsq	$memcopy@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,33,.LM38-.LFBB5
.LM38:
	nop
	.stabn	68,0,34,.LM39-.LFBB5
.LM39:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	init_machbstart, .-init_machbstart
	.stabs	"kmbsp:(0,8)",128,0,25,8
	.stabs	"machbstart_t:t(0,9)",128,0,106,0
	.stabs	"smbsp:(0,8)",128,0,26,0
	.stabn	192,0,0,.LFBB5-.LFBB5
	.stabn	224,0,0,.Lscope5-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.section	.rodata
.LC0:
	.string	"phyadr_to_viradr err\n"
	.text
	.stabs	"phyadr_to_viradr:F(0,32)",36,0,37,phyadr_to_viradr
	.stabs	"kphyadr:p(0,32)",160,0,37,8
	.globl	phyadr_to_viradr
	.type	phyadr_to_viradr, @function
phyadr_to_viradr:
	.stabn	68,0,38,.LM40-.LFBB6
.LM40:
.LFBB6:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L23:
	leaq	.L23(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L23, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,39,.LM41-.LFBB6
.LM41:
	movabsq	$17179869183, %rdx
	cmpq	%rdx, 8(%rsp)
	jbe	.L21
	.stabn	68,0,41,.LM42-.LFBB6
.LM42:
	movabsq	$.LC0@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, %r15
	movabsq	$system_error@PLTOFF, %rdx
	addq	%rax, %rdx
	call	*%rdx
	.stabn	68,0,42,.LM43-.LFBB6
.LM43:
	movabsq	$4362862139015168, %rax
	jmp	.L22
.L21:
	.stabn	68,0,45,.LM44-.LFBB6
.LM44:
	movabsq	$-140737488355328, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
.L22:
	.stabn	68,0,46,.LM45-.LFBB6
.LM45:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	phyadr_to_viradr, .-phyadr_to_viradr
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.section	.rodata
.LC1:
	.string	"viradr_to_phyadr err\n"
	.text
	.stabs	"viradr_to_phyadr:F(0,32)",36,0,48,viradr_to_phyadr
	.stabs	"kviradr:p(0,32)",160,0,48,8
	.globl	viradr_to_phyadr
	.type	viradr_to_phyadr, @function
viradr_to_phyadr:
	.stabn	68,0,49,.LM46-.LFBB7
.LM46:
.LFBB7:
.LFB36:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L28:
	leaq	.L28(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L28, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,50,.LM47-.LFBB7
.LM47:
	movabsq	$-140737488355329, %rdx
	cmpq	%rdx, 8(%rsp)
	jbe	.L25
	.stabn	68,0,50,.LM48-.LFBB7
.LM48:
	movabsq	$-140720308486144, %rdx
	cmpq	%rdx, 8(%rsp)
	jbe	.L26
.L25:
	.stabn	68,0,52,.LM49-.LFBB7
.LM49:
	movabsq	$.LC1@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, %r15
	movabsq	$system_error@PLTOFF, %rdx
	addq	%rax, %rdx
	call	*%rdx
	.stabn	68,0,53,.LM50-.LFBB7
.LM50:
	movabsq	$4362862139015168, %rax
	jmp	.L27
.L26:
	.stabn	68,0,55,.LM51-.LFBB7
.LM51:
	movabsq	$140737488355328, %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
.L27:
	.stabn	68,0,56,.LM52-.LFBB7
.LM52:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	viradr_to_phyadr, .-viradr_to_phyadr
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"get_file_rvadrandsz:F(0,1)",36,0,58,get_file_rvadrandsz
	.stabs	"fname:p(0,33)=*(0,34)=(0,26)",160,0,58,24
	.stabs	"mbsp:p(0,8)",160,0,58,16
	.stabs	"retadr:p(0,35)=*(0,11)",160,0,58,8
	.stabs	"retsz:p(0,35)",160,0,58,0
	.stabs	"char_t:t(0,34)",128,0,24,0
	.globl	get_file_rvadrandsz
	.type	get_file_rvadrandsz, @function
get_file_rvadrandsz:
	.stabn	68,0,59,.LM53-.LFBB8
.LM53:
.LFBB8:
.LFB37:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
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
	movq	%rcx, (%rsp)
	.stabn	68,0,60,.LM54-.LFBB8
.LM54:
	movq	$0, 56(%rsp)
	.stabn	68,0,60,.LM55-.LFBB8
.LM55:
	movq	$0, 48(%rsp)
	.stabn	68,0,61,.LM56-.LFBB8
.LM56:
	cmpq	$0, 24(%rsp)
	je	.L30
	.stabn	68,0,61,.LM57-.LFBB8
.LM57:
	cmpq	$0, 16(%rsp)
	jne	.L31
.L30:
	.stabn	68,0,63,.LM58-.LFBB8
.LM58:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,64,.LM59-.LFBB8
.LM59:
	jmp	.L29
.L31:
	.stabn	68,0,67,.LM60-.LFBB8
.LM60:
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$get_fileinfo@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,68,.LM61-.LFBB8
.LM61:
	cmpq	$0, 40(%rsp)
	jne	.L33
	.stabn	68,0,70,.LM62-.LFBB8
.LM62:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,71,.LM63-.LFBB8
.LM63:
	jmp	.L29
.L33:
	.stabn	68,0,74,.LM64-.LFBB8
.LM64:
	movq	40(%rsp), %rax
	movq	32(%rax), %rbp
	.stabn	68,0,74,.LM65-.LFBB8
.LM65:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,74,.LM66-.LFBB8
.LM66:
	movq	%rax, %rdi
	movabsq	$phyadr_to_viradr@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,74,.LM67-.LFBB8
.LM67:
	addq	%rbp, %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,75,.LM68-.LFBB8
.LM68:
	movq	40(%rsp), %rax
	movq	48(%rax), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,77,.LM69-.LFBB8
.LM69:
	movq	8(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,78,.LM70-.LFBB8
.LM70:
	movq	(%rsp), %rax
	movq	48(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,79,.LM71-.LFBB8
.LM71:
	nop
.L29:
	.stabn	68,0,80,.LM72-.LFBB8
.LM72:
	addq	$72, %rsp
	.cfi_def_cfa_offset 24
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popq	%rbp
	.cfi_restore 6
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	get_file_rvadrandsz, .-get_file_rvadrandsz
	.stabs	"padr:(0,11)",128,0,60,56
	.stabs	"fsz:(0,11)",128,0,60,48
	.stabs	"fhdsc:(0,36)=*(0,37)=(0,38)=xss_fhdsc:",128,0,67,40
	.stabs	"s_fhdsc:T(0,38)=s256fhd_type:(0,11),0,64;fhd_subtype:(0,11),64,64;fhd_stuts:(0,11),128,64;fhd_id:(0,11),192,64;fhd_intsfsoff:(0,11),256,64;fhd_intsfend:(0,11),320,64;fhd_frealsz:(0,11),384,64;fhd_fsum:(0,11),448,64;fhd_name:(0,39)=ar(0,17);0;00000000000000000000277;(0,26),512,1536;;",128,0,0,0
	.stabs	"fhdsc_t:t(0,37)",128,0,148,0
	.stabn	192,0,0,.LFBB8-.LFBB8
	.stabn	224,0,0,.Lscope8-.LFBB8
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"strcmpl:F(0,40)=r(0,40);-2147483648;2147483647;",36,0,82,strcmpl
	.stabs	"int:t(0,40)",128,0,0,0
	.stabs	"a:p(0,41)=*(0,42)=k(0,26)",160,0,82,8
	.stabs	"b:p(0,41)",160,0,82,0
	.globl	strcmpl
	.type	strcmpl, @function
strcmpl:
	.stabn	68,0,83,.LM73-.LFBB9
.LM73:
.LFBB9:
.LFB38:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L40:
	leaq	.L40(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L40, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,84,.LM74-.LFBB9
.LM74:
	jmp	.L36
.L38:
	.stabn	68,0,86,.LM75-.LFBB9
.LM75:
	addq	$1, (%rsp)
	.stabn	68,0,87,.LM76-.LFBB9
.LM76:
	addq	$1, 8(%rsp)
.L36:
	.stabn	68,0,84,.LM77-.LFBB9
.LM77:
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,84,.LM78-.LFBB9
.LM78:
	testb	%al, %al
	je	.L37
	.stabn	68,0,84,.LM79-.LFBB9
.LM79:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,84,.LM80-.LFBB9
.LM80:
	testb	%al, %al
	je	.L37
	.stabn	68,0,84,.LM81-.LFBB9
.LM81:
	movq	(%rsp), %rax
	movzbl	(%rax), %edx
	.stabn	68,0,84,.LM82-.LFBB9
.LM82:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,84,.LM83-.LFBB9
.LM83:
	cmpb	%al, %dl
	je	.L38
.L37:
	.stabn	68,0,90,.LM84-.LFBB9
.LM84:
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %edx
	.stabn	68,0,90,.LM85-.LFBB9
.LM85:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %ecx
	.stabn	68,0,90,.LM86-.LFBB9
.LM86:
	movl	%edx, %eax
	subl	%ecx, %eax
	.stabn	68,0,91,.LM87-.LFBB9
.LM87:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	strcmpl, .-strcmpl
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.section	.rodata
.LC2:
	.string	"no mrddsc"
.LC3:
	.string	"not find file"
	.text
	.stabs	"get_fileinfo:F(0,36)",36,0,93,get_fileinfo
	.stabs	"s64_t:t(0,43)=(0,44)=@s64;r(0,44);01000000000000000000000;00777777777777777777777;",128,0,15,0
	.stabs	"s_mlosrddsc:T(0,45)=s176mdc_mgic:(0,11),0,64;mdc_sfsum:(0,11),64,64;mdc_sfsoff:(0,11),128,64;mdc_sfeoff:(0,11),192,64;mdc_sfrlsz:(0,11),256,64;mdc_ldrbk_s:(0,11),320,64;mdc_ldrbk_e:(0,11),384,64;mdc_ldrbk_rsz:(0,11),448,64;mdc_ldrbk_sum:(0,11),512,64;mdc_fhdbk_s:(0,11),576,64;mdc_fhdbk_e:(0,11),640,64;mdc_fhdbk_rsz:(0,11),704,64;mdc_fhdbk_sum:(0,11),768,64;mdc_filbk_s:(0,11),832,64;mdc_filbk_e:(0,11),896,64;mdc_filbk_rsz:(0,11),960,64;mdc_filbk_sum:(0,11),1024,64;mdc_ldrcodenr:(0,11),1088,64;mdc_fhdnr:(0,11),1152,64;mdc_filnr:(0,11),1216,64;mdc_endgic:(0,11),1280,64;mdc_rv:(0,11),1344,64;;",128,0,0,0
	.stabs	"long int:t(0,44)",128,0,0,0
	.stabs	"fname:p(0,33)",160,0,93,8
	.stabs	"mbsp:p(0,8)",160,0,93,0
	.globl	get_fileinfo
	.type	get_fileinfo, @function
get_fileinfo:
	.stabn	68,0,94,.LM88-.LFBB10
.LM88:
.LFBB10:
.LFB39:
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
	subq	$48, %rsp
	.cfi_def_cfa_offset 80
.L50:
	leaq	.L50(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L50, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,95,.LM89-.LFBB10
.LM89:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,95,.LM90-.LFBB10
.LM90:
	addq	$4096, %rax
	.stabn	68,0,95,.LM91-.LFBB10
.LM91:
	movq	%rax, %rdi
	movabsq	$phyadr_to_viradr@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,95,.LM92-.LFBB10
.LM92:
	movq	%rax, 24(%rsp)
	.stabn	68,0,96,.LM93-.LFBB10
.LM93:
	movq	24(%rsp), %rax
	movq	160(%rax), %rax
	.stabn	68,0,96,.LM94-.LFBB10
.LM94:
	movabsq	$-6124988953138320641, %rdx
	cmpq	%rdx, %rax
	jne	.L42
	.stabn	68,0,97,.LM95-.LFBB10
.LM95:
	movq	24(%rsp), %rax
	movq	168(%rax), %rax
	.stabn	68,0,96,.LM96-.LFBB10
.LM96:
	movabsq	$-23925738098196566, %rdx
	cmpq	%rdx, %rax
	jne	.L42
	.stabn	68,0,98,.LM97-.LFBB10
.LM97:
	movq	24(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,97,.LM98-.LFBB10
.LM98:
	cmpq	$1, %rax
	jbe	.L42
	.stabn	68,0,99,.LM99-.LFBB10
.LM99:
	movq	24(%rsp), %rax
	movq	152(%rax), %rax
	.stabn	68,0,98,.LM100-.LFBB10
.LM100:
	cmpq	$1, %rax
	ja	.L43
.L42:
	.stabn	68,0,101,.LM101-.LFBB10
.LM101:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L43:
	.stabn	68,0,103,.LM102-.LFBB10
.LM102:
	movq	$-1, 40(%rsp)
	.stabn	68,0,104,.LM103-.LFBB10
.LM103:
	movq	24(%rsp), %rax
	movq	72(%rax), %rbp
	.stabn	68,0,104,.LM104-.LFBB10
.LM104:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,104,.LM105-.LFBB10
.LM105:
	movq	%rax, %rdi
	movabsq	$phyadr_to_viradr@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,104,.LM106-.LFBB10
.LM106:
	addq	%rbp, %rax
	.stabn	68,0,104,.LM107-.LFBB10
.LM107:
	movq	%rax, 16(%rsp)
.LBB4:
	.stabn	68,0,106,.LM108-.LFBB10
.LM108:
	movq	$0, 32(%rsp)
	.stabn	68,0,106,.LM109-.LFBB10
.LM109:
	jmp	.L44
.L47:
	.stabn	68,0,108,.LM110-.LFBB10
.LM110:
	movq	32(%rsp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,108,.LM111-.LFBB10
.LM111:
	leaq	64(%rax), %rdx
	.stabn	68,0,108,.LM112-.LFBB10
.LM112:
	movq	8(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$strcmpl@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,108,.LM113-.LFBB10
.LM113:
	testl	%eax, %eax
	jne	.L45
	.stabn	68,0,110,.LM114-.LFBB10
.LM114:
	movq	32(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,111,.LM115-.LFBB10
.LM115:
	jmp	.L46
.L45:
	.stabn	68,0,106,.LM116-.LFBB10
.LM116:
	addq	$1, 32(%rsp)
.L44:
	.stabn	68,0,106,.LM117-.LFBB10
.LM117:
	movq	24(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,106,.LM118-.LFBB10
.LM118:
	cmpq	%rax, 32(%rsp)
	jb	.L47
.LBE4:
	.stabn	68,0,114,.LM119-.LFBB10
.LM119:
	movq	$-1, 40(%rsp)
.L46:
	.stabn	68,0,116,.LM120-.LFBB10
.LM120:
	cmpq	$0, 40(%rsp)
	jns	.L48
	.stabn	68,0,118,.LM121-.LFBB10
.LM121:
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L48:
	.stabn	68,0,120,.LM122-.LFBB10
.LM122:
	movq	40(%rsp), %rax
	salq	$8, %rax
	movq	%rax, %rdx
	.stabn	68,0,120,.LM123-.LFBB10
.LM123:
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,121,.LM124-.LFBB10
.LM124:
	addq	$48, %rsp
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
.LFE39:
	.size	get_fileinfo, .-get_fileinfo
	.stabs	"mrddadrs:(0,46)=*(0,47)=(0,45)",128,0,95,24
	.stabs	"mlosrddsc_t:t(0,47)",128,0,174,0
	.stabs	"rethn:(0,43)",128,0,103,40
	.stabs	"fhdscstart:(0,36)",128,0,104,16
	.stabn	192,0,0,.LFBB10-.LFBB10
	.stabs	"i:(0,11)",128,0,106,32
	.stabn	192,0,0,.LBB4-.LFBB10
	.stabn	224,0,0,.LBE4-.LFBB10
	.stabn	224,0,0,.Lscope10-.LFBB10
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabs	"adrzone_is_ok:F(0,40)",36,0,124,adrzone_is_ok
	.stabs	"sadr:p(0,11)",160,0,124,24
	.stabs	"slen:p(0,11)",160,0,124,16
	.stabs	"kadr:p(0,11)",160,0,124,8
	.stabs	"klen:p(0,11)",160,0,124,0
	.globl	adrzone_is_ok
	.type	adrzone_is_ok, @function
adrzone_is_ok:
	.stabn	68,0,125,.LM125-.LFBB11
.LM125:
.LFBB11:
.LFB40:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L55:
	leaq	.L55(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L55, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,126,.LM126-.LFBB11
.LM126:
	movq	8(%rsp), %rax
	cmpq	24(%rsp), %rax
	jb	.L52
	.stabn	68,0,126,.LM127-.LFBB11
.LM127:
	movq	24(%rsp), %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,126,.LM128-.LFBB11
.LM128:
	cmpq	%rax, 8(%rsp)
	ja	.L52
	.stabn	68,0,128,.LM129-.LFBB11
.LM129:
	movl	$-1, %eax
	jmp	.L53
.L52:
	.stabn	68,0,131,.LM130-.LFBB11
.LM130:
	movq	8(%rsp), %rax
	cmpq	24(%rsp), %rax
	ja	.L54
	.stabn	68,0,131,.LM131-.LFBB11
.LM131:
	movq	8(%rsp), %rdx
	movq	(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,131,.LM132-.LFBB11
.LM132:
	cmpq	%rax, 24(%rsp)
	ja	.L54
	.stabn	68,0,133,.LM133-.LFBB11
.LM133:
	movl	$-2, %eax
	jmp	.L53
.L54:
	.stabn	68,0,136,.LM134-.LFBB11
.LM134:
	movl	$0, %eax
.L53:
	.stabn	68,0,137,.LM135-.LFBB11
.LM135:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	adrzone_is_ok, .-adrzone_is_ok
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabs	"initchkadr_is_ok:F(0,40)",36,0,138,initchkadr_is_ok
	.stabs	"mbsp:p(0,8)",160,0,138,16
	.stabs	"chkadr:p(0,11)",160,0,138,8
	.stabs	"cksz:p(0,11)",160,0,138,0
	.globl	initchkadr_is_ok
	.type	initchkadr_is_ok, @function
initchkadr_is_ok:
	.stabn	68,0,139,.LM136-.LFBB12
.LM136:
.LFBB12:
.LFB41:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L67:
	leaq	.L67(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L67, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,141,.LM137-.LFBB12
.LM137:
	movq	16(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,141,.LM138-.LFBB12
.LM138:
	movq	16(%rsp), %rdx
	movq	16(%rdx), %rcx
	.stabn	68,0,141,.LM139-.LFBB12
.LM139:
	movq	16(%rsp), %rdx
	movq	24(%rdx), %rdx
	.stabn	68,0,141,.LM140-.LFBB12
.LM140:
	movq	%rcx, %rdi
	subq	%rdx, %rdi
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rsi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,141,.LM141-.LFBB12
.LM141:
	testl	%eax, %eax
	je	.L57
	.stabn	68,0,143,.LM142-.LFBB12
.LM142:
	movl	$-1, %eax
	jmp	.L58
.L57:
	.stabn	68,0,145,.LM143-.LFBB12
.LM143:
	movq	16(%rsp), %rax
	movq	40(%rax), %rsi
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,145,.LM144-.LFBB12
.LM144:
	testl	%eax, %eax
	je	.L59
	.stabn	68,0,147,.LM145-.LFBB12
.LM145:
	movl	$-2, %eax
	jmp	.L58
.L59:
	.stabn	68,0,149,.LM146-.LFBB12
.LM146:
	movq	16(%rsp), %rax
	movq	56(%rax), %rsi
	movq	16(%rsp), %rax
	movq	48(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,149,.LM147-.LFBB12
.LM147:
	testl	%eax, %eax
	je	.L60
	.stabn	68,0,151,.LM148-.LFBB12
.LM148:
	movl	$-3, %eax
	jmp	.L58
.L60:
	.stabn	68,0,153,.LM149-.LFBB12
.LM149:
	movq	16(%rsp), %rax
	movq	136(%rax), %rsi
	movq	16(%rsp), %rax
	movq	128(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,153,.LM150-.LFBB12
.LM150:
	testl	%eax, %eax
	je	.L61
	.stabn	68,0,155,.LM151-.LFBB12
.LM151:
	movl	$-4, %eax
	jmp	.L58
.L61:
	.stabn	68,0,157,.LM152-.LFBB12
.LM152:
	movq	16(%rsp), %rax
	movq	192(%rax), %rsi
	movq	16(%rsp), %rax
	movq	176(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,157,.LM153-.LFBB12
.LM153:
	testl	%eax, %eax
	je	.L62
	.stabn	68,0,159,.LM154-.LFBB12
.LM154:
	movl	$-5, %eax
	jmp	.L58
.L62:
	.stabn	68,0,161,.LM155-.LFBB12
.LM155:
	movq	16(%rsp), %rax
	movq	240(%rax), %rsi
	movq	16(%rsp), %rax
	movq	224(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,161,.LM156-.LFBB12
.LM156:
	testl	%eax, %eax
	je	.L63
	.stabn	68,0,163,.LM157-.LFBB12
.LM157:
	movl	$-6, %eax
	jmp	.L58
.L63:
	.stabn	68,0,165,.LM158-.LFBB12
.LM158:
	movq	16(%rsp), %rax
	movq	272(%rax), %rsi
	movq	16(%rsp), %rax
	movq	256(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,165,.LM159-.LFBB12
.LM159:
	testl	%eax, %eax
	je	.L64
	.stabn	68,0,167,.LM160-.LFBB12
.LM160:
	movl	$-7, %eax
	jmp	.L58
.L64:
	.stabn	68,0,169,.LM161-.LFBB12
.LM161:
	movq	16(%rsp), %rax
	movq	216(%rax), %rsi
	movq	16(%rsp), %rax
	movq	200(%rax), %rax
	movq	(%rsp), %rcx
	movq	8(%rsp), %rdx
	movq	%rax, %rdi
	movabsq	$adrzone_is_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,169,.LM162-.LFBB12
.LM162:
	testl	%eax, %eax
	je	.L65
	.stabn	68,0,171,.LM163-.LFBB12
.LM163:
	movl	$-8, %eax
	jmp	.L58
.L65:
	.stabn	68,0,173,.LM164-.LFBB12
.LM164:
	movq	8(%rsp), %rdx
	movq	(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,173,.LM165-.LFBB12
.LM165:
	movq	16(%rsp), %rax
	movq	304(%rax), %rax
	.stabn	68,0,173,.LM166-.LFBB12
.LM166:
	cmpq	%rax, %rdx
	jb	.L66
	.stabn	68,0,175,.LM167-.LFBB12
.LM167:
	movl	$-9, %eax
	jmp	.L58
.L66:
	.stabn	68,0,177,.LM168-.LFBB12
.LM168:
	movl	$0, %eax
.L58:
	.stabn	68,0,178,.LM169-.LFBB12
.LM169:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	initchkadr_is_ok, .-initchkadr_is_ok
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.stabs	"die:F(0,1)",36,0,183,die
	.stabs	"dt:p(0,18)",160,0,183,-36
	.globl	die
	.type	die, @function
die:
	.stabn	68,0,184,.LM170-.LFBB13
.LM170:
.LFBB13:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$40, %rsp
.L78:
	leaq	.L78(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L78, %r11
	addq	%r11, %rax
	movl	%edi, -36(%rbp)
	.stabn	68,0,185,.LM171-.LFBB13
.LM171:
	movl	-36(%rbp), %eax
	movl	%eax, -16(%rbp)
	.stabn	68,0,185,.LM172-.LFBB13
.LM172:
	movl	-36(%rbp), %eax
	movl	%eax, -20(%rbp)
	.stabn	68,0,186,.LM173-.LFBB13
.LM173:
	cmpl	$0, -36(%rbp)
	jne	.L69
.L70:
	.stabn	68,0,188,.LM174-.LFBB13
.LM174:
	jmp	.L70
.L69:
.LBB5:
	.stabn	68,0,192,.LM175-.LFBB13
.LM175:
	movl	$0, -4(%rbp)
	.stabn	68,0,192,.LM176-.LFBB13
.LM176:
	jmp	.L71
.L76:
.LBB6:
	.stabn	68,0,194,.LM177-.LFBB13
.LM177:
	movl	$0, -8(%rbp)
	.stabn	68,0,194,.LM178-.LFBB13
.LM178:
	jmp	.L72
.L75:
.LBB7:
	.stabn	68,0,196,.LM179-.LFBB13
.LM179:
	movl	$0, -12(%rbp)
	.stabn	68,0,196,.LM180-.LFBB13
.LM180:
	jmp	.L73
.L74:
	.stabn	68,0,196,.LM181-.LFBB13
.LM181:
	addl	$1, -12(%rbp)
.L73:
	.stabn	68,0,196,.LM182-.LFBB13
.LM182:
	movl	-12(%rbp), %eax
	cmpl	-16(%rbp), %eax
	jb	.L74
.LBE7:
	.stabn	68,0,194,.LM183-.LFBB13
.LM183:
	addl	$1, -8(%rbp)
.L72:
	.stabn	68,0,194,.LM184-.LFBB13
.LM184:
	movl	-8(%rbp), %eax
	cmpl	-20(%rbp), %eax
	jb	.L75
.LBE6:
	.stabn	68,0,192,.LM185-.LFBB13
.LM185:
	addl	$1, -4(%rbp)
.L71:
	.stabn	68,0,192,.LM186-.LFBB13
.LM186:
	movl	-4(%rbp), %eax
	cmpl	-36(%rbp), %eax
	jb	.L76
.LBE5:
	.stabn	68,0,203,.LM187-.LFBB13
.LM187:
	nop
	.stabn	68,0,204,.LM188-.LFBB13
.LM188:
	leave
	.cfi_restore 6
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE42:
	.size	die, .-die
	.stabs	"dttt:(0,18)",128,0,185,-16
	.stabs	"dtt:(0,18)",128,0,185,-20
	.stabn	192,0,0,.LFBB13-.LFBB13
	.stabs	"i:(0,18)",128,0,192,-4
	.stabn	192,0,0,.LBB5-.LFBB13
	.stabs	"j:(0,18)",128,0,194,-8
	.stabn	192,0,0,.LBB6-.LFBB13
	.stabs	"k:(0,18)",128,0,196,-12
	.stabn	192,0,0,.LBB7-.LFBB13
	.stabn	224,0,0,.LBE7-.LFBB13
	.stabn	224,0,0,.LBE6-.LFBB13
	.stabn	224,0,0,.LBE5-.LFBB13
	.stabn	224,0,0,.Lscope13-.LFBB13
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
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
