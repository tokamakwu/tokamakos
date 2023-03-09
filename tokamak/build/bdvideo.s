	.file	"bdvideo.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/bdvideo.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"out_u16:f(0,1)=(0,1)",36,0,107,out_u16
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"port:p(0,2)=k(0,3)=(0,4)=@s16;r(0,4);0;65535;",160,0,107,4
	.stabs	"val:p(0,2)",160,0,107,0
	.stabs	"u16_t:t(0,3)",128,0,9,0
	.stabs	"short unsigned int:t(0,4)",128,0,0,0
	.type	out_u16, @function
out_u16:
	.stabs	"../include/halinc/io.h",132,0,0,.Ltext1
.Ltext1:
	.stabn	68,0,108,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB14:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L2:
	leaq	.L2(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L2, %r11
	addq	%r11, %rax
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, 4(%rsp)
	movw	%ax, (%rsp)
	.stabn	68,0,110,.LM1-.LFBB1
.LM1:
	movzwl	4(%rsp), %edx
	movzwl	(%rsp), %eax
#APP
# 110 "../include/halinc/io.h" 1
	outw  %ax, %dx

# 0 "" 2
	.stabn	68,0,113,.LM2-.LFBB1
.LM2:
#NO_APP
	nop
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE14:
	.size	out_u16, .-out_u16
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"in_u16:f(0,3)",36,0,115,in_u16
	.stabs	"port:p(0,2)",160,0,115,0
	.type	in_u16, @function
in_u16:
	.stabn	68,0,116,.LM3-.LFBB2
.LM3:
.LFBB2:
.LFB15:
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
	.stabn	68,0,119,.LM4-.LFBB2
.LM4:
	movzwl	4(%rsp), %eax
	movl	%eax, %edx
#APP
# 119 "../include/halinc/io.h" 1
	inw %dx, %ax

# 0 "" 2
#NO_APP
	movw	%ax, 22(%rsp)
	.stabn	68,0,122,.LM5-.LFBB2
.LM5:
	movzwl	22(%rsp), %eax
	.stabn	68,0,123,.LM6-.LFBB2
.LM6:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE15:
	.size	in_u16, .-in_u16
	.stabs	"tmp:(0,3)",128,0,117,18
	.stabn	192,0,0,.LFBB2-.LFBB2
	.stabn	224,0,0,.Lscope2-.LFBB2
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"memset:f(0,1)",36,0,204,memset
	.stabs	"s:p(0,5)=*(0,1)",160,0,204,16
	.stabs	"c:p(0,6)=(0,7)=@s8;r(0,7);0;255;",160,0,204,12
	.stabs	"count:p(0,8)=(0,9)=@s64;r(0,9);0;01777777777777777777777;",160,0,204,0
	.stabs	"u8_t:t(0,6)",128,0,8,0
	.stabs	"unsigned char:t(0,7)",128,0,0,0
	.stabs	"uint_t:t(0,8)",128,0,17,0
	.stabs	"long unsigned int:t(0,9)",128,0,0,0
	.type	memset, @function
memset:
	.stabn	68,0,205,.LM7-.LFBB3
.LM7:
.LFBB3:
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
	.stabn	68,0,206,.LM8-.LFBB3
.LM8:
	movq	16(%rsp), %rax
	movq	%rax, 24(%rsp)
.LBB2:
	.stabn	68,0,207,.LM9-.LFBB3
.LM9:
	movq	$0, 32(%rsp)
	.stabn	68,0,207,.LM10-.LFBB3
.LM10:
	jmp	.L7
.L8:
	.stabn	68,0,209,.LM11-.LFBB3
.LM11:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,209,.LM12-.LFBB3
.LM12:
	movzbl	12(%rsp), %eax
	movb	%al, (%rdx)
	.stabn	68,0,207,.LM13-.LFBB3
.LM13:
	addq	$1, 32(%rsp)
.L7:
	.stabn	68,0,207,.LM14-.LFBB3
.LM14:
	movq	32(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L8
.LBE2:
	.stabn	68,0,211,.LM15-.LFBB3
.LM15:
	nop
	.stabn	68,0,212,.LM16-.LFBB3
.LM16:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE22:
	.size	memset, .-memset
	.stabs	"st:(0,10)=*(0,6)",128,0,206,24
	.stabn	192,0,0,.LFBB3-.LFBB3
	.stabs	"i:(0,8)",128,0,207,32
	.stabn	192,0,0,.LBB2-.LFBB3
	.stabn	224,0,0,.LBE2-.LFBB3
	.stabn	224,0,0,.Lscope3-.LFBB3
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.globl	cosmos_version
	.section	.rodata
	.align 8
.LC0:
	.string	"Cosmos\n\345\206\205\346\240\270\347\211\210\346\234\254:00.01\n\345\275\255\344\270\234 @ \346\236\204\345\273\272\344\272\216 Mar  9 2023 17:49:57\n"
	.section	.data.rel.local.cosmos_version,"aw"
	.align 8
	.type	cosmos_version, @object
	.size	cosmos_version, 8
cosmos_version:
	.quad	.LC0
	.stabs	"cosmos_version:G(0,11)=*(0,12)=k(0,13)=r(0,13);0;127;",32,0,8,0
	.stabs	"char:t(0,13)",128,0,0,0
	.text
	.stabs	"init_bdvideo:F(0,1)",36,0,12,init_bdvideo
	.globl	init_bdvideo
	.type	init_bdvideo, @function
init_bdvideo:
	.stabs	"../hal/x86/bdvideo.c",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,13,.LM17-.LFBB4
.LM17:
.LFBB4:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L13:
	leaq	.L13(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L13, %r11
	addq	%r11, %rbx
	.stabn	68,0,14,.LM18-.LFBB4
.LM18:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,17,.LM19-.LFBB4
.LM19:
	movl	$0, %eax
	movabsq	$init_dftgraph@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,20,.LM20-.LFBB4
.LM20:
	movl	$0, %eax
	movabsq	$init_bga@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,23,.LM21-.LFBB4
.LM21:
	movl	$0, %eax
	movabsq	$init_vbe@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,26,.LM22-.LFBB4
.LM22:
	movq	8(%rsp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$fill_graph@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,29,.LM23-.LFBB4
.LM23:
	movl	$0, %esi
	movl	$0, %edi
	movabsq	$set_charsdxwflush@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,31,.LM24-.LFBB4
.LM24:
	movl	$0, %eax
	movabsq	$hal_background@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,33,.LM25-.LFBB4
.LM25:
	nop
	.stabn	68,0,34,.LM26-.LFBB4
.LM26:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE32:
	.size	init_bdvideo, .-init_bdvideo
	.stabs	"kghp:(0,14)=*(0,15)=(0,16)=xss_DFTGRAPH:",128,0,14,8
	.stabs	"s_DFTGRAPH:T(0,16)=s312gh_mode:(0,17)=(0,9),0,64;gh_x:(0,17),64,64;gh_y:(0,17),128,64;gh_framphyadr:(0,17),192,64;gh_fvrmphyadr:(0,17),256,64;gh_fvrmsz:(0,17),320,64;gh_onepixbits:(0,17),384,64;gh_onepixbyte:(0,17),448,64;gh_vbemodenr:(0,17),512,64;gh_bank:(0,17),576,64;gh_curdipbnk:(0,17),640,64;gh_nextbnk:(0,17),704,64;gh_banksz:(0,17),768,64;gh_fontadr:(0,17),832,64;gh_fontsz:(0,17),896,64;gh_fnthight:(0,17),960,64;gh_nxtcharsx:(0,17),1024,64;gh_nxtcharsy:(0,17),1088,64;gh_linesz:(0,17),1152,64;gh_deffontpx:(0,18)=(0,19)=(0,20)=r(0,20);0;037777777777;,1216,32;gh_chardxw:(0,17),1280,64;gh_flush:(0,17),1344,64;gh_framnr:(0,17),1408,64;gh_fshdata:(0,17),1472,64;gh_opfun:(0,21)=(0,22)=xss_DFTGHOPS:,1536,960;;",128,0,0,0
	.stabs	"dftgraph_t:t(0,15)",128,0,247,0
	.stabs	"u64_t:t(0,17)",128,0,11,0
	.stabs	"pixl_t:t(0,18)",128,0,83,0
	.stabs	"u32_t:t(0,19)",128,0,10,0
	.stabs	"unsigned int:t(0,20)",128,0,0,0
	.stabs	"s_DFTGHOPS:T(0,22)=s120dgo_read:(0,23)=*(0,24)=f(0,25)=(0,9),0,64;dgo_write:(0,23),64,64;dgo_ioctrl:(0,26)=*(0,27)=f(0,28)=(0,29)=@s64;r(0,29);01000000000000000000000;00777777777777777777777;,128,64;dgo_flush:(0,30)=*(0,31)=f(0,1),192,64;dgo_set_bank:(0,32)=*(0,33)=f(0,28),256,64;dgo_readpix:(0,34)=*(0,35)=f(0,18),320,64;dgo_writepix:(0,36)=*(0,37)=f(0,1),384,64;dgo_dxreadpix:(0,34),448,64;dgo_dxwritepix:(0,36),512,64;dgo_set_xy:(0,38)=*(0,39)=f(0,28),576,64;dgo_set_vwh:(0,38),640,64;dgo_set_xyoffset:(0,38),704,64;dgo_get_xy:(0,40)=*(0,41)=f(0,28),768,64;dgo_get_vwh:(0,40),832,64;dgo_get_xyoffset:(0,40),896,64;;",128,0,0,0
	.stabs	"size_t:t(0,25)",128,0,31,0
	.stabs	"sint_t:t(0,28)",128,0,16,0
	.stabs	"long int:t(0,29)",128,0,0,0
	.stabn	192,0,0,.LFBB4-.LFBB4
	.stabn	224,0,0,.Lscope4-.LFBB4
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"init_dftgraph:F(0,1)",36,0,36,init_dftgraph
	.stabs	"adr_t:t(0,42)=(0,9)",128,0,19,0
	.globl	init_dftgraph
	.type	init_dftgraph, @function
init_dftgraph:
	.stabn	68,0,37,.LM27-.LFBB5
.LM27:
.LFBB5:
.LFB33:
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
.L16:
	leaq	.L16(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L16, %r11
	addq	%r11, %rbx
	.stabn	68,0,38,.LM28-.LFBB5
.LM28:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,39,.LM29-.LFBB5
.LM29:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, (%rsp)
	.stabn	68,0,40,.LM30-.LFBB5
.LM30:
	movq	8(%rsp), %rax
	movl	$312, %edx
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$memset@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,43,.LM31-.LFBB5
.LM31:
	movq	(%rsp), %rax
	movl	356(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,43,.LM32-.LFBB5
.LM32:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,45,.LM33-.LFBB5
.LM33:
	movq	(%rsp), %rax
	movl	360(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,45,.LM34-.LFBB5
.LM34:
	movq	8(%rsp), %rax
	movq	%rdx, 8(%rax)
	.stabn	68,0,46,.LM35-.LFBB5
.LM35:
	movq	(%rsp), %rax
	movl	364(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,46,.LM36-.LFBB5
.LM36:
	movq	8(%rsp), %rax
	movq	%rdx, 16(%rax)
	.stabn	68,0,47,.LM37-.LFBB5
.LM37:
	movq	(%rsp), %rax
	movl	368(%rax), %eax
	.stabn	68,0,47,.LM38-.LFBB5
.LM38:
	movl	%eax, %eax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,47,.LM39-.LFBB5
.LM39:
	movq	8(%rsp), %rdx
	movq	%rax, 24(%rdx)
	.stabn	68,0,48,.LM40-.LFBB5
.LM40:
	movq	(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,48,.LM41-.LFBB5
.LM41:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,48,.LM42-.LFBB5
.LM42:
	movq	8(%rsp), %rdx
	movq	%rax, 32(%rdx)
	.stabn	68,0,49,.LM43-.LFBB5
.LM43:
	movq	(%rsp), %rax
	movq	152(%rax), %rdx
	.stabn	68,0,49,.LM44-.LFBB5
.LM44:
	movq	8(%rsp), %rax
	movq	%rdx, 40(%rax)
	.stabn	68,0,50,.LM45-.LFBB5
.LM45:
	movq	(%rsp), %rax
	movl	372(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,50,.LM46-.LFBB5
.LM46:
	movq	8(%rsp), %rax
	movq	%rdx, 48(%rax)
	.stabn	68,0,51,.LM47-.LFBB5
.LM47:
	movq	(%rsp), %rax
	movl	372(%rax), %eax
	.stabn	68,0,51,.LM48-.LFBB5
.LM48:
	shrl	$3, %eax
	movl	%eax, %edx
	.stabn	68,0,51,.LM49-.LFBB5
.LM49:
	movq	8(%rsp), %rax
	movq	%rdx, 56(%rax)
	.stabn	68,0,52,.LM50-.LFBB5
.LM50:
	movq	(%rsp), %rax
	movl	376(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,52,.LM51-.LFBB5
.LM51:
	movq	8(%rsp), %rax
	movq	%rdx, 64(%rax)
	.stabn	68,0,53,.LM52-.LFBB5
.LM52:
	movq	(%rsp), %rax
	movl	388(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,53,.LM53-.LFBB5
.LM53:
	movq	8(%rsp), %rax
	movq	%rdx, 72(%rax)
	.stabn	68,0,54,.LM54-.LFBB5
.LM54:
	movq	(%rsp), %rax
	movl	392(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,54,.LM55-.LFBB5
.LM55:
	movq	8(%rsp), %rax
	movq	%rdx, 80(%rax)
	.stabn	68,0,55,.LM56-.LFBB5
.LM56:
	movq	(%rsp), %rax
	movl	396(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,55,.LM57-.LFBB5
.LM57:
	movq	8(%rsp), %rax
	movq	%rdx, 88(%rax)
	.stabn	68,0,56,.LM58-.LFBB5
.LM58:
	movq	(%rsp), %rax
	movl	400(%rax), %eax
	movl	%eax, %edx
	.stabn	68,0,56,.LM59-.LFBB5
.LM59:
	movq	8(%rsp), %rax
	movq	%rdx, 96(%rax)
	.stabn	68,0,58,.LM60-.LFBB5
.LM60:
	movq	(%rsp), %rax
	movq	128(%rax), %rax
	.stabn	68,0,58,.LM61-.LFBB5
.LM61:
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,58,.LM62-.LFBB5
.LM62:
	movq	8(%rsp), %rdx
	movq	%rax, 104(%rdx)
	.stabn	68,0,59,.LM63-.LFBB5
.LM63:
	movq	(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,59,.LM64-.LFBB5
.LM64:
	movq	8(%rsp), %rax
	movq	%rdx, 112(%rax)
	.stabn	68,0,60,.LM65-.LFBB5
.LM65:
	movq	8(%rsp), %rax
	movq	$16, 120(%rax)
	.stabn	68,0,61,.LM66-.LFBB5
.LM66:
	movq	8(%rsp), %rax
	movq	$20, 144(%rax)
	.stabn	68,0,62,.LM67-.LFBB5
.LM67:
	movq	8(%rsp), %rax
	movl	$16777215, 152(%rax)
	.stabn	68,0,63,.LM68-.LFBB5
.LM68:
	nop
	.stabn	68,0,64,.LM69-.LFBB5
.LM69:
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
.LFE33:
	.size	init_dftgraph, .-init_dftgraph
	.stabs	"kghp:(0,14)",128,0,38,8
	.stabs	"kmbsp:(0,43)=*(0,44)=(0,45)=xss_MACHBSTART:",128,0,39,0
	.stabs	"s_MACHBSTART:T(0,45)=s1207mb_migc:(0,17),0,64;mb_chksum:(0,17),64,64;mb_krlinitstack:(0,17),128,64;mb_krlitstacksz:(0,17),192,64;mb_imgpadr:(0,17),256,64;mb_imgsz:(0,17),320,64;mb_krlimgpadr:(0,17),384,64;mb_krlsz:(0,17),448,64;mb_krlvec:(0,17),512,64;mb_krlrunmode:(0,17),576,64;mb_kalldendpadr:(0,17),640,64;mb_ksepadrs:(0,17),704,64;mb_ksepadre:(0,17),768,64;mb_kservadrs:(0,17),832,64;mb_kservadre:(0,17),896,64;mb_nextwtpadr:(0,17),960,64;mb_bfontpadr:(0,17),1024,64;mb_bfontsz:(0,17),1088,64;mb_fvrmphyadr:(0,17),1152,64;mb_fvrmsz:(0,17),1216,64;mb_cpumode:(0,17),1280,64;mb_memsz:(0,17),1344,64;mb_e820padr:(0,17),1408,64;mb_e820nr:(0,17),1472,64;mb_e820sz:(0,17),1536,64;mb_e820expadr:(0,17),1600,64;mb_e820exnr:(0,17),1664,64;mb_e820exsz:(0,17),1728,64;mb_memznpadr:(0,17),1792,64;mb_memznnr:(0,17),1856,64;mb_memznsz:(0,17),1920,64;mb_memznchksum:(0,17),1984,64;mb_memmappadr:(0,17),2048,64;mb_memmapnr:(0,17),2112,64;mb_memmapsz:(0,17),2176,64;mb_memmapchksum:(0,17),2240,64;mb_pml4padr:(0,17),2304,64;mb_subpageslen:(0,17),2368,64;mb_kpmapphymemsz:(0,17),2432,64;mb_ebdaphyadr:(0,17),2496,64;mb_mrsdp:(0,46)=(0,47)=xss_MRSDP:,2560,288;mb_ghparm:(0,48)=(0,49)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"machbstart_t:t(0,44)",128,0,106,0
	.stabs	"s_MRSDP:T(0,47)=s36rp_sign:(0,17),0,64;rp_chksum:(0,6),64,8;rp_oemid:(0,50)=ar(0,51)=@s64;r(0,51);0;01777777777777777777777;;0;00000000000000000000005;(0,6),72,48;rp_revn:(0,6),120,8;rp_rsdtphyadr:(0,19),128,32;rp_len:(0,19),160,32;rp_xsdtphyadr:(0,17),192,64;rp_echksum:(0,6),256,8;rp_resv:(0,52)=ar(0,51);0;00000000000000000000002;(0,6),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,49)=s851gh_mode:(0,19),0,32;gh_x:(0,19),32,32;gh_y:(0,19),64,32;gh_framphyadr:(0,19),96,32;gh_onepixbits:(0,19),128,32;gh_vbemodenr:(0,19),160,32;gh_vifphyadr:(0,19),192,32;gh_vmifphyadr:(0,19),224,32;gh_bank:(0,19),256,32;gh_curdipbnk:(0,19),288,32;gh_nextbnk:(0,19),320,32;gh_banksz:(0,19),352,32;gh_logophyadrs:(0,19),384,32;gh_logophyadre:(0,19),416,32;gh_fontadr:(0,19),448,32;gh_ftsectadr:(0,19),480,32;gh_ftsectnr:(0,19),512,32;gh_fnthight:(0,19),544,32;gh_nxtcharsx:(0,19),576,32;gh_nxtcharsy:(0,19),608,32;gh_linesz:(0,19),640,32;gh_vbeinfo:(0,53)=(0,54)=xss_VBEINFO:,672,4096;gh_vminfo:(0,55)=(0,56)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"s_VBEINFO:T(0,54)=s512vbesignature:(0,57)=ar(0,51);0;00000000000000000000003;(0,13),0,32;vbeversion:(0,3),32,16;oemstringptr:(0,19),48,32;capabilities:(0,19),80,32;videomodeptr:(0,19),112,32;totalmemory:(0,3),144,16;oemsoftwarerev:(0,3),160,16;oemvendornameptr:(0,19),176,32;oemproductnameptr:(0,19),208,32;oemproductrevptr:(0,19),240,32;reserved:(0,58)=ar(0,51);0;00000000000000000000335;(0,6),272,1776;oemdata:(0,59)=ar(0,51);0;00000000000000000000377;(0,6),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,56)=s255ModeAttributes:(0,3),0,16;WinAAttributes:(0,6),16,8;WinBAttributes:(0,6),24,8;WinGranularity:(0,3),32,16;WinSize:(0,3),48,16;WinASegment:(0,3),64,16;WinBSegment:(0,3),80,16;WinFuncPtr:(0,19),96,32;BytesPerScanLine:(0,3),128,16;XResolution:(0,3),144,16;YResolution:(0,3),160,16;XCharSize:(0,6),176,8;YCharSize:(0,6),184,8;NumberOfPlanes:(0,6),192,8;BitsPerPixel:(0,6),200,8;NumberOfBanks:(0,6),208,8;MemoryModel:(0,6),216,8;BankSize:(0,6),224,8;NumberOfImagePages:(0,6),232,8;Reserved:(0,6),240,8;RedMaskSize:(0,6),248,8;RedFieldPosition:(0,6),256,8;GreenMaskSize:(0,6),264,8;GreenFieldPosition:(0,6),272,8;BlueMaskSize:(0,6),280,8;BlueFieldPosition:(0,6),288,8;RsvdMaskSize:(0,6),296,8;RsvdFieldPosition:(0,6),304,8;DirectColorModeInfo:(0,6),312,8;PhysBasePtr:(0,19),320,32;Reserved1:(0,19),352,32;Reserved2:(0,3),384,16;LinBytesPerScanLine:(0,3),400,16;BnkNumberOfImagePages:(0,6),416,8;LinNumberOfImagePages:(0,6),424,8;LinRedMaskSize:(0,6),432,8;LinRedFieldPosition:(0,6),440,8;LinGreenMaskSize:(0,6),448,8;LinGreenFieldPosition:(0,6),456,8;LinBlueMaskSize:(0,6),464,8;LinBlueFieldPosition:(0,6),472,8;LinRsvdMaskSize:(0,6),480,8;LinRsvdFieldPosition:(0,6),488,8;MaxPixelClock:(0,19),496,32;Reserved3:(0,60)=ar(0,51);0;00000000000000000000274;(0,6),528,1512;;",128,0,0,0
	.stabn	192,0,0,.LFBB5-.LFBB5
	.stabn	224,0,0,.Lscope5-.LFBB5
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"set_deffontpx:F(0,18)",36,0,66,set_deffontpx
	.stabs	"setpx:p(0,18)",160,0,66,0
	.globl	set_deffontpx
	.type	set_deffontpx, @function
set_deffontpx:
	.stabn	68,0,67,.LM70-.LFBB6
.LM70:
.LFBB6:
.LFB34:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L19:
	leaq	.L19(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L19, %r11
	addq	%r11, %rax
	movl	%edi, 4(%rsp)
	.stabn	68,0,68,.LM71-.LFBB6
.LM71:
	movabsq	$kdftgh@GOT, %rdx
	movq	(%rax,%rdx), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,69,.LM72-.LFBB6
.LM72:
	movq	16(%rsp), %rax
	movl	152(%rax), %eax
	movl	%eax, 12(%rsp)
	.stabn	68,0,70,.LM73-.LFBB6
.LM73:
	movq	16(%rsp), %rax
	movl	4(%rsp), %edx
	movl	%edx, 152(%rax)
	.stabn	68,0,71,.LM74-.LFBB6
.LM74:
	movl	12(%rsp), %eax
	.stabn	68,0,72,.LM75-.LFBB6
.LM75:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	set_deffontpx, .-set_deffontpx
	.stabs	"kghp:(0,14)",128,0,68,12
	.stabs	"bkpx:(0,18)",128,0,69,8
	.stabn	192,0,0,.LFBB6-.LFBB6
	.stabn	224,0,0,.Lscope6-.LFBB6
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"set_ncharsxy:F(0,1)",36,0,74,set_ncharsxy
	.stabs	"x:p(0,17)",160,0,74,8
	.stabs	"y:p(0,17)",160,0,74,0
	.globl	set_ncharsxy
	.type	set_ncharsxy, @function
set_ncharsxy:
	.stabn	68,0,75,.LM76-.LFBB7
.LM76:
.LFBB7:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L22:
	leaq	.L22(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L22, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,76,.LM77-.LFBB7
.LM77:
	movabsq	$kdftgh@GOT, %rdx
	movq	(%rax,%rdx), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,77,.LM78-.LFBB7
.LM78:
	movq	24(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, 128(%rax)
	.stabn	68,0,78,.LM79-.LFBB7
.LM79:
	movq	24(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 136(%rax)
	.stabn	68,0,79,.LM80-.LFBB7
.LM80:
	nop
	.stabn	68,0,80,.LM81-.LFBB7
.LM81:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	set_ncharsxy, .-set_ncharsxy
	.stabs	"kghp:(0,14)",128,0,76,24
	.stabn	192,0,0,.LFBB7-.LFBB7
	.stabn	224,0,0,.Lscope7-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"set_charsdxwflush:F(0,1)",36,0,82,set_charsdxwflush
	.stabs	"chardxw:p(0,17)",160,0,82,8
	.stabs	"flush:p(0,17)",160,0,82,0
	.globl	set_charsdxwflush
	.type	set_charsdxwflush, @function
set_charsdxwflush:
	.stabn	68,0,83,.LM82-.LFBB8
.LM82:
.LFBB8:
.LFB36:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L25:
	leaq	.L25(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L25, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,84,.LM83-.LFBB8
.LM83:
	movabsq	$kdftgh@GOT, %rdx
	movq	(%rax,%rdx), %rdx
	movq	8(%rsp), %rcx
	movq	%rcx, 160(%rdx)
	.stabn	68,0,85,.LM84-.LFBB8
.LM84:
	movabsq	$kdftgh@GOT, %rdx
	movq	(%rax,%rdx), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 168(%rax)
	.stabn	68,0,86,.LM85-.LFBB8
.LM85:
	nop
	.stabn	68,0,87,.LM86-.LFBB8
.LM86:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	set_charsdxwflush, .-set_charsdxwflush
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.section	.rodata
	.align 8
.LC1:
	.string	"\347\263\273\347\273\237\345\244\204\347\220\206\345\231\250\345\267\245\344\275\234\346\250\241\345\274\217:%d\344\275\215 \347\263\273\347\273\237\347\211\251\347\220\206\345\206\205\345\255\230\345\244\247\345\260\217:%dMB\n"
	.text
	.stabs	"hal_dspversion:F(0,1)",36,0,89,hal_dspversion
	.globl	hal_dspversion
	.type	hal_dspversion, @function
hal_dspversion:
	.stabn	68,0,90,.LM87-.LFBB9
.LM87:
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
	subq	$24, %rsp
	.cfi_def_cfa_offset 48
.L28:
	leaq	.L28(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L28, %r11
	addq	%r11, %rbx
	.stabn	68,0,91,.LM88-.LFBB9
.LM88:
	movl	$16711680, %edi
	movabsq	$set_deffontpx@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movl	%eax, 12(%rsp)
	.stabn	68,0,92,.LM89-.LFBB9
.LM89:
	movabsq	$cosmos_version@GOTOFF, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,93,.LM90-.LFBB9
.LM90:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	168(%rax), %rax
	.stabn	68,0,93,.LM91-.LFBB9
.LM91:
	shrq	$20, %rax
	movq	%rax, %rdx
	.stabn	68,0,93,.LM92-.LFBB9
.LM92:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	160(%rax), %rax
	.stabn	68,0,93,.LM93-.LFBB9
.LM93:
	movq	%rax, %rsi
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rcx
	addq	%rbx, %rcx
	call	*%rcx
	.stabn	68,0,94,.LM94-.LFBB9
.LM94:
	movl	12(%rsp), %eax
	movl	%eax, %edi
	movabsq	$set_deffontpx@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,95,.LM95-.LFBB9
.LM95:
	nop
	.stabn	68,0,96,.LM96-.LFBB9
.LM96:
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
.LFE37:
	.size	hal_dspversion, .-hal_dspversion
	.stabs	"bkpx:(0,18)",128,0,91,12
	.stabn	192,0,0,.LFBB9-.LFBB9
	.stabn	224,0,0,.Lscope9-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"fill_rect:F(0,1)",36,0,98,fill_rect
	.stabs	"pix:p(0,18)",160,0,98,44
	.stabs	"x:p(0,8)",160,0,98,32
	.stabs	"y:p(0,8)",160,0,98,24
	.stabs	"tx:p(0,8)",160,0,98,16
	.stabs	"ty:p(0,8)",160,0,98,8
	.globl	fill_rect
	.type	fill_rect, @function
fill_rect:
	.stabn	68,0,99,.LM97-.LFBB10
.LM97:
.LFBB10:
.LFB38:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
.L35:
	leaq	.L35(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L35, %r11
	addq	%r11, %rbx
	movl	%edi, 44(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
.LBB3:
	.stabn	68,0,100,.LM98-.LFBB10
.LM98:
	movq	24(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,100,.LM99-.LFBB10
.LM99:
	jmp	.L30
.L33:
.LBB4:
	.stabn	68,0,102,.LM100-.LFBB10
.LM100:
	movq	32(%rsp), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,102,.LM101-.LFBB10
.LM101:
	jmp	.L31
.L32:
	.stabn	68,0,104,.LM102-.LFBB10
.LM102:
	movq	56(%rsp), %rax
	movl	%eax, %edx
	movq	48(%rsp), %rax
	movl	%eax, %esi
	movl	44(%rsp), %eax
	movl	%eax, %ecx
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$write_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,102,.LM103-.LFBB10
.LM103:
	addq	$1, 48(%rsp)
.L31:
	.stabn	68,0,102,.LM104-.LFBB10
.LM104:
	movq	32(%rsp), %rdx
	movq	16(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,102,.LM105-.LFBB10
.LM105:
	cmpq	%rax, 48(%rsp)
	jb	.L32
.LBE4:
	.stabn	68,0,100,.LM106-.LFBB10
.LM106:
	addq	$1, 56(%rsp)
.L30:
	.stabn	68,0,100,.LM107-.LFBB10
.LM107:
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,100,.LM108-.LFBB10
.LM108:
	cmpq	%rax, 56(%rsp)
	jb	.L33
.LBE3:
	.stabn	68,0,107,.LM109-.LFBB10
.LM109:
	nop
	.stabn	68,0,108,.LM110-.LFBB10
.LM110:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	fill_rect, .-fill_rect
	.stabs	"i:(0,8)",128,0,100,56
	.stabn	192,0,0,.LBB3-.LFBB10
	.stabs	"j:(0,8)",128,0,102,48
	.stabn	192,0,0,.LBB4-.LFBB10
	.stabn	224,0,0,.LBE4-.LFBB10
	.stabn	224,0,0,.LBE3-.LFBB10
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.section	.rodata
.LC2:
	.string	"not bitmap file err\n"
	.text
	.stabs	"fill_fullbitmap:F(0,1)",36,0,110,fill_fullbitmap
	.stabs	"s_BMDBGR:T(0,61)=s3bmd_b:(0,6),0,8;bmd_g:(0,6),8,8;bmd_r:(0,6),16,8;;",128,0,0,0
	.stabs	"bmfname:p(0,62)=*(0,63)=(0,13)",160,0,110,8
	.stabs	"char_t:t(0,63)",128,0,24,0
	.globl	fill_fullbitmap
	.type	fill_fullbitmap, @function
fill_fullbitmap:
	.stabn	68,0,111,.LM111-.LFBB11
.LM111:
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
	subq	$104, %rsp
	.cfi_def_cfa_offset 128
.L44:
	leaq	.L44(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L44, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,112,.LM112-.LFBB11
.LM112:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,113,.LM113-.LFBB11
.LM113:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,114,.LM114-.LFBB11
.LM114:
	movq	$0, 32(%rsp)
	.stabn	68,0,114,.LM115-.LFBB11
.LM115:
	movq	$0, 24(%rsp)
	.stabn	68,0,115,.LM116-.LFBB11
.LM116:
	leaq	24(%rsp), %rcx
	leaq	32(%rsp), %rdx
	movq	64(%rsp), %rsi
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$get_file_rvadrandsz@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,116,.LM117-.LFBB11
.LM117:
	movq	32(%rsp), %rax
	.stabn	68,0,116,.LM118-.LFBB11
.LM118:
	testq	%rax, %rax
	je	.L37
	.stabn	68,0,116,.LM119-.LFBB11
.LM119:
	movq	24(%rsp), %rax
	.stabn	68,0,116,.LM120-.LFBB11
.LM120:
	testq	%rax, %rax
	jne	.L38
.L37:
	.stabn	68,0,118,.LM121-.LFBB11
.LM121:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L38:
	.stabn	68,0,121,.LM122-.LFBB11
.LM122:
	movq	32(%rsp), %rax
	.stabn	68,0,121,.LM123-.LFBB11
.LM123:
	addq	$54, %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,122,.LM124-.LFBB11
.LM124:
	movq	56(%rsp), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,124,.LM125-.LFBB11
.LM125:
	movl	$0, 92(%rsp)
	.stabn	68,0,124,.LM126-.LFBB11
.LM126:
	movl	$0, 88(%rsp)
.LBB5:
	.stabn	68,0,125,.LM127-.LFBB11
.LM127:
	movl	$768, 84(%rsp)
	.stabn	68,0,125,.LM128-.LFBB11
.LM128:
	jmp	.L39
.L42:
.LBB6:
	.stabn	68,0,127,.LM129-.LFBB11
.LM129:
	movl	$0, 80(%rsp)
	.stabn	68,0,127,.LM130-.LFBB11
.LM130:
	jmp	.L40
.L41:
	.stabn	68,0,129,.LM131-.LFBB11
.LM131:
	movl	92(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,129,.LM132-.LFBB11
.LM132:
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,129,.LM133-.LFBB11
.LM133:
	sall	$16, %eax
	movl	%eax, %ecx
	.stabn	68,0,129,.LM134-.LFBB11
.LM134:
	movl	92(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,129,.LM135-.LFBB11
.LM135:
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,129,.LM136-.LFBB11
.LM136:
	sall	$8, %eax
	.stabn	68,0,129,.LM137-.LFBB11
.LM137:
	orl	%eax, %ecx
	.stabn	68,0,129,.LM138-.LFBB11
.LM138:
	movl	92(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,129,.LM139-.LFBB11
.LM139:
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,129,.LM140-.LFBB11
.LM140:
	orl	%ecx, %eax
	.stabn	68,0,129,.LM141-.LFBB11
.LM141:
	movl	%eax, 44(%rsp)
	.stabn	68,0,130,.LM142-.LFBB11
.LM142:
	movl	84(%rsp), %edx
	movl	80(%rsp), %esi
	movl	44(%rsp), %ecx
	movq	72(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$write_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,131,.LM143-.LFBB11
.LM143:
	addl	$1, 92(%rsp)
	.stabn	68,0,127,.LM144-.LFBB11
.LM144:
	addl	$1, 80(%rsp)
.L40:
	.stabn	68,0,127,.LM145-.LFBB11
.LM145:
	cmpl	$1023, 80(%rsp)
	jle	.L41
.LBE6:
	.stabn	68,0,125,.LM146-.LFBB11
.LM146:
	subl	$1, 84(%rsp)
	.stabn	68,0,125,.LM147-.LFBB11
.LM147:
	addl	$1, 88(%rsp)
.L39:
	.stabn	68,0,125,.LM148-.LFBB11
.LM148:
	cmpl	$0, 84(%rsp)
	jns	.L42
.LBE5:
	.stabn	68,0,134,.LM149-.LFBB11
.LM149:
	movq	72(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$flush_videoram@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,135,.LM150-.LFBB11
.LM150:
	nop
	.stabn	68,0,136,.LM151-.LFBB11
.LM151:
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
.LFE39:
	.size	fill_fullbitmap, .-fill_fullbitmap
	.stabs	"kghp:(0,14)",128,0,112,72
	.stabs	"kmbsp:(0,43)",128,0,113,64
	.stabs	"fadr:(0,17)",128,0,114,32
	.stabs	"fsz:(0,17)",128,0,114,24
	.stabs	"bmdp:(0,64)=*(0,65)=(0,61)",128,0,120,48
	.stabs	"bmdbgr_t:t(0,65)",128,0,144,0
	.stabs	"img:(0,17)",128,0,121,56
	.stabs	"pix:(0,18)",128,0,123,44
	.stabs	"k:(0,66)=r(0,66);-2147483648;2147483647;",128,0,124,92
	.stabs	"int:t(0,66)",128,0,0,0
	.stabs	"l:(0,66)",128,0,124,88
	.stabn	192,0,0,.LFBB11-.LFBB11
	.stabs	"j:(0,66)",128,0,125,84
	.stabn	192,0,0,.LBB5-.LFBB11
	.stabs	"i:(0,66)",128,0,127,80
	.stabn	192,0,0,.LBB6-.LFBB11
	.stabn	224,0,0,.LBE6-.LFBB11
	.stabn	224,0,0,.LBE5-.LFBB11
	.stabn	224,0,0,.Lscope11-.LFBB11
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabs	"slou_sreen:F(0,1)",36,0,138,slou_sreen
	.stabs	"hy:p(0,8)",160,0,138,8
	.globl	slou_sreen
	.type	slou_sreen, @function
slou_sreen:
	.stabn	68,0,139,.LM152-.LFBB12
.LM152:
.LFBB12:
.LFB40:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
.L47:
	leaq	.L47(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L47, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,141,.LM153-.LFBB12
.LM153:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,142,.LM154-.LFBB12
.LM154:
	leaq	40(%rsp), %rdx
	leaq	48(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$bga_get_xyoffset@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,143,.LM155-.LFBB12
.LM155:
	leaq	24(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$bga_get_vwh@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,144,.LM156-.LFBB12
.LM156:
	movq	40(%rsp), %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,145,.LM157-.LFBB12
.LM157:
	movq	24(%rsp), %rdx
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,146,.LM158-.LFBB12
.LM158:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$bga_set_vwh@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,147,.LM159-.LFBB12
.LM159:
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$bga_set_xyoffset@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,148,.LM160-.LFBB12
.LM160:
	nop
	.stabn	68,0,149,.LM161-.LFBB12
.LM161:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	slou_sreen, .-slou_sreen
	.stabs	"x:(0,8)",128,0,140,48
	.stabs	"y:(0,8)",128,0,140,40
	.stabs	"ofx:(0,8)",128,0,140,32
	.stabs	"ofy:(0,8)",128,0,140,24
	.stabs	"kghp:(0,14)",128,0,141,56
	.stabn	192,0,0,.LFBB12-.LFBB12
	.stabn	224,0,0,.Lscope12-.LFBB12
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.section	.rodata
.LC3:
	.string	"background.bmp"
.LC4:
	.string	"lmosbkgderr"
	.text
	.stabs	"hal_background:F(0,1)",36,0,151,hal_background
	.globl	hal_background
	.type	hal_background, @function
hal_background:
	.stabn	68,0,152,.LM162-.LFBB13
.LM162:
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
.L56:
	leaq	.L56(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L56, %r11
	addq	%r11, %rbx
	.stabn	68,0,153,.LM163-.LFBB13
.LM163:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,154,.LM164-.LFBB13
.LM164:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,155,.LM165-.LFBB13
.LM165:
	movq	$0, 16(%rsp)
	.stabn	68,0,155,.LM166-.LFBB13
.LM166:
	movq	$0, 8(%rsp)
	.stabn	68,0,156,.LM167-.LFBB13
.LM167:
	leaq	8(%rsp), %rcx
	leaq	16(%rsp), %rdx
	movq	48(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$get_file_rvadrandsz@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,157,.LM168-.LFBB13
.LM168:
	movq	16(%rsp), %rax
	.stabn	68,0,157,.LM169-.LFBB13
.LM169:
	testq	%rax, %rax
	je	.L49
	.stabn	68,0,157,.LM170-.LFBB13
.LM170:
	movq	8(%rsp), %rax
	.stabn	68,0,157,.LM171-.LFBB13
.LM171:
	testq	%rax, %rax
	jne	.L50
.L49:
	.stabn	68,0,159,.LM172-.LFBB13
.LM172:
	movabsq	$.LC4@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L50:
	.stabn	68,0,162,.LM173-.LFBB13
.LM173:
	movq	16(%rsp), %rax
	.stabn	68,0,162,.LM174-.LFBB13
.LM174:
	addq	$54, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,163,.LM175-.LFBB13
.LM175:
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,165,.LM176-.LFBB13
.LM176:
	movl	$0, 76(%rsp)
	.stabn	68,0,165,.LM177-.LFBB13
.LM177:
	movl	$0, 72(%rsp)
.LBB7:
	.stabn	68,0,166,.LM178-.LFBB13
.LM178:
	movl	$768, 68(%rsp)
	.stabn	68,0,166,.LM179-.LFBB13
.LM179:
	jmp	.L51
.L54:
.LBB8:
	.stabn	68,0,168,.LM180-.LFBB13
.LM180:
	movl	$0, 64(%rsp)
	.stabn	68,0,168,.LM181-.LFBB13
.LM181:
	jmp	.L52
.L53:
	.stabn	68,0,170,.LM182-.LFBB13
.LM182:
	movl	76(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,170,.LM183-.LFBB13
.LM183:
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,170,.LM184-.LFBB13
.LM184:
	sall	$16, %eax
	movl	%eax, %ecx
	.stabn	68,0,170,.LM185-.LFBB13
.LM185:
	movl	76(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,170,.LM186-.LFBB13
.LM186:
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,170,.LM187-.LFBB13
.LM187:
	sall	$8, %eax
	.stabn	68,0,170,.LM188-.LFBB13
.LM188:
	orl	%eax, %ecx
	.stabn	68,0,170,.LM189-.LFBB13
.LM189:
	movl	76(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,170,.LM190-.LFBB13
.LM190:
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,170,.LM191-.LFBB13
.LM191:
	orl	%ecx, %eax
	.stabn	68,0,170,.LM192-.LFBB13
.LM192:
	movl	%eax, 28(%rsp)
	.stabn	68,0,171,.LM193-.LFBB13
.LM193:
	movl	68(%rsp), %edx
	movl	64(%rsp), %esi
	movl	28(%rsp), %ecx
	movq	56(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$drxw_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,172,.LM194-.LFBB13
.LM194:
	addl	$1, 76(%rsp)
	.stabn	68,0,168,.LM195-.LFBB13
.LM195:
	addl	$1, 64(%rsp)
.L52:
	.stabn	68,0,168,.LM196-.LFBB13
.LM196:
	cmpl	$1023, 64(%rsp)
	jle	.L53
.LBE8:
	.stabn	68,0,166,.LM197-.LFBB13
.LM197:
	subl	$1, 68(%rsp)
	.stabn	68,0,166,.LM198-.LFBB13
.LM198:
	addl	$1, 72(%rsp)
.L51:
	.stabn	68,0,166,.LM199-.LFBB13
.LM199:
	cmpl	$0, 68(%rsp)
	jns	.L54
.LBE7:
	.stabn	68,0,175,.LM200-.LFBB13
.LM200:
	movl	$0, %eax
	movabsq	$hal_dspversion@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,176,.LM201-.LFBB13
.LM201:
	nop
	.stabn	68,0,177,.LM202-.LFBB13
.LM202:
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
.LFE41:
	.size	hal_background, .-hal_background
	.stabs	"kghp:(0,14)",128,0,153,56
	.stabs	"kmbsp:(0,43)",128,0,154,48
	.stabs	"fadr:(0,17)",128,0,155,16
	.stabs	"fsz:(0,17)",128,0,155,8
	.stabs	"bmdp:(0,64)",128,0,161,32
	.stabs	"img:(0,17)",128,0,162,40
	.stabs	"pix:(0,18)",128,0,164,28
	.stabs	"k:(0,66)",128,0,165,76
	.stabs	"l:(0,66)",128,0,165,72
	.stabn	192,0,0,.LFBB13-.LFBB13
	.stabs	"j:(0,66)",128,0,166,68
	.stabn	192,0,0,.LBB7-.LFBB13
	.stabs	"i:(0,66)",128,0,168,64
	.stabn	192,0,0,.LBB8-.LFBB13
	.stabn	224,0,0,.LBE8-.LFBB13
	.stabn	224,0,0,.LBE7-.LFBB13
	.stabn	224,0,0,.Lscope13-.LFBB13
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.section	.rodata
.LC5:
	.string	"logo.bmp"
.LC6:
	.string	"logoerr"
	.text
	.stabs	"hal_logo:F(0,1)",36,0,179,hal_logo
	.globl	hal_logo
	.type	hal_logo, @function
hal_logo:
	.stabn	68,0,180,.LM203-.LFBB14
.LM203:
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
	subq	$88, %rsp
	.cfi_def_cfa_offset 112
.L66:
	leaq	.L66(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L66, %r11
	addq	%r11, %rbx
	.stabn	68,0,181,.LM204-.LFBB14
.LM204:
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,182,.LM205-.LFBB14
.LM205:
	movabsq	$kmachbsp@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,183,.LM206-.LFBB14
.LM206:
	movq	$0, 16(%rsp)
	.stabn	68,0,183,.LM207-.LFBB14
.LM207:
	movq	$0, 8(%rsp)
	.stabn	68,0,184,.LM208-.LFBB14
.LM208:
	leaq	8(%rsp), %rcx
	leaq	16(%rsp), %rdx
	movq	48(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$.LC5@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$get_file_rvadrandsz@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,185,.LM209-.LFBB14
.LM209:
	movq	16(%rsp), %rax
	.stabn	68,0,185,.LM210-.LFBB14
.LM210:
	testq	%rax, %rax
	je	.L58
	.stabn	68,0,185,.LM211-.LFBB14
.LM211:
	movq	8(%rsp), %rax
	.stabn	68,0,185,.LM212-.LFBB14
.LM212:
	testq	%rax, %rax
	jne	.L59
.L58:
	.stabn	68,0,187,.LM213-.LFBB14
.LM213:
	movabsq	$.LC6@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L59:
	.stabn	68,0,190,.LM214-.LFBB14
.LM214:
	movq	16(%rsp), %rax
	.stabn	68,0,190,.LM215-.LFBB14
.LM215:
	addq	$54, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,191,.LM216-.LFBB14
.LM216:
	movq	40(%rsp), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,193,.LM217-.LFBB14
.LM217:
	movl	$0, 76(%rsp)
	.stabn	68,0,193,.LM218-.LFBB14
.LM218:
	movl	$0, 72(%rsp)
.LBB9:
	.stabn	68,0,194,.LM219-.LFBB14
.LM219:
	movl	$617, 68(%rsp)
	.stabn	68,0,194,.LM220-.LFBB14
.LM220:
	jmp	.L60
.L64:
.LBB10:
	.stabn	68,0,196,.LM221-.LFBB14
.LM221:
	movl	$402, 64(%rsp)
	.stabn	68,0,196,.LM222-.LFBB14
.LM222:
	jmp	.L61
.L62:
	.stabn	68,0,198,.LM223-.LFBB14
.LM223:
	movl	76(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,198,.LM224-.LFBB14
.LM224:
	movzbl	2(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,198,.LM225-.LFBB14
.LM225:
	sall	$16, %eax
	movl	%eax, %ecx
	.stabn	68,0,198,.LM226-.LFBB14
.LM226:
	movl	76(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,198,.LM227-.LFBB14
.LM227:
	movzbl	1(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,198,.LM228-.LFBB14
.LM228:
	sall	$8, %eax
	.stabn	68,0,198,.LM229-.LFBB14
.LM229:
	orl	%eax, %ecx
	.stabn	68,0,198,.LM230-.LFBB14
.LM230:
	movl	76(%rsp), %eax
	movslq	%eax, %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rax, %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,198,.LM231-.LFBB14
.LM231:
	movzbl	(%rax), %eax
	movzbl	%al, %eax
	.stabn	68,0,198,.LM232-.LFBB14
.LM232:
	orl	%ecx, %eax
	.stabn	68,0,198,.LM233-.LFBB14
.LM233:
	movl	%eax, 28(%rsp)
	.stabn	68,0,199,.LM234-.LFBB14
.LM234:
	movl	68(%rsp), %edx
	movl	64(%rsp), %esi
	movl	28(%rsp), %ecx
	movq	56(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$drxw_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,200,.LM235-.LFBB14
.LM235:
	addl	$1, 76(%rsp)
	.stabn	68,0,196,.LM236-.LFBB14
.LM236:
	addl	$1, 64(%rsp)
.L61:
	.stabn	68,0,196,.LM237-.LFBB14
.LM237:
	cmpl	$621, 64(%rsp)
	jle	.L62
.LBE10:
	.stabn	68,0,202,.LM238-.LFBB14
.LM238:
	cmpl	$205, 72(%rsp)
	jle	.L63
	.stabn	68,0,204,.LM239-.LFBB14
.LM239:
	movl	$128, %edi
	movq	%rbx, %r15
	movabsq	$die@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L63:
	.stabn	68,0,194,.LM240-.LFBB14
.LM240:
	subl	$1, 68(%rsp)
	.stabn	68,0,194,.LM241-.LFBB14
.LM241:
	addl	$1, 72(%rsp)
.L60:
	.stabn	68,0,194,.LM242-.LFBB14
.LM242:
	cmpl	$152, 68(%rsp)
	jg	.L64
.LBE9:
	.stabn	68,0,207,.LM243-.LFBB14
.LM243:
	nop
	.stabn	68,0,208,.LM244-.LFBB14
.LM244:
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
.LFE42:
	.size	hal_logo, .-hal_logo
	.stabs	"kghp:(0,14)",128,0,181,56
	.stabs	"kmbsp:(0,43)",128,0,182,48
	.stabs	"fadr:(0,17)",128,0,183,16
	.stabs	"fsz:(0,17)",128,0,183,8
	.stabs	"bmdp:(0,64)",128,0,189,32
	.stabs	"img:(0,17)",128,0,190,40
	.stabs	"pix:(0,18)",128,0,192,28
	.stabs	"k:(0,66)",128,0,193,76
	.stabs	"l:(0,66)",128,0,193,72
	.stabn	192,0,0,.LFBB14-.LFBB14
	.stabs	"j:(0,66)",128,0,194,68
	.stabn	192,0,0,.LBB9-.LFBB14
	.stabs	"i:(0,66)",128,0,196,64
	.stabn	192,0,0,.LBB10-.LFBB14
	.stabn	224,0,0,.LBE10-.LFBB14
	.stabn	224,0,0,.LBE9-.LFBB14
	.stabn	224,0,0,.Lscope14-.LFBB14
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabs	"init_bga:F(0,1)",36,0,210,init_bga
	.globl	init_bga
	.type	init_bga, @function
init_bga:
	.stabn	68,0,211,.LM245-.LFBB15
.LM245:
.LFBB15:
.LFB43:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L71:
	leaq	.L71(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L71, %r11
	addq	%r11, %rax
	.stabn	68,0,212,.LM246-.LFBB15
.LM246:
	movabsq	$kdftgh@GOT, %rdx
	movq	(%rax,%rdx), %rdx
	movq	%rdx, 8(%rsp)
	.stabn	68,0,213,.LM247-.LFBB15
.LM247:
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	.stabn	68,0,213,.LM248-.LFBB15
.LM248:
	cmpq	$3, %rdx
	jne	.L70
	.stabn	68,0,218,.LM249-.LFBB15
.LM249:
	movq	8(%rsp), %rdx
	movabsq	$bga_read@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 192(%rdx)
	.stabn	68,0,219,.LM250-.LFBB15
.LM250:
	movq	8(%rsp), %rdx
	movabsq	$bga_write@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 200(%rdx)
	.stabn	68,0,220,.LM251-.LFBB15
.LM251:
	movq	8(%rsp), %rdx
	movabsq	$bga_ioctrl@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 208(%rdx)
	.stabn	68,0,221,.LM252-.LFBB15
.LM252:
	movq	8(%rsp), %rdx
	movabsq	$bga_flush@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 216(%rdx)
	.stabn	68,0,222,.LM253-.LFBB15
.LM253:
	movq	8(%rsp), %rdx
	movabsq	$bga_set_bank@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 224(%rdx)
	.stabn	68,0,223,.LM254-.LFBB15
.LM254:
	movq	8(%rsp), %rdx
	movabsq	$bga_readpix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 232(%rdx)
	.stabn	68,0,224,.LM255-.LFBB15
.LM255:
	movq	8(%rsp), %rdx
	movabsq	$bga_writepix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 240(%rdx)
	.stabn	68,0,225,.LM256-.LFBB15
.LM256:
	movq	8(%rsp), %rdx
	movabsq	$bga_dxreadpix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 248(%rdx)
	.stabn	68,0,226,.LM257-.LFBB15
.LM257:
	movq	8(%rsp), %rdx
	movabsq	$bga_dxwritepix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 256(%rdx)
	.stabn	68,0,227,.LM258-.LFBB15
.LM258:
	movq	8(%rsp), %rdx
	movabsq	$bga_set_xy@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 264(%rdx)
	.stabn	68,0,228,.LM259-.LFBB15
.LM259:
	movq	8(%rsp), %rdx
	movabsq	$bga_set_vwh@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 272(%rdx)
	.stabn	68,0,229,.LM260-.LFBB15
.LM260:
	movq	8(%rsp), %rdx
	movabsq	$bga_set_xyoffset@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 280(%rdx)
	.stabn	68,0,230,.LM261-.LFBB15
.LM261:
	movq	8(%rsp), %rdx
	movabsq	$bga_get_xy@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 288(%rdx)
	.stabn	68,0,231,.LM262-.LFBB15
.LM262:
	movq	8(%rsp), %rdx
	movabsq	$bga_get_vwh@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 296(%rdx)
	.stabn	68,0,232,.LM263-.LFBB15
.LM263:
	movq	8(%rsp), %rdx
	movabsq	$bga_get_xyoffset@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	movq	%rax, 304(%rdx)
	.stabn	68,0,233,.LM264-.LFBB15
.LM264:
	jmp	.L67
.L70:
	.stabn	68,0,215,.LM265-.LFBB15
.LM265:
	nop
.L67:
	.stabn	68,0,234,.LM266-.LFBB15
.LM266:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	init_bga, .-init_bga
	.stabs	"kghp:(0,14)",128,0,212,8
	.stabn	192,0,0,.LFBB15-.LFBB15
	.stabn	224,0,0,.Lscope15-.LFBB15
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.stabs	"init_vbe:F(0,1)",36,0,236,init_vbe
	.globl	init_vbe
	.type	init_vbe, @function
init_vbe:
	.stabn	68,0,237,.LM267-.LFBB16
.LM267:
.LFBB16:
.LFB44:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L76:
	leaq	.L76(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L76, %r11
	addq	%r11, %rax
	.stabn	68,0,238,.LM268-.LFBB16
.LM268:
	movabsq	$kdftgh@GOT, %rdx
	movq	(%rax,%rdx), %rdx
	movq	%rdx, 8(%rsp)
	.stabn	68,0,239,.LM269-.LFBB16
.LM269:
	movq	8(%rsp), %rdx
	movq	(%rdx), %rdx
	.stabn	68,0,239,.LM270-.LFBB16
.LM270:
	cmpq	$1, %rdx
	jne	.L75
	.stabn	68,0,244,.LM271-.LFBB16
.LM271:
	movq	8(%rsp), %rdx
	movabsq	$vbe_read@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 192(%rdx)
	.stabn	68,0,245,.LM272-.LFBB16
.LM272:
	movq	8(%rsp), %rdx
	movabsq	$vbe_write@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 200(%rdx)
	.stabn	68,0,246,.LM273-.LFBB16
.LM273:
	movq	8(%rsp), %rdx
	movabsq	$vbe_ioctrl@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 208(%rdx)
	.stabn	68,0,247,.LM274-.LFBB16
.LM274:
	movq	8(%rsp), %rdx
	movabsq	$vbe_flush@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 216(%rdx)
	.stabn	68,0,248,.LM275-.LFBB16
.LM275:
	movq	8(%rsp), %rdx
	movabsq	$vbe_set_bank@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 224(%rdx)
	.stabn	68,0,249,.LM276-.LFBB16
.LM276:
	movq	8(%rsp), %rdx
	movabsq	$vbe_readpix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 232(%rdx)
	.stabn	68,0,250,.LM277-.LFBB16
.LM277:
	movq	8(%rsp), %rdx
	movabsq	$vbe_writepix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 240(%rdx)
	.stabn	68,0,251,.LM278-.LFBB16
.LM278:
	movq	8(%rsp), %rdx
	movabsq	$vbe_dxreadpix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 248(%rdx)
	.stabn	68,0,252,.LM279-.LFBB16
.LM279:
	movq	8(%rsp), %rdx
	movabsq	$vbe_dxwritepix@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 256(%rdx)
	.stabn	68,0,253,.LM280-.LFBB16
.LM280:
	movq	8(%rsp), %rdx
	movabsq	$vbe_set_xy@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 264(%rdx)
	.stabn	68,0,254,.LM281-.LFBB16
.LM281:
	movq	8(%rsp), %rdx
	movabsq	$vbe_set_vwh@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 272(%rdx)
	.stabn	68,0,255,.LM282-.LFBB16
.LM282:
	movq	8(%rsp), %rdx
	movabsq	$vbe_set_xyoffset@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 280(%rdx)
	.stabn	68,0,256,.LM283-.LFBB16
.LM283:
	movq	8(%rsp), %rdx
	movabsq	$vbe_get_xy@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 288(%rdx)
	.stabn	68,0,257,.LM284-.LFBB16
.LM284:
	movq	8(%rsp), %rdx
	movabsq	$vbe_get_vwh@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rcx
	movq	%rcx, 296(%rdx)
	.stabn	68,0,258,.LM285-.LFBB16
.LM285:
	movq	8(%rsp), %rdx
	movabsq	$vbe_get_xyoffset@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	movq	%rax, 304(%rdx)
	.stabn	68,0,259,.LM286-.LFBB16
.LM286:
	jmp	.L72
.L75:
	.stabn	68,0,241,.LM287-.LFBB16
.LM287:
	nop
.L72:
	.stabn	68,0,260,.LM288-.LFBB16
.LM288:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	init_vbe, .-init_vbe
	.stabs	"kghp:(0,14)",128,0,238,8
	.stabn	192,0,0,.LFBB16-.LFBB16
	.stabn	224,0,0,.Lscope16-.LFBB16
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabs	"fill_graph:F(0,1)",36,0,262,fill_graph
	.stabs	"kghp:p(0,14)",160,0,262,8
	.stabs	"pix:p(0,18)",160,0,262,4
	.globl	fill_graph
	.type	fill_graph, @function
fill_graph:
	.stabn	68,0,263,.LM289-.LFBB17
.LM289:
.LFBB17:
.LFB45:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L83:
	leaq	.L83(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L83, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
.LBB11:
	.stabn	68,0,264,.LM290-.LFBB17
.LM290:
	movq	$0, 24(%rsp)
	.stabn	68,0,264,.LM291-.LFBB17
.LM291:
	jmp	.L78
.L81:
.LBB12:
	.stabn	68,0,266,.LM292-.LFBB17
.LM292:
	movq	$0, 16(%rsp)
	.stabn	68,0,266,.LM293-.LFBB17
.LM293:
	jmp	.L79
.L80:
	.stabn	68,0,268,.LM294-.LFBB17
.LM294:
	movq	24(%rsp), %rax
	movl	%eax, %edi
	movq	16(%rsp), %rax
	movl	%eax, %esi
	movl	4(%rsp), %edx
	movq	8(%rsp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	movabsq	$write_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,266,.LM295-.LFBB17
.LM295:
	addq	$1, 16(%rsp)
.L79:
	.stabn	68,0,266,.LM296-.LFBB17
.LM296:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,266,.LM297-.LFBB17
.LM297:
	cmpq	%rax, 16(%rsp)
	jb	.L80
.LBE12:
	.stabn	68,0,264,.LM298-.LFBB17
.LM298:
	addq	$1, 24(%rsp)
.L78:
	.stabn	68,0,264,.LM299-.LFBB17
.LM299:
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,264,.LM300-.LFBB17
.LM300:
	cmpq	%rax, 24(%rsp)
	jb	.L81
.LBE11:
	.stabn	68,0,271,.LM301-.LFBB17
.LM301:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$flush_videoram@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,272,.LM302-.LFBB17
.LM302:
	nop
	.stabn	68,0,273,.LM303-.LFBB17
.LM303:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	fill_graph, .-fill_graph
	.stabs	"y:(0,17)",128,0,264,24
	.stabn	192,0,0,.LBB11-.LFBB17
	.stabs	"x:(0,17)",128,0,266,16
	.stabn	192,0,0,.LBB12-.LFBB17
	.stabn	224,0,0,.LBE12-.LFBB17
	.stabn	224,0,0,.LBE11-.LFBB17
.Lscope17:
	.stabs	"",36,0,0,.Lscope17-.LFBB17
	.stabs	"write_pixcolor:F(0,1)",36,0,275,write_pixcolor
	.stabs	"kghp:p(0,14)",160,0,275,24
	.stabs	"x:p(0,19)",160,0,275,20
	.stabs	"y:p(0,19)",160,0,275,16
	.stabs	"pix:p(0,18)",160,0,275,12
	.globl	write_pixcolor
	.type	write_pixcolor, @function
write_pixcolor:
	.stabn	68,0,276,.LM304-.LFBB18
.LM304:
.LFBB18:
.LFB46:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L86:
	leaq	.L86(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L86, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 12(%rsp)
	.stabn	68,0,277,.LM305-.LFBB18
.LM305:
	movq	24(%rsp), %rax
	movq	240(%rax), %r8
	.stabn	68,0,277,.LM306-.LFBB18
.LM306:
	movl	16(%rsp), %ecx
	movl	20(%rsp), %edx
	movl	12(%rsp), %esi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	call	*%r8
	.stabn	68,0,278,.LM307-.LFBB18
.LM307:
	nop
	.stabn	68,0,279,.LM308-.LFBB18
.LM308:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	write_pixcolor, .-write_pixcolor
.Lscope18:
	.stabs	"",36,0,0,.Lscope18-.LFBB18
	.stabs	"drxw_pixcolor:F(0,1)",36,0,281,drxw_pixcolor
	.stabs	"kghp:p(0,14)",160,0,281,24
	.stabs	"x:p(0,19)",160,0,281,20
	.stabs	"y:p(0,19)",160,0,281,16
	.stabs	"pix:p(0,18)",160,0,281,12
	.globl	drxw_pixcolor
	.type	drxw_pixcolor, @function
drxw_pixcolor:
	.stabn	68,0,282,.LM309-.LFBB19
.LM309:
.LFBB19:
.LFB47:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L89:
	leaq	.L89(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L89, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movl	%edx, 16(%rsp)
	movl	%ecx, 12(%rsp)
	.stabn	68,0,284,.LM310-.LFBB19
.LM310:
	movq	24(%rsp), %rax
	movq	256(%rax), %r8
	.stabn	68,0,284,.LM311-.LFBB19
.LM311:
	movl	16(%rsp), %ecx
	movl	20(%rsp), %edx
	movl	12(%rsp), %esi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	call	*%r8
	.stabn	68,0,285,.LM312-.LFBB19
.LM312:
	nop
	.stabn	68,0,286,.LM313-.LFBB19
.LM313:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	drxw_pixcolor, .-drxw_pixcolor
.Lscope19:
	.stabs	"",36,0,0,.Lscope19-.LFBB19
	.stabs	"flush_videoram:F(0,1)",36,0,288,flush_videoram
	.stabs	"kghp:p(0,14)",160,0,288,8
	.globl	flush_videoram
	.type	flush_videoram, @function
flush_videoram:
	.stabn	68,0,289,.LM314-.LFBB20
.LM314:
.LFBB20:
.LFB48:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L92:
	leaq	.L92(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L92, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,290,.LM315-.LFBB20
.LM315:
	movq	8(%rsp), %rax
	movq	216(%rax), %rdx
	.stabn	68,0,290,.LM316-.LFBB20
.LM316:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	call	*%rdx
	.stabn	68,0,291,.LM317-.LFBB20
.LM317:
	nop
	.stabn	68,0,292,.LM318-.LFBB20
.LM318:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE48:
	.size	flush_videoram, .-flush_videoram
.Lscope20:
	.stabs	"",36,0,0,.Lscope20-.LFBB20
	.stabs	"utf8_to_unicode:F(0,19)",36,0,294,utf8_to_unicode
	.stabs	"utfp:p(0,67)=*(0,68)=(0,69)=xss_UTF8:",160,0,294,8
	.stabs	"retuib:p(0,70)=*(0,66)",160,0,294,0
	.stabs	"s_UTF8:T(0,69)=s6utf_b1:(0,6),0,8;utf_b2:(0,6),8,8;utf_b3:(0,6),16,8;utf_b4:(0,6),24,8;utf_b5:(0,6),32,8;utf_b6:(0,6),40,8;;",128,0,0,0
	.globl	utf8_to_unicode
	.type	utf8_to_unicode, @function
utf8_to_unicode:
	.stabn	68,0,295,.LM319-.LFBB21
.LM319:
.LFBB21:
.LFB49:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L101:
	leaq	.L101(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L101, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,296,.LM320-.LFBB21
.LM320:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	movb	%al, 31(%rsp)
	.stabn	68,0,296,.LM321-.LFBB21
.LM321:
	movb	$0, 30(%rsp)
	.stabn	68,0,297,.LM322-.LFBB21
.LM322:
	movl	$0, 24(%rsp)
	.stabn	68,0,297,.LM323-.LFBB21
.LM323:
	movl	$0, 20(%rsp)
	.stabn	68,0,298,.LM324-.LFBB21
.LM324:
	movzbl	31(%rsp), %eax
	.stabn	68,0,298,.LM325-.LFBB21
.LM325:
	testb	%al, %al
	js	.L94
	.stabn	68,0,300,.LM326-.LFBB21
.LM326:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,300,.LM327-.LFBB21
.LM327:
	movzbl	%al, %eax
	.stabn	68,0,300,.LM328-.LFBB21
.LM328:
	andl	$127, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,301,.LM329-.LFBB21
.LM329:
	movq	(%rsp), %rax
	movl	$1, (%rax)
	.stabn	68,0,302,.LM330-.LFBB21
.LM330:
	movl	24(%rsp), %eax
	jmp	.L95
.L94:
	.stabn	68,0,304,.LM331-.LFBB21
.LM331:
	cmpb	$-65, 31(%rsp)
	jbe	.L96
	.stabn	68,0,304,.LM332-.LFBB21
.LM332:
	cmpb	$-33, 31(%rsp)
	ja	.L96
	.stabn	68,0,306,.LM333-.LFBB21
.LM333:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,306,.LM334-.LFBB21
.LM334:
	andl	$31, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,307,.LM335-.LFBB21
.LM335:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,308,.LM336-.LFBB21
.LM336:
	movq	8(%rsp), %rax
	movzbl	1(%rax), %eax
	.stabn	68,0,308,.LM337-.LFBB21
.LM337:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,309,.LM338-.LFBB21
.LM338:
	movl	20(%rsp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	.stabn	68,0,309,.LM339-.LFBB21
.LM339:
	movzbl	30(%rsp), %eax
	.stabn	68,0,309,.LM340-.LFBB21
.LM340:
	orl	%edx, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,310,.LM341-.LFBB21
.LM341:
	movq	(%rsp), %rax
	movl	$2, (%rax)
	.stabn	68,0,311,.LM342-.LFBB21
.LM342:
	movl	24(%rsp), %eax
	jmp	.L95
.L96:
	.stabn	68,0,313,.LM343-.LFBB21
.LM343:
	cmpb	$-33, 31(%rsp)
	jbe	.L97
	.stabn	68,0,313,.LM344-.LFBB21
.LM344:
	cmpb	$-17, 31(%rsp)
	ja	.L97
	.stabn	68,0,315,.LM345-.LFBB21
.LM345:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,315,.LM346-.LFBB21
.LM346:
	andl	$15, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,316,.LM347-.LFBB21
.LM347:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,317,.LM348-.LFBB21
.LM348:
	movq	8(%rsp), %rax
	movzbl	1(%rax), %eax
	.stabn	68,0,317,.LM349-.LFBB21
.LM349:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,318,.LM350-.LFBB21
.LM350:
	sall	$6, 20(%rsp)
	.stabn	68,0,319,.LM351-.LFBB21
.LM351:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,320,.LM352-.LFBB21
.LM352:
	movq	8(%rsp), %rax
	movzbl	2(%rax), %eax
	.stabn	68,0,320,.LM353-.LFBB21
.LM353:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,321,.LM354-.LFBB21
.LM354:
	movl	20(%rsp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	.stabn	68,0,321,.LM355-.LFBB21
.LM355:
	movzbl	30(%rsp), %eax
	.stabn	68,0,321,.LM356-.LFBB21
.LM356:
	orl	%edx, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,322,.LM357-.LFBB21
.LM357:
	movq	(%rsp), %rax
	movl	$3, (%rax)
	.stabn	68,0,323,.LM358-.LFBB21
.LM358:
	movl	24(%rsp), %eax
	jmp	.L95
.L97:
	.stabn	68,0,325,.LM359-.LFBB21
.LM359:
	cmpb	$-17, 31(%rsp)
	jbe	.L98
	.stabn	68,0,325,.LM360-.LFBB21
.LM360:
	cmpb	$-9, 31(%rsp)
	ja	.L98
	.stabn	68,0,327,.LM361-.LFBB21
.LM361:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,327,.LM362-.LFBB21
.LM362:
	andl	$7, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,328,.LM363-.LFBB21
.LM363:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,329,.LM364-.LFBB21
.LM364:
	movq	8(%rsp), %rax
	movzbl	1(%rax), %eax
	.stabn	68,0,329,.LM365-.LFBB21
.LM365:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,330,.LM366-.LFBB21
.LM366:
	sall	$6, 20(%rsp)
	.stabn	68,0,331,.LM367-.LFBB21
.LM367:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,332,.LM368-.LFBB21
.LM368:
	movq	8(%rsp), %rax
	movzbl	2(%rax), %eax
	.stabn	68,0,332,.LM369-.LFBB21
.LM369:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,333,.LM370-.LFBB21
.LM370:
	sall	$6, 20(%rsp)
	.stabn	68,0,334,.LM371-.LFBB21
.LM371:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,335,.LM372-.LFBB21
.LM372:
	movq	8(%rsp), %rax
	movzbl	3(%rax), %eax
	.stabn	68,0,335,.LM373-.LFBB21
.LM373:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,336,.LM374-.LFBB21
.LM374:
	movl	20(%rsp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	.stabn	68,0,336,.LM375-.LFBB21
.LM375:
	movzbl	30(%rsp), %eax
	.stabn	68,0,336,.LM376-.LFBB21
.LM376:
	orl	%edx, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,337,.LM377-.LFBB21
.LM377:
	movq	(%rsp), %rax
	movl	$4, (%rax)
	.stabn	68,0,338,.LM378-.LFBB21
.LM378:
	movl	24(%rsp), %eax
	jmp	.L95
.L98:
	.stabn	68,0,340,.LM379-.LFBB21
.LM379:
	cmpb	$-9, 31(%rsp)
	jbe	.L99
	.stabn	68,0,340,.LM380-.LFBB21
.LM380:
	cmpb	$-5, 31(%rsp)
	ja	.L99
	.stabn	68,0,342,.LM381-.LFBB21
.LM381:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,342,.LM382-.LFBB21
.LM382:
	andl	$3, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,343,.LM383-.LFBB21
.LM383:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,344,.LM384-.LFBB21
.LM384:
	movq	8(%rsp), %rax
	movzbl	1(%rax), %eax
	.stabn	68,0,344,.LM385-.LFBB21
.LM385:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,345,.LM386-.LFBB21
.LM386:
	sall	$6, 20(%rsp)
	.stabn	68,0,346,.LM387-.LFBB21
.LM387:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,347,.LM388-.LFBB21
.LM388:
	movq	8(%rsp), %rax
	movzbl	2(%rax), %eax
	.stabn	68,0,347,.LM389-.LFBB21
.LM389:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,348,.LM390-.LFBB21
.LM390:
	sall	$6, 20(%rsp)
	.stabn	68,0,349,.LM391-.LFBB21
.LM391:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,350,.LM392-.LFBB21
.LM392:
	movq	8(%rsp), %rax
	movzbl	3(%rax), %eax
	.stabn	68,0,350,.LM393-.LFBB21
.LM393:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,351,.LM394-.LFBB21
.LM394:
	sall	$6, 20(%rsp)
	.stabn	68,0,352,.LM395-.LFBB21
.LM395:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,353,.LM396-.LFBB21
.LM396:
	movq	8(%rsp), %rax
	movzbl	4(%rax), %eax
	.stabn	68,0,353,.LM397-.LFBB21
.LM397:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,354,.LM398-.LFBB21
.LM398:
	movl	20(%rsp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	.stabn	68,0,354,.LM399-.LFBB21
.LM399:
	movzbl	30(%rsp), %eax
	.stabn	68,0,354,.LM400-.LFBB21
.LM400:
	orl	%edx, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,355,.LM401-.LFBB21
.LM401:
	movq	(%rsp), %rax
	movl	$5, (%rax)
	.stabn	68,0,356,.LM402-.LFBB21
.LM402:
	movl	24(%rsp), %eax
	jmp	.L95
.L99:
	.stabn	68,0,358,.LM403-.LFBB21
.LM403:
	cmpb	$-5, 31(%rsp)
	jbe	.L100
	.stabn	68,0,358,.LM404-.LFBB21
.LM404:
	cmpb	$-3, 31(%rsp)
	ja	.L100
	.stabn	68,0,360,.LM405-.LFBB21
.LM405:
	movq	8(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,360,.LM406-.LFBB21
.LM406:
	andl	$1, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,361,.LM407-.LFBB21
.LM407:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,362,.LM408-.LFBB21
.LM408:
	movq	8(%rsp), %rax
	movzbl	1(%rax), %eax
	.stabn	68,0,362,.LM409-.LFBB21
.LM409:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,363,.LM410-.LFBB21
.LM410:
	sall	$6, 20(%rsp)
	.stabn	68,0,364,.LM411-.LFBB21
.LM411:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,365,.LM412-.LFBB21
.LM412:
	movq	8(%rsp), %rax
	movzbl	2(%rax), %eax
	.stabn	68,0,365,.LM413-.LFBB21
.LM413:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,366,.LM414-.LFBB21
.LM414:
	sall	$6, 20(%rsp)
	.stabn	68,0,367,.LM415-.LFBB21
.LM415:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,368,.LM416-.LFBB21
.LM416:
	movq	8(%rsp), %rax
	movzbl	3(%rax), %eax
	.stabn	68,0,368,.LM417-.LFBB21
.LM417:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,369,.LM418-.LFBB21
.LM418:
	sall	$6, 20(%rsp)
	.stabn	68,0,370,.LM419-.LFBB21
.LM419:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,371,.LM420-.LFBB21
.LM420:
	movq	8(%rsp), %rax
	movzbl	4(%rax), %eax
	.stabn	68,0,371,.LM421-.LFBB21
.LM421:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,372,.LM422-.LFBB21
.LM422:
	sall	$6, 20(%rsp)
	.stabn	68,0,373,.LM423-.LFBB21
.LM423:
	movzbl	30(%rsp), %eax
	orl	%eax, 20(%rsp)
	.stabn	68,0,374,.LM424-.LFBB21
.LM424:
	movq	8(%rsp), %rax
	movzbl	5(%rax), %eax
	.stabn	68,0,374,.LM425-.LFBB21
.LM425:
	andl	$63, %eax
	movb	%al, 30(%rsp)
	.stabn	68,0,375,.LM426-.LFBB21
.LM426:
	movl	20(%rsp), %eax
	sall	$6, %eax
	movl	%eax, %edx
	.stabn	68,0,375,.LM427-.LFBB21
.LM427:
	movzbl	30(%rsp), %eax
	.stabn	68,0,375,.LM428-.LFBB21
.LM428:
	orl	%edx, %eax
	movl	%eax, 24(%rsp)
	.stabn	68,0,376,.LM429-.LFBB21
.LM429:
	movq	(%rsp), %rax
	movl	$6, (%rax)
	.stabn	68,0,377,.LM430-.LFBB21
.LM430:
	movl	24(%rsp), %eax
	jmp	.L95
.L100:
	.stabn	68,0,379,.LM431-.LFBB21
.LM431:
	movq	(%rsp), %rax
	movl	$0, (%rax)
	.stabn	68,0,380,.LM432-.LFBB21
.LM432:
	movl	$0, %eax
.L95:
	.stabn	68,0,381,.LM433-.LFBB21
.LM433:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	utf8_to_unicode, .-utf8_to_unicode
	.stabs	"uhd:(0,6)",128,0,296,31
	.stabs	"ubyt:(0,6)",128,0,296,30
	.stabs	"ucode:(0,19)",128,0,297,24
	.stabs	"tmpuc:(0,19)",128,0,297,20
	.stabn	192,0,0,.LFBB21-.LFBB21
	.stabn	224,0,0,.Lscope21-.LFBB21
.Lscope21:
	.stabs	"",36,0,0,.Lscope21-.LFBB21
	.stabs	"ret_charsinfo:F(0,10)",36,0,383,ret_charsinfo
	.stabs	"s_FNTDATA:T(0,71)=s35fntwxbyte:(0,6),0,8;fnthx:(0,6),8,8;fntwx:(0,6),16,8;fntchmap:(0,72)=ar(0,51);0;00000000000000000000037;(0,6),24,256;;",128,0,0,0
	.stabs	"kghp:p(0,14)",160,0,383,32
	.stabs	"unicode:p(0,19)",160,0,383,28
	.stabs	"retchwx:p(0,70)",160,0,383,16
	.stabs	"retchhx:p(0,70)",160,0,383,8
	.stabs	"retlinb:p(0,70)",160,0,383,0
	.globl	ret_charsinfo
	.type	ret_charsinfo, @function
ret_charsinfo:
	.stabn	68,0,384,.LM434-.LFBB22
.LM434:
.LFBB22:
.LFB50:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
.L104:
	leaq	.L104(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L104, %r11
	addq	%r11, %rax
	movq	%rdi, 32(%rsp)
	movl	%esi, 28(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,385,.LM435-.LFBB22
.LM435:
	movq	32(%rsp), %rax
	movq	104(%rax), %rax
	.stabn	68,0,385,.LM436-.LFBB22
.LM436:
	movq	%rax, 48(%rsp)
	.stabn	68,0,386,.LM437-.LFBB22
.LM437:
	movl	28(%rsp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rax
	addq	%rcx, %rax
	.stabn	68,0,386,.LM438-.LFBB22
.LM438:
	movzbl	2(%rax), %eax
	movzbl	%al, %edx
	.stabn	68,0,386,.LM439-.LFBB22
.LM439:
	movq	16(%rsp), %rax
	movl	%edx, (%rax)
	.stabn	68,0,387,.LM440-.LFBB22
.LM440:
	movl	28(%rsp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rax
	addq	%rcx, %rax
	.stabn	68,0,387,.LM441-.LFBB22
.LM441:
	movzbl	1(%rax), %eax
	movzbl	%al, %edx
	.stabn	68,0,387,.LM442-.LFBB22
.LM442:
	movq	8(%rsp), %rax
	movl	%edx, (%rax)
	.stabn	68,0,388,.LM443-.LFBB22
.LM443:
	movl	28(%rsp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rax
	addq	%rcx, %rax
	.stabn	68,0,388,.LM444-.LFBB22
.LM444:
	movzbl	(%rax), %eax
	movzbl	%al, %edx
	.stabn	68,0,388,.LM445-.LFBB22
.LM445:
	movq	(%rsp), %rax
	movl	%edx, (%rax)
	.stabn	68,0,390,.LM446-.LFBB22
.LM446:
	movl	28(%rsp), %edx
	movq	%rdx, %rax
	salq	$3, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	subq	%rdx, %rax
	movq	%rax, %rcx
	movq	48(%rsp), %rax
	addq	%rcx, %rax
	.stabn	68,0,390,.LM447-.LFBB22
.LM447:
	addq	$3, %rax
	.stabn	68,0,391,.LM448-.LFBB22
.LM448:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	ret_charsinfo, .-ret_charsinfo
	.stabs	"fntp:(0,73)=*(0,74)=(0,71)",128,0,385,48
	.stabs	"fntdata_t:t(0,74)",128,0,186,0
	.stabn	192,0,0,.LFBB22-.LFBB22
	.stabn	224,0,0,.Lscope22-.LFBB22
.Lscope22:
	.stabs	"",36,0,0,.Lscope22-.LFBB22
	.stabs	"put_pixonechar:F(0,1)",36,0,393,put_pixonechar
	.stabs	"kghp:p(0,14)",160,0,393,8
	.stabs	"unicode:p(0,19)",160,0,393,4
	.stabs	"pix:p(0,18)",160,0,393,0
	.globl	put_pixonechar
	.type	put_pixonechar, @function
put_pixonechar:
	.stabn	68,0,394,.LM449-.LFBB23
.LM449:
.LFBB23:
.LFB51:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L125:
	leaq	.L125(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L125, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	movl	%edx, (%rsp)
	.stabn	68,0,395,.LM450-.LFBB23
.LM450:
	movl	$0, 76(%rsp)
	.stabn	68,0,395,.LM451-.LFBB23
.LM451:
	movl	$0, 32(%rsp)
	.stabn	68,0,395,.LM452-.LFBB23
.LM452:
	movl	$0, 28(%rsp)
	.stabn	68,0,395,.LM453-.LFBB23
.LM453:
	movl	$0, 24(%rsp)
	.stabn	68,0,396,.LM454-.LFBB23
.LM454:
	movq	$0, 48(%rsp)
	.stabn	68,0,398,.LM455-.LFBB23
.LM455:
	cmpl	$10, 4(%rsp)
	jne	.L106
	.stabn	68,0,400,.LM456-.LFBB23
.LM456:
	movq	8(%rsp), %rax
	movq	$0, 128(%rax)
	.stabn	68,0,401,.LM457-.LFBB23
.LM457:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,401,.LM458-.LFBB23
.LM458:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,401,.LM459-.LFBB23
.LM459:
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,401,.LM460-.LFBB23
.LM460:
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,401,.LM461-.LFBB23
.LM461:
	movq	8(%rsp), %rax
	movq	120(%rax), %rsi
	.stabn	68,0,401,.LM462-.LFBB23
.LM462:
	movq	%rdx, %rax
	subq	%rsi, %rax
	.stabn	68,0,401,.LM463-.LFBB23
.LM463:
	cmpq	%rax, %rcx
	jbe	.L107
	.stabn	68,0,403,.LM464-.LFBB23
.LM464:
	movq	8(%rsp), %rax
	movq	$0, 136(%rax)
	.stabn	68,0,404,.LM465-.LFBB23
.LM465:
	movl	$0, %eax
	movabsq	$hal_background@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,405,.LM466-.LFBB23
.LM466:
	jmp	.L105
.L107:
	.stabn	68,0,407,.LM467-.LFBB23
.LM467:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,407,.LM468-.LFBB23
.LM468:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,407,.LM469-.LFBB23
.LM469:
	addq	%rax, %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 136(%rax)
	.stabn	68,0,408,.LM470-.LFBB23
.LM470:
	jmp	.L105
.L106:
	.stabn	68,0,411,.LM471-.LFBB23
.LM471:
	leaq	24(%rsp), %rdi
	leaq	28(%rsp), %rcx
	leaq	32(%rsp), %rdx
	movl	4(%rsp), %esi
	movq	8(%rsp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movabsq	$ret_charsinfo@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,412,.LM472-.LFBB23
.LM472:
	cmpq	$0, 48(%rsp)
	je	.L123
	.stabn	68,0,416,.LM473-.LFBB23
.LM473:
	movq	8(%rsp), %rax
	movq	128(%rax), %rdx
	.stabn	68,0,416,.LM474-.LFBB23
.LM474:
	movl	32(%rsp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,416,.LM475-.LFBB23
.LM475:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,416,.LM476-.LFBB23
.LM476:
	movl	32(%rsp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	.stabn	68,0,416,.LM477-.LFBB23
.LM477:
	cmpq	%rax, %rcx
	jbe	.L110
	.stabn	68,0,418,.LM478-.LFBB23
.LM478:
	movq	8(%rsp), %rax
	movq	$0, 128(%rax)
	.stabn	68,0,419,.LM479-.LFBB23
.LM479:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,419,.LM480-.LFBB23
.LM480:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,419,.LM481-.LFBB23
.LM481:
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,419,.LM482-.LFBB23
.LM482:
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,419,.LM483-.LFBB23
.LM483:
	movq	8(%rsp), %rax
	movq	120(%rax), %rsi
	.stabn	68,0,419,.LM484-.LFBB23
.LM484:
	movq	%rdx, %rax
	subq	%rsi, %rax
	.stabn	68,0,419,.LM485-.LFBB23
.LM485:
	cmpq	%rax, %rcx
	jbe	.L111
	.stabn	68,0,421,.LM486-.LFBB23
.LM486:
	movq	8(%rsp), %rax
	movq	$0, 136(%rax)
	jmp	.L110
.L111:
	.stabn	68,0,425,.LM487-.LFBB23
.LM487:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,425,.LM488-.LFBB23
.LM488:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,425,.LM489-.LFBB23
.LM489:
	addq	%rax, %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 136(%rax)
.L110:
	.stabn	68,0,428,.LM490-.LFBB23
.LM490:
	movq	8(%rsp), %rax
	movq	128(%rax), %rax
	.stabn	68,0,428,.LM491-.LFBB23
.LM491:
	movl	%eax, 44(%rsp)
	.stabn	68,0,428,.LM492-.LFBB23
.LM492:
	movq	8(%rsp), %rax
	movq	136(%rax), %rax
	.stabn	68,0,428,.LM493-.LFBB23
.LM493:
	movl	%eax, 40(%rsp)
.LBB13:
	.stabn	68,0,430,.LM494-.LFBB23
.LM494:
	movl	$0, 72(%rsp)
	.stabn	68,0,430,.LM495-.LFBB23
.LM495:
	jmp	.L112
.L121:
.LBB14:
	.stabn	68,0,432,.LM496-.LFBB23
.LM496:
	movl	$0, 68(%rsp)
	.stabn	68,0,432,.LM497-.LFBB23
.LM497:
	movl	$0, 64(%rsp)
	.stabn	68,0,432,.LM498-.LFBB23
.LM498:
	jmp	.L113
.L120:
.LBB15:
	.stabn	68,0,434,.LM499-.LFBB23
.LM499:
	movl	24(%rsp), %eax
	imull	72(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,434,.LM500-.LFBB23
.LM500:
	movl	68(%rsp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.stabn	68,0,434,.LM501-.LFBB23
.LM501:
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,434,.LM502-.LFBB23
.LM502:
	movzbl	(%rax), %eax
	movb	%al, 39(%rsp)
	.stabn	68,0,435,.LM503-.LFBB23
.LM503:
	cmpb	$0, 39(%rsp)
	jne	.L114
	.stabn	68,0,437,.LM504-.LFBB23
.LM504:
	addl	$8, 64(%rsp)
	.stabn	68,0,438,.LM505-.LFBB23
.LM505:
	jmp	.L115
.L114:
.LBB16:
	.stabn	68,0,440,.LM506-.LFBB23
.LM506:
	movl	$7, 60(%rsp)
	.stabn	68,0,440,.LM507-.LFBB23
.LM507:
	jmp	.L116
.L119:
	.stabn	68,0,442,.LM508-.LFBB23
.LM508:
	movl	32(%rsp), %eax
	.stabn	68,0,442,.LM509-.LFBB23
.LM509:
	cmpl	%eax, 64(%rsp)
	jge	.L124
	.stabn	68,0,446,.LM510-.LFBB23
.LM510:
	movzbl	39(%rsp), %edx
	movl	60(%rsp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	.stabn	68,0,446,.LM511-.LFBB23
.LM511:
	andl	$1, %eax
	.stabn	68,0,446,.LM512-.LFBB23
.LM512:
	testl	%eax, %eax
	je	.L118
	.stabn	68,0,448,.LM513-.LFBB23
.LM513:
	movl	76(%rsp), %edx
	movl	40(%rsp), %eax
	leal	(%rdx,%rax), %edi
	movl	64(%rsp), %edx
	movl	44(%rsp), %eax
	leal	(%rdx,%rax), %esi
	movl	(%rsp), %edx
	movq	8(%rsp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	movabsq	$write_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L118:
	.stabn	68,0,450,.LM514-.LFBB23
.LM514:
	addl	$1, 64(%rsp)
	.stabn	68,0,440,.LM515-.LFBB23
.LM515:
	subl	$1, 60(%rsp)
.L116:
	.stabn	68,0,440,.LM516-.LFBB23
.LM516:
	cmpl	$0, 60(%rsp)
	jns	.L119
	jmp	.L115
.L124:
	.stabn	68,0,444,.LM517-.LFBB23
.LM517:
	nop
.L115:
.LBE16:
.LBE15:
	.stabn	68,0,432,.LM518-.LFBB23
.LM518:
	addl	$1, 68(%rsp)
.L113:
	.stabn	68,0,432,.LM519-.LFBB23
.LM519:
	movl	24(%rsp), %eax
	cmpl	%eax, 68(%rsp)
	jl	.L120
.LBE14:
	.stabn	68,0,453,.LM520-.LFBB23
.LM520:
	addl	$1, 76(%rsp)
	.stabn	68,0,430,.LM521-.LFBB23
.LM521:
	addl	$1, 72(%rsp)
.L112:
	.stabn	68,0,430,.LM522-.LFBB23
.LM522:
	movl	28(%rsp), %eax
	cmpl	%eax, 72(%rsp)
	jl	.L121
.LBE13:
	.stabn	68,0,455,.LM523-.LFBB23
.LM523:
	movq	8(%rsp), %rax
	movq	128(%rax), %rdx
	.stabn	68,0,455,.LM524-.LFBB23
.LM524:
	movl	32(%rsp), %eax
	cltq
	.stabn	68,0,455,.LM525-.LFBB23
.LM525:
	addq	%rax, %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 128(%rax)
	.stabn	68,0,456,.LM526-.LFBB23
.LM526:
	jmp	.L105
.L123:
	.stabn	68,0,414,.LM527-.LFBB23
.LM527:
	nop
.L105:
	.stabn	68,0,457,.LM528-.LFBB23
.LM528:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE51:
	.size	put_pixonechar, .-put_pixonechar
	.stabs	"y:(0,66)",128,0,395,76
	.stabs	"chwx:(0,66)",128,0,395,32
	.stabs	"chhx:(0,66)",128,0,395,28
	.stabs	"linb:(0,66)",128,0,395,24
	.stabs	"charyp:(0,10)",128,0,396,48
	.stabs	"wpx:(0,19)",128,0,428,44
	.stabs	"wpy:(0,19)",128,0,428,40
	.stabn	192,0,0,.LFBB23-.LFBB23
	.stabs	"hx:(0,66)",128,0,430,72
	.stabn	192,0,0,.LBB13-.LFBB23
	.stabs	"btyi:(0,66)",128,0,432,68
	.stabs	"x:(0,66)",128,0,432,64
	.stabn	192,0,0,.LBB14-.LFBB23
	.stabs	"bitmap:(0,6)",128,0,434,39
	.stabn	192,0,0,.LBB15-.LFBB23
	.stabs	"bi:(0,66)",128,0,440,60
	.stabn	192,0,0,.LBB16-.LFBB23
	.stabn	224,0,0,.LBE16-.LFBB23
	.stabn	224,0,0,.LBE15-.LFBB23
	.stabn	224,0,0,.LBE14-.LFBB23
	.stabn	224,0,0,.LBE13-.LFBB23
	.stabn	224,0,0,.Lscope23-.LFBB23
.Lscope23:
	.stabs	"",36,0,0,.Lscope23-.LFBB23
	.stabs	"drxput_pixonechar:F(0,1)",36,0,459,drxput_pixonechar
	.stabs	"kghp:p(0,14)",160,0,459,8
	.stabs	"unicode:p(0,19)",160,0,459,4
	.stabs	"pix:p(0,18)",160,0,459,0
	.globl	drxput_pixonechar
	.type	drxput_pixonechar, @function
drxput_pixonechar:
	.stabn	68,0,460,.LM529-.LFBB24
.LM529:
.LFBB24:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L146:
	leaq	.L146(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L146, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movl	%esi, 4(%rsp)
	movl	%edx, (%rsp)
	.stabn	68,0,461,.LM530-.LFBB24
.LM530:
	movl	$0, 76(%rsp)
	.stabn	68,0,461,.LM531-.LFBB24
.LM531:
	movl	$0, 32(%rsp)
	.stabn	68,0,461,.LM532-.LFBB24
.LM532:
	movl	$0, 28(%rsp)
	.stabn	68,0,461,.LM533-.LFBB24
.LM533:
	movl	$0, 24(%rsp)
	.stabn	68,0,462,.LM534-.LFBB24
.LM534:
	movq	$0, 48(%rsp)
	.stabn	68,0,464,.LM535-.LFBB24
.LM535:
	cmpl	$10, 4(%rsp)
	jne	.L127
	.stabn	68,0,466,.LM536-.LFBB24
.LM536:
	movq	8(%rsp), %rax
	movq	$0, 128(%rax)
	.stabn	68,0,467,.LM537-.LFBB24
.LM537:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,467,.LM538-.LFBB24
.LM538:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,467,.LM539-.LFBB24
.LM539:
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,467,.LM540-.LFBB24
.LM540:
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,467,.LM541-.LFBB24
.LM541:
	movq	8(%rsp), %rax
	movq	120(%rax), %rsi
	.stabn	68,0,467,.LM542-.LFBB24
.LM542:
	movq	%rdx, %rax
	subq	%rsi, %rax
	.stabn	68,0,467,.LM543-.LFBB24
.LM543:
	cmpq	%rax, %rcx
	jbe	.L128
	.stabn	68,0,469,.LM544-.LFBB24
.LM544:
	movq	8(%rsp), %rax
	movq	$0, 136(%rax)
	.stabn	68,0,470,.LM545-.LFBB24
.LM545:
	movl	$0, %eax
	movabsq	$hal_background@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,471,.LM546-.LFBB24
.LM546:
	jmp	.L126
.L128:
	.stabn	68,0,473,.LM547-.LFBB24
.LM547:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,473,.LM548-.LFBB24
.LM548:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,473,.LM549-.LFBB24
.LM549:
	addq	%rax, %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 136(%rax)
	.stabn	68,0,474,.LM550-.LFBB24
.LM550:
	jmp	.L126
.L127:
	.stabn	68,0,476,.LM551-.LFBB24
.LM551:
	leaq	24(%rsp), %rdi
	leaq	28(%rsp), %rcx
	leaq	32(%rsp), %rdx
	movl	4(%rsp), %esi
	movq	8(%rsp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movabsq	$ret_charsinfo@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,477,.LM552-.LFBB24
.LM552:
	cmpq	$0, 48(%rsp)
	je	.L144
	.stabn	68,0,481,.LM553-.LFBB24
.LM553:
	movq	8(%rsp), %rax
	movq	128(%rax), %rdx
	.stabn	68,0,481,.LM554-.LFBB24
.LM554:
	movl	32(%rsp), %eax
	cltq
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,481,.LM555-.LFBB24
.LM555:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,481,.LM556-.LFBB24
.LM556:
	movl	32(%rsp), %edx
	movslq	%edx, %rdx
	subq	%rdx, %rax
	.stabn	68,0,481,.LM557-.LFBB24
.LM557:
	cmpq	%rax, %rcx
	jbe	.L131
	.stabn	68,0,483,.LM558-.LFBB24
.LM558:
	movq	8(%rsp), %rax
	movq	$0, 128(%rax)
	.stabn	68,0,484,.LM559-.LFBB24
.LM559:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,484,.LM560-.LFBB24
.LM560:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,484,.LM561-.LFBB24
.LM561:
	leaq	(%rdx,%rax), %rcx
	.stabn	68,0,484,.LM562-.LFBB24
.LM562:
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,484,.LM563-.LFBB24
.LM563:
	movq	8(%rsp), %rax
	movq	120(%rax), %rsi
	.stabn	68,0,484,.LM564-.LFBB24
.LM564:
	movq	%rdx, %rax
	subq	%rsi, %rax
	.stabn	68,0,484,.LM565-.LFBB24
.LM565:
	cmpq	%rax, %rcx
	jbe	.L132
	.stabn	68,0,486,.LM566-.LFBB24
.LM566:
	movq	8(%rsp), %rax
	movq	$0, 136(%rax)
	jmp	.L131
.L132:
	.stabn	68,0,490,.LM567-.LFBB24
.LM567:
	movq	8(%rsp), %rax
	movq	136(%rax), %rdx
	.stabn	68,0,490,.LM568-.LFBB24
.LM568:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,490,.LM569-.LFBB24
.LM569:
	addq	%rax, %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 136(%rax)
.L131:
	.stabn	68,0,493,.LM570-.LFBB24
.LM570:
	movq	8(%rsp), %rax
	movq	128(%rax), %rax
	.stabn	68,0,493,.LM571-.LFBB24
.LM571:
	movl	%eax, 44(%rsp)
	.stabn	68,0,493,.LM572-.LFBB24
.LM572:
	movq	8(%rsp), %rax
	movq	136(%rax), %rax
	.stabn	68,0,493,.LM573-.LFBB24
.LM573:
	movl	%eax, 40(%rsp)
.LBB17:
	.stabn	68,0,495,.LM574-.LFBB24
.LM574:
	movl	$0, 72(%rsp)
	.stabn	68,0,495,.LM575-.LFBB24
.LM575:
	jmp	.L133
.L142:
.LBB18:
	.stabn	68,0,497,.LM576-.LFBB24
.LM576:
	movl	$0, 68(%rsp)
	.stabn	68,0,497,.LM577-.LFBB24
.LM577:
	movl	$0, 64(%rsp)
	.stabn	68,0,497,.LM578-.LFBB24
.LM578:
	jmp	.L134
.L141:
.LBB19:
	.stabn	68,0,499,.LM579-.LFBB24
.LM579:
	movl	24(%rsp), %eax
	imull	72(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,499,.LM580-.LFBB24
.LM580:
	movl	68(%rsp), %eax
	addl	%edx, %eax
	movslq	%eax, %rdx
	.stabn	68,0,499,.LM581-.LFBB24
.LM581:
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,499,.LM582-.LFBB24
.LM582:
	movzbl	(%rax), %eax
	movb	%al, 39(%rsp)
	.stabn	68,0,500,.LM583-.LFBB24
.LM583:
	cmpb	$0, 39(%rsp)
	jne	.L135
	.stabn	68,0,502,.LM584-.LFBB24
.LM584:
	addl	$8, 64(%rsp)
	.stabn	68,0,503,.LM585-.LFBB24
.LM585:
	jmp	.L136
.L135:
.LBB20:
	.stabn	68,0,505,.LM586-.LFBB24
.LM586:
	movl	$7, 60(%rsp)
	.stabn	68,0,505,.LM587-.LFBB24
.LM587:
	jmp	.L137
.L140:
	.stabn	68,0,507,.LM588-.LFBB24
.LM588:
	movl	32(%rsp), %eax
	.stabn	68,0,507,.LM589-.LFBB24
.LM589:
	cmpl	%eax, 64(%rsp)
	jge	.L145
	.stabn	68,0,511,.LM590-.LFBB24
.LM590:
	movzbl	39(%rsp), %edx
	movl	60(%rsp), %eax
	movl	%eax, %ecx
	sarl	%cl, %edx
	movl	%edx, %eax
	.stabn	68,0,511,.LM591-.LFBB24
.LM591:
	andl	$1, %eax
	.stabn	68,0,511,.LM592-.LFBB24
.LM592:
	testl	%eax, %eax
	je	.L139
	.stabn	68,0,513,.LM593-.LFBB24
.LM593:
	movl	76(%rsp), %edx
	movl	40(%rsp), %eax
	leal	(%rdx,%rax), %edi
	movl	64(%rsp), %edx
	movl	44(%rsp), %eax
	leal	(%rdx,%rax), %esi
	movl	(%rsp), %edx
	movq	8(%rsp), %rax
	movl	%edx, %ecx
	movl	%edi, %edx
	movq	%rax, %rdi
	movabsq	$drxw_pixcolor@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L139:
	.stabn	68,0,515,.LM594-.LFBB24
.LM594:
	addl	$1, 64(%rsp)
	.stabn	68,0,505,.LM595-.LFBB24
.LM595:
	subl	$1, 60(%rsp)
.L137:
	.stabn	68,0,505,.LM596-.LFBB24
.LM596:
	cmpl	$0, 60(%rsp)
	jns	.L140
	jmp	.L136
.L145:
	.stabn	68,0,509,.LM597-.LFBB24
.LM597:
	nop
.L136:
.LBE20:
.LBE19:
	.stabn	68,0,497,.LM598-.LFBB24
.LM598:
	addl	$1, 68(%rsp)
.L134:
	.stabn	68,0,497,.LM599-.LFBB24
.LM599:
	movl	24(%rsp), %eax
	cmpl	%eax, 68(%rsp)
	jl	.L141
.LBE18:
	.stabn	68,0,518,.LM600-.LFBB24
.LM600:
	addl	$1, 76(%rsp)
	.stabn	68,0,495,.LM601-.LFBB24
.LM601:
	addl	$1, 72(%rsp)
.L133:
	.stabn	68,0,495,.LM602-.LFBB24
.LM602:
	movl	28(%rsp), %eax
	cmpl	%eax, 72(%rsp)
	jl	.L142
.LBE17:
	.stabn	68,0,520,.LM603-.LFBB24
.LM603:
	movq	8(%rsp), %rax
	movq	128(%rax), %rdx
	.stabn	68,0,520,.LM604-.LFBB24
.LM604:
	movl	32(%rsp), %eax
	cltq
	.stabn	68,0,520,.LM605-.LFBB24
.LM605:
	addq	%rax, %rdx
	movq	8(%rsp), %rax
	movq	%rdx, 128(%rax)
	.stabn	68,0,522,.LM606-.LFBB24
.LM606:
	jmp	.L126
.L144:
	.stabn	68,0,479,.LM607-.LFBB24
.LM607:
	nop
.L126:
	.stabn	68,0,523,.LM608-.LFBB24
.LM608:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	drxput_pixonechar, .-drxput_pixonechar
	.stabs	"y:(0,66)",128,0,461,76
	.stabs	"chwx:(0,66)",128,0,461,32
	.stabs	"chhx:(0,66)",128,0,461,28
	.stabs	"linb:(0,66)",128,0,461,24
	.stabs	"charyp:(0,10)",128,0,462,48
	.stabs	"wpx:(0,19)",128,0,493,44
	.stabs	"wpy:(0,19)",128,0,493,40
	.stabn	192,0,0,.LFBB24-.LFBB24
	.stabs	"hx:(0,66)",128,0,495,72
	.stabn	192,0,0,.LBB17-.LFBB24
	.stabs	"btyi:(0,66)",128,0,497,68
	.stabs	"x:(0,66)",128,0,497,64
	.stabn	192,0,0,.LBB18-.LFBB24
	.stabs	"bitmap:(0,6)",128,0,499,39
	.stabn	192,0,0,.LBB19-.LFBB24
	.stabs	"bi:(0,66)",128,0,505,60
	.stabn	192,0,0,.LBB20-.LFBB24
	.stabn	224,0,0,.LBE20-.LFBB24
	.stabn	224,0,0,.LBE19-.LFBB24
	.stabn	224,0,0,.LBE18-.LFBB24
	.stabn	224,0,0,.LBE17-.LFBB24
	.stabn	224,0,0,.Lscope24-.LFBB24
.Lscope24:
	.stabs	"",36,0,0,.Lscope24-.LFBB24
	.stabs	"gstr_write:F(0,1)",36,0,525,gstr_write
	.stabs	"kghp:p(0,14)",160,0,525,8
	.stabs	"buf:p(0,62)",160,0,525,0
	.globl	gstr_write
	.type	gstr_write, @function
gstr_write:
	.stabn	68,0,526,.LM609-.LFBB25
.LM609:
.LFBB25:
.LFB53:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L154:
	leaq	.L154(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L154, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,527,.LM610-.LFBB25
.LM610:
	movl	$0, 28(%rsp)
	.stabn	68,0,528,.LM611-.LFBB25
.LM611:
	movl	$0, 16(%rsp)
	.stabn	68,0,529,.LM612-.LFBB25
.LM612:
	movl	$0, 24(%rsp)
	.stabn	68,0,530,.LM613-.LFBB25
.LM613:
	movq	8(%rsp), %rax
	movl	152(%rax), %eax
	movl	%eax, 20(%rsp)
	.stabn	68,0,531,.LM614-.LFBB25
.LM614:
	jmp	.L148
.L150:
	.stabn	68,0,533,.LM615-.LFBB25
.LM615:
	movl	28(%rsp), %eax
	movslq	%eax, %rdx
	.stabn	68,0,533,.LM616-.LFBB25
.LM616:
	movq	(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,533,.LM617-.LFBB25
.LM617:
	leaq	16(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movabsq	$utf8_to_unicode@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movl	%eax, 24(%rsp)
	.stabn	68,0,534,.LM618-.LFBB25
.LM618:
	movl	16(%rsp), %eax
	addl	%eax, 28(%rsp)
	.stabn	68,0,535,.LM619-.LFBB25
.LM619:
	movq	8(%rsp), %rax
	movq	160(%rax), %rax
	.stabn	68,0,535,.LM620-.LFBB25
.LM620:
	cmpq	$1, %rax
	jne	.L149
	.stabn	68,0,537,.LM621-.LFBB25
.LM621:
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	movq	8(%rsp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movabsq	$put_pixonechar@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	jmp	.L148
.L149:
	.stabn	68,0,541,.LM622-.LFBB25
.LM622:
	movl	20(%rsp), %edx
	movl	24(%rsp), %ecx
	movq	8(%rsp), %rax
	movl	%ecx, %esi
	movq	%rax, %rdi
	movabsq	$drxput_pixonechar@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L148:
	.stabn	68,0,531,.LM623-.LFBB25
.LM623:
	movl	28(%rsp), %eax
	movslq	%eax, %rdx
	movq	(%rsp), %rax
	addq	%rdx, %rax
	movzbl	(%rax), %eax
	.stabn	68,0,531,.LM624-.LFBB25
.LM624:
	testb	%al, %al
	jne	.L150
	.stabn	68,0,544,.LM625-.LFBB25
.LM625:
	movq	8(%rsp), %rax
	movq	168(%rax), %rax
	.stabn	68,0,544,.LM626-.LFBB25
.LM626:
	cmpq	$1, %rax
	jne	.L153
	.stabn	68,0,546,.LM627-.LFBB25
.LM627:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$flush_videoram@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,548,.LM628-.LFBB25
.LM628:
	nop
.L153:
	nop
	.stabn	68,0,549,.LM629-.LFBB25
.LM629:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	gstr_write, .-gstr_write
	.stabs	"chinx:(0,66)",128,0,527,28
	.stabs	"chretnext:(0,66)",128,0,528,16
	.stabs	"uc:(0,19)",128,0,529,24
	.stabs	"pix:(0,18)",128,0,530,20
	.stabn	192,0,0,.LFBB25-.LFBB25
	.stabn	224,0,0,.Lscope25-.LFBB25
.Lscope25:
	.stabs	"",36,0,0,.Lscope25-.LFBB25
	.stabs	"bga_write_reg:F(0,1)",36,0,551,bga_write_reg
	.stabs	"index:p(0,3)",160,0,551,4
	.stabs	"data:p(0,3)",160,0,551,0
	.globl	bga_write_reg
	.type	bga_write_reg, @function
bga_write_reg:
	.stabn	68,0,552,.LM630-.LFBB26
.LM630:
.LFBB26:
.LFB54:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
.L157:
	leaq	.L157(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L157, %r11
	addq	%r11, %rbx
	movl	%edi, %edx
	movl	%esi, %eax
	movw	%dx, 4(%rsp)
	movw	%ax, (%rsp)
	.stabn	68,0,553,.LM631-.LFBB26
.LM631:
	movzwl	4(%rsp), %eax
	movl	%eax, %esi
	movl	$462, %edi
	movabsq	$out_u16@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,554,.LM632-.LFBB26
.LM632:
	movzwl	(%rsp), %eax
	movl	%eax, %esi
	movl	$463, %edi
	movabsq	$out_u16@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,555,.LM633-.LFBB26
.LM633:
	nop
	.stabn	68,0,556,.LM634-.LFBB26
.LM634:
	addq	$8, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.size	bga_write_reg, .-bga_write_reg
.Lscope26:
	.stabs	"",36,0,0,.Lscope26-.LFBB26
	.stabs	"bga_read_reg:F(0,3)",36,0,558,bga_read_reg
	.stabs	"index:p(0,3)",160,0,558,4
	.globl	bga_read_reg
	.type	bga_read_reg, @function
bga_read_reg:
	.stabn	68,0,559,.LM635-.LFBB27
.LM635:
.LFBB27:
.LFB55:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
.L160:
	leaq	.L160(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L160, %r11
	addq	%r11, %rbx
	movl	%edi, %eax
	movw	%ax, 4(%rsp)
	.stabn	68,0,560,.LM636-.LFBB27
.LM636:
	movzwl	4(%rsp), %eax
	movl	%eax, %esi
	movl	$462, %edi
	movabsq	$out_u16@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,561,.LM637-.LFBB27
.LM637:
	movl	$463, %edi
	movabsq	$in_u16@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,562,.LM638-.LFBB27
.LM638:
	addq	$8, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE55:
	.size	bga_read_reg, .-bga_read_reg
.Lscope27:
	.stabs	"",36,0,0,.Lscope27-.LFBB27
	.stabs	"bga_read:F(0,25)",36,0,564,bga_read
	.stabs	"ghpdev:p(0,5)",160,0,564,16
	.stabs	"outp:p(0,5)",160,0,564,8
	.stabs	"rdsz:p(0,25)",160,0,564,0
	.globl	bga_read
	.type	bga_read, @function
bga_read:
	.stabn	68,0,565,.LM639-.LFBB28
.LM639:
.LFBB28:
.LFB56:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L163:
	leaq	.L163(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L163, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,567,.LM640-.LFBB28
.LM640:
	movq	(%rsp), %rax
	.stabn	68,0,568,.LM641-.LFBB28
.LM641:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	bga_read, .-bga_read
.Lscope28:
	.stabs	"",36,0,0,.Lscope28-.LFBB28
	.stabs	"bga_write:F(0,25)",36,0,569,bga_write
	.stabs	"ghpdev:p(0,5)",160,0,569,16
	.stabs	"inp:p(0,5)",160,0,569,8
	.stabs	"wesz:p(0,25)",160,0,569,0
	.globl	bga_write
	.type	bga_write, @function
bga_write:
	.stabn	68,0,570,.LM642-.LFBB29
.LM642:
.LFBB29:
.LFB57:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L166:
	leaq	.L166(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L166, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,572,.LM643-.LFBB29
.LM643:
	movq	(%rsp), %rax
	.stabn	68,0,573,.LM644-.LFBB29
.LM644:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	bga_write, .-bga_write
.Lscope29:
	.stabs	"",36,0,0,.Lscope29-.LFBB29
	.stabs	"bga_ioctrl:F(0,28)",36,0,574,bga_ioctrl
	.stabs	"ghpdev:p(0,5)",160,0,574,16
	.stabs	"outp:p(0,5)",160,0,574,8
	.stabs	"iocode:p(0,8)",160,0,574,0
	.globl	bga_ioctrl
	.type	bga_ioctrl, @function
bga_ioctrl:
	.stabn	68,0,575,.LM645-.LFBB30
.LM645:
.LFBB30:
.LFB58:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L169:
	leaq	.L169(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L169, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,576,.LM646-.LFBB30
.LM646:
	movq	$-1, %rax
	.stabn	68,0,577,.LM647-.LFBB30
.LM647:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	bga_ioctrl, .-bga_ioctrl
.Lscope30:
	.stabs	"",36,0,0,.Lscope30-.LFBB30
	.stabs	"bga_flush:F(0,1)",36,0,579,bga_flush
	.stabs	"ghpdev:p(0,5)",160,0,579,8
	.globl	bga_flush
	.type	bga_flush, @function
bga_flush:
	.stabn	68,0,580,.LM648-.LFBB31
.LM648:
.LFBB31:
.LFB59:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
.L174:
	leaq	.L174(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L174, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,581,.LM649-.LFBB31
.LM649:
	movq	8(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,583,.LM650-.LFBB31
.LM650:
	movq	40(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,583,.LM651-.LFBB31
.LM651:
	movq	%rax, 32(%rsp)
	.stabn	68,0,584,.LM652-.LFBB31
.LM652:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$ret_vramadr_inbnk@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,585,.LM653-.LFBB31
.LM653:
	movq	$0, 56(%rsp)
	.stabn	68,0,585,.LM654-.LFBB31
.LM654:
	movq	$0, 48(%rsp)
	.stabn	68,0,586,.LM655-.LFBB31
.LM655:
	movq	40(%rsp), %rax
	movq	8(%rax), %rdx
	.stabn	68,0,586,.LM656-.LFBB31
.LM656:
	movq	40(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,586,.LM657-.LFBB31
.LM657:
	imulq	%rax, %rdx
	.stabn	68,0,586,.LM658-.LFBB31
.LM658:
	movq	40(%rsp), %rax
	movq	56(%rax), %rax
	.stabn	68,0,586,.LM659-.LFBB31
.LM659:
	imulq	%rdx, %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,588,.LM660-.LFBB31
.LM660:
	jmp	.L171
.L172:
	.stabn	68,0,590,.LM661-.LFBB31
.LM661:
	movq	48(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	32(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,590,.LM662-.LFBB31
.LM662:
	movq	48(%rsp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	24(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,590,.LM663-.LFBB31
.LM663:
	movq	(%rax), %rax
	.stabn	68,0,590,.LM664-.LFBB31
.LM664:
	movq	%rax, (%rdx)
	.stabn	68,0,591,.LM665-.LFBB31
.LM665:
	addq	$1, 48(%rsp)
	.stabn	68,0,588,.LM666-.LFBB31
.LM666:
	addq	$8, 56(%rsp)
.L171:
	.stabn	68,0,588,.LM667-.LFBB31
.LM667:
	movq	56(%rsp), %rax
	cmpq	16(%rsp), %rax
	jb	.L172
	.stabn	68,0,594,.LM668-.LFBB31
.LM668:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$bga_disp_nxtbank@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,595,.LM669-.LFBB31
.LM669:
	nop
	.stabn	68,0,596,.LM670-.LFBB31
.LM670:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE59:
	.size	bga_flush, .-bga_flush
	.stabs	"kghp:(0,14)",128,0,581,40
	.stabs	"s:(0,75)=*(0,17)",128,0,583,32
	.stabs	"d:(0,75)",128,0,584,24
	.stabs	"i:(0,17)",128,0,585,56
	.stabs	"j:(0,17)",128,0,585,48
	.stabs	"e:(0,17)",128,0,586,16
	.stabn	192,0,0,.LFBB31-.LFBB31
	.stabn	224,0,0,.Lscope31-.LFBB31
.Lscope31:
	.stabs	"",36,0,0,.Lscope31-.LFBB31
	.stabs	"bga_set_bank:F(0,28)",36,0,598,bga_set_bank
	.stabs	"ghpdev:p(0,5)",160,0,598,8
	.stabs	"bnr:p(0,28)",160,0,598,0
	.globl	bga_set_bank
	.type	bga_set_bank, @function
bga_set_bank:
	.stabn	68,0,599,.LM671-.LFBB32
.LM671:
.LFBB32:
.LFB60:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L177:
	leaq	.L177(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L177, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,600,.LM672-.LFBB32
.LM672:
	movq	$-1, %rax
	.stabn	68,0,601,.LM673-.LFBB32
.LM673:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	bga_set_bank, .-bga_set_bank
.Lscope32:
	.stabs	"",36,0,0,.Lscope32-.LFBB32
	.stabs	"bga_readpix:F(0,18)",36,0,603,bga_readpix
	.stabs	"ghpdev:p(0,5)",160,0,603,16
	.stabs	"x:p(0,8)",160,0,603,8
	.stabs	"y:p(0,8)",160,0,603,0
	.globl	bga_readpix
	.type	bga_readpix, @function
bga_readpix:
	.stabn	68,0,604,.LM674-.LFBB33
.LM674:
.LFBB33:
.LFB61:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L180:
	leaq	.L180(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L180, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,605,.LM675-.LFBB33
.LM675:
	movl	$0, %eax
	.stabn	68,0,606,.LM676-.LFBB33
.LM676:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	bga_readpix, .-bga_readpix
.Lscope33:
	.stabs	"",36,0,0,.Lscope33-.LFBB33
	.stabs	"bga_writepix:F(0,1)",36,0,608,bga_writepix
	.stabs	"ghpdev:p(0,5)",160,0,608,24
	.stabs	"pix:p(0,18)",160,0,608,20
	.stabs	"x:p(0,8)",160,0,608,8
	.stabs	"y:p(0,8)",160,0,608,0
	.globl	bga_writepix
	.type	bga_writepix, @function
bga_writepix:
	.stabn	68,0,609,.LM677-.LFBB34
.LM677:
.LFBB34:
.LFB62:
	.cfi_startproc
	endbr64
	subq	$64, %rsp
	.cfi_def_cfa_offset 72
.L184:
	leaq	.L184(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L184, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,610,.LM678-.LFBB34
.LM678:
	movq	24(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,612,.LM679-.LFBB34
.LM679:
	movq	56(%rsp), %rax
	movq	48(%rax), %rax
	.stabn	68,0,612,.LM680-.LFBB34
.LM680:
	cmpq	$24, %rax
	jne	.L182
.LBB21:
	.stabn	68,0,614,.LM681-.LFBB34
.LM681:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,614,.LM682-.LFBB34
.LM682:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,614,.LM683-.LFBB34
.LM683:
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,614,.LM684-.LFBB34
.LM684:
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,615,.LM685-.LFBB34
.LM685:
	movq	56(%rsp), %rax
	movq	32(%rax), %rdx
	.stabn	68,0,615,.LM686-.LFBB34
.LM686:
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,615,.LM687-.LFBB34
.LM687:
	movq	%rax, 32(%rsp)
	.stabn	68,0,616,.LM688-.LFBB34
.LM688:
	movl	20(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,616,.LM689-.LFBB34
.LM689:
	movq	32(%rsp), %rax
	movb	%dl, (%rax)
	.stabn	68,0,617,.LM690-.LFBB34
.LM690:
	movl	20(%rsp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.stabn	68,0,617,.LM691-.LFBB34
.LM691:
	movq	32(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,617,.LM692-.LFBB34
.LM692:
	movb	%dl, (%rax)
	.stabn	68,0,618,.LM693-.LFBB34
.LM693:
	movl	20(%rsp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	.stabn	68,0,618,.LM694-.LFBB34
.LM694:
	movq	32(%rsp), %rax
	addq	$2, %rax
	.stabn	68,0,618,.LM695-.LFBB34
.LM695:
	movb	%dl, (%rax)
	.stabn	68,0,619,.LM696-.LFBB34
.LM696:
	jmp	.L181
.L182:
.LBE21:
	.stabn	68,0,621,.LM697-.LFBB34
.LM697:
	movq	56(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,621,.LM698-.LFBB34
.LM698:
	movq	%rax, 48(%rsp)
	.stabn	68,0,622,.LM699-.LFBB34
.LM699:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,622,.LM700-.LFBB34
.LM700:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,622,.LM701-.LFBB34
.LM701:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,622,.LM702-.LFBB34
.LM702:
	leaq	0(,%rax,4), %rdx
	movq	48(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,622,.LM703-.LFBB34
.LM703:
	movl	20(%rsp), %eax
	movl	%eax, (%rdx)
	.stabn	68,0,623,.LM704-.LFBB34
.LM704:
	nop
.L181:
	.stabn	68,0,624,.LM705-.LFBB34
.LM705:
	addq	$64, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE62:
	.size	bga_writepix, .-bga_writepix
	.stabs	"kghp:(0,14)",128,0,610,56
	.stabs	"p24bas:(0,10)",128,0,611,32
	.stabs	"phybas:(0,76)=*(0,19)",128,0,621,48
	.stabn	192,0,0,.LFBB34-.LFBB34
	.stabs	"p24adr:(0,17)",128,0,614,40
	.stabn	192,0,0,.LBB21-.LFBB34
	.stabn	224,0,0,.LBE21-.LFBB34
	.stabn	224,0,0,.Lscope34-.LFBB34
.Lscope34:
	.stabs	"",36,0,0,.Lscope34-.LFBB34
	.stabs	"bga_dxreadpix:F(0,18)",36,0,626,bga_dxreadpix
	.stabs	"ghpdev:p(0,5)",160,0,626,16
	.stabs	"x:p(0,8)",160,0,626,8
	.stabs	"y:p(0,8)",160,0,626,0
	.globl	bga_dxreadpix
	.type	bga_dxreadpix, @function
bga_dxreadpix:
	.stabn	68,0,627,.LM706-.LFBB35
.LM706:
.LFBB35:
.LFB63:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L187:
	leaq	.L187(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L187, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,628,.LM707-.LFBB35
.LM707:
	movl	$0, %eax
	.stabn	68,0,629,.LM708-.LFBB35
.LM708:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	bga_dxreadpix, .-bga_dxreadpix
.Lscope35:
	.stabs	"",36,0,0,.Lscope35-.LFBB35
	.stabs	"bga_dxwritepix:F(0,1)",36,0,631,bga_dxwritepix
	.stabs	"ghpdev:p(0,5)",160,0,631,24
	.stabs	"pix:p(0,18)",160,0,631,20
	.stabs	"x:p(0,8)",160,0,631,8
	.stabs	"y:p(0,8)",160,0,631,0
	.globl	bga_dxwritepix
	.type	bga_dxwritepix, @function
bga_dxwritepix:
	.stabn	68,0,632,.LM709-.LFBB36
.LM709:
.LFBB36:
.LFB64:
	.cfi_startproc
	endbr64
	subq	$64, %rsp
	.cfi_def_cfa_offset 72
.L191:
	leaq	.L191(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L191, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,633,.LM710-.LFBB36
.LM710:
	movq	24(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,635,.LM711-.LFBB36
.LM711:
	movq	56(%rsp), %rax
	movq	48(%rax), %rax
	.stabn	68,0,635,.LM712-.LFBB36
.LM712:
	cmpq	$24, %rax
	jne	.L189
.LBB22:
	.stabn	68,0,637,.LM713-.LFBB36
.LM713:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,637,.LM714-.LFBB36
.LM714:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,637,.LM715-.LFBB36
.LM715:
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,637,.LM716-.LFBB36
.LM716:
	movq	56(%rsp), %rax
	movq	80(%rax), %rax
	.stabn	68,0,637,.LM717-.LFBB36
.LM717:
	imulq	%rax, %rdx
	.stabn	68,0,637,.LM718-.LFBB36
.LM718:
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,638,.LM719-.LFBB36
.LM719:
	movq	56(%rsp), %rax
	movq	24(%rax), %rdx
	.stabn	68,0,638,.LM720-.LFBB36
.LM720:
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,638,.LM721-.LFBB36
.LM721:
	movq	%rax, 32(%rsp)
	.stabn	68,0,639,.LM722-.LFBB36
.LM722:
	movl	20(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,639,.LM723-.LFBB36
.LM723:
	movq	32(%rsp), %rax
	movb	%dl, (%rax)
	.stabn	68,0,640,.LM724-.LFBB36
.LM724:
	movl	20(%rsp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.stabn	68,0,640,.LM725-.LFBB36
.LM725:
	movq	32(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,640,.LM726-.LFBB36
.LM726:
	movb	%dl, (%rax)
	.stabn	68,0,641,.LM727-.LFBB36
.LM727:
	movl	20(%rsp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	.stabn	68,0,641,.LM728-.LFBB36
.LM728:
	movq	32(%rsp), %rax
	addq	$2, %rax
	.stabn	68,0,641,.LM729-.LFBB36
.LM729:
	movb	%dl, (%rax)
	.stabn	68,0,642,.LM730-.LFBB36
.LM730:
	jmp	.L188
.L189:
.LBE22:
	.stabn	68,0,644,.LM731-.LFBB36
.LM731:
	movq	56(%rsp), %rax
	movq	24(%rax), %rcx
	.stabn	68,0,644,.LM732-.LFBB36
.LM732:
	movq	56(%rsp), %rax
	movq	8(%rax), %rdx
	.stabn	68,0,644,.LM733-.LFBB36
.LM733:
	movq	56(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,644,.LM734-.LFBB36
.LM734:
	imulq	%rax, %rdx
	.stabn	68,0,644,.LM735-.LFBB36
.LM735:
	movq	56(%rsp), %rax
	movq	56(%rax), %rax
	.stabn	68,0,644,.LM736-.LFBB36
.LM736:
	imulq	%rax, %rdx
	.stabn	68,0,644,.LM737-.LFBB36
.LM737:
	movq	56(%rsp), %rax
	movq	80(%rax), %rax
	.stabn	68,0,644,.LM738-.LFBB36
.LM738:
	imulq	%rdx, %rax
	.stabn	68,0,644,.LM739-.LFBB36
.LM739:
	addq	%rcx, %rax
	.stabn	68,0,644,.LM740-.LFBB36
.LM740:
	movq	%rax, 48(%rsp)
	.stabn	68,0,645,.LM741-.LFBB36
.LM741:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,645,.LM742-.LFBB36
.LM742:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,645,.LM743-.LFBB36
.LM743:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,645,.LM744-.LFBB36
.LM744:
	leaq	0(,%rax,4), %rdx
	movq	48(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,645,.LM745-.LFBB36
.LM745:
	movl	20(%rsp), %eax
	movl	%eax, (%rdx)
	.stabn	68,0,646,.LM746-.LFBB36
.LM746:
	nop
.L188:
	.stabn	68,0,647,.LM747-.LFBB36
.LM747:
	addq	$64, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE64:
	.size	bga_dxwritepix, .-bga_dxwritepix
	.stabs	"kghp:(0,14)",128,0,633,56
	.stabs	"p24bas:(0,10)",128,0,634,32
	.stabs	"phybas:(0,76)",128,0,644,48
	.stabn	192,0,0,.LFBB36-.LFBB36
	.stabs	"p24adr:(0,17)",128,0,637,40
	.stabn	192,0,0,.LBB22-.LFBB36
	.stabn	224,0,0,.LBE22-.LFBB36
	.stabn	224,0,0,.Lscope36-.LFBB36
.Lscope36:
	.stabs	"",36,0,0,.Lscope36-.LFBB36
	.stabs	"bga_set_xy:F(0,28)",36,0,649,bga_set_xy
	.stabs	"ghpdev:p(0,5)",160,0,649,16
	.stabs	"x:p(0,8)",160,0,649,8
	.stabs	"y:p(0,8)",160,0,649,0
	.globl	bga_set_xy
	.type	bga_set_xy, @function
bga_set_xy:
	.stabn	68,0,650,.LM748-.LFBB37
.LM748:
.LFBB37:
.LFB65:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L194:
	leaq	.L194(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L194, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,651,.LM749-.LFBB37
.LM749:
	movq	8(%rsp), %rax
	.stabn	68,0,651,.LM750-.LFBB37
.LM750:
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$1, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,652,.LM751-.LFBB37
.LM751:
	movq	(%rsp), %rax
	.stabn	68,0,652,.LM752-.LFBB37
.LM752:
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$2, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,654,.LM753-.LFBB37
.LM753:
	movl	$0, %eax
	.stabn	68,0,655,.LM754-.LFBB37
.LM754:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE65:
	.size	bga_set_xy, .-bga_set_xy
.Lscope37:
	.stabs	"",36,0,0,.Lscope37-.LFBB37
	.stabs	"bga_set_vwh:F(0,28)",36,0,657,bga_set_vwh
	.stabs	"ghpdev:p(0,5)",160,0,657,16
	.stabs	"vwt:p(0,8)",160,0,657,8
	.stabs	"vhi:p(0,8)",160,0,657,0
	.globl	bga_set_vwh
	.type	bga_set_vwh, @function
bga_set_vwh:
	.stabn	68,0,658,.LM755-.LFBB38
.LM755:
.LFBB38:
.LFB66:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L197:
	leaq	.L197(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L197, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,659,.LM756-.LFBB38
.LM756:
	movq	8(%rsp), %rax
	.stabn	68,0,659,.LM757-.LFBB38
.LM757:
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$6, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,660,.LM758-.LFBB38
.LM758:
	movq	(%rsp), %rax
	.stabn	68,0,660,.LM759-.LFBB38
.LM759:
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$7, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,661,.LM760-.LFBB38
.LM760:
	movl	$0, %eax
	.stabn	68,0,662,.LM761-.LFBB38
.LM761:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE66:
	.size	bga_set_vwh, .-bga_set_vwh
.Lscope38:
	.stabs	"",36,0,0,.Lscope38-.LFBB38
	.stabs	"bga_set_xyoffset:F(0,28)",36,0,664,bga_set_xyoffset
	.stabs	"ghpdev:p(0,5)",160,0,664,16
	.stabs	"xoff:p(0,8)",160,0,664,8
	.stabs	"yoff:p(0,8)",160,0,664,0
	.globl	bga_set_xyoffset
	.type	bga_set_xyoffset, @function
bga_set_xyoffset:
	.stabn	68,0,665,.LM762-.LFBB39
.LM762:
.LFBB39:
.LFB67:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L200:
	leaq	.L200(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L200, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,666,.LM763-.LFBB39
.LM763:
	movq	8(%rsp), %rax
	.stabn	68,0,666,.LM764-.LFBB39
.LM764:
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$8, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,667,.LM765-.LFBB39
.LM765:
	movq	(%rsp), %rax
	.stabn	68,0,667,.LM766-.LFBB39
.LM766:
	movzwl	%ax, %eax
	movl	%eax, %esi
	movl	$9, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,668,.LM767-.LFBB39
.LM767:
	movl	$0, %eax
	.stabn	68,0,669,.LM768-.LFBB39
.LM768:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE67:
	.size	bga_set_xyoffset, .-bga_set_xyoffset
.Lscope39:
	.stabs	"",36,0,0,.Lscope39-.LFBB39
	.stabs	"bga_get_xy:F(0,28)",36,0,671,bga_get_xy
	.stabs	"ghpdev:p(0,5)",160,0,671,16
	.stabs	"rx:p(0,77)=*(0,8)",160,0,671,8
	.stabs	"ry:p(0,77)",160,0,671,0
	.globl	bga_get_xy
	.type	bga_get_xy, @function
bga_get_xy:
	.stabn	68,0,672,.LM769-.LFBB40
.LM769:
.LFBB40:
.LFB68:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$40, %rsp
	.cfi_def_cfa_offset 56
.L205:
	leaq	.L205(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L205, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,673,.LM770-.LFBB40
.LM770:
	cmpq	$0, 8(%rsp)
	je	.L202
	.stabn	68,0,673,.LM771-.LFBB40
.LM771:
	cmpq	$0, (%rsp)
	jne	.L203
.L202:
	.stabn	68,0,675,.LM772-.LFBB40
.LM772:
	movq	$-1, %rax
	jmp	.L204
.L203:
	.stabn	68,0,678,.LM773-.LFBB40
.LM773:
	movl	$1, %edi
	movabsq	$bga_read_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movw	%ax, 38(%rsp)
	.stabn	68,0,679,.LM774-.LFBB40
.LM774:
	movl	$2, %edi
	movabsq	$bga_read_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movw	%ax, 36(%rsp)
	.stabn	68,0,680,.LM775-.LFBB40
.LM775:
	movzwl	38(%rsp), %edx
	.stabn	68,0,680,.LM776-.LFBB40
.LM776:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,681,.LM777-.LFBB40
.LM777:
	movzwl	36(%rsp), %edx
	.stabn	68,0,681,.LM778-.LFBB40
.LM778:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,682,.LM779-.LFBB40
.LM779:
	movl	$0, %eax
.L204:
	.stabn	68,0,683,.LM780-.LFBB40
.LM780:
	addq	$40, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	bga_get_xy, .-bga_get_xy
	.stabs	"retx:(0,3)",128,0,677,38
	.stabs	"rety:(0,3)",128,0,677,36
	.stabn	192,0,0,.LFBB40-.LFBB40
	.stabn	224,0,0,.Lscope40-.LFBB40
.Lscope40:
	.stabs	"",36,0,0,.Lscope40-.LFBB40
	.stabs	"bga_get_vwh:F(0,28)",36,0,685,bga_get_vwh
	.stabs	"ghpdev:p(0,5)",160,0,685,16
	.stabs	"rvwt:p(0,77)",160,0,685,8
	.stabs	"rvhi:p(0,77)",160,0,685,0
	.globl	bga_get_vwh
	.type	bga_get_vwh, @function
bga_get_vwh:
	.stabn	68,0,686,.LM781-.LFBB41
.LM781:
.LFBB41:
.LFB69:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$40, %rsp
	.cfi_def_cfa_offset 56
.L210:
	leaq	.L210(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L210, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,687,.LM782-.LFBB41
.LM782:
	cmpq	$0, 8(%rsp)
	je	.L207
	.stabn	68,0,687,.LM783-.LFBB41
.LM783:
	cmpq	$0, (%rsp)
	jne	.L208
.L207:
	.stabn	68,0,689,.LM784-.LFBB41
.LM784:
	movq	$-1, %rax
	jmp	.L209
.L208:
	.stabn	68,0,692,.LM785-.LFBB41
.LM785:
	movl	$6, %edi
	movabsq	$bga_read_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movw	%ax, 38(%rsp)
	.stabn	68,0,693,.LM786-.LFBB41
.LM786:
	movl	$7, %edi
	movabsq	$bga_read_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movw	%ax, 36(%rsp)
	.stabn	68,0,694,.LM787-.LFBB41
.LM787:
	movzwl	38(%rsp), %edx
	.stabn	68,0,694,.LM788-.LFBB41
.LM788:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,695,.LM789-.LFBB41
.LM789:
	movzwl	36(%rsp), %edx
	.stabn	68,0,695,.LM790-.LFBB41
.LM790:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,696,.LM791-.LFBB41
.LM791:
	movl	$0, %eax
.L209:
	.stabn	68,0,697,.LM792-.LFBB41
.LM792:
	addq	$40, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	bga_get_vwh, .-bga_get_vwh
	.stabs	"retwt:(0,3)",128,0,691,38
	.stabs	"rethi:(0,3)",128,0,691,36
	.stabn	192,0,0,.LFBB41-.LFBB41
	.stabn	224,0,0,.Lscope41-.LFBB41
.Lscope41:
	.stabs	"",36,0,0,.Lscope41-.LFBB41
	.stabs	"bga_get_xyoffset:F(0,28)",36,0,699,bga_get_xyoffset
	.stabs	"ghpdev:p(0,5)",160,0,699,16
	.stabs	"rxoff:p(0,77)",160,0,699,8
	.stabs	"ryoff:p(0,77)",160,0,699,0
	.globl	bga_get_xyoffset
	.type	bga_get_xyoffset, @function
bga_get_xyoffset:
	.stabn	68,0,700,.LM793-.LFBB42
.LM793:
.LFBB42:
.LFB70:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$40, %rsp
	.cfi_def_cfa_offset 56
.L215:
	leaq	.L215(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L215, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,701,.LM794-.LFBB42
.LM794:
	cmpq	$0, 8(%rsp)
	je	.L212
	.stabn	68,0,701,.LM795-.LFBB42
.LM795:
	cmpq	$0, (%rsp)
	jne	.L213
.L212:
	.stabn	68,0,703,.LM796-.LFBB42
.LM796:
	movq	$-1, %rax
	jmp	.L214
.L213:
	.stabn	68,0,706,.LM797-.LFBB42
.LM797:
	movl	$8, %edi
	movabsq	$bga_read_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movw	%ax, 38(%rsp)
	.stabn	68,0,707,.LM798-.LFBB42
.LM798:
	movl	$9, %edi
	movabsq	$bga_read_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movw	%ax, 36(%rsp)
	.stabn	68,0,708,.LM799-.LFBB42
.LM799:
	movzwl	38(%rsp), %edx
	.stabn	68,0,708,.LM800-.LFBB42
.LM800:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,709,.LM801-.LFBB42
.LM801:
	movzwl	36(%rsp), %edx
	.stabn	68,0,709,.LM802-.LFBB42
.LM802:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,710,.LM803-.LFBB42
.LM803:
	movl	$0, %eax
.L214:
	.stabn	68,0,711,.LM804-.LFBB42
.LM804:
	addq	$40, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE70:
	.size	bga_get_xyoffset, .-bga_get_xyoffset
	.stabs	"retxoff:(0,3)",128,0,705,38
	.stabs	"retyoff:(0,3)",128,0,705,36
	.stabn	192,0,0,.LFBB42-.LFBB42
	.stabn	224,0,0,.Lscope42-.LFBB42
.Lscope42:
	.stabs	"",36,0,0,.Lscope42-.LFBB42
	.stabs	"vbe_read:F(0,25)",36,0,713,vbe_read
	.stabs	"ghpdev:p(0,5)",160,0,713,16
	.stabs	"outp:p(0,5)",160,0,713,8
	.stabs	"rdsz:p(0,25)",160,0,713,0
	.globl	vbe_read
	.type	vbe_read, @function
vbe_read:
	.stabn	68,0,714,.LM805-.LFBB43
.LM805:
.LFBB43:
.LFB71:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L218:
	leaq	.L218(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L218, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,715,.LM806-.LFBB43
.LM806:
	movq	(%rsp), %rax
	.stabn	68,0,716,.LM807-.LFBB43
.LM807:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	vbe_read, .-vbe_read
.Lscope43:
	.stabs	"",36,0,0,.Lscope43-.LFBB43
	.stabs	"vbe_write:F(0,25)",36,0,718,vbe_write
	.stabs	"ghpdev:p(0,5)",160,0,718,16
	.stabs	"inp:p(0,5)",160,0,718,8
	.stabs	"wesz:p(0,25)",160,0,718,0
	.globl	vbe_write
	.type	vbe_write, @function
vbe_write:
	.stabn	68,0,719,.LM808-.LFBB44
.LM808:
.LFBB44:
.LFB72:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L221:
	leaq	.L221(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L221, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,720,.LM809-.LFBB44
.LM809:
	movq	(%rsp), %rax
	.stabn	68,0,721,.LM810-.LFBB44
.LM810:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE72:
	.size	vbe_write, .-vbe_write
.Lscope44:
	.stabs	"",36,0,0,.Lscope44-.LFBB44
	.stabs	"vbe_ioctrl:F(0,28)",36,0,723,vbe_ioctrl
	.stabs	"ghpdev:p(0,5)",160,0,723,16
	.stabs	"outp:p(0,5)",160,0,723,8
	.stabs	"iocode:p(0,8)",160,0,723,0
	.globl	vbe_ioctrl
	.type	vbe_ioctrl, @function
vbe_ioctrl:
	.stabn	68,0,724,.LM811-.LFBB45
.LM811:
.LFBB45:
.LFB73:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L224:
	leaq	.L224(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L224, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,725,.LM812-.LFBB45
.LM812:
	movq	$-1, %rax
	.stabn	68,0,726,.LM813-.LFBB45
.LM813:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE73:
	.size	vbe_ioctrl, .-vbe_ioctrl
.Lscope45:
	.stabs	"",36,0,0,.Lscope45-.LFBB45
	.stabs	"vbe_flush:F(0,1)",36,0,728,vbe_flush
	.stabs	"ghpdev:p(0,5)",160,0,728,0
	.globl	vbe_flush
	.type	vbe_flush, @function
vbe_flush:
	.stabn	68,0,729,.LM814-.LFBB46
.LM814:
.LFBB46:
.LFB74:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
.L229:
	leaq	.L229(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L229, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,730,.LM815-.LFBB46
.LM815:
	movq	(%rsp), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,732,.LM816-.LFBB46
.LM816:
	movq	32(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,732,.LM817-.LFBB46
.LM817:
	movq	%rax, 24(%rsp)
	.stabn	68,0,733,.LM818-.LFBB46
.LM818:
	movq	32(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,733,.LM819-.LFBB46
.LM819:
	movq	%rax, 16(%rsp)
	.stabn	68,0,734,.LM820-.LFBB46
.LM820:
	movq	$0, 48(%rsp)
	.stabn	68,0,734,.LM821-.LFBB46
.LM821:
	movq	$0, 40(%rsp)
	.stabn	68,0,735,.LM822-.LFBB46
.LM822:
	movq	32(%rsp), %rax
	movq	8(%rax), %rdx
	.stabn	68,0,735,.LM823-.LFBB46
.LM823:
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,735,.LM824-.LFBB46
.LM824:
	imulq	%rax, %rdx
	.stabn	68,0,735,.LM825-.LFBB46
.LM825:
	movq	32(%rsp), %rax
	movq	56(%rax), %rax
	.stabn	68,0,735,.LM826-.LFBB46
.LM826:
	imulq	%rdx, %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,736,.LM827-.LFBB46
.LM827:
	jmp	.L226
.L227:
	.stabn	68,0,738,.LM828-.LFBB46
.LM828:
	movq	40(%rsp), %rax
	leaq	0(,%rax,8), %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,738,.LM829-.LFBB46
.LM829:
	movq	40(%rsp), %rdx
	leaq	0(,%rdx,8), %rcx
	movq	16(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,738,.LM830-.LFBB46
.LM830:
	movq	(%rax), %rax
	.stabn	68,0,738,.LM831-.LFBB46
.LM831:
	movq	%rax, (%rdx)
	.stabn	68,0,739,.LM832-.LFBB46
.LM832:
	addq	$1, 40(%rsp)
	.stabn	68,0,736,.LM833-.LFBB46
.LM833:
	addq	$8, 48(%rsp)
.L226:
	.stabn	68,0,736,.LM834-.LFBB46
.LM834:
	movq	48(%rsp), %rax
	cmpq	8(%rsp), %rax
	jb	.L227
	.stabn	68,0,741,.LM835-.LFBB46
.LM835:
	nop
	.stabn	68,0,742,.LM836-.LFBB46
.LM836:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE74:
	.size	vbe_flush, .-vbe_flush
	.stabs	"kghp:(0,14)",128,0,730,32
	.stabs	"s:(0,75)",128,0,732,24
	.stabs	"d:(0,75)",128,0,733,16
	.stabs	"i:(0,17)",128,0,734,48
	.stabs	"j:(0,17)",128,0,734,40
	.stabs	"e:(0,17)",128,0,735,8
	.stabn	192,0,0,.LFBB46-.LFBB46
	.stabn	224,0,0,.Lscope46-.LFBB46
.Lscope46:
	.stabs	"",36,0,0,.Lscope46-.LFBB46
	.stabs	"vbe_set_bank:F(0,28)",36,0,744,vbe_set_bank
	.stabs	"ghpdev:p(0,5)",160,0,744,8
	.stabs	"bnr:p(0,28)",160,0,744,0
	.globl	vbe_set_bank
	.type	vbe_set_bank, @function
vbe_set_bank:
	.stabn	68,0,745,.LM837-.LFBB47
.LM837:
.LFBB47:
.LFB75:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L232:
	leaq	.L232(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L232, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,746,.LM838-.LFBB47
.LM838:
	movq	$-1, %rax
	.stabn	68,0,747,.LM839-.LFBB47
.LM839:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	vbe_set_bank, .-vbe_set_bank
.Lscope47:
	.stabs	"",36,0,0,.Lscope47-.LFBB47
	.stabs	"vbe_readpix:F(0,18)",36,0,749,vbe_readpix
	.stabs	"ghpdev:p(0,5)",160,0,749,16
	.stabs	"x:p(0,8)",160,0,749,8
	.stabs	"y:p(0,8)",160,0,749,0
	.globl	vbe_readpix
	.type	vbe_readpix, @function
vbe_readpix:
	.stabn	68,0,750,.LM840-.LFBB48
.LM840:
.LFBB48:
.LFB76:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L235:
	leaq	.L235(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L235, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,751,.LM841-.LFBB48
.LM841:
	movl	$0, %eax
	.stabn	68,0,752,.LM842-.LFBB48
.LM842:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE76:
	.size	vbe_readpix, .-vbe_readpix
.Lscope48:
	.stabs	"",36,0,0,.Lscope48-.LFBB48
	.stabs	"vbe_writepix:F(0,1)",36,0,754,vbe_writepix
	.stabs	"ghpdev:p(0,5)",160,0,754,24
	.stabs	"pix:p(0,18)",160,0,754,20
	.stabs	"x:p(0,8)",160,0,754,8
	.stabs	"y:p(0,8)",160,0,754,0
	.globl	vbe_writepix
	.type	vbe_writepix, @function
vbe_writepix:
	.stabn	68,0,755,.LM843-.LFBB49
.LM843:
.LFBB49:
.LFB77:
	.cfi_startproc
	endbr64
	subq	$64, %rsp
	.cfi_def_cfa_offset 72
.L239:
	leaq	.L239(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L239, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,756,.LM844-.LFBB49
.LM844:
	movq	24(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,758,.LM845-.LFBB49
.LM845:
	movq	56(%rsp), %rax
	movq	48(%rax), %rax
	.stabn	68,0,758,.LM846-.LFBB49
.LM846:
	cmpq	$24, %rax
	jne	.L237
.LBB23:
	.stabn	68,0,760,.LM847-.LFBB49
.LM847:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,760,.LM848-.LFBB49
.LM848:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,760,.LM849-.LFBB49
.LM849:
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,760,.LM850-.LFBB49
.LM850:
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,761,.LM851-.LFBB49
.LM851:
	movq	56(%rsp), %rax
	movq	32(%rax), %rdx
	.stabn	68,0,761,.LM852-.LFBB49
.LM852:
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,761,.LM853-.LFBB49
.LM853:
	movq	%rax, 32(%rsp)
	.stabn	68,0,762,.LM854-.LFBB49
.LM854:
	movl	20(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,762,.LM855-.LFBB49
.LM855:
	movq	32(%rsp), %rax
	movb	%dl, (%rax)
	.stabn	68,0,763,.LM856-.LFBB49
.LM856:
	movl	20(%rsp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.stabn	68,0,763,.LM857-.LFBB49
.LM857:
	movq	32(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,763,.LM858-.LFBB49
.LM858:
	movb	%dl, (%rax)
	.stabn	68,0,764,.LM859-.LFBB49
.LM859:
	movl	20(%rsp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	.stabn	68,0,764,.LM860-.LFBB49
.LM860:
	movq	32(%rsp), %rax
	addq	$2, %rax
	.stabn	68,0,764,.LM861-.LFBB49
.LM861:
	movb	%dl, (%rax)
	.stabn	68,0,765,.LM862-.LFBB49
.LM862:
	jmp	.L236
.L237:
.LBE23:
	.stabn	68,0,767,.LM863-.LFBB49
.LM863:
	movq	56(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,767,.LM864-.LFBB49
.LM864:
	movq	%rax, 48(%rsp)
	.stabn	68,0,768,.LM865-.LFBB49
.LM865:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,768,.LM866-.LFBB49
.LM866:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,768,.LM867-.LFBB49
.LM867:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,768,.LM868-.LFBB49
.LM868:
	leaq	0(,%rax,4), %rdx
	movq	48(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,768,.LM869-.LFBB49
.LM869:
	movl	20(%rsp), %eax
	movl	%eax, (%rdx)
	.stabn	68,0,769,.LM870-.LFBB49
.LM870:
	nop
.L236:
	.stabn	68,0,770,.LM871-.LFBB49
.LM871:
	addq	$64, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE77:
	.size	vbe_writepix, .-vbe_writepix
	.stabs	"kghp:(0,14)",128,0,756,56
	.stabs	"p24bas:(0,10)",128,0,757,32
	.stabs	"phybas:(0,76)",128,0,767,48
	.stabn	192,0,0,.LFBB49-.LFBB49
	.stabs	"p24adr:(0,17)",128,0,760,40
	.stabn	192,0,0,.LBB23-.LFBB49
	.stabn	224,0,0,.LBE23-.LFBB49
	.stabn	224,0,0,.Lscope49-.LFBB49
.Lscope49:
	.stabs	"",36,0,0,.Lscope49-.LFBB49
	.stabs	"vbe_dxreadpix:F(0,18)",36,0,772,vbe_dxreadpix
	.stabs	"ghpdev:p(0,5)",160,0,772,16
	.stabs	"x:p(0,8)",160,0,772,8
	.stabs	"y:p(0,8)",160,0,772,0
	.globl	vbe_dxreadpix
	.type	vbe_dxreadpix, @function
vbe_dxreadpix:
	.stabn	68,0,773,.LM872-.LFBB50
.LM872:
.LFBB50:
.LFB78:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L242:
	leaq	.L242(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L242, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,774,.LM873-.LFBB50
.LM873:
	movl	$0, %eax
	.stabn	68,0,775,.LM874-.LFBB50
.LM874:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE78:
	.size	vbe_dxreadpix, .-vbe_dxreadpix
.Lscope50:
	.stabs	"",36,0,0,.Lscope50-.LFBB50
	.stabs	"vbe_dxwritepix:F(0,1)",36,0,777,vbe_dxwritepix
	.stabs	"ghpdev:p(0,5)",160,0,777,24
	.stabs	"pix:p(0,18)",160,0,777,20
	.stabs	"x:p(0,8)",160,0,777,8
	.stabs	"y:p(0,8)",160,0,777,0
	.globl	vbe_dxwritepix
	.type	vbe_dxwritepix, @function
vbe_dxwritepix:
	.stabn	68,0,778,.LM875-.LFBB51
.LM875:
.LFBB51:
.LFB79:
	.cfi_startproc
	endbr64
	subq	$64, %rsp
	.cfi_def_cfa_offset 72
.L246:
	leaq	.L246(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L246, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movl	%esi, 20(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,779,.LM876-.LFBB51
.LM876:
	movq	24(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,781,.LM877-.LFBB51
.LM877:
	movq	56(%rsp), %rax
	movq	48(%rax), %rax
	.stabn	68,0,781,.LM878-.LFBB51
.LM878:
	cmpq	$24, %rax
	jne	.L244
.LBB24:
	.stabn	68,0,783,.LM879-.LFBB51
.LM879:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,783,.LM880-.LFBB51
.LM880:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,783,.LM881-.LFBB51
.LM881:
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,783,.LM882-.LFBB51
.LM882:
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,784,.LM883-.LFBB51
.LM883:
	movq	56(%rsp), %rax
	movq	24(%rax), %rdx
	.stabn	68,0,784,.LM884-.LFBB51
.LM884:
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,784,.LM885-.LFBB51
.LM885:
	movq	%rax, 32(%rsp)
	.stabn	68,0,785,.LM886-.LFBB51
.LM886:
	movl	20(%rsp), %eax
	movl	%eax, %edx
	.stabn	68,0,785,.LM887-.LFBB51
.LM887:
	movq	32(%rsp), %rax
	movb	%dl, (%rax)
	.stabn	68,0,786,.LM888-.LFBB51
.LM888:
	movl	20(%rsp), %eax
	shrl	$8, %eax
	movl	%eax, %edx
	.stabn	68,0,786,.LM889-.LFBB51
.LM889:
	movq	32(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,786,.LM890-.LFBB51
.LM890:
	movb	%dl, (%rax)
	.stabn	68,0,787,.LM891-.LFBB51
.LM891:
	movl	20(%rsp), %eax
	shrl	$16, %eax
	movl	%eax, %edx
	.stabn	68,0,787,.LM892-.LFBB51
.LM892:
	movq	32(%rsp), %rax
	addq	$2, %rax
	.stabn	68,0,787,.LM893-.LFBB51
.LM893:
	movb	%dl, (%rax)
	.stabn	68,0,788,.LM894-.LFBB51
.LM894:
	jmp	.L243
.L244:
.LBE24:
	.stabn	68,0,790,.LM895-.LFBB51
.LM895:
	movq	56(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,790,.LM896-.LFBB51
.LM896:
	movq	%rax, 48(%rsp)
	.stabn	68,0,791,.LM897-.LFBB51
.LM897:
	movq	56(%rsp), %rax
	movq	8(%rax), %rax
	.stabn	68,0,791,.LM898-.LFBB51
.LM898:
	imulq	(%rsp), %rax
	movq	%rax, %rdx
	.stabn	68,0,791,.LM899-.LFBB51
.LM899:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,791,.LM900-.LFBB51
.LM900:
	leaq	0(,%rax,4), %rdx
	movq	48(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,791,.LM901-.LFBB51
.LM901:
	movl	20(%rsp), %eax
	movl	%eax, (%rdx)
	.stabn	68,0,792,.LM902-.LFBB51
.LM902:
	nop
.L243:
	.stabn	68,0,793,.LM903-.LFBB51
.LM903:
	addq	$64, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE79:
	.size	vbe_dxwritepix, .-vbe_dxwritepix
	.stabs	"kghp:(0,14)",128,0,779,56
	.stabs	"p24bas:(0,10)",128,0,780,32
	.stabs	"phybas:(0,76)",128,0,790,48
	.stabn	192,0,0,.LFBB51-.LFBB51
	.stabs	"p24adr:(0,17)",128,0,783,40
	.stabn	192,0,0,.LBB24-.LFBB51
	.stabn	224,0,0,.LBE24-.LFBB51
	.stabn	224,0,0,.Lscope51-.LFBB51
.Lscope51:
	.stabs	"",36,0,0,.Lscope51-.LFBB51
	.stabs	"vbe_set_xy:F(0,28)",36,0,795,vbe_set_xy
	.stabs	"ghpdev:p(0,5)",160,0,795,16
	.stabs	"x:p(0,8)",160,0,795,8
	.stabs	"y:p(0,8)",160,0,795,0
	.globl	vbe_set_xy
	.type	vbe_set_xy, @function
vbe_set_xy:
	.stabn	68,0,796,.LM904-.LFBB52
.LM904:
.LFBB52:
.LFB80:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L249:
	leaq	.L249(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L249, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,797,.LM905-.LFBB52
.LM905:
	movq	$-1, %rax
	.stabn	68,0,798,.LM906-.LFBB52
.LM906:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE80:
	.size	vbe_set_xy, .-vbe_set_xy
.Lscope52:
	.stabs	"",36,0,0,.Lscope52-.LFBB52
	.stabs	"vbe_set_vwh:F(0,28)",36,0,800,vbe_set_vwh
	.stabs	"ghpdev:p(0,5)",160,0,800,16
	.stabs	"vwt:p(0,8)",160,0,800,8
	.stabs	"vhi:p(0,8)",160,0,800,0
	.globl	vbe_set_vwh
	.type	vbe_set_vwh, @function
vbe_set_vwh:
	.stabn	68,0,801,.LM907-.LFBB53
.LM907:
.LFBB53:
.LFB81:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L252:
	leaq	.L252(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L252, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,802,.LM908-.LFBB53
.LM908:
	movq	$-1, %rax
	.stabn	68,0,803,.LM909-.LFBB53
.LM909:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	vbe_set_vwh, .-vbe_set_vwh
.Lscope53:
	.stabs	"",36,0,0,.Lscope53-.LFBB53
	.stabs	"vbe_set_xyoffset:F(0,28)",36,0,805,vbe_set_xyoffset
	.stabs	"ghpdev:p(0,5)",160,0,805,16
	.stabs	"xoff:p(0,8)",160,0,805,8
	.stabs	"yoff:p(0,8)",160,0,805,0
	.globl	vbe_set_xyoffset
	.type	vbe_set_xyoffset, @function
vbe_set_xyoffset:
	.stabn	68,0,806,.LM910-.LFBB54
.LM910:
.LFBB54:
.LFB82:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L255:
	leaq	.L255(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L255, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,807,.LM911-.LFBB54
.LM911:
	movq	$-1, %rax
	.stabn	68,0,808,.LM912-.LFBB54
.LM912:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	vbe_set_xyoffset, .-vbe_set_xyoffset
.Lscope54:
	.stabs	"",36,0,0,.Lscope54-.LFBB54
	.stabs	"vbe_get_xy:F(0,28)",36,0,810,vbe_get_xy
	.stabs	"ghpdev:p(0,5)",160,0,810,16
	.stabs	"rx:p(0,77)",160,0,810,8
	.stabs	"ry:p(0,77)",160,0,810,0
	.globl	vbe_get_xy
	.type	vbe_get_xy, @function
vbe_get_xy:
	.stabn	68,0,811,.LM913-.LFBB55
.LM913:
.LFBB55:
.LFB83:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L258:
	leaq	.L258(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L258, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,812,.LM914-.LFBB55
.LM914:
	movq	$-1, %rax
	.stabn	68,0,813,.LM915-.LFBB55
.LM915:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE83:
	.size	vbe_get_xy, .-vbe_get_xy
.Lscope55:
	.stabs	"",36,0,0,.Lscope55-.LFBB55
	.stabs	"vbe_get_vwh:F(0,28)",36,0,815,vbe_get_vwh
	.stabs	"ghpdev:p(0,5)",160,0,815,16
	.stabs	"rvwt:p(0,77)",160,0,815,8
	.stabs	"rvhi:p(0,77)",160,0,815,0
	.globl	vbe_get_vwh
	.type	vbe_get_vwh, @function
vbe_get_vwh:
	.stabn	68,0,816,.LM916-.LFBB56
.LM916:
.LFBB56:
.LFB84:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L261:
	leaq	.L261(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L261, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,817,.LM917-.LFBB56
.LM917:
	movq	$-1, %rax
	.stabn	68,0,818,.LM918-.LFBB56
.LM918:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE84:
	.size	vbe_get_vwh, .-vbe_get_vwh
.Lscope56:
	.stabs	"",36,0,0,.Lscope56-.LFBB56
	.stabs	"vbe_get_xyoffset:F(0,28)",36,0,820,vbe_get_xyoffset
	.stabs	"ghpdev:p(0,5)",160,0,820,16
	.stabs	"rxoff:p(0,77)",160,0,820,8
	.stabs	"ryoff:p(0,77)",160,0,820,0
	.globl	vbe_get_xyoffset
	.type	vbe_get_xyoffset, @function
vbe_get_xyoffset:
	.stabn	68,0,821,.LM919-.LFBB57
.LM919:
.LFBB57:
.LFB85:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L264:
	leaq	.L264(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L264, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,822,.LM920-.LFBB57
.LM920:
	movq	$-1, %rax
	.stabn	68,0,823,.LM921-.LFBB57
.LM921:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE85:
	.size	vbe_get_xyoffset, .-vbe_get_xyoffset
.Lscope57:
	.stabs	"",36,0,0,.Lscope57-.LFBB57
	.stabs	"ret_vramadr_inbnk:F(0,75)",36,0,825,ret_vramadr_inbnk
	.stabs	"ghpdev:p(0,5)",160,0,825,0
	.globl	ret_vramadr_inbnk
	.type	ret_vramadr_inbnk, @function
ret_vramadr_inbnk:
	.stabn	68,0,826,.LM922-.LFBB58
.LM922:
.LFBB58:
.LFB86:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L267:
	leaq	.L267(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L267, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,827,.LM923-.LFBB58
.LM923:
	movq	(%rsp), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,828,.LM924-.LFBB58
.LM924:
	movq	16(%rsp), %rax
	movq	24(%rax), %rcx
	.stabn	68,0,828,.LM925-.LFBB58
.LM925:
	movq	16(%rsp), %rax
	movq	8(%rax), %rdx
	.stabn	68,0,828,.LM926-.LFBB58
.LM926:
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,828,.LM927-.LFBB58
.LM927:
	imulq	%rax, %rdx
	.stabn	68,0,828,.LM928-.LFBB58
.LM928:
	movq	16(%rsp), %rax
	movq	56(%rax), %rax
	.stabn	68,0,828,.LM929-.LFBB58
.LM929:
	imulq	%rax, %rdx
	.stabn	68,0,828,.LM930-.LFBB58
.LM930:
	movq	16(%rsp), %rax
	movq	88(%rax), %rax
	.stabn	68,0,828,.LM931-.LFBB58
.LM931:
	imulq	%rdx, %rax
	.stabn	68,0,828,.LM932-.LFBB58
.LM932:
	addq	%rcx, %rax
	.stabn	68,0,828,.LM933-.LFBB58
.LM933:
	movq	%rax, 8(%rsp)
	.stabn	68,0,830,.LM934-.LFBB58
.LM934:
	movq	8(%rsp), %rax
	.stabn	68,0,831,.LM935-.LFBB58
.LM935:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE86:
	.size	ret_vramadr_inbnk, .-ret_vramadr_inbnk
	.stabs	"kghp:(0,14)",128,0,827,16
	.stabs	"d:(0,75)",128,0,828,8
	.stabn	192,0,0,.LFBB58-.LFBB58
	.stabn	224,0,0,.Lscope58-.LFBB58
.Lscope58:
	.stabs	"",36,0,0,.Lscope58-.LFBB58
	.stabs	"bga_disp_nxtbank:F(0,1)",36,0,833,bga_disp_nxtbank
	.stabs	"ghpdev:p(0,5)",160,0,833,0
	.globl	bga_disp_nxtbank
	.type	bga_disp_nxtbank, @function
bga_disp_nxtbank:
	.stabn	68,0,834,.LM936-.LFBB59
.LM936:
.LFBB59:
.LFB87:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L272:
	leaq	.L272(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L272, %r11
	addq	%r11, %rbx
	movq	%rdi, (%rsp)
	.stabn	68,0,835,.LM937-.LFBB59
.LM937:
	movq	(%rsp), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,836,.LM938-.LFBB59
.LM938:
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,836,.LM939-.LFBB59
.LM939:
	movl	%eax, %edx
	.stabn	68,0,836,.LM940-.LFBB59
.LM940:
	movq	16(%rsp), %rax
	movq	88(%rax), %rax
	.stabn	68,0,836,.LM941-.LFBB59
.LM941:
	imull	%edx, %eax
	.stabn	68,0,836,.LM942-.LFBB59
.LM942:
	addl	$1, %eax
	movw	%ax, 14(%rsp)
	.stabn	68,0,837,.LM943-.LFBB59
.LM943:
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,837,.LM944-.LFBB59
.LM944:
	movl	%eax, %edx
	.stabn	68,0,837,.LM945-.LFBB59
.LM945:
	movq	16(%rsp), %rax
	movq	88(%rax), %rax
	.stabn	68,0,837,.LM946-.LFBB59
.LM946:
	imull	%edx, %eax
	movw	%ax, 12(%rsp)
	.stabn	68,0,839,.LM947-.LFBB59
.LM947:
	movzwl	14(%rsp), %eax
	movl	%eax, %esi
	movl	$7, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,840,.LM948-.LFBB59
.LM948:
	movzwl	12(%rsp), %eax
	movl	%eax, %esi
	movl	$9, %edi
	movabsq	$bga_write_reg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,842,.LM949-.LFBB59
.LM949:
	movq	16(%rsp), %rax
	movq	88(%rax), %rdx
	.stabn	68,0,842,.LM950-.LFBB59
.LM950:
	movq	16(%rsp), %rax
	movq	%rdx, 80(%rax)
	.stabn	68,0,843,.LM951-.LFBB59
.LM951:
	movq	16(%rsp), %rax
	movq	88(%rax), %rax
	.stabn	68,0,843,.LM952-.LFBB59
.LM952:
	leaq	1(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 88(%rax)
	.stabn	68,0,844,.LM953-.LFBB59
.LM953:
	movq	16(%rsp), %rax
	movq	88(%rax), %rdx
	.stabn	68,0,844,.LM954-.LFBB59
.LM954:
	movq	16(%rsp), %rax
	movq	72(%rax), %rax
	.stabn	68,0,844,.LM955-.LFBB59
.LM955:
	cmpq	%rax, %rdx
	jbe	.L271
	.stabn	68,0,846,.LM956-.LFBB59
.LM956:
	movq	16(%rsp), %rax
	movq	$0, 88(%rax)
	.stabn	68,0,848,.LM957-.LFBB59
.LM957:
	nop
.L271:
	nop
	.stabn	68,0,849,.LM958-.LFBB59
.LM958:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE87:
	.size	bga_disp_nxtbank, .-bga_disp_nxtbank
	.stabs	"kghp:(0,14)",128,0,835,16
	.stabs	"h:(0,3)",128,0,836,14
	.stabs	"ofy:(0,3)",128,0,837,12
	.stabn	192,0,0,.LFBB59-.LFBB59
	.stabn	224,0,0,.Lscope59-.LFBB59
.Lscope59:
	.stabs	"",36,0,0,.Lscope59-.LFBB59
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
