	.file	"memdivmer.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/memdivmer.c",100,0,2,.Ltext0
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
	.stabs	"__list_del:f(0,1)",36,0,16,__list_del
	.stabs	"prev:p(0,2)",160,0,16,8
	.stabs	"next:p(0,2)",160,0,16,0
	.type	__list_del, @function
__list_del:
	.stabn	68,0,17,.LM5-.LFBB2
.LM5:
.LFBB2:
.LFB1:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L6:
	leaq	.L6(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L6, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,18,.LM6-.LFBB2
.LM6:
	movq	(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,19,.LM7-.LFBB2
.LM7:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,20,.LM8-.LFBB2
.LM8:
	nop
	.stabn	68,0,21,.LM9-.LFBB2
.LM9:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE1:
	.size	__list_del, .-__list_del
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"__list_add:f(0,1)",36,0,23,__list_add
	.stabs	"new:p(0,2)",160,0,23,16
	.stabs	"prev:p(0,2)",160,0,23,8
	.stabs	"next:p(0,2)",160,0,23,0
	.type	__list_add, @function
__list_add:
	.stabn	68,0,24,.LM10-.LFBB3
.LM10:
.LFBB3:
.LFB2:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L9:
	leaq	.L9(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L9, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,25,.LM11-.LFBB3
.LM11:
	movq	(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,26,.LM12-.LFBB3
.LM12:
	movq	16(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,27,.LM13-.LFBB3
.LM13:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,28,.LM14-.LFBB3
.LM14:
	movq	8(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, 8(%rax)
	.stabn	68,0,29,.LM15-.LFBB3
.LM15:
	nop
	.stabn	68,0,30,.LM16-.LFBB3
.LM16:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE2:
	.size	__list_add, .-__list_add
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"list_add:f(0,1)",36,0,32,list_add
	.stabs	"new:p(0,2)",160,0,32,8
	.stabs	"head:p(0,2)",160,0,32,0
	.type	list_add, @function
list_add:
	.stabn	68,0,33,.LM17-.LFBB4
.LM17:
.LFBB4:
.LFB3:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L12:
	leaq	.L12(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L12, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,34,.LM18-.LFBB4
.LM18:
	movq	(%rsp), %rdx
	movq	8(%rdx), %rdx
	.stabn	68,0,34,.LM19-.LFBB4
.LM19:
	movq	(%rsp), %rsi
	movq	8(%rsp), %rcx
	movq	%rcx, %rdi
	movabsq	$__list_add@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	call	*%rax
	.stabn	68,0,35,.LM20-.LFBB4
.LM20:
	nop
	.stabn	68,0,36,.LM21-.LFBB4
.LM21:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE3:
	.size	list_add, .-list_add
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"list_del:f(0,1)",36,0,50,list_del
	.stabs	"entry:p(0,2)",160,0,50,0
	.type	list_del, @function
list_del:
	.stabn	68,0,51,.LM22-.LFBB5
.LM22:
.LFBB5:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$8, %rsp
	.cfi_def_cfa_offset 24
.L15:
	leaq	.L15(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L15, %r11
	addq	%r11, %rbx
	movq	%rdi, (%rsp)
	.stabn	68,0,52,.LM23-.LFBB5
.LM23:
	movq	(%rsp), %rax
	movq	8(%rax), %rdx
	.stabn	68,0,52,.LM24-.LFBB5
.LM24:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	.stabn	68,0,52,.LM25-.LFBB5
.LM25:
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$__list_del@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,53,.LM26-.LFBB5
.LM26:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,54,.LM27-.LFBB5
.LM27:
	nop
	.stabn	68,0,55,.LM28-.LFBB5
.LM28:
	addq	$8, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE6:
	.size	list_del, .-list_del
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"list_is_empty_careful:f(0,6)=(0,7)=(0,8)=@s64;r(0,8);01000000000000000000000;00777777777777777777777;",36,0,79,list_is_empty_careful
	.stabs	"bool_t:t(0,6)",128,0,21,0
	.stabs	"sint_t:t(0,7)",128,0,16,0
	.stabs	"long int:t(0,8)",128,0,0,0
	.stabs	"head:p(0,9)=*(0,10)=k(0,3)",160,0,79,0
	.stabs	"list_h_t:t(0,3)",128,0,11,0
	.type	list_is_empty_careful, @function
list_is_empty_careful:
	.stabn	68,0,80,.LM29-.LFBB6
.LM29:
.LFBB6:
.LFB10:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L19:
	leaq	.L19(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L19, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,81,.LM30-.LFBB6
.LM30:
	movq	(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,82,.LM31-.LFBB6
.LM31:
	movq	16(%rsp), %rax
	cmpq	(%rsp), %rax
	jne	.L17
	.stabn	68,0,82,.LM32-.LFBB6
.LM32:
	movq	(%rsp), %rax
	movq	(%rax), %rax
	.stabn	68,0,82,.LM33-.LFBB6
.LM33:
	cmpq	%rax, 16(%rsp)
	jne	.L17
	.stabn	68,0,84,.LM34-.LFBB6
.LM34:
	movl	$1, %eax
	jmp	.L18
.L17:
	.stabn	68,0,86,.LM35-.LFBB6
.LM35:
	movl	$0, %eax
.L18:
	.stabn	68,0,87,.LM36-.LFBB6
.LM36:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE10:
	.size	list_is_empty_careful, .-list_is_empty_careful
	.stabs	"next:(0,2)",128,0,81,16
	.stabn	192,0,0,.LFBB6-.LFBB6
	.stabn	224,0,0,.Lscope6-.LFBB6
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"x86_rdtsc:f(0,11)=(0,12)=@s64;r(0,12);0;01777777777777777777777;",36,0,250,x86_rdtsc
	.stabs	"u64_t:t(0,11)",128,0,11,0
	.stabs	"long unsigned int:t(0,12)",128,0,0,0
	.type	x86_rdtsc, @function
x86_rdtsc:
	.stabs	"../include/halinc/io.h",132,0,0,.Ltext2
.Ltext2:
	.stabn	68,0,251,.LM37-.LFBB7
.LM37:
.LFBB7:
.LFB26:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L22:
	leaq	.L22(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L22, %r11
	addq	%r11, %rax
	.stabn	68,0,254,.LM38-.LFBB7
.LM38:
#APP
# 254 "../include/halinc/io.h" 1
	rdtsc
# 0 "" 2
#NO_APP
	movl	%eax, 12(%rsp)
	movl	%edx, 8(%rsp)
	.stabn	68,0,258,.LM39-.LFBB7
.LM39:
	movl	8(%rsp), %eax
	.stabn	68,0,258,.LM40-.LFBB7
.LM40:
	salq	$32, %rax
	movq	%rax, %rdx
	.stabn	68,0,258,.LM41-.LFBB7
.LM41:
	movl	12(%rsp), %eax
	.stabn	68,0,258,.LM42-.LFBB7
.LM42:
	orq	%rdx, %rax
	.stabn	68,0,259,.LM43-.LFBB7
.LM43:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE26:
	.size	x86_rdtsc, .-x86_rdtsc
	.stabs	"leax:(0,13)=(0,14)=r(0,14);0;037777777777;",128,0,252,12
	.stabs	"u32_t:t(0,13)",128,0,10,0
	.stabs	"unsigned int:t(0,14)",128,0,0,0
	.stabs	"ledx:(0,13)",128,0,252,8
	.stabn	192,0,0,.LFBB7-.LFBB7
	.stabn	224,0,0,.Lscope7-.LFBB7
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"search_64rlbits:f(0,7)",36,0,261,search_64rlbits
	.stabs	"val:p(0,11)",160,0,261,0
	.type	search_64rlbits, @function
search_64rlbits:
	.stabn	68,0,262,.LM44-.LFBB8
.LM44:
.LFBB8:
.LFB27:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L25:
	leaq	.L25(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L25, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,263,.LM45-.LFBB8
.LM45:
	movq	$-1, 16(%rsp)
	.stabn	68,0,264,.LM46-.LFBB8
.LM46:
	movq	16(%rsp), %rax
#APP
# 264 "../include/halinc/io.h" 1
	bsrq (%rsp),%rax 	

# 0 "" 2
#NO_APP
	movq	%rax, 16(%rsp)
	.stabn	68,0,268,.LM47-.LFBB8
.LM47:
	movq	16(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,269,.LM48-.LFBB8
.LM48:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE27:
	.size	search_64rlbits, .-search_64rlbits
	.stabs	"retbitnr:(0,7)",128,0,263,16
	.stabn	192,0,0,.LFBB8-.LFBB8
	.stabn	224,0,0,.Lscope8-.LFBB8
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"mm_update_memmgrob:F(0,1)",36,0,7,mm_update_memmgrob
	.stabs	"realpnr:p(0,15)=(0,12)",160,0,7,8
	.stabs	"flgs:p(0,15)",160,0,7,0
	.stabs	"uint_t:t(0,15)",128,0,17,0
	.globl	mm_update_memmgrob
	.type	mm_update_memmgrob, @function
mm_update_memmgrob:
	.stabs	"../hal/x86/memdivmer.c",132,0,0,.Ltext3
.Ltext3:
	.stabn	68,0,8,.LM49-.LFBB9
.LM49:
.LFBB9:
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
.L31:
	leaq	.L31(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L31, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,10,.LM50-.LFBB9
.LM50:
	cmpq	$0, (%rsp)
	jne	.L27
	.stabn	68,0,12,.LM51-.LFBB9
.LM51:
	leaq	24(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	leaq	16(%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,13,.LM52-.LFBB9
.LM52:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	120(%rax), %rdx
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,14,.LM53-.LFBB9
.LM53:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	112(%rax), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rdx
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rdx, 112(%rax)
	.stabn	68,0,15,.LM54-.LFBB9
.LM54:
	leaq	24(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	leaq	16(%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinunlock_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L27:
	.stabn	68,0,17,.LM55-.LFBB9
.LM55:
	cmpq	$1, (%rsp)
	jne	.L30
	.stabn	68,0,19,.LM56-.LFBB9
.LM56:
	leaq	24(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	leaq	16(%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,20,.LM57-.LFBB9
.LM57:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	120(%rax), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rdx
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rdx, 120(%rax)
	.stabn	68,0,21,.LM58-.LFBB9
.LM58:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	112(%rax), %rdx
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rdx, 112(%rax)
	.stabn	68,0,22,.LM59-.LFBB9
.LM59:
	leaq	24(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	leaq	16(%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinunlock_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,24,.LM60-.LFBB9
.LM60:
	nop
.L30:
	nop
	.stabn	68,0,25,.LM61-.LFBB9
.LM61:
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
	.size	mm_update_memmgrob, .-mm_update_memmgrob
	.stabs	"cpuflg:(0,16)=(0,11)",128,0,9,24
	.stabs	"cpuflg_t:t(0,16)",128,0,18,0
	.stabn	192,0,0,.LFBB9-.LFBB9
	.stabn	224,0,0,.Lscope9-.LFBB9
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"mm_update_memarea:F(0,1)",36,0,27,mm_update_memarea
	.stabs	"malokp:p(0,17)=*(0,18)=(0,19)=xss_MEMAREA:",160,0,27,16
	.stabs	"pgnr:p(0,15)",160,0,27,8
	.stabs	"flgs:p(0,15)",160,0,27,0
	.stabs	"s_MEMAREA:T(0,19)=s5912ma_list:(0,3),0,128;ma_lock:(0,20)=(0,21)=s4lock:(0,22)=B(0,13),0,32;;,128,32;ma_stus:(0,15),192,64;ma_flgs:(0,15),256,64;ma_type:(0,15),320,64;ma_sem:(0,23)=(0,24)=xss_SEM:,384,448;ma_waitlst:(0,25)=(0,26)=xss_WAIT_L_HEAD:,832,320;ma_maxpages:(0,15),1152,64;ma_allocpages:(0,15),1216,64;ma_freepages:(0,15),1280,64;ma_resvpages:(0,15),1344,64;ma_horizline:(0,15),1408,64;ma_logicstart:(0,27)=(0,12),1472,64;ma_logicend:(0,27),1536,64;ma_logicsz:(0,15),1600,64;ma_effectstart:(0,27),1664,64;ma_effectend:(0,27),1728,64;ma_effectsz:(0,15),1792,64;ma_allmsadsclst:(0,3),1856,128;ma_allmsadscnr:(0,15),1984,64;ma_arcpglst:(0,28)=(0,29)=xss_ARCLST:,2048,384;ma_funcobj:(0,30)=(0,31)=xss_MAFUNCOBJS:,2432,320;ma_mdmdata:(0,32)=(0,33)=xss_MEMDIVMER:,2752,44480;ma_privp:(0,34)=*(0,1),47232,64;;",128,0,0,0
	.stabs	"s_SEM:T(0,24)=s56sem_lock:(0,20),0,32;sem_flg:(0,15),64,64;sem_count:(0,7),128,64;sem_waitlst:(0,35)=(0,36)=xss_KWLST:,192,256;;",128,0,0,0
	.stabs	"s_WAIT_L_HEAD:T(0,26)=s40wlh_llist:(0,3),0,128;wlh_lock:(0,20),128,32;wlh_count:(0,37)=(0,38)=xss_ATOMIC:,160,32;wlh_privte:(0,34),192,64;wlh_upfun:(0,39)=*(0,40)=f(0,6),256,64;;",128,0,0,0
	.stabs	"adr_t:t(0,27)",128,0,19,0
	.stabs	"s_ARCLST:T(0,29)=s48al_lru1:(0,3),0,128;al_lru2:(0,3),128,128;al_lru1nr:(0,15),256,64;al_lru2nr:(0,15),320,64;;",128,0,0,0
	.stabs	"s_MAFUNCOBJS:T(0,31)=s40mafo_init:(0,41)=*(0,42)=f(0,43)=(0,11),0,64;mafo_exit:(0,44)=*(0,45)=f(0,43),64,64;mafo_aloc:(0,46)=*(0,47)=f(0,43),128,64;mafo_free:(0,46),192,64;mafo_recy:(0,46),256,64;;",128,0,0,0
	.stabs	"s_MEMDIVMER:T(0,33)=s5560dm_lock:(0,20),0,32;dm_stus:(0,13),32,32;dm_dmmaxindx:(0,15),64,64;dm_phydmindx:(0,15),128,64;dm_predmindx:(0,15),192,64;dm_divnr:(0,15),256,64;dm_mernr:(0,15),320,64;dm_mdmlielst:(0,48)=ar(0,49)=@s64;r(0,49);0;01777777777777777777777;;0;00000000000000000000063;(0,50)=(0,51)=xss_BAFHLST:,384,43264;dm_onemsalst:(0,50),43648,832;;",128,0,0,0
	.stabs	"s_KWLST:T(0,36)=s32wl_lock:(0,20),0,32;wl_tdnr:(0,15),64,64;wl_list:(0,3),128,128;;",128,0,0,0
	.stabs	"s_ATOMIC:T(0,38)=s4a_count:(0,52)=B(0,53)=(0,54)=r(0,54);-2147483648;2147483647;,0,32;;",128,0,0,0
	.stabs	"mmstus_t:t(0,43)",128,0,38,0
	.stabs	"s_BAFHLST:T(0,51)=s104af_lock:(0,20),0,32;af_stus:(0,13),32,32;af_oder:(0,15),64,64;af_oderpnr:(0,15),128,64;af_fobjnr:(0,15),192,64;af_mobjnr:(0,15),256,64;af_alcindx:(0,15),320,64;af_freindx:(0,15),384,64;af_frelst:(0,3),448,128;af_alclst:(0,3),576,128;af_ovelst:(0,3),704,128;;",128,0,0,0
	.stabs	"s32_t:t(0,53)",128,0,14,0
	.stabs	"int:t(0,54)",128,0,0,0
	.globl	mm_update_memarea
	.type	mm_update_memarea, @function
mm_update_memarea:
	.stabn	68,0,28,.LM62-.LFBB10
.LM62:
.LFBB10:
.LFB33:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L39:
	leaq	.L39(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L39, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,29,.LM63-.LFBB10
.LM63:
	cmpq	$0, 16(%rsp)
	je	.L37
	.stabn	68,0,33,.LM64-.LFBB10
.LM64:
	cmpq	$0, (%rsp)
	jne	.L35
	.stabn	68,0,35,.LM65-.LFBB10
.LM65:
	movq	16(%rsp), %rax
	movq	160(%rax), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 160(%rax)
	.stabn	68,0,36,.LM66-.LFBB10
.LM66:
	movq	16(%rsp), %rax
	movq	152(%rax), %rdx
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 152(%rax)
.L35:
	.stabn	68,0,38,.LM67-.LFBB10
.LM67:
	cmpq	$1, (%rsp)
	jne	.L38
	.stabn	68,0,40,.LM68-.LFBB10
.LM68:
	movq	16(%rsp), %rax
	movq	160(%rax), %rdx
	movq	8(%rsp), %rax
	addq	%rax, %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 160(%rax)
	.stabn	68,0,41,.LM69-.LFBB10
.LM69:
	movq	16(%rsp), %rax
	movq	152(%rax), %rax
	subq	8(%rsp), %rax
	movq	%rax, %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 152(%rax)
	.stabn	68,0,43,.LM70-.LFBB10
.LM70:
	jmp	.L38
.L37:
	.stabn	68,0,31,.LM71-.LFBB10
.LM71:
	nop
	jmp	.L32
.L38:
	.stabn	68,0,43,.LM72-.LFBB10
.LM72:
	nop
.L32:
	.stabn	68,0,44,.LM73-.LFBB10
.LM73:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	mm_update_memarea, .-mm_update_memarea
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabs	"retn_divoder:f(0,7)",36,0,46,retn_divoder
	.stabs	"pages:p(0,15)",160,0,46,0
	.type	retn_divoder, @function
retn_divoder:
	.stabn	68,0,47,.LM74-.LFBB11
.LM74:
.LFBB11:
.LFB34:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L43:
	leaq	.L43(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L43, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,48,.LM75-.LFBB11
.LM75:
	movq	(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$search_64rlbits@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,48,.LM76-.LFBB11
.LM76:
	subq	$1, %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,49,.LM77-.LFBB11
.LM77:
	movq	(%rsp), %rax
	subq	$1, %rax
	.stabn	68,0,49,.LM78-.LFBB11
.LM78:
	andq	(%rsp), %rax
	.stabn	68,0,49,.LM79-.LFBB11
.LM79:
	testq	%rax, %rax
	je	.L41
	.stabn	68,0,51,.LM80-.LFBB11
.LM80:
	addq	$1, 16(%rsp)
.L41:
	.stabn	68,0,53,.LM81-.LFBB11
.LM81:
	movq	16(%rsp), %rax
	.stabn	68,0,54,.LM82-.LFBB11
.LM82:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	retn_divoder, .-retn_divoder
	.stabs	"pbits:(0,7)",128,0,48,16
	.stabn	192,0,0,.LFBB11-.LFBB11
	.stabn	224,0,0,.Lscope11-.LFBB11
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabs	"onfrmsa_retn_marea:F(0,17)",36,0,56,onfrmsa_retn_marea
	.stabs	"s_MSADSC:T(0,55)=s40md_list:(0,3),0,128;md_lock:(0,20),128,32;md_indxflgs:(0,56)=(0,57)=xss_MSADFLGS:,160,32;md_phyadrs:(0,58)=(0,59)=xss_PHYADRFLGS:,192,64;md_odlink:(0,34),256,64;;",128,0,0,0
	.stabs	"s_MSADFLGS:T(0,57)=s4mf_olkty:(0,13),0,2;mf_lstty:(0,13),2,1;mf_mocty:(0,13),3,2;mf_marty:(0,13),5,3;mf_uindx:(0,13),8,24;;",128,0,0,0
	.stabs	"s_PHYADRFLGS:T(0,59)=s8paf_alloc:(0,11),0,1;paf_shared:(0,11),1,1;paf_swap:(0,11),2,1;paf_cache:(0,11),3,1;paf_kmap:(0,11),4,1;paf_lock:(0,11),5,1;paf_dirty:(0,11),6,1;paf_busy:(0,11),7,1;paf_rv2:(0,11),8,4;paf_padrs:(0,11),12,52;;",128,0,0,0
	.stabs	"mmobjp:p(0,60)=*(0,61)=(0,62)=xss_MEMMGROB:",160,0,56,16
	.stabs	"freemsa:p(0,63)=*(0,64)=(0,55)",160,0,56,8
	.stabs	"freepgs:p(0,15)",160,0,56,0
	.stabs	"s_MEMMGROB:T(0,62)=s2816mo_list:(0,3),0,128;mo_lock:(0,20),128,32;mo_stus:(0,15),192,64;mo_flgs:(0,15),256,64;mo_sem:(0,23),320,448;mo_memsz:(0,11),768,64;mo_maxpages:(0,11),832,64;mo_freepages:(0,11),896,64;mo_alocpages:(0,11),960,64;mo_resvpages:(0,11),1024,64;mo_horizline:(0,11),1088,64;mo_pmagestat:(0,65)=*(0,66)=(0,67)=xss_PHYMMARGE:,1152,64;mo_pmagenr:(0,11),1216,64;mo_msadscstat:(0,63),1280,64;mo_msanr:(0,11),1344,64;mo_mareastat:(0,17),1408,64;mo_mareanr:(0,11),1472,64;mo_kmsobmgr:(0,68)=(0,69)=xss_KMSOBMGRHED:,1536,20864;mo_privp:(0,34),22400,64;mo_extp:(0,34),22464,64;;",128,0,0,0
	.stabs	"s_PHYMMARGE:T(0,67)=s80pmr_lock:(0,20),0,32;pmr_type:(0,13),32,32;pmr_stype:(0,13),64,32;pmr_dtype:(0,13),96,32;pmr_flgs:(0,13),128,32;pmr_stus:(0,13),160,32;pmr_saddr:(0,11),192,64;pmr_lsize:(0,11),256,64;pmr_end:(0,11),320,64;pmr_rrvmsaddr:(0,11),384,64;pmr_rrvmend:(0,11),448,64;pmr_prip:(0,34),512,64;pmr_extp:(0,34),576,64;;",128,0,0,0
	.stabs	"s_KMSOBMGRHED:T(0,69)=s2608ks_lock:(0,20),0,32;ks_tclst:(0,3),64,128;ks_tcnr:(0,15),192,64;ks_msobnr:(0,15),256,64;ks_msobche:(0,70)=*(0,71)=(0,72)=xss_KMSOB:,320,64;ks_msoblst:(0,73)=ar(0,49);0;00000000000000000000077;(0,74)=(0,75)=xss_KOBLST:,384,20480;;",128,0,0,0
	.stabs	"s_KMSOB:T(0,72)=s368so_list:(0,3),0,128;so_lock:(0,20),128,32;so_stus:(0,15),192,64;so_flgs:(0,15),256,64;so_vstat:(0,27),320,64;so_vend:(0,27),384,64;so_objsz:(0,76)=(0,12),448,64;so_objrelsz:(0,76),512,64;so_mobjnr:(0,15),576,64;so_fobjnr:(0,15),640,64;so_frelst:(0,3),704,128;so_alclst:(0,3),832,128;so_mextlst:(0,3),960,128;so_mextnr:(0,15),1088,64;so_mc:(0,77)=(0,78)=xss_MSOMDC:,1152,1664;so_privp:(0,34),2816,64;so_extdp:(0,34),2880,64;;",128,0,0,0
	.stabs	"s_KOBLST:T(0,75)=s40ol_emplst:(0,3),0,128;ol_cahe:(0,70),128,64;ol_emnr:(0,15),192,64;ol_sz:(0,76),256,64;;",128,0,0,0
	.stabs	"size_t:t(0,76)",128,0,31,0
	.stabs	"s_MSOMDC:T(0,78)=s208mc_lst:(0,79)=ar(0,49);0;00000000000000000000004;(0,80)=(0,81)=xss_MSCLST:,0,1280;mc_msanr:(0,15),1280,64;mc_list:(0,3),1344,128;mc_kmobinlst:(0,3),1472,128;mc_kmobinpnr:(0,15),1600,64;;",128,0,0,0
	.stabs	"s_MSCLST:T(0,81)=s32ml_msanr:(0,15),0,64;ml_ompnr:(0,15),64,64;ml_list:(0,3),128,128;;",128,0,0,0
	.globl	onfrmsa_retn_marea
	.type	onfrmsa_retn_marea, @function
onfrmsa_retn_marea:
	.stabn	68,0,57,.LM83-.LFBB12
.LM83:
.LFBB12:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L53:
	leaq	.L53(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L53, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,59,.LM84-.LFBB12
.LM84:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,59,.LM85-.LFBB12
.LM85:
	cmpb	$1, %al
	jne	.L45
	.stabn	68,0,59,.LM86-.LFBB12
.LM86:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,59,.LM87-.LFBB12
.LM87:
	testq	%rax, %rax
	jne	.L46
.L45:
	.stabn	68,0,61,.LM88-.LFBB12
.LM88:
	movl	$0, %eax
	jmp	.L47
.L46:
	.stabn	68,0,63,.LM89-.LFBB12
.LM89:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,64,.LM90-.LFBB12
.LM90:
	movq	24(%rsp), %rax
	subq	8(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,64,.LM91-.LFBB12
.LM91:
	addq	$1, %rax
	.stabn	68,0,64,.LM92-.LFBB12
.LM92:
	cmpq	%rax, (%rsp)
	je	.L48
	.stabn	68,0,66,.LM93-.LFBB12
.LM93:
	movl	$0, %eax
	jmp	.L47
.L48:
	.stabn	68,0,68,.LM94-.LFBB12
.LM94:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	movl	%eax, %edx
	.stabn	68,0,68,.LM95-.LFBB12
.LM95:
	movq	24(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,68,.LM96-.LFBB12
.LM96:
	cmpb	%al, %dl
	je	.L49
	.stabn	68,0,70,.LM97-.LFBB12
.LM97:
	movl	$0, %eax
	jmp	.L47
.L49:
.LBB2:
	.stabn	68,0,73,.LM98-.LFBB12
.LM98:
	movq	$0, 32(%rsp)
	.stabn	68,0,73,.LM99-.LFBB12
.LM99:
	jmp	.L50
.L52:
	.stabn	68,0,75,.LM100-.LFBB12
.LM100:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	shrb	$5, %al
	.stabn	68,0,75,.LM101-.LFBB12
.LM101:
	movzbl	%al, %edx
	.stabn	68,0,75,.LM102-.LFBB12
.LM102:
	movq	16(%rsp), %rax
	movq	176(%rax), %rcx
	.stabn	68,0,75,.LM103-.LFBB12
.LM103:
	movq	32(%rsp), %rax
	imulq	$5912, %rax, %rax
	addq	%rcx, %rax
	.stabn	68,0,75,.LM104-.LFBB12
.LM104:
	movq	40(%rax), %rax
	.stabn	68,0,75,.LM105-.LFBB12
.LM105:
	cmpq	%rax, %rdx
	jne	.L51
	.stabn	68,0,77,.LM106-.LFBB12
.LM106:
	movq	16(%rsp), %rax
	movq	176(%rax), %rdx
	.stabn	68,0,77,.LM107-.LFBB12
.LM107:
	movq	32(%rsp), %rax
	imulq	$5912, %rax, %rax
	.stabn	68,0,77,.LM108-.LFBB12
.LM108:
	addq	%rdx, %rax
	jmp	.L47
.L51:
	.stabn	68,0,73,.LM109-.LFBB12
.LM109:
	addq	$1, 32(%rsp)
.L50:
	.stabn	68,0,73,.LM110-.LFBB12
.LM110:
	movq	16(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,73,.LM111-.LFBB12
.LM111:
	cmpq	%rax, 32(%rsp)
	jb	.L52
.LBE2:
	.stabn	68,0,80,.LM112-.LFBB12
.LM112:
	movl	$0, %eax
.L47:
	.stabn	68,0,81,.LM113-.LFBB12
.LM113:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	onfrmsa_retn_marea, .-onfrmsa_retn_marea
	.stabs	"fmend:(0,63)",128,0,63,24
	.stabs	"msadsc_t:t(0,64)",128,0,69,0
	.stabn	192,0,0,.LFBB12-.LFBB12
	.stabs	"mi:(0,15)",128,0,73,32
	.stabn	192,0,0,.LBB2-.LFBB12
	.stabn	224,0,0,.LBE2-.LFBB12
	.stabn	224,0,0,.Lscope12-.LFBB12
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.stabs	"onmrtype_retn_marea:F(0,17)",36,0,83,onmrtype_retn_marea
	.stabs	"mmobjp:p(0,60)",160,0,83,8
	.stabs	"mrtype:p(0,15)",160,0,83,0
	.globl	onmrtype_retn_marea
	.type	onmrtype_retn_marea, @function
onmrtype_retn_marea:
	.stabn	68,0,84,.LM114-.LFBB13
.LM114:
.LFBB13:
.LFB36:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L59:
	leaq	.L59(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L59, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
.LBB3:
	.stabn	68,0,85,.LM115-.LFBB13
.LM115:
	movq	$0, 24(%rsp)
	.stabn	68,0,85,.LM116-.LFBB13
.LM116:
	jmp	.L55
.L58:
	.stabn	68,0,87,.LM117-.LFBB13
.LM117:
	movq	8(%rsp), %rax
	movq	176(%rax), %rdx
	.stabn	68,0,87,.LM118-.LFBB13
.LM118:
	movq	24(%rsp), %rax
	imulq	$5912, %rax, %rax
	addq	%rdx, %rax
	.stabn	68,0,87,.LM119-.LFBB13
.LM119:
	movq	40(%rax), %rax
	.stabn	68,0,87,.LM120-.LFBB13
.LM120:
	cmpq	%rax, (%rsp)
	jne	.L56
	.stabn	68,0,89,.LM121-.LFBB13
.LM121:
	movq	8(%rsp), %rax
	movq	176(%rax), %rdx
	.stabn	68,0,89,.LM122-.LFBB13
.LM122:
	movq	24(%rsp), %rax
	imulq	$5912, %rax, %rax
	.stabn	68,0,89,.LM123-.LFBB13
.LM123:
	addq	%rdx, %rax
	jmp	.L57
.L56:
	.stabn	68,0,85,.LM124-.LFBB13
.LM124:
	addq	$1, 24(%rsp)
.L55:
	.stabn	68,0,85,.LM125-.LFBB13
.LM125:
	movq	8(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,85,.LM126-.LFBB13
.LM126:
	cmpq	%rax, 24(%rsp)
	jb	.L58
.LBE3:
	.stabn	68,0,92,.LM127-.LFBB13
.LM127:
	movl	$0, %eax
.L57:
	.stabn	68,0,93,.LM128-.LFBB13
.LM128:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	onmrtype_retn_marea, .-onmrtype_retn_marea
	.stabs	"mi:(0,15)",128,0,85,24
	.stabn	192,0,0,.LBB3-.LFBB13
	.stabn	224,0,0,.LBE3-.LFBB13
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.stabs	"onma_retn_maxbafhlst:F(0,82)=*(0,50)",36,0,95,onma_retn_maxbafhlst
	.stabs	"malckp:p(0,17)",160,0,95,0
	.globl	onma_retn_maxbafhlst
	.type	onma_retn_maxbafhlst, @function
onma_retn_maxbafhlst:
	.stabn	68,0,96,.LM129-.LFBB14
.LM129:
.LFBB14:
.LFB37:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L65:
	leaq	.L65(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L65, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
.LBB4:
	.stabn	68,0,97,.LM130-.LFBB14
.LM130:
	movq	$51, 16(%rsp)
	.stabn	68,0,97,.LM131-.LFBB14
.LM131:
	jmp	.L61
.L64:
	.stabn	68,0,99,.LM132-.LFBB14
.LM132:
	movq	(%rsp), %rcx
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	addq	%rcx, %rax
	addq	$416, %rax
	movq	(%rax), %rax
	.stabn	68,0,99,.LM133-.LFBB14
.LM133:
	testq	%rax, %rax
	je	.L62
	.stabn	68,0,101,.LM134-.LFBB14
.LM134:
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
	addq	$8, %rax
	jmp	.L63
.L62:
	.stabn	68,0,97,.LM135-.LFBB14
.LM135:
	subq	$1, 16(%rsp)
.L61:
	.stabn	68,0,97,.LM136-.LFBB14
.LM136:
	cmpq	$0, 16(%rsp)
	jns	.L64
.LBE4:
	.stabn	68,0,104,.LM137-.LFBB14
.LM137:
	movl	$0, %eax
.L63:
	.stabn	68,0,105,.LM138-.LFBB14
.LM138:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	onma_retn_maxbafhlst, .-onma_retn_maxbafhlst
	.stabs	"li:(0,83)=(0,8)",128,0,97,16
	.stabs	"s64_t:t(0,83)",128,0,15,0
	.stabn	192,0,0,.LBB4-.LFBB14
	.stabn	224,0,0,.LBE4-.LFBB14
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.section	.rodata
.LC0:
	.string	"mm_divpages_opmsadsc err1\n"
.LC1:
	.string	"mm_divpages_opmsadsc err2\n"
.LC2:
	.string	"mm_divpages_opmsadsc err3\n"
.LC3:
	.string	"mm_divpages_opmsadsc err4"
	.text
	.stabs	"mm_divpages_opmsadsc:F(0,63)",36,0,107,mm_divpages_opmsadsc
	.stabs	"msastat:p(0,63)",160,0,107,8
	.stabs	"mnr:p(0,15)",160,0,107,0
	.globl	mm_divpages_opmsadsc
	.type	mm_divpages_opmsadsc, @function
mm_divpages_opmsadsc:
	.stabn	68,0,108,.LM139-.LFBB15
.LM139:
.LFBB15:
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
.L79:
	leaq	.L79(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L79, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,109,.LM140-.LFBB15
.LM140:
	cmpq	$0, 8(%rsp)
	je	.L67
	.stabn	68,0,109,.LM141-.LFBB15
.LM141:
	cmpq	$0, (%rsp)
	jne	.L68
.L67:
	.stabn	68,0,111,.LM142-.LFBB15
.LM142:
	movl	$0, %eax
	jmp	.L69
.L68:
	.stabn	68,0,113,.LM143-.LFBB15
.LM143:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,113,.LM144-.LFBB15
.LM144:
	cmpb	$1, %al
	je	.L70
	.stabn	68,0,114,.LM145-.LFBB15
.LM145:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,113,.LM146-.LFBB15
.LM146:
	cmpb	$2, %al
	jne	.L71
.L70:
	.stabn	68,0,115,.LM147-.LFBB15
.LM147:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,114,.LM148-.LFBB15
.LM148:
	testq	%rax, %rax
	je	.L71
	.stabn	68,0,116,.LM149-.LFBB15
.LM149:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,115,.LM150-.LFBB15
.LM150:
	testb	%al, %al
	je	.L72
.L71:
	.stabn	68,0,118,.LM151-.LFBB15
.LM151:
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L72:
	.stabn	68,0,121,.LM152-.LFBB15
.LM152:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,122,.LM153-.LFBB15
.LM153:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,122,.LM154-.LFBB15
.LM154:
	cmpb	$2, %al
	jne	.L73
	.stabn	68,0,124,.LM155-.LFBB15
.LM155:
	movq	8(%rsp), %rax
	movq	%rax, 24(%rsp)
.L73:
	.stabn	68,0,126,.LM156-.LFBB15
.LM156:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	jnb	.L74
	.stabn	68,0,128,.LM157-.LFBB15
.LM157:
	movabsq	$.LC1@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L74:
	.stabn	68,0,130,.LM158-.LFBB15
.LM158:
	movq	24(%rsp), %rax
	subq	8(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,130,.LM159-.LFBB15
.LM159:
	leaq	1(%rax), %rdx
	.stabn	68,0,130,.LM160-.LFBB15
.LM160:
	movq	(%rsp), %rax
	.stabn	68,0,130,.LM161-.LFBB15
.LM161:
	cmpq	%rax, %rdx
	je	.L75
	.stabn	68,0,132,.LM162-.LFBB15
.LM162:
	movabsq	$.LC2@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L75:
	.stabn	68,0,134,.LM163-.LFBB15
.LM163:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,134,.LM164-.LFBB15
.LM164:
	cmpl	$16777215, %eax
	je	.L76
	.stabn	68,0,134,.LM165-.LFBB15
.LM165:
	movq	24(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,134,.LM166-.LFBB15
.LM166:
	cmpl	$16777215, %eax
	je	.L76
	.stabn	68,0,135,.LM167-.LFBB15
.LM167:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	movl	%eax, %esi
	.stabn	68,0,135,.LM168-.LFBB15
.LM168:
	movq	24(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,134,.LM169-.LFBB15
.LM169:
	cmpl	%eax, %esi
	je	.L77
.L76:
	.stabn	68,0,137,.LM170-.LFBB15
.LM170:
	movabsq	$.LC3@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L77:
	.stabn	68,0,141,.LM171-.LFBB15
.LM171:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	jne	.L78
	.stabn	68,0,144,.LM172-.LFBB15
.LM172:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,144,.LM173-.LFBB15
.LM173:
	leal	1(%rax), %edx
	andl	$16777215, %edx
	movq	8(%rsp), %rax
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
	.stabn	68,0,145,.LM174-.LFBB15
.LM174:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,146,.LM175-.LFBB15
.LM175:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,147,.LM176-.LFBB15
.LM176:
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,148,.LM177-.LFBB15
.LM177:
	movq	8(%rsp), %rax
	jmp	.L69
.L78:
	.stabn	68,0,151,.LM178-.LFBB15
.LM178:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,151,.LM179-.LFBB15
.LM179:
	leal	1(%rax), %edx
	andl	$16777215, %edx
	movq	8(%rsp), %rax
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
	.stabn	68,0,152,.LM180-.LFBB15
.LM180:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,153,.LM181-.LFBB15
.LM181:
	movq	24(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,153,.LM182-.LFBB15
.LM182:
	leal	1(%rax), %edx
	andl	$16777215, %edx
	movq	24(%rsp), %rax
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
	.stabn	68,0,154,.LM183-.LFBB15
.LM183:
	movq	24(%rsp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,155,.LM184-.LFBB15
.LM184:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,156,.LM185-.LFBB15
.LM185:
	movq	8(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,157,.LM186-.LFBB15
.LM186:
	movq	8(%rsp), %rax
.L69:
	.stabn	68,0,158,.LM187-.LFBB15
.LM187:
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
	.size	mm_divpages_opmsadsc, .-mm_divpages_opmsadsc
	.stabs	"mend:(0,63)",128,0,121,24
	.stabn	192,0,0,.LFBB15-.LFBB15
	.stabn	224,0,0,.Lscope15-.LFBB15
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
	.section	.rodata
.LC4:
	.string	"mm_merpages_opmsadsc err1\n"
.LC5:
	.string	"mm_merpages_opmsadsc err2\n"
.LC6:
	.string	"mm_merpages_opmsadsc err3\n"
.LC7:
	.string	"mm_merpages_opmsadsc err4\n"
.LC8:
	.string	"mm_merpages_opmsadsc err5\n"
.LC9:
	.string	"mm_merpages_opmsadsc err6\n"
	.text
	.stabs	"mm_merpages_opmsadsc:F(0,7)",36,0,160,mm_merpages_opmsadsc
	.stabs	"bafh:p(0,82)",160,0,160,24
	.stabs	"freemsa:p(0,63)",160,0,160,16
	.stabs	"freepgs:p(0,15)",160,0,160,8
	.globl	mm_merpages_opmsadsc
	.type	mm_merpages_opmsadsc, @function
mm_merpages_opmsadsc:
	.stabn	68,0,161,.LM188-.LFBB16
.LM188:
.LFBB16:
.LFB39:
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
.L97:
	leaq	.L97(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L97, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,162,.LM189-.LFBB16
.LM189:
	cmpq	$0, 24(%rsp)
	je	.L81
	.stabn	68,0,162,.LM190-.LFBB16
.LM190:
	cmpq	$0, 16(%rsp)
	je	.L81
	.stabn	68,0,162,.LM191-.LFBB16
.LM191:
	cmpq	$0, 8(%rsp)
	jne	.L82
.L81:
	.stabn	68,0,164,.LM192-.LFBB16
.LM192:
	movl	$0, %eax
	jmp	.L83
.L82:
	.stabn	68,0,166,.LM193-.LFBB16
.LM193:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,166,.LM194-.LFBB16
.LM194:
	cmpb	$1, %al
	jne	.L84
	.stabn	68,0,167,.LM195-.LFBB16
.LM195:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,166,.LM196-.LFBB16
.LM196:
	testq	%rax, %rax
	jne	.L85
.L84:
	.stabn	68,0,169,.LM197-.LFBB16
.LM197:
	movabsq	$.LC4@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L85:
	.stabn	68,0,171,.LM198-.LFBB16
.LM198:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,172,.LM199-.LFBB16
.LM199:
	movq	40(%rsp), %rax
	cmpq	16(%rsp), %rax
	jnb	.L86
	.stabn	68,0,174,.LM200-.LFBB16
.LM200:
	movabsq	$.LC5@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L86:
	.stabn	68,0,176,.LM201-.LFBB16
.LM201:
	movq	24(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,176,.LM202-.LFBB16
.LM202:
	cmpq	%rax, 8(%rsp)
	jne	.L87
	.stabn	68,0,177,.LM203-.LFBB16
.LM203:
	movq	40(%rsp), %rax
	subq	16(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,177,.LM204-.LFBB16
.LM204:
	addq	$1, %rax
	.stabn	68,0,176,.LM205-.LFBB16
.LM205:
	cmpq	%rax, 8(%rsp)
	je	.L88
.L87:
	.stabn	68,0,179,.LM206-.LFBB16
.LM206:
	movabsq	$.LC6@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L88:
	.stabn	68,0,181,.LM207-.LFBB16
.LM207:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,181,.LM208-.LFBB16
.LM208:
	testb	%al, %al
	je	.L89
	.stabn	68,0,182,.LM209-.LFBB16
.LM209:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,181,.LM210-.LFBB16
.LM210:
	testl	%eax, %eax
	jne	.L90
.L89:
	.stabn	68,0,184,.LM211-.LFBB16
.LM211:
	movabsq	$.LC7@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L90:
	.stabn	68,0,186,.LM212-.LFBB16
.LM212:
	movq	40(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,186,.LM213-.LFBB16
.LM213:
	testb	%al, %al
	je	.L91
	.stabn	68,0,187,.LM214-.LFBB16
.LM214:
	movq	40(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,186,.LM215-.LFBB16
.LM215:
	testl	%eax, %eax
	jne	.L92
.L91:
	.stabn	68,0,189,.LM216-.LFBB16
.LM216:
	movabsq	$.LC8@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L92:
	.stabn	68,0,191,.LM217-.LFBB16
.LM217:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	movl	%eax, %esi
	.stabn	68,0,191,.LM218-.LFBB16
.LM218:
	movq	40(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,191,.LM219-.LFBB16
.LM219:
	cmpl	%eax, %esi
	je	.L93
	.stabn	68,0,193,.LM220-.LFBB16
.LM220:
	movabsq	$.LC9@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L93:
	.stabn	68,0,197,.LM221-.LFBB16
.LM221:
	movq	16(%rsp), %rax
	cmpq	40(%rsp), %rax
	jne	.L94
	.stabn	68,0,200,.LM222-.LFBB16
.LM222:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,200,.LM223-.LFBB16
.LM223:
	leal	16777215(%rax), %edx
	andl	$16777215, %edx
	movq	16(%rsp), %rax
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
	.stabn	68,0,201,.LM224-.LFBB16
.LM224:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,201,.LM225-.LFBB16
.LM225:
	testl	%eax, %eax
	je	.L95
	.stabn	68,0,204,.LM226-.LFBB16
.LM226:
	movl	$1, %eax
	jmp	.L83
.L95:
	.stabn	68,0,208,.LM227-.LFBB16
.LM227:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,209,.LM228-.LFBB16
.LM228:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,210,.LM229-.LFBB16
.LM229:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,213,.LM230-.LFBB16
.LM230:
	movl	$2, %eax
	jmp	.L83
.L94:
	.stabn	68,0,217,.LM231-.LFBB16
.LM231:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,217,.LM232-.LFBB16
.LM232:
	leal	16777215(%rax), %edx
	andl	$16777215, %edx
	movq	16(%rsp), %rax
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
	.stabn	68,0,218,.LM233-.LFBB16
.LM233:
	movq	40(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,218,.LM234-.LFBB16
.LM234:
	leal	16777215(%rax), %edx
	andl	$16777215, %edx
	movq	40(%rsp), %rax
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
	.stabn	68,0,221,.LM235-.LFBB16
.LM235:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,221,.LM236-.LFBB16
.LM236:
	testl	%eax, %eax
	je	.L96
	.stabn	68,0,223,.LM237-.LFBB16
.LM237:
	movl	$1, %eax
	jmp	.L83
.L96:
	.stabn	68,0,227,.LM238-.LFBB16
.LM238:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,228,.LM239-.LFBB16
.LM239:
	movq	40(%rsp), %rax
	movzbl	24(%rax), %edx
	andl	$-2, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,229,.LM240-.LFBB16
.LM240:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,232,.LM241-.LFBB16
.LM241:
	movq	16(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,233,.LM242-.LFBB16
.LM242:
	movq	40(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,236,.LM243-.LFBB16
.LM243:
	movq	40(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,239,.LM244-.LFBB16
.LM244:
	movl	$2, %eax
.L83:
	.stabn	68,0,240,.LM245-.LFBB16
.LM245:
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
.LFE39:
	.size	mm_merpages_opmsadsc, .-mm_merpages_opmsadsc
	.stabs	"fmend:(0,63)",128,0,171,40
	.stabn	192,0,0,.LFBB16-.LFBB16
	.stabn	224,0,0,.Lscope16-.LFBB16
.Lscope16:
	.stabs	"",36,0,0,.Lscope16-.LFBB16
	.stabs	"onmpgs_retn_bafhlst:F(0,6)",36,0,242,onmpgs_retn_bafhlst
	.stabs	"malckp:p(0,17)",160,0,242,24
	.stabs	"pages:p(0,15)",160,0,242,16
	.stabs	"retrelbafh:p(0,84)=*(0,82)",160,0,242,8
	.stabs	"retdivbafh:p(0,84)",160,0,242,0
	.globl	onmpgs_retn_bafhlst
	.type	onmpgs_retn_bafhlst, @function
onmpgs_retn_bafhlst:
	.stabn	68,0,243,.LM246-.LFBB17
.LM246:
.LFBB17:
.LFB40:
	.cfi_startproc
	endbr64
	subq	$64, %rsp
	.cfi_def_cfa_offset 72
.L108:
	leaq	.L108(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L108, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,244,.LM247-.LFBB17
.LM247:
	cmpq	$0, 24(%rsp)
	je	.L99
	.stabn	68,0,244,.LM248-.LFBB17
.LM248:
	cmpq	$0, 16(%rsp)
	je	.L99
	.stabn	68,0,244,.LM249-.LFBB17
.LM249:
	cmpq	$0, 8(%rsp)
	je	.L99
	.stabn	68,0,244,.LM250-.LFBB17
.LM250:
	cmpq	$0, (%rsp)
	jne	.L100
.L99:
	.stabn	68,0,246,.LM251-.LFBB17
.LM251:
	movl	$0, %eax
	jmp	.L101
.L100:
	.stabn	68,0,249,.LM252-.LFBB17
.LM252:
	movq	24(%rsp), %rdx
	addq	$392, %rdx
	movq	%rdx, 48(%rsp)
	.stabn	68,0,252,.LM253-.LFBB17
.LM253:
	movq	16(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$retn_divoder@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,253,.LM254-.LFBB17
.LM254:
	cmpq	$0, 40(%rsp)
	js	.L102
	.stabn	68,0,253,.LM255-.LFBB17
.LM255:
	cmpq	$51, 40(%rsp)
	jle	.L103
.L102:
	.stabn	68,0,255,.LM256-.LFBB17
.LM256:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,256,.LM257-.LFBB17
.LM257:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,257,.LM258-.LFBB17
.LM258:
	movl	$0, %eax
	jmp	.L101
.L103:
	.stabn	68,0,259,.LM259-.LFBB17
.LM259:
	movq	40(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,259,.LM260-.LFBB17
.LM260:
	movq	16(%rax), %rax
	.stabn	68,0,259,.LM261-.LFBB17
.LM261:
	cmpq	%rax, 16(%rsp)
	jbe	.L104
	.stabn	68,0,261,.LM262-.LFBB17
.LM262:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,262,.LM263-.LFBB17
.LM263:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,263,.LM264-.LFBB17
.LM264:
	movl	$0, %eax
	jmp	.L101
.L104:
.LBB5:
	.stabn	68,0,267,.LM265-.LFBB17
.LM265:
	movq	40(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,267,.LM266-.LFBB17
.LM266:
	jmp	.L105
.L107:
	.stabn	68,0,270,.LM267-.LFBB17
.LM267:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,270,.LM268-.LFBB17
.LM268:
	movq	16(%rax), %rax
	.stabn	68,0,270,.LM269-.LFBB17
.LM269:
	cmpq	%rax, 16(%rsp)
	ja	.L106
	.stabn	68,0,270,.LM270-.LFBB17
.LM270:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,270,.LM271-.LFBB17
.LM271:
	movq	24(%rax), %rax
	.stabn	68,0,270,.LM272-.LFBB17
.LM272:
	testq	%rax, %rax
	je	.L106
	.stabn	68,0,273,.LM273-.LFBB17
.LM273:
	movq	40(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,273,.LM274-.LFBB17
.LM274:
	movq	48(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,273,.LM275-.LFBB17
.LM275:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,276,.LM276-.LFBB17
.LM276:
	movq	56(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,276,.LM277-.LFBB17
.LM277:
	movq	48(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,276,.LM278-.LFBB17
.LM278:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,277,.LM279-.LFBB17
.LM279:
	movl	$1, %eax
	jmp	.L101
.L106:
	.stabn	68,0,267,.LM280-.LFBB17
.LM280:
	addq	$1, 56(%rsp)
.L105:
	.stabn	68,0,267,.LM281-.LFBB17
.LM281:
	cmpq	$51, 56(%rsp)
	jle	.L107
.LBE5:
	.stabn	68,0,281,.LM282-.LFBB17
.LM282:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,282,.LM283-.LFBB17
.LM283:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,283,.LM284-.LFBB17
.LM284:
	movl	$0, %eax
.L101:
	.stabn	68,0,284,.LM285-.LFBB17
.LM285:
	addq	$64, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	onmpgs_retn_bafhlst, .-onmpgs_retn_bafhlst
	.stabs	"bafhstat:(0,82)",128,0,249,48
	.stabs	"bafhlst_t:t(0,50)",128,0,57,0
	.stabs	"dividx:(0,7)",128,0,252,40
	.stabn	192,0,0,.LFBB17-.LFBB17
	.stabs	"idx:(0,7)",128,0,267,56
	.stabn	192,0,0,.LBB5-.LFBB17
	.stabn	224,0,0,.LBE5-.LFBB17
	.stabn	224,0,0,.Lscope17-.LFBB17
.Lscope17:
	.stabs	"",36,0,0,.Lscope17-.LFBB17
	.section	.rodata
	.align 8
.LC10:
	.string	"onfpgs_retn_bafhlst af_mobjnr max"
	.align 8
.LC11:
	.string	"onfpgs_retn_bafhlst af_fobjnr max"
	.text
	.stabs	"onfpgs_retn_bafhlst:F(0,6)",36,0,286,onfpgs_retn_bafhlst
	.stabs	"malckp:p(0,17)",160,0,286,24
	.stabs	"freepgs:p(0,15)",160,0,286,16
	.stabs	"retrelbf:p(0,84)",160,0,286,8
	.stabs	"retmerbf:p(0,84)",160,0,286,0
	.globl	onfpgs_retn_bafhlst
	.type	onfpgs_retn_bafhlst, @function
onfpgs_retn_bafhlst:
	.stabn	68,0,287,.LM286-.LFBB18
.LM286:
.LFBB18:
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
.L118:
	leaq	.L118(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L118, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,288,.LM287-.LFBB18
.LM287:
	cmpq	$0, 24(%rsp)
	je	.L110
	.stabn	68,0,288,.LM288-.LFBB18
.LM288:
	cmpq	$0, 16(%rsp)
	je	.L110
	.stabn	68,0,288,.LM289-.LFBB18
.LM289:
	cmpq	$0, 8(%rsp)
	je	.L110
	.stabn	68,0,288,.LM290-.LFBB18
.LM290:
	cmpq	$0, (%rsp)
	jne	.L111
.L110:
	.stabn	68,0,290,.LM291-.LFBB18
.LM291:
	movl	$0, %eax
	jmp	.L112
.L111:
	.stabn	68,0,294,.LM292-.LFBB18
.LM292:
	movq	24(%rsp), %rax
	addq	$392, %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,297,.LM293-.LFBB18
.LM293:
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$retn_divoder@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,298,.LM294-.LFBB18
.LM294:
	cmpq	$0, 32(%rsp)
	js	.L113
	.stabn	68,0,298,.LM295-.LFBB18
.LM295:
	cmpq	$51, 32(%rsp)
	jle	.L114
.L113:
	.stabn	68,0,300,.LM296-.LFBB18
.LM296:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,301,.LM297-.LFBB18
.LM297:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,302,.LM298-.LFBB18
.LM298:
	movl	$0, %eax
	jmp	.L112
.L114:
	.stabn	68,0,304,.LM299-.LFBB18
.LM299:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,304,.LM300-.LFBB18
.LM300:
	movq	32(%rax), %rax
	.stabn	68,0,304,.LM301-.LFBB18
.LM301:
	cmpq	$-1, %rax
	jne	.L115
	.stabn	68,0,306,.LM302-.LFBB18
.LM302:
	movabsq	$.LC10@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L115:
	.stabn	68,0,308,.LM303-.LFBB18
.LM303:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,308,.LM304-.LFBB18
.LM304:
	movq	24(%rax), %rax
	.stabn	68,0,308,.LM305-.LFBB18
.LM305:
	cmpq	$-1, %rax
	jne	.L116
	.stabn	68,0,310,.LM306-.LFBB18
.LM306:
	movabsq	$.LC11@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L116:
	.stabn	68,0,313,.LM307-.LFBB18
.LM307:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,313,.LM308-.LFBB18
.LM308:
	movq	16(%rax), %rax
	.stabn	68,0,313,.LM309-.LFBB18
.LM309:
	cmpq	%rax, 16(%rsp)
	je	.L117
	.stabn	68,0,315,.LM310-.LFBB18
.LM310:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,316,.LM311-.LFBB18
.LM311:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,317,.LM312-.LFBB18
.LM312:
	movl	$0, %eax
	jmp	.L112
.L117:
	.stabn	68,0,320,.LM313-.LFBB18
.LM313:
	movq	32(%rsp), %rdx
	movq	%rdx, %rax
	addq	%rax, %rax
	addq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	movq	%rax, %rdx
	.stabn	68,0,320,.LM314-.LFBB18
.LM314:
	movq	40(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,320,.LM315-.LFBB18
.LM315:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,323,.LM316-.LFBB18
.LM316:
	movq	40(%rsp), %rax
	leaq	5304(%rax), %rdx
	.stabn	68,0,323,.LM317-.LFBB18
.LM317:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,324,.LM318-.LFBB18
.LM318:
	movl	$1, %eax
.L112:
	.stabn	68,0,325,.LM319-.LFBB18
.LM319:
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
	.size	onfpgs_retn_bafhlst, .-onfpgs_retn_bafhlst
	.stabs	"bafhstat:(0,82)",128,0,294,40
	.stabs	"dividx:(0,7)",128,0,297,32
	.stabn	192,0,0,.LFBB18-.LFBB18
	.stabn	224,0,0,.Lscope18-.LFBB18
.Lscope18:
	.stabs	"",36,0,0,.Lscope18-.LFBB18
	.stabs	"mm_divipages_onbafhlst:F(0,63)",36,0,327,mm_divipages_onbafhlst
	.stabs	"char:t(0,85)=r(0,85);0;127;",128,0,0,0
	.stabs	"bafhp:p(0,82)",160,0,327,0
	.globl	mm_divipages_onbafhlst
	.type	mm_divipages_onbafhlst, @function
mm_divipages_onbafhlst:
	.stabn	68,0,328,.LM320-.LFBB19
.LM320:
.LFBB19:
.LFB42:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$24, %rsp
	.cfi_def_cfa_offset 40
.L124:
	leaq	.L124(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L124, %r11
	addq	%r11, %rbx
	movq	%rdi, (%rsp)
	.stabn	68,0,329,.LM321-.LFBB19
.LM321:
	cmpq	$0, (%rsp)
	jne	.L120
	.stabn	68,0,331,.LM322-.LFBB19
.LM322:
	movl	$0, %eax
	jmp	.L121
.L120:
	.stabn	68,0,333,.LM323-.LFBB19
.LM323:
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,333,.LM324-.LFBB19
.LM324:
	testq	%rax, %rax
	jne	.L122
	.stabn	68,0,335,.LM325-.LFBB19
.LM325:
	movl	$0, %eax
	jmp	.L121
.L122:
	.stabn	68,0,337,.LM326-.LFBB19
.LM326:
	movq	(%rsp), %rax
	addq	$56, %rax
	.stabn	68,0,337,.LM327-.LFBB19
.LM327:
	movq	%rax, %rdi
	movabsq	$list_is_empty_careful@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,337,.LM328-.LFBB19
.LM328:
	cmpq	$1, %rax
	jne	.L123
	.stabn	68,0,339,.LM329-.LFBB19
.LM329:
	movl	$0, %eax
	jmp	.L121
.L123:
	.stabn	68,0,341,.LM330-.LFBB19
.LM330:
	movq	(%rsp), %rax
	movq	64(%rax), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,342,.LM331-.LFBB19
.LM331:
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_del@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,343,.LM332-.LFBB19
.LM332:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,343,.LM333-.LFBB19
.LM333:
	leal	1(%rax), %edx
	andl	$16777215, %edx
	movq	16(%rsp), %rax
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
	.stabn	68,0,344,.LM334-.LFBB19
.LM334:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %edx
	orl	$1, %edx
	movb	%dl, 24(%rax)
	.stabn	68,0,345,.LM335-.LFBB19
.LM335:
	movq	(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,345,.LM336-.LFBB19
.LM336:
	leaq	-1(%rax), %rdx
	movq	(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,346,.LM337-.LFBB19
.LM337:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,346,.LM338-.LFBB19
.LM338:
	leaq	-1(%rax), %rdx
	movq	(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,347,.LM339-.LFBB19
.LM339:
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,347,.LM340-.LFBB19
.LM340:
	leaq	1(%rax), %rdx
	movq	(%rsp), %rax
	movq	%rdx, 40(%rax)
	.stabn	68,0,348,.LM341-.LFBB19
.LM341:
	movq	16(%rsp), %rax
.L121:
	.stabn	68,0,349,.LM342-.LFBB19
.LM342:
	addq	$24, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE42:
	.size	mm_divipages_onbafhlst, .-mm_divipages_onbafhlst
	.stabs	"tmp:(0,63)",128,0,341,16
	.stabn	192,0,0,.LFBB19-.LFBB19
	.stabn	224,0,0,.Lscope19-.LFBB19
.Lscope19:
	.stabs	"",36,0,0,.Lscope19-.LFBB19
	.stabs	"mm_retnmsaob_onbafhlst:F(0,6)",36,0,351,mm_retnmsaob_onbafhlst
	.stabs	"bafhp:p(0,82)",160,0,351,16
	.stabs	"retmstat:p(0,86)=*(0,63)",160,0,351,8
	.stabs	"retmend:p(0,86)",160,0,351,0
	.globl	mm_retnmsaob_onbafhlst
	.type	mm_retnmsaob_onbafhlst, @function
mm_retnmsaob_onbafhlst:
	.stabn	68,0,352,.LM343-.LFBB20
.LM343:
.LFBB20:
.LFB43:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$40, %rsp
	.cfi_def_cfa_offset 56
.L133:
	leaq	.L133(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L133, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,353,.LM344-.LFBB20
.LM344:
	cmpq	$0, 16(%rsp)
	je	.L126
	.stabn	68,0,353,.LM345-.LFBB20
.LM345:
	cmpq	$0, 8(%rsp)
	je	.L126
	.stabn	68,0,353,.LM346-.LFBB20
.LM346:
	cmpq	$0, (%rsp)
	jne	.L127
.L126:
	.stabn	68,0,355,.LM347-.LFBB20
.LM347:
	movl	$0, %eax
	jmp	.L128
.L127:
	.stabn	68,0,357,.LM348-.LFBB20
.LM348:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,357,.LM349-.LFBB20
.LM349:
	testq	%rax, %rax
	je	.L129
	.stabn	68,0,357,.LM350-.LFBB20
.LM350:
	movq	16(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,357,.LM351-.LFBB20
.LM351:
	testq	%rax, %rax
	jne	.L130
.L129:
	.stabn	68,0,359,.LM352-.LFBB20
.LM352:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,360,.LM353-.LFBB20
.LM353:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,361,.LM354-.LFBB20
.LM354:
	movl	$0, %eax
	jmp	.L128
.L130:
	.stabn	68,0,363,.LM355-.LFBB20
.LM355:
	movq	16(%rsp), %rax
	addq	$56, %rax
	.stabn	68,0,363,.LM356-.LFBB20
.LM356:
	movq	%rax, %rdi
	movabsq	$list_is_empty_careful@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,363,.LM357-.LFBB20
.LM357:
	cmpq	$1, %rax
	jne	.L131
	.stabn	68,0,365,.LM358-.LFBB20
.LM358:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,366,.LM359-.LFBB20
.LM359:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,367,.LM360-.LFBB20
.LM360:
	movl	$0, %eax
	jmp	.L128
.L131:
	.stabn	68,0,370,.LM361-.LFBB20
.LM361:
	movq	16(%rsp), %rax
	movq	64(%rax), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,371,.LM362-.LFBB20
.LM362:
	movq	32(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_del@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,374,.LM363-.LFBB20
.LM363:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,374,.LM364-.LFBB20
.LM364:
	leaq	-1(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,375,.LM365-.LFBB20
.LM365:
	movq	16(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,375,.LM366-.LFBB20
.LM366:
	leaq	-1(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,376,.LM367-.LFBB20
.LM367:
	movq	16(%rsp), %rax
	movq	48(%rax), %rax
	.stabn	68,0,376,.LM368-.LFBB20
.LM368:
	leaq	1(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 48(%rax)
	.stabn	68,0,379,.LM369-.LFBB20
.LM369:
	movq	8(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,382,.LM370-.LFBB20
.LM370:
	movq	32(%rsp), %rax
	movq	32(%rax), %rdx
	.stabn	68,0,382,.LM371-.LFBB20
.LM371:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,383,.LM372-.LFBB20
.LM372:
	movq	32(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,383,.LM373-.LFBB20
.LM373:
	cmpb	$2, %al
	jne	.L132
	.stabn	68,0,386,.LM374-.LFBB20
.LM374:
	movq	(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rdx, (%rax)
.L132:
	.stabn	68,0,388,.LM375-.LFBB20
.LM375:
	movl	$1, %eax
.L128:
	.stabn	68,0,389,.LM376-.LFBB20
.LM376:
	addq	$40, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	mm_retnmsaob_onbafhlst, .-mm_retnmsaob_onbafhlst
	.stabs	"tmp:(0,63)",128,0,370,32
	.stabn	192,0,0,.LFBB20-.LFBB20
	.stabn	224,0,0,.Lscope20-.LFBB20
.Lscope20:
	.stabs	"",36,0,0,.Lscope20-.LFBB20
	.stabs	"scan_mapgsalloc_ok:F(0,6)",36,0,391,scan_mapgsalloc_ok
	.stabs	"malckp:p(0,17)",160,0,391,8
	.stabs	"pages:p(0,15)",160,0,391,0
	.globl	scan_mapgsalloc_ok
	.type	scan_mapgsalloc_ok, @function
scan_mapgsalloc_ok:
	.stabn	68,0,392,.LM377-.LFBB21
.LM377:
.LFBB21:
.LFB44:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L139:
	leaq	.L139(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L139, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,393,.LM378-.LFBB21
.LM378:
	cmpq	$0, 8(%rsp)
	je	.L135
	.stabn	68,0,393,.LM379-.LFBB21
.LM379:
	cmpq	$0, (%rsp)
	jne	.L136
.L135:
	.stabn	68,0,395,.LM380-.LFBB21
.LM380:
	movl	$0, %eax
	jmp	.L137
.L136:
	.stabn	68,0,397,.LM381-.LFBB21
.LM381:
	movq	8(%rsp), %rax
	movq	160(%rax), %rax
	.stabn	68,0,397,.LM382-.LFBB21
.LM382:
	cmpq	%rax, (%rsp)
	ja	.L138
	.stabn	68,0,397,.LM383-.LFBB21
.LM383:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,397,.LM384-.LFBB21
.LM384:
	cmpq	%rax, (%rsp)
	ja	.L138
	.stabn	68,0,399,.LM385-.LFBB21
.LM385:
	movl	$1, %eax
	jmp	.L137
.L138:
	.stabn	68,0,401,.LM386-.LFBB21
.LM386:
	movl	$0, %eax
.L137:
	.stabn	68,0,402,.LM387-.LFBB21
.LM387:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	scan_mapgsalloc_ok, .-scan_mapgsalloc_ok
.Lscope21:
	.stabs	"",36,0,0,.Lscope21-.LFBB21
	.stabs	"mm_maxdivpages_onmarea:F(0,63)",36,0,404,mm_maxdivpages_onmarea
	.stabs	"malckp:p(0,17)",160,0,404,8
	.stabs	"retrelpnr:p(0,87)=*(0,15)",160,0,404,0
	.globl	mm_maxdivpages_onmarea
	.type	mm_maxdivpages_onmarea, @function
mm_maxdivpages_onmarea:
	.stabn	68,0,405,.LM388-.LFBB22
.LM388:
.LFBB22:
.LFB45:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$64, %rsp
	.cfi_def_cfa_offset 80
.L147:
	leaq	.L147(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L147, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,406,.LM389-.LFBB22
.LM389:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$onma_retn_maxbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,407,.LM390-.LFBB22
.LM390:
	cmpq	$0, 56(%rsp)
	jne	.L141
	.stabn	68,0,409,.LM391-.LFBB22
.LM391:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,410,.LM392-.LFBB22
.LM392:
	movl	$0, %eax
	jmp	.L146
.L141:
	.stabn	68,0,412,.LM393-.LFBB22
.LM393:
	movq	$0, 48(%rsp)
	.stabn	68,0,414,.LM394-.LFBB22
.LM394:
	movq	$0, 32(%rsp)
	.stabn	68,0,414,.LM395-.LFBB22
.LM395:
	movq	$0, 24(%rsp)
	.stabn	68,0,415,.LM396-.LFBB22
.LM396:
	leaq	24(%rsp), %rdx
	leaq	32(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_retnmsaob_onbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,416,.LM397-.LFBB22
.LM397:
	cmpq	$0, 40(%rsp)
	je	.L143
	.stabn	68,0,416,.LM398-.LFBB22
.LM398:
	movq	32(%rsp), %rax
	.stabn	68,0,416,.LM399-.LFBB22
.LM399:
	testq	%rax, %rax
	je	.L143
	.stabn	68,0,416,.LM400-.LFBB22
.LM400:
	movq	24(%rsp), %rax
	.stabn	68,0,416,.LM401-.LFBB22
.LM401:
	testq	%rax, %rax
	jne	.L144
.L143:
	.stabn	68,0,418,.LM402-.LFBB22
.LM402:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,419,.LM403-.LFBB22
.LM403:
	movl	$0, %eax
	jmp	.L146
.L144:
	.stabn	68,0,421,.LM404-.LFBB22
.LM404:
	movq	56(%rsp), %rax
	movq	16(%rax), %rdx
	movq	32(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_divpages_opmsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,423,.LM405-.LFBB22
.LM405:
	cmpq	$0, 48(%rsp)
	jne	.L145
	.stabn	68,0,425,.LM406-.LFBB22
.LM406:
	movq	(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,426,.LM407-.LFBB22
.LM407:
	movl	$0, %eax
	jmp	.L146
.L145:
	.stabn	68,0,428,.LM408-.LFBB22
.LM408:
	movq	56(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,428,.LM409-.LFBB22
.LM409:
	movq	(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,429,.LM410-.LFBB22
.LM410:
	movq	48(%rsp), %rax
.L146:
	.stabn	68,0,430,.LM411-.LFBB22
.LM411:
	addq	$64, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	mm_maxdivpages_onmarea, .-mm_maxdivpages_onmarea
	.stabs	"bafhp:(0,82)",128,0,406,56
	.stabs	"retmsa:(0,63)",128,0,412,48
	.stabs	"retmstat:(0,63)",128,0,414,32
	.stabs	"retmend:(0,63)",128,0,414,24
	.stabs	"rets:(0,6)",128,0,415,40
	.stabn	192,0,0,.LFBB22-.LFBB22
	.stabn	224,0,0,.Lscope22-.LFBB22
.Lscope22:
	.stabs	"",36,0,0,.Lscope22-.LFBB22
	.stabs	"chek_divlenmsa:F(0,15)",36,0,432,chek_divlenmsa
	.stabs	"msastat:p(0,63)",160,0,432,16
	.stabs	"msaend:p(0,63)",160,0,432,8
	.stabs	"mnr:p(0,15)",160,0,432,0
	.globl	chek_divlenmsa
	.type	chek_divlenmsa, @function
chek_divlenmsa:
	.stabn	68,0,433,.LM412-.LFBB23
.LM412:
.LFBB23:
.LFB46:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$56, %rsp
	.cfi_def_cfa_offset 72
.L168:
	leaq	.L168(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L168, %r11
	addq	%r11, %rbx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,434,.LM413-.LFBB23
.LM413:
	movq	$0, 48(%rsp)
	.stabn	68,0,435,.LM414-.LFBB23
.LM414:
	movq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,435,.LM415-.LFBB23
.LM415:
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,436,.LM416-.LFBB23
.LM416:
	cmpq	$0, 16(%rsp)
	je	.L149
	.stabn	68,0,436,.LM417-.LFBB23
.LM417:
	cmpq	$0, 8(%rsp)
	je	.L149
	.stabn	68,0,436,.LM418-.LFBB23
.LM418:
	cmpq	$0, (%rsp)
	jne	.L150
.L149:
	.stabn	68,0,438,.LM419-.LFBB23
.LM419:
	movl	$0, %eax
	jmp	.L151
.L150:
	.stabn	68,0,440,.LM420-.LFBB23
.LM420:
	movq	8(%rsp), %rax
	subq	16(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,440,.LM421-.LFBB23
.LM421:
	leaq	1(%rax), %rdx
	.stabn	68,0,440,.LM422-.LFBB23
.LM422:
	movq	(%rsp), %rax
	.stabn	68,0,440,.LM423-.LFBB23
.LM423:
	cmpq	%rax, %rdx
	je	.L152
	.stabn	68,0,442,.LM424-.LFBB23
.LM424:
	movl	$0, %eax
	jmp	.L151
.L152:
	.stabn	68,0,444,.LM425-.LFBB23
.LM425:
	cmpq	$1, (%rsp)
	jne	.L157
	.stabn	68,0,446,.LM426-.LFBB23
.LM426:
	movq	16(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,446,.LM427-.LFBB23
.LM427:
	testl	%eax, %eax
	je	.L154
	.stabn	68,0,448,.LM428-.LFBB23
.LM428:
	movl	$0, %eax
	jmp	.L151
.L154:
	.stabn	68,0,450,.LM429-.LFBB23
.LM429:
	movq	16(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,450,.LM430-.LFBB23
.LM430:
	testb	%al, %al
	je	.L155
	.stabn	68,0,452,.LM431-.LFBB23
.LM431:
	movl	$0, %eax
	jmp	.L151
.L155:
	.stabn	68,0,454,.LM432-.LFBB23
.LM432:
	movq	16(%rsp), %rax
	.stabn	68,0,454,.LM433-.LFBB23
.LM433:
	movq	%rax, %rdi
	movabsq	$list_is_empty_careful@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,454,.LM434-.LFBB23
.LM434:
	testq	%rax, %rax
	jne	.L156
	.stabn	68,0,456,.LM435-.LFBB23
.LM435:
	movl	$0, %eax
	jmp	.L151
.L156:
	.stabn	68,0,458,.LM436-.LFBB23
.LM436:
	movq	48(%rsp), %rax
	addq	$1, %rax
	jmp	.L151
.L165:
	.stabn	68,0,462,.LM437-.LFBB23
.LM437:
	movq	40(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,462,.LM438-.LFBB23
.LM438:
	testl	%eax, %eax
	jne	.L158
	.stabn	68,0,463,.LM439-.LFBB23
.LM439:
	movq	40(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,463,.LM440-.LFBB23
.LM440:
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,462,.LM441-.LFBB23
.LM441:
	testl	%eax, %eax
	je	.L159
.L158:
	.stabn	68,0,465,.LM442-.LFBB23
.LM442:
	movl	$0, %eax
	jmp	.L151
.L159:
	.stabn	68,0,467,.LM443-.LFBB23
.LM443:
	movq	40(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,467,.LM444-.LFBB23
.LM444:
	testb	%al, %al
	jne	.L160
	.stabn	68,0,468,.LM445-.LFBB23
.LM445:
	movq	40(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,468,.LM446-.LFBB23
.LM446:
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,467,.LM447-.LFBB23
.LM447:
	testb	%al, %al
	je	.L161
.L160:
	.stabn	68,0,470,.LM448-.LFBB23
.LM448:
	movl	$0, %eax
	jmp	.L151
.L161:
	.stabn	68,0,472,.LM449-.LFBB23
.LM449:
	movq	40(%rsp), %rax
	.stabn	68,0,472,.LM450-.LFBB23
.LM450:
	movq	%rax, %rdi
	movabsq	$list_is_empty_careful@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,472,.LM451-.LFBB23
.LM451:
	testq	%rax, %rax
	je	.L162
	.stabn	68,0,472,.LM452-.LFBB23
.LM452:
	movq	40(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,472,.LM453-.LFBB23
.LM453:
	movq	%rax, %rdi
	movabsq	$list_is_empty_careful@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,472,.LM454-.LFBB23
.LM454:
	testq	%rax, %rax
	jne	.L163
.L162:
	.stabn	68,0,474,.LM455-.LFBB23
.LM455:
	movl	$0, %eax
	jmp	.L151
.L163:
	.stabn	68,0,476,.LM456-.LFBB23
.LM456:
	movq	40(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,476,.LM457-.LFBB23
.LM457:
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
	.stabn	68,0,476,.LM458-.LFBB23
.LM458:
	salq	$12, %rax
	movq	%rax, %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	.stabn	68,0,476,.LM459-.LFBB23
.LM459:
	movq	40(%rsp), %rax
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
	.stabn	68,0,476,.LM460-.LFBB23
.LM460:
	salq	$12, %rax
	movq	%rax, %rcx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rcx
	.stabn	68,0,476,.LM461-.LFBB23
.LM461:
	movq	%rdx, %rax
	subq	%rcx, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,476,.LM462-.LFBB23
.LM462:
	cmpq	$4096, %rax
	je	.L164
	.stabn	68,0,478,.LM463-.LFBB23
.LM463:
	movl	$0, %eax
	jmp	.L151
.L164:
	.stabn	68,0,480,.LM464-.LFBB23
.LM464:
	addq	$1, 48(%rsp)
	.stabn	68,0,460,.LM465-.LFBB23
.LM465:
	addq	$40, 40(%rsp)
.L157:
	.stabn	68,0,460,.LM466-.LFBB23
.LM466:
	movq	40(%rsp), %rax
	cmpq	32(%rsp), %rax
	jb	.L165
	.stabn	68,0,482,.LM467-.LFBB23
.LM467:
	cmpq	$0, 48(%rsp)
	jne	.L166
	.stabn	68,0,484,.LM468-.LFBB23
.LM468:
	movl	$0, %eax
	jmp	.L151
.L166:
	.stabn	68,0,486,.LM469-.LFBB23
.LM469:
	movq	48(%rsp), %rax
	addq	$1, %rax
	.stabn	68,0,486,.LM470-.LFBB23
.LM470:
	cmpq	%rax, (%rsp)
	je	.L167
	.stabn	68,0,488,.LM471-.LFBB23
.LM471:
	movl	$0, %eax
	jmp	.L151
.L167:
	.stabn	68,0,490,.LM472-.LFBB23
.LM472:
	movq	48(%rsp), %rax
.L151:
	.stabn	68,0,491,.LM473-.LFBB23
.LM473:
	addq	$56, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE46:
	.size	chek_divlenmsa, .-chek_divlenmsa
	.stabs	"ok:(0,15)",128,0,434,48
	.stabs	"ms:(0,63)",128,0,435,40
	.stabs	"me:(0,63)",128,0,435,32
	.stabn	192,0,0,.LFBB23-.LFBB23
	.stabn	224,0,0,.Lscope23-.LFBB23
.Lscope23:
	.stabs	"",36,0,0,.Lscope23-.LFBB23
	.stabs	"mrdmb_add_msa_bafh:F(0,6)",36,0,494,mrdmb_add_msa_bafh
	.stabs	"bafhp:p(0,82)",160,0,494,16
	.stabs	"msastat:p(0,63)",160,0,494,8
	.stabs	"msaend:p(0,63)",160,0,494,0
	.globl	mrdmb_add_msa_bafh
	.type	mrdmb_add_msa_bafh, @function
mrdmb_add_msa_bafh:
	.stabn	68,0,495,.LM474-.LFBB24
.LM474:
.LFBB24:
.LFB47:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L179:
	leaq	.L179(%rip), %rcx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L179, %r11
	addq	%r11, %rcx
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,496,.LM475-.LFBB24
.LM475:
	cmpq	$0, 16(%rsp)
	je	.L170
	.stabn	68,0,496,.LM476-.LFBB24
.LM476:
	cmpq	$0, 8(%rsp)
	je	.L170
	.stabn	68,0,496,.LM477-.LFBB24
.LM477:
	cmpq	$0, (%rsp)
	jne	.L171
.L170:
	.stabn	68,0,498,.LM478-.LFBB24
.LM478:
	movl	$0, %eax
	jmp	.L172
.L171:
	.stabn	68,0,500,.LM479-.LFBB24
.LM479:
	movq	(%rsp), %rax
	subq	8(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,500,.LM480-.LFBB24
.LM480:
	addq	$1, %rax
	.stabn	68,0,500,.LM481-.LFBB24
.LM481:
	movq	%rax, 32(%rsp)
	.stabn	68,0,501,.LM482-.LFBB24
.LM482:
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,501,.LM483-.LFBB24
.LM483:
	cmpq	%rax, 32(%rsp)
	je	.L173
	.stabn	68,0,503,.LM484-.LFBB24
.LM484:
	movl	$0, %eax
	jmp	.L172
.L173:
	.stabn	68,0,505,.LM485-.LFBB24
.LM485:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %esi
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rsi, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,505,.LM486-.LFBB24
.LM486:
	testl	%eax, %eax
	jne	.L174
	.stabn	68,0,505,.LM487-.LFBB24
.LM487:
	movq	(%rsp), %rax
	movzbl	21(%rax), %esi
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rsi, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,505,.LM488-.LFBB24
.LM488:
	testl	%eax, %eax
	je	.L175
.L174:
	.stabn	68,0,507,.LM489-.LFBB24
.LM489:
	movl	$0, %eax
	jmp	.L172
.L175:
	.stabn	68,0,509,.LM490-.LFBB24
.LM490:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,509,.LM491-.LFBB24
.LM491:
	testb	%al, %al
	jne	.L176
	.stabn	68,0,510,.LM492-.LFBB24
.LM492:
	movq	(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,509,.LM493-.LFBB24
.LM493:
	testb	%al, %al
	je	.L177
.L176:
	.stabn	68,0,512,.LM494-.LFBB24
.LM494:
	movl	$0, %eax
	jmp	.L172
.L177:
	.stabn	68,0,515,.LM495-.LFBB24
.LM495:
	movq	8(%rsp), %rax
	cmpq	(%rsp), %rax
	jne	.L178
	.stabn	68,0,515,.LM496-.LFBB24
.LM496:
	cmpq	$1, 32(%rsp)
	je	.L178
	.stabn	68,0,515,.LM497-.LFBB24
.LM497:
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,515,.LM498-.LFBB24
.LM498:
	cmpq	$1, %rax
	je	.L178
	.stabn	68,0,517,.LM499-.LFBB24
.LM499:
	movl	$0, %eax
	jmp	.L172
.L178:
	.stabn	68,0,521,.LM500-.LFBB24
.LM500:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,522,.LM501-.LFBB24
.LM501:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,524,.LM502-.LFBB24
.LM502:
	movq	(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,525,.LM503-.LFBB24
.LM503:
	movq	(%rsp), %rax
	movq	16(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,526,.LM504-.LFBB24
.LM504:
	movq	16(%rsp), %rax
	leaq	56(%rax), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_add@GOTOFF, %rax
	leaq	(%rcx,%rax), %rax
	call	*%rax
	.stabn	68,0,527,.LM505-.LFBB24
.LM505:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,527,.LM506-.LFBB24
.LM506:
	leaq	1(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,528,.LM507-.LFBB24
.LM507:
	movq	16(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,528,.LM508-.LFBB24
.LM508:
	leaq	1(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,529,.LM509-.LFBB24
.LM509:
	movl	$1, %eax
.L172:
	.stabn	68,0,530,.LM510-.LFBB24
.LM510:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE47:
	.size	mrdmb_add_msa_bafh, .-mrdmb_add_msa_bafh
	.stabs	"mnr:(0,15)",128,0,500,32
	.stabn	192,0,0,.LFBB24-.LFBB24
	.stabn	224,0,0,.Lscope24-.LFBB24
.Lscope24:
	.stabs	"",36,0,0,.Lscope24-.LFBB24
	.section	.rodata
.LC12:
	.string	"mrdmb_add_msa_bafh fail\n"
	.text
	.stabs	"mm_reldpgsdivmsa_bafhl:F(0,63)",36,0,532,mm_reldpgsdivmsa_bafhl
	.stabs	"malckp:p(0,17)",160,0,532,40
	.stabs	"pages:p(0,15)",160,0,532,32
	.stabs	"retrelpnr:p(0,87)",160,0,532,24
	.stabs	"relbfl:p(0,82)",160,0,532,16
	.stabs	"divbfl:p(0,82)",160,0,532,8
	.globl	mm_reldpgsdivmsa_bafhl
	.type	mm_reldpgsdivmsa_bafhl, @function
mm_reldpgsdivmsa_bafhl:
	.stabn	68,0,533,.LM511-.LFBB25
.LM511:
.LFBB25:
.LFB48:
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
.L198:
	leaq	.L198(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L198, %r11
	addq	%r11, %rbx
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	.stabn	68,0,534,.LM512-.LFBB25
.LM512:
	movq	$0, 72(%rsp)
	.stabn	68,0,535,.LM513-.LFBB25
.LM513:
	movq	$0, 64(%rsp)
	.stabn	68,0,536,.LM514-.LFBB25
.LM514:
	movq	$0, 56(%rsp)
	.stabn	68,0,536,.LM515-.LFBB25
.LM515:
	movq	$0, 48(%rsp)
	.stabn	68,0,537,.LM516-.LFBB25
.LM516:
	cmpq	$0, 40(%rsp)
	je	.L181
	.stabn	68,0,537,.LM517-.LFBB25
.LM517:
	cmpq	$0, 32(%rsp)
	je	.L181
	.stabn	68,0,537,.LM518-.LFBB25
.LM518:
	cmpq	$0, 24(%rsp)
	je	.L181
	.stabn	68,0,537,.LM519-.LFBB25
.LM519:
	cmpq	$0, 16(%rsp)
	je	.L181
	.stabn	68,0,537,.LM520-.LFBB25
.LM520:
	cmpq	$0, 8(%rsp)
	jne	.L182
.L181:
	.stabn	68,0,539,.LM521-.LFBB25
.LM521:
	movl	$0, %eax
	jmp	.L197
.L182:
	.stabn	68,0,541,.LM522-.LFBB25
.LM522:
	movq	16(%rsp), %rax
	cmpq	8(%rsp), %rax
	jbe	.L184
	.stabn	68,0,543,.LM523-.LFBB25
.LM523:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,544,.LM524-.LFBB25
.LM524:
	movl	$0, %eax
	jmp	.L197
.L184:
	.stabn	68,0,548,.LM525-.LFBB25
.LM525:
	movq	16(%rsp), %rax
	cmpq	8(%rsp), %rax
	jne	.L185
	.stabn	68,0,551,.LM526-.LFBB25
.LM526:
	leaq	48(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	16(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_retnmsaob_onbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,552,.LM527-.LFBB25
.LM527:
	cmpq	$0, 64(%rsp)
	je	.L186
	.stabn	68,0,552,.LM528-.LFBB25
.LM528:
	movq	56(%rsp), %rax
	.stabn	68,0,552,.LM529-.LFBB25
.LM529:
	testq	%rax, %rax
	je	.L186
	.stabn	68,0,552,.LM530-.LFBB25
.LM530:
	movq	48(%rsp), %rax
	.stabn	68,0,552,.LM531-.LFBB25
.LM531:
	testq	%rax, %rax
	jne	.L187
.L186:
	.stabn	68,0,554,.LM532-.LFBB25
.LM532:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,555,.LM533-.LFBB25
.LM533:
	movl	$0, %eax
	jmp	.L197
.L187:
	.stabn	68,0,557,.LM534-.LFBB25
.LM534:
	movq	48(%rsp), %rax
	movq	56(%rsp), %rdx
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,557,.LM535-.LFBB25
.LM535:
	leaq	1(%rax), %rdx
	.stabn	68,0,557,.LM536-.LFBB25
.LM536:
	movq	16(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,557,.LM537-.LFBB25
.LM537:
	cmpq	%rax, %rdx
	je	.L188
	.stabn	68,0,559,.LM538-.LFBB25
.LM538:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,560,.LM539-.LFBB25
.LM539:
	movl	$0, %eax
	jmp	.L197
.L188:
	.stabn	68,0,563,.LM540-.LFBB25
.LM540:
	movq	16(%rsp), %rax
	movq	16(%rax), %rdx
	movq	56(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_divpages_opmsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,564,.LM541-.LFBB25
.LM541:
	cmpq	$0, 72(%rsp)
	jne	.L189
	.stabn	68,0,566,.LM542-.LFBB25
.LM542:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,567,.LM543-.LFBB25
.LM543:
	movl	$0, %eax
	jmp	.L197
.L189:
	.stabn	68,0,570,.LM544-.LFBB25
.LM544:
	movq	16(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,570,.LM545-.LFBB25
.LM545:
	movq	24(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,571,.LM546-.LFBB25
.LM546:
	movq	72(%rsp), %rax
	jmp	.L197
.L185:
	.stabn	68,0,576,.LM547-.LFBB25
.LM547:
	leaq	48(%rsp), %rdx
	leaq	56(%rsp), %rcx
	movq	8(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_retnmsaob_onbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,577,.LM548-.LFBB25
.LM548:
	cmpq	$0, 64(%rsp)
	je	.L190
	.stabn	68,0,577,.LM549-.LFBB25
.LM549:
	movq	56(%rsp), %rax
	.stabn	68,0,577,.LM550-.LFBB25
.LM550:
	testq	%rax, %rax
	je	.L190
	.stabn	68,0,577,.LM551-.LFBB25
.LM551:
	movq	48(%rsp), %rax
	.stabn	68,0,577,.LM552-.LFBB25
.LM552:
	testq	%rax, %rax
	jne	.L191
.L190:
	.stabn	68,0,579,.LM553-.LFBB25
.LM553:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,580,.LM554-.LFBB25
.LM554:
	movl	$0, %eax
	jmp	.L197
.L191:
	.stabn	68,0,582,.LM555-.LFBB25
.LM555:
	movq	48(%rsp), %rax
	movq	56(%rsp), %rdx
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,582,.LM556-.LFBB25
.LM556:
	leaq	1(%rax), %rdx
	.stabn	68,0,582,.LM557-.LFBB25
.LM557:
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,582,.LM558-.LFBB25
.LM558:
	cmpq	%rax, %rdx
	je	.L192
	.stabn	68,0,584,.LM559-.LFBB25
.LM559:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,585,.LM560-.LFBB25
.LM560:
	movl	$0, %eax
	jmp	.L197
.L192:
	.stabn	68,0,587,.LM561-.LFBB25
.LM561:
	movq	8(%rsp), %rax
	movq	16(%rax), %rax
	movq	%rax, 88(%rsp)
.LBB6:
	.stabn	68,0,589,.LM562-.LFBB25
.LM562:
	movq	8(%rsp), %rax
	subq	$104, %rax
	movq	%rax, 80(%rsp)
	.stabn	68,0,589,.LM563-.LFBB25
.LM563:
	jmp	.L193
.L195:
	.stabn	68,0,592,.LM564-.LFBB25
.LM564:
	movq	56(%rsp), %rax
	movq	32(%rax), %rdx
	.stabn	68,0,592,.LM565-.LFBB25
.LM565:
	movq	56(%rsp), %rsi
	.stabn	68,0,592,.LM566-.LFBB25
.LM566:
	movq	80(%rsp), %rax
	movq	16(%rax), %rcx
	.stabn	68,0,592,.LM567-.LFBB25
.LM567:
	movq	%rcx, %rax
	salq	$2, %rax
	addq	%rcx, %rax
	salq	$3, %rax
	.stabn	68,0,592,.LM568-.LFBB25
.LM568:
	leaq	(%rsi,%rax), %rcx
	movq	80(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mrdmb_add_msa_bafh@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,592,.LM569-.LFBB25
.LM569:
	testq	%rax, %rax
	jne	.L194
	.stabn	68,0,594,.LM570-.LFBB25
.LM570:
	movabsq	$.LC12@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L194:
	.stabn	68,0,596,.LM571-.LFBB25
.LM571:
	movq	56(%rsp), %rcx
	.stabn	68,0,596,.LM572-.LFBB25
.LM572:
	movq	80(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,596,.LM573-.LFBB25
.LM573:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,596,.LM574-.LFBB25
.LM574:
	movq	56(%rsp), %rax
	.stabn	68,0,596,.LM575-.LFBB25
.LM575:
	addq	%rcx, %rdx
	.stabn	68,0,596,.LM576-.LFBB25
.LM576:
	movq	%rdx, 32(%rax)
	.stabn	68,0,597,.LM577-.LFBB25
.LM577:
	movq	80(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,597,.LM578-.LFBB25
.LM578:
	subq	%rax, 88(%rsp)
	.stabn	68,0,589,.LM579-.LFBB25
.LM579:
	subq	$104, 80(%rsp)
.L193:
	.stabn	68,0,589,.LM580-.LFBB25
.LM580:
	movq	80(%rsp), %rax
	cmpq	16(%rsp), %rax
	jnb	.L195
.LBE6:
	.stabn	68,0,600,.LM581-.LFBB25
.LM581:
	movq	56(%rsp), %rax
	movq	88(%rsp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_divpages_opmsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,601,.LM582-.LFBB25
.LM582:
	cmpq	$0, 72(%rsp)
	jne	.L196
	.stabn	68,0,603,.LM583-.LFBB25
.LM583:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,604,.LM584-.LFBB25
.LM584:
	movl	$0, %eax
	jmp	.L197
.L196:
	.stabn	68,0,606,.LM585-.LFBB25
.LM585:
	movq	16(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,606,.LM586-.LFBB25
.LM586:
	movq	24(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,607,.LM587-.LFBB25
.LM587:
	movq	72(%rsp), %rax
.L197:
	.stabn	68,0,608,.LM588-.LFBB25
.LM588:
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
.LFE48:
	.size	mm_reldpgsdivmsa_bafhl, .-mm_reldpgsdivmsa_bafhl
	.stabs	"retmsa:(0,63)",128,0,534,72
	.stabs	"rets:(0,6)",128,0,535,64
	.stabs	"retmstat:(0,63)",128,0,536,56
	.stabs	"retmend:(0,63)",128,0,536,48
	.stabs	"divnr:(0,15)",128,0,587,88
	.stabn	192,0,0,.LFBB25-.LFBB25
	.stabs	"tmpbfl:(0,82)",128,0,589,80
	.stabn	192,0,0,.LBB6-.LFBB25
	.stabn	224,0,0,.LBE6-.LFBB25
	.stabn	224,0,0,.Lscope25-.LFBB25
.Lscope25:
	.stabs	"",36,0,0,.Lscope25-.LFBB25
	.stabs	"mm_reldivpages_onmarea:F(0,63)",36,0,610,mm_reldivpages_onmarea
	.stabs	"malckp:p(0,17)",160,0,610,24
	.stabs	"pages:p(0,15)",160,0,610,16
	.stabs	"retrelpnr:p(0,87)",160,0,610,8
	.globl	mm_reldivpages_onmarea
	.type	mm_reldivpages_onmarea, @function
mm_reldivpages_onmarea:
	.stabn	68,0,611,.LM589-.LFBB26
.LM589:
.LFBB26:
.LFB49:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L207:
	leaq	.L207(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L207, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,612,.LM590-.LFBB26
.LM590:
	cmpq	$0, 24(%rsp)
	je	.L200
	.stabn	68,0,612,.LM591-.LFBB26
.LM591:
	cmpq	$0, 16(%rsp)
	je	.L200
	.stabn	68,0,612,.LM592-.LFBB26
.LM592:
	cmpq	$0, 8(%rsp)
	jne	.L201
.L200:
	.stabn	68,0,614,.LM593-.LFBB26
.LM593:
	movl	$0, %eax
	jmp	.L206
.L201:
	.stabn	68,0,616,.LM594-.LFBB26
.LM594:
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$scan_mapgsalloc_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,616,.LM595-.LFBB26
.LM595:
	testq	%rax, %rax
	jne	.L203
	.stabn	68,0,618,.LM596-.LFBB26
.LM596:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,619,.LM597-.LFBB26
.LM597:
	movl	$0, %eax
	jmp	.L206
.L203:
	.stabn	68,0,621,.LM598-.LFBB26
.LM598:
	movq	$0, 56(%rsp)
	.stabn	68,0,621,.LM599-.LFBB26
.LM599:
	movq	$0, 48(%rsp)
	.stabn	68,0,623,.LM600-.LFBB26
.LM600:
	leaq	48(%rsp), %rcx
	leaq	56(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$onmpgs_retn_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,624,.LM601-.LFBB26
.LM601:
	cmpq	$0, 72(%rsp)
	jne	.L204
	.stabn	68,0,626,.LM602-.LFBB26
.LM602:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,627,.LM603-.LFBB26
.LM603:
	movl	$0, %eax
	jmp	.L206
.L204:
	.stabn	68,0,630,.LM604-.LFBB26
.LM604:
	movq	$0, 40(%rsp)
	.stabn	68,0,632,.LM605-.LFBB26
.LM605:
	movq	48(%rsp), %rdi
	movq	56(%rsp), %rcx
	leaq	40(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movabsq	$mm_reldpgsdivmsa_bafhl@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,633,.LM606-.LFBB26
.LM606:
	cmpq	$0, 64(%rsp)
	jne	.L205
	.stabn	68,0,635,.LM607-.LFBB26
.LM607:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,636,.LM608-.LFBB26
.LM608:
	movl	$0, %eax
	jmp	.L206
.L205:
	.stabn	68,0,638,.LM609-.LFBB26
.LM609:
	movq	40(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,639,.LM610-.LFBB26
.LM610:
	movq	64(%rsp), %rax
.L206:
	.stabn	68,0,640,.LM611-.LFBB26
.LM611:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE49:
	.size	mm_reldivpages_onmarea, .-mm_reldivpages_onmarea
	.stabs	"retrelbhl:(0,82)",128,0,621,56
	.stabs	"retdivbhl:(0,82)",128,0,621,48
	.stabs	"rets:(0,6)",128,0,623,72
	.stabs	"retpnr:(0,15)",128,0,630,40
	.stabs	"retmsa:(0,63)",128,0,632,64
	.stabn	192,0,0,.LFBB26-.LFBB26
	.stabn	224,0,0,.Lscope26-.LFBB26
.Lscope26:
	.stabs	"",36,0,0,.Lscope26-.LFBB26
	.stabs	"mm_prcdivpages_onmarea:F(0,63)",36,0,642,mm_prcdivpages_onmarea
	.stabs	"malckp:p(0,17)",160,0,642,24
	.stabs	"pages:p(0,15)",160,0,642,16
	.stabs	"retrelpnr:p(0,87)",160,0,642,8
	.globl	mm_prcdivpages_onmarea
	.type	mm_prcdivpages_onmarea, @function
mm_prcdivpages_onmarea:
	.stabn	68,0,643,.LM612-.LFBB27
.LM612:
.LFBB27:
.LFB50:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L219:
	leaq	.L219(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L219, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,644,.LM613-.LFBB27
.LM613:
	cmpq	$0, 24(%rsp)
	je	.L209
	.stabn	68,0,644,.LM614-.LFBB27
.LM614:
	cmpq	$0, 8(%rsp)
	je	.L209
	.stabn	68,0,644,.LM615-.LFBB27
.LM615:
	cmpq	$1, 16(%rsp)
	je	.L210
.L209:
	.stabn	68,0,646,.LM616-.LFBB27
.LM616:
	movl	$0, %eax
	jmp	.L218
.L210:
	.stabn	68,0,648,.LM617-.LFBB27
.LM617:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,648,.LM618-.LFBB27
.LM618:
	cmpq	$3, %rax
	je	.L212
	.stabn	68,0,650,.LM619-.LFBB27
.LM619:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,651,.LM620-.LFBB27
.LM620:
	movl	$0, %eax
	jmp	.L218
.L212:
	.stabn	68,0,653,.LM621-.LFBB27
.LM621:
	movq	16(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$scan_mapgsalloc_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,653,.LM622-.LFBB27
.LM622:
	testq	%rax, %rax
	jne	.L213
	.stabn	68,0,655,.LM623-.LFBB27
.LM623:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,656,.LM624-.LFBB27
.LM624:
	movl	$0, %eax
	jmp	.L218
.L213:
	.stabn	68,0,658,.LM625-.LFBB27
.LM625:
	movq	24(%rsp), %rax
	addq	$5800, %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,659,.LM626-.LFBB27
.LM626:
	movq	$0, 64(%rsp)
	.stabn	68,0,660,.LM627-.LFBB27
.LM627:
	movq	$0, 56(%rsp)
	.stabn	68,0,660,.LM628-.LFBB27
.LM628:
	movq	$0, 48(%rsp)
	.stabn	68,0,660,.LM629-.LFBB27
.LM629:
	movq	$0, 40(%rsp)
	.stabn	68,0,661,.LM630-.LFBB27
.LM630:
	leaq	40(%rsp), %rdx
	leaq	48(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_retnmsaob_onbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,662,.LM631-.LFBB27
.LM631:
	cmpq	$0, 64(%rsp)
	je	.L214
	.stabn	68,0,662,.LM632-.LFBB27
.LM632:
	movq	48(%rsp), %rax
	.stabn	68,0,662,.LM633-.LFBB27
.LM633:
	testq	%rax, %rax
	je	.L214
	.stabn	68,0,662,.LM634-.LFBB27
.LM634:
	movq	40(%rsp), %rax
	.stabn	68,0,662,.LM635-.LFBB27
.LM635:
	testq	%rax, %rax
	jne	.L215
.L214:
	.stabn	68,0,664,.LM636-.LFBB27
.LM636:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,665,.LM637-.LFBB27
.LM637:
	movl	$0, %eax
	jmp	.L218
.L215:
	.stabn	68,0,667,.LM638-.LFBB27
.LM638:
	movq	40(%rsp), %rax
	movq	48(%rsp), %rdx
	subq	%rdx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,667,.LM639-.LFBB27
.LM639:
	leaq	1(%rax), %rdx
	.stabn	68,0,667,.LM640-.LFBB27
.LM640:
	movq	72(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,667,.LM641-.LFBB27
.LM641:
	cmpq	%rax, %rdx
	je	.L216
	.stabn	68,0,669,.LM642-.LFBB27
.LM642:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,670,.LM643-.LFBB27
.LM643:
	movl	$0, %eax
	jmp	.L218
.L216:
	.stabn	68,0,672,.LM644-.LFBB27
.LM644:
	movq	72(%rsp), %rax
	movq	16(%rax), %rdx
	movq	48(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_divpages_opmsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,673,.LM645-.LFBB27
.LM645:
	cmpq	$0, 56(%rsp)
	jne	.L217
	.stabn	68,0,675,.LM646-.LFBB27
.LM646:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,676,.LM647-.LFBB27
.LM647:
	movl	$0, %eax
	jmp	.L218
.L217:
	.stabn	68,0,678,.LM648-.LFBB27
.LM648:
	movq	72(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,678,.LM649-.LFBB27
.LM649:
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,679,.LM650-.LFBB27
.LM650:
	movq	56(%rsp), %rax
.L218:
	.stabn	68,0,680,.LM651-.LFBB27
.LM651:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE50:
	.size	mm_prcdivpages_onmarea, .-mm_prcdivpages_onmarea
	.stabs	"prcbfh:(0,82)",128,0,658,72
	.stabs	"rets:(0,6)",128,0,659,64
	.stabs	"retmsa:(0,63)",128,0,660,56
	.stabs	"retmstat:(0,63)",128,0,660,48
	.stabs	"retmend:(0,63)",128,0,660,40
	.stabn	192,0,0,.LFBB27-.LFBB27
	.stabn	224,0,0,.Lscope27-.LFBB27
.Lscope27:
	.stabs	"",36,0,0,.Lscope27-.LFBB27
	.stabs	"mm_divpages_core:F(0,63)",36,0,682,mm_divpages_core
	.stabs	"mareap:p(0,17)",160,0,682,24
	.stabs	"pages:p(0,15)",160,0,682,16
	.stabs	"retrealpnr:p(0,87)",160,0,682,8
	.stabs	"flgs:p(0,15)",160,0,682,0
	.globl	mm_divpages_core
	.type	mm_divpages_core, @function
mm_divpages_core:
	.stabn	68,0,683,.LM652-.LFBB28
.LM652:
.LFBB28:
.LFB51:
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
.L229:
	leaq	.L229(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L229, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,684,.LM653-.LFBB28
.LM653:
	movq	$0, 48(%rsp)
	.stabn	68,0,685,.LM654-.LFBB28
.LM654:
	movq	$0, 56(%rsp)
	.stabn	68,0,687,.LM655-.LFBB28
.LM655:
	cmpq	$0, (%rsp)
	je	.L221
	.stabn	68,0,687,.LM656-.LFBB28
.LM656:
	cmpq	$1, (%rsp)
	je	.L221
	.stabn	68,0,689,.LM657-.LFBB28
.LM657:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,690,.LM658-.LFBB28
.LM658:
	movl	$0, %eax
	jmp	.L228
.L221:
	.stabn	68,0,692,.LM659-.LFBB28
.LM659:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,692,.LM660-.LFBB28
.LM660:
	cmpq	$2, %rax
	je	.L223
	.stabn	68,0,692,.LM661-.LFBB28
.LM661:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,692,.LM662-.LFBB28
.LM662:
	cmpq	$1, %rax
	je	.L223
	.stabn	68,0,694,.LM663-.LFBB28
.LM663:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,695,.LM664-.LFBB28
.LM664:
	movl	$0, %eax
	jmp	.L228
.L223:
	.stabn	68,0,699,.LM665-.LFBB28
.LM665:
	movq	24(%rsp), %rax
	leaq	16(%rax), %rdx
	leaq	40(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,701,.LM666-.LFBB28
.LM666:
	cmpq	$1, (%rsp)
	jne	.L224
	.stabn	68,0,704,.LM667-.LFBB28
.LM667:
	leaq	48(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_maxdivpages_onmarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,705,.LM668-.LFBB28
.LM668:
	jmp	.L225
.L224:
	.stabn	68,0,707,.LM669-.LFBB28
.LM669:
	cmpq	$0, (%rsp)
	jne	.L226
	.stabn	68,0,709,.LM670-.LFBB28
.LM670:
	leaq	48(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_reldivpages_onmarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,710,.LM671-.LFBB28
.LM671:
	jmp	.L225
.L226:
	.stabn	68,0,712,.LM672-.LFBB28
.LM672:
	movq	$0, 56(%rsp)
	.stabn	68,0,713,.LM673-.LFBB28
.LM673:
	movq	$0, 48(%rsp)
.L225:
	.stabn	68,0,715,.LM674-.LFBB28
.LM674:
	cmpq	$0, 56(%rsp)
	je	.L227
	.stabn	68,0,715,.LM675-.LFBB28
.LM675:
	movq	48(%rsp), %rax
	.stabn	68,0,715,.LM676-.LFBB28
.LM676:
	testq	%rax, %rax
	je	.L227
	.stabn	68,0,717,.LM677-.LFBB28
.LM677:
	movq	48(%rsp), %rcx
	movq	24(%rsp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_update_memarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,718,.LM678-.LFBB28
.LM678:
	movq	48(%rsp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$mm_update_memmgrob@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L227:
	.stabn	68,0,721,.LM679-.LFBB28
.LM679:
	movq	24(%rsp), %rax
	leaq	16(%rax), %rdx
	leaq	40(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinunlock_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,722,.LM680-.LFBB28
.LM680:
	movq	48(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,723,.LM681-.LFBB28
.LM681:
	movq	56(%rsp), %rax
.L228:
	.stabn	68,0,724,.LM682-.LFBB28
.LM682:
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
.LFE51:
	.size	mm_divpages_core, .-mm_divpages_core
	.stabs	"retpnr:(0,15)",128,0,684,48
	.stabs	"retmsa:(0,63)",128,0,685,56
	.stabs	"cpuflg:(0,16)",128,0,686,40
	.stabn	192,0,0,.LFBB28-.LFBB28
	.stabn	224,0,0,.Lscope28-.LFBB28
.Lscope28:
	.stabs	"",36,0,0,.Lscope28-.LFBB28
	.stabs	"mm_divpages_fmwk:F(0,63)",36,0,727,mm_divpages_fmwk
	.stabs	"mmobjp:p(0,60)",160,0,727,40
	.stabs	"pages:p(0,15)",160,0,727,32
	.stabs	"retrelpnr:p(0,87)",160,0,727,24
	.stabs	"mrtype:p(0,15)",160,0,727,16
	.stabs	"flgs:p(0,15)",160,0,727,8
	.globl	mm_divpages_fmwk
	.type	mm_divpages_fmwk, @function
mm_divpages_fmwk:
	.stabn	68,0,728,.LM683-.LFBB29
.LM683:
.LFBB29:
.LFB52:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L235:
	leaq	.L235(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L235, %r11
	addq	%r11, %rbx
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	.stabn	68,0,730,.LM684-.LFBB29
.LM684:
	movq	16(%rsp), %rdx
	movq	40(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$onmrtype_retn_marea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,731,.LM685-.LFBB29
.LM685:
	cmpq	$0, 72(%rsp)
	jne	.L231
	.stabn	68,0,733,.LM686-.LFBB29
.LM686:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,734,.LM687-.LFBB29
.LM687:
	movl	$0, %eax
	jmp	.L234
.L231:
	.stabn	68,0,736,.LM688-.LFBB29
.LM688:
	movq	$0, 56(%rsp)
	.stabn	68,0,739,.LM689-.LFBB29
.LM689:
	movq	8(%rsp), %rcx
	leaq	56(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	72(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$mm_divpages_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,740,.LM690-.LFBB29
.LM690:
	cmpq	$0, 64(%rsp)
	jne	.L233
	.stabn	68,0,742,.LM691-.LFBB29
.LM691:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,743,.LM692-.LFBB29
.LM692:
	movl	$0, %eax
	jmp	.L234
.L233:
	.stabn	68,0,745,.LM693-.LFBB29
.LM693:
	movq	56(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,746,.LM694-.LFBB29
.LM694:
	movq	64(%rsp), %rax
.L234:
	.stabn	68,0,747,.LM695-.LFBB29
.LM695:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE52:
	.size	mm_divpages_fmwk, .-mm_divpages_fmwk
	.stabs	"marea:(0,17)",128,0,730,72
	.stabs	"memarea_t:t(0,18)",128,0,125,0
	.stabs	"retpnr:(0,15)",128,0,736,56
	.stabs	"retmsa:(0,63)",128,0,739,64
	.stabn	192,0,0,.LFBB29-.LFBB29
	.stabn	224,0,0,.Lscope29-.LFBB29
.Lscope29:
	.stabs	"",36,0,0,.Lscope29-.LFBB29
	.stabs	"mm_division_pages:F(0,63)",36,0,755,mm_division_pages
	.stabs	"mmobjp:p(0,60)",160,0,755,40
	.stabs	"pages:p(0,15)",160,0,755,32
	.stabs	"retrealpnr:p(0,87)",160,0,755,24
	.stabs	"mrtype:p(0,15)",160,0,755,16
	.stabs	"flgs:p(0,15)",160,0,755,8
	.globl	mm_division_pages
	.type	mm_division_pages, @function
mm_division_pages:
	.stabn	68,0,756,.LM696-.LFBB30
.LM696:
.LFBB30:
.LFB53:
	.cfi_startproc
	endbr64
	subq	$72, %rsp
	.cfi_def_cfa_offset 80
.L242:
	leaq	.L242(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L242, %r11
	addq	%r11, %rax
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	.stabn	68,0,757,.LM697-.LFBB30
.LM697:
	cmpq	$0, 40(%rsp)
	je	.L237
	.stabn	68,0,757,.LM698-.LFBB30
.LM698:
	cmpq	$0, 24(%rsp)
	je	.L237
	.stabn	68,0,757,.LM699-.LFBB30
.LM699:
	cmpq	$0, 16(%rsp)
	jne	.L238
.L237:
	.stabn	68,0,759,.LM700-.LFBB30
.LM700:
	movl	$0, %eax
	jmp	.L241
.L238:
	.stabn	68,0,762,.LM701-.LFBB30
.LM701:
	movq	$0, 48(%rsp)
	.stabn	68,0,763,.LM702-.LFBB30
.LM702:
	movq	8(%rsp), %r8
	movq	16(%rsp), %rcx
	leaq	48(%rsp), %rdx
	movq	32(%rsp), %rsi
	movq	40(%rsp), %rdi
	movabsq	$mm_divpages_fmwk@GOTOFF, %r9
	leaq	(%rax,%r9), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,764,.LM703-.LFBB30
.LM703:
	cmpq	$0, 56(%rsp)
	jne	.L240
	.stabn	68,0,766,.LM704-.LFBB30
.LM704:
	movq	24(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,767,.LM705-.LFBB30
.LM705:
	movl	$0, %eax
	jmp	.L241
.L240:
	.stabn	68,0,769,.LM706-.LFBB30
.LM706:
	movq	48(%rsp), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,770,.LM707-.LFBB30
.LM707:
	movq	56(%rsp), %rax
.L241:
	.stabn	68,0,771,.LM708-.LFBB30
.LM708:
	addq	$72, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE53:
	.size	mm_division_pages, .-mm_division_pages
	.stabs	"retpnr:(0,15)",128,0,762,48
	.stabs	"retmsa:(0,63)",128,0,763,56
	.stabn	192,0,0,.LFBB30-.LFBB30
	.stabn	224,0,0,.Lscope30-.LFBB30
.Lscope30:
	.stabs	"",36,0,0,.Lscope30-.LFBB30
	.stabs	"retn_procmarea:F(0,17)",36,0,773,retn_procmarea
	.stabs	"mmobjp:p(0,60)",160,0,773,0
	.globl	retn_procmarea
	.type	retn_procmarea, @function
retn_procmarea:
	.stabn	68,0,774,.LM709-.LFBB31
.LM709:
.LFBB31:
.LFB54:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L249:
	leaq	.L249(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L249, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,775,.LM710-.LFBB31
.LM710:
	cmpq	$0, (%rsp)
	jne	.L244
	.stabn	68,0,777,.LM711-.LFBB31
.LM711:
	movl	$0, %eax
	jmp	.L245
.L244:
.LBB7:
	.stabn	68,0,779,.LM712-.LFBB31
.LM712:
	movq	$0, 16(%rsp)
	.stabn	68,0,779,.LM713-.LFBB31
.LM713:
	jmp	.L246
.L248:
	.stabn	68,0,781,.LM714-.LFBB31
.LM714:
	movq	(%rsp), %rax
	movq	176(%rax), %rdx
	.stabn	68,0,781,.LM715-.LFBB31
.LM715:
	movq	16(%rsp), %rax
	imulq	$5912, %rax, %rax
	addq	%rdx, %rax
	.stabn	68,0,781,.LM716-.LFBB31
.LM716:
	movq	40(%rax), %rax
	.stabn	68,0,781,.LM717-.LFBB31
.LM717:
	cmpq	$3, %rax
	jne	.L247
	.stabn	68,0,783,.LM718-.LFBB31
.LM718:
	movq	(%rsp), %rax
	movq	176(%rax), %rdx
	.stabn	68,0,783,.LM719-.LFBB31
.LM719:
	movq	16(%rsp), %rax
	imulq	$5912, %rax, %rax
	.stabn	68,0,783,.LM720-.LFBB31
.LM720:
	addq	%rdx, %rax
	jmp	.L245
.L247:
	.stabn	68,0,779,.LM721-.LFBB31
.LM721:
	addq	$1, 16(%rsp)
.L246:
	.stabn	68,0,779,.LM722-.LFBB31
.LM722:
	movq	(%rsp), %rax
	movq	184(%rax), %rax
	.stabn	68,0,779,.LM723-.LFBB31
.LM723:
	cmpq	%rax, 16(%rsp)
	jb	.L248
.LBE7:
	.stabn	68,0,786,.LM724-.LFBB31
.LM724:
	movl	$0, %eax
.L245:
	.stabn	68,0,787,.LM725-.LFBB31
.LM725:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE54:
	.size	retn_procmarea, .-retn_procmarea
	.stabs	"mi:(0,15)",128,0,779,16
	.stabn	192,0,0,.LBB7-.LFBB31
	.stabn	224,0,0,.LBE7-.LFBB31
.Lscope31:
	.stabs	"",36,0,0,.Lscope31-.LFBB31
	.stabs	"divpages_procmarea_core:F(0,63)",36,0,789,divpages_procmarea_core
	.stabs	"mmobjp:p(0,60)",160,0,789,24
	.stabs	"pages:p(0,15)",160,0,789,16
	.stabs	"retrealpnr:p(0,87)",160,0,789,8
	.globl	divpages_procmarea_core
	.type	divpages_procmarea_core, @function
divpages_procmarea_core:
	.stabn	68,0,790,.LM726-.LFBB32
.LM726:
.LFBB32:
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
.L259:
	leaq	.L259(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L259, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,792,.LM727-.LFBB32
.LM727:
	movq	$0, 40(%rsp)
	.stabn	68,0,793,.LM728-.LFBB32
.LM728:
	movq	$0, 64(%rsp)
	.stabn	68,0,793,.LM729-.LFBB32
.LM729:
	movq	$0, 72(%rsp)
	.stabn	68,0,794,.LM730-.LFBB32
.LM730:
	cmpq	$0, 24(%rsp)
	je	.L251
	.stabn	68,0,794,.LM731-.LFBB32
.LM731:
	cmpq	$1, 16(%rsp)
	jne	.L251
	.stabn	68,0,794,.LM732-.LFBB32
.LM732:
	cmpq	$0, 8(%rsp)
	jne	.L252
.L251:
	.stabn	68,0,796,.LM733-.LFBB32
.LM733:
	movl	$0, %eax
	jmp	.L258
.L252:
	.stabn	68,0,798,.LM734-.LFBB32
.LM734:
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$retn_procmarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,799,.LM735-.LFBB32
.LM735:
	cmpq	$0, 56(%rsp)
	jne	.L254
	.stabn	68,0,801,.LM736-.LFBB32
.LM736:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,802,.LM737-.LFBB32
.LM737:
	movl	$0, %eax
	jmp	.L258
.L254:
	.stabn	68,0,804,.LM738-.LFBB32
.LM738:
	movq	56(%rsp), %rax
	leaq	16(%rax), %rdx
	leaq	48(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,805,.LM739-.LFBB32
.LM739:
	movq	16(%rsp), %rdx
	movq	56(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$scan_mapgsalloc_ok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,805,.LM740-.LFBB32
.LM740:
	testq	%rax, %rax
	jne	.L255
	.stabn	68,0,807,.LM741-.LFBB32
.LM741:
	movq	$0, 72(%rsp)
	.stabn	68,0,808,.LM742-.LFBB32
.LM742:
	movq	$0, 40(%rsp)
	.stabn	68,0,809,.LM743-.LFBB32
.LM743:
	jmp	.L256
.L255:
	.stabn	68,0,811,.LM744-.LFBB32
.LM744:
	leaq	40(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_prcdivpages_onmarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,813,.LM745-.LFBB32
.LM745:
	cmpq	$0, 64(%rsp)
	je	.L257
	.stabn	68,0,813,.LM746-.LFBB32
.LM746:
	movq	40(%rsp), %rax
	.stabn	68,0,813,.LM747-.LFBB32
.LM747:
	testq	%rax, %rax
	je	.L257
	.stabn	68,0,815,.LM748-.LFBB32
.LM748:
	movq	40(%rsp), %rcx
	movq	56(%rsp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_update_memarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,816,.LM749-.LFBB32
.LM749:
	movq	40(%rsp), %rax
	movl	$0, %esi
	movq	%rax, %rdi
	movabsq	$mm_update_memmgrob@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,817,.LM750-.LFBB32
.LM750:
	movq	64(%rsp), %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,818,.LM751-.LFBB32
.LM751:
	jmp	.L256
.L257:
	.stabn	68,0,820,.LM752-.LFBB32
.LM752:
	movq	$0, 40(%rsp)
	.stabn	68,0,821,.LM753-.LFBB32
.LM753:
	movq	$0, 72(%rsp)
.L256:
	.stabn	68,0,823,.LM754-.LFBB32
.LM754:
	movq	56(%rsp), %rax
	leaq	16(%rax), %rdx
	leaq	48(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinunlock_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,824,.LM755-.LFBB32
.LM755:
	movq	40(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,825,.LM756-.LFBB32
.LM756:
	movq	72(%rsp), %rax
.L258:
	.stabn	68,0,826,.LM757-.LFBB32
.LM757:
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
	.size	divpages_procmarea_core, .-divpages_procmarea_core
	.stabs	"cpuflg:(0,16)",128,0,791,48
	.stabs	"retpnr:(0,15)",128,0,792,40
	.stabs	"retmsa:(0,63)",128,0,793,64
	.stabs	"retmsap:(0,63)",128,0,793,72
	.stabs	"marp:(0,17)",128,0,798,56
	.stabn	192,0,0,.LFBB32-.LFBB32
	.stabn	224,0,0,.Lscope32-.LFBB32
.Lscope32:
	.stabs	"",36,0,0,.Lscope32-.LFBB32
	.stabs	"mm_divpages_procmarea:F(0,63)",36,0,828,mm_divpages_procmarea
	.stabs	"mmobjp:p(0,60)",160,0,828,24
	.stabs	"pages:p(0,15)",160,0,828,16
	.stabs	"retrealpnr:p(0,87)",160,0,828,8
	.globl	mm_divpages_procmarea
	.type	mm_divpages_procmarea, @function
mm_divpages_procmarea:
	.stabn	68,0,829,.LM758-.LFBB33
.LM758:
.LFBB33:
.LFB56:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
.L267:
	leaq	.L267(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L267, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,830,.LM759-.LFBB33
.LM759:
	movq	$0, 40(%rsp)
	.stabn	68,0,831,.LM760-.LFBB33
.LM760:
	movq	$0, 32(%rsp)
	.stabn	68,0,832,.LM761-.LFBB33
.LM761:
	cmpq	$0, 24(%rsp)
	je	.L261
	.stabn	68,0,832,.LM762-.LFBB33
.LM762:
	cmpq	$1, 16(%rsp)
	jne	.L261
	.stabn	68,0,832,.LM763-.LFBB33
.LM763:
	cmpq	$0, 8(%rsp)
	jne	.L262
.L261:
	.stabn	68,0,834,.LM764-.LFBB33
.LM764:
	movl	$0, %eax
	jmp	.L266
.L262:
	.stabn	68,0,836,.LM765-.LFBB33
.LM765:
	leaq	32(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$divpages_procmarea_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,837,.LM766-.LFBB33
.LM766:
	cmpq	$0, 40(%rsp)
	je	.L264
	.stabn	68,0,839,.LM767-.LFBB33
.LM767:
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,840,.LM768-.LFBB33
.LM768:
	movq	40(%rsp), %rax
	jmp	.L266
.L264:
	.stabn	68,0,842,.LM769-.LFBB33
.LM769:
	leaq	32(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rax
	movl	$0, %r8d
	movl	$2, %ecx
	movq	%rax, %rdi
	movabsq	$mm_division_pages@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,843,.LM770-.LFBB33
.LM770:
	cmpq	$0, 40(%rsp)
	jne	.L265
	.stabn	68,0,845,.LM771-.LFBB33
.LM771:
	movq	8(%rsp), %rax
	movq	$0, (%rax)
	.stabn	68,0,846,.LM772-.LFBB33
.LM772:
	movl	$0, %eax
	jmp	.L266
.L265:
	.stabn	68,0,848,.LM773-.LFBB33
.LM773:
	movq	32(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, (%rax)
	.stabn	68,0,849,.LM774-.LFBB33
.LM774:
	movq	40(%rsp), %rax
.L266:
	.stabn	68,0,850,.LM775-.LFBB33
.LM775:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE56:
	.size	mm_divpages_procmarea, .-mm_divpages_procmarea
	.stabs	"retmsa:(0,63)",128,0,830,40
	.stabs	"retpnr:(0,15)",128,0,831,32
	.stabn	192,0,0,.LFBB33-.LFBB33
	.stabn	224,0,0,.Lscope33-.LFBB33
.Lscope33:
	.stabs	"",36,0,0,.Lscope33-.LFBB33
	.stabs	"scan_freemsa_isok:F(0,6)",36,0,852,scan_freemsa_isok
	.stabs	"freemsa:p(0,63)",160,0,852,8
	.stabs	"freepgs:p(0,15)",160,0,852,0
	.globl	scan_freemsa_isok
	.type	scan_freemsa_isok, @function
scan_freemsa_isok:
	.stabn	68,0,853,.LM776-.LFBB34
.LM776:
.LFBB34:
.LFB57:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L277:
	leaq	.L277(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L277, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,854,.LM777-.LFBB34
.LM777:
	cmpq	$0, 8(%rsp)
	je	.L269
	.stabn	68,0,854,.LM778-.LFBB34
.LM778:
	cmpq	$0, (%rsp)
	jne	.L270
.L269:
	.stabn	68,0,856,.LM779-.LFBB34
.LM779:
	movl	$0, %eax
	jmp	.L271
.L270:
	.stabn	68,0,858,.LM780-.LFBB34
.LM780:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,858,.LM781-.LFBB34
.LM781:
	cmpb	$1, %al
	jne	.L272
	.stabn	68,0,859,.LM782-.LFBB34
.LM782:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,858,.LM783-.LFBB34
.LM783:
	testq	%rax, %rax
	je	.L272
	.stabn	68,0,859,.LM784-.LFBB34
.LM784:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,859,.LM785-.LFBB34
.LM785:
	testl	%eax, %eax
	jne	.L273
.L272:
	.stabn	68,0,861,.LM786-.LFBB34
.LM786:
	movl	$0, %eax
	jmp	.L271
.L273:
	.stabn	68,0,863,.LM787-.LFBB34
.LM787:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,865,.LM788-.LFBB34
.LM788:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,865,.LM789-.LFBB34
.LM789:
	testb	%al, %al
	je	.L274
	.stabn	68,0,866,.LM790-.LFBB34
.LM790:
	movq	24(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,865,.LM791-.LFBB34
.LM791:
	testb	%al, %al
	je	.L274
	.stabn	68,0,867,.LM792-.LFBB34
.LM792:
	movq	24(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,866,.LM793-.LFBB34
.LM793:
	testl	%eax, %eax
	jne	.L275
.L274:
	.stabn	68,0,869,.LM794-.LFBB34
.LM794:
	movl	$0, %eax
	jmp	.L271
.L275:
	.stabn	68,0,871,.LM795-.LFBB34
.LM795:
	movq	24(%rsp), %rax
	subq	8(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,871,.LM796-.LFBB34
.LM796:
	leaq	1(%rax), %rdx
	.stabn	68,0,871,.LM797-.LFBB34
.LM797:
	movq	(%rsp), %rax
	.stabn	68,0,871,.LM798-.LFBB34
.LM798:
	cmpq	%rax, %rdx
	je	.L276
	.stabn	68,0,873,.LM799-.LFBB34
.LM799:
	movl	$0, %eax
	jmp	.L271
.L276:
	.stabn	68,0,875,.LM800-.LFBB34
.LM800:
	movl	$1, %eax
.L271:
	.stabn	68,0,876,.LM801-.LFBB34
.LM801:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE57:
	.size	scan_freemsa_isok, .-scan_freemsa_isok
	.stabs	"end:(0,63)",128,0,863,24
	.stabn	192,0,0,.LFBB34-.LFBB34
	.stabn	224,0,0,.Lscope34-.LFBB34
.Lscope34:
	.stabs	"",36,0,0,.Lscope34-.LFBB34
	.stabs	"mm_cmsa1blk_isok:F(0,7)",36,0,878,mm_cmsa1blk_isok
	.stabs	"bafh:p(0,82)",160,0,878,16
	.stabs	"_1ms:p(0,63)",160,0,878,8
	.stabs	"_1me:p(0,63)",160,0,878,0
	.globl	mm_cmsa1blk_isok
	.type	mm_cmsa1blk_isok, @function
mm_cmsa1blk_isok:
	.stabn	68,0,879,.LM802-.LFBB35
.LM802:
.LFBB35:
.LFB58:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L298:
	leaq	.L298(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L298, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,880,.LM803-.LFBB35
.LM803:
	cmpq	$0, 16(%rsp)
	je	.L279
	.stabn	68,0,880,.LM804-.LFBB35
.LM804:
	cmpq	$0, 8(%rsp)
	je	.L279
	.stabn	68,0,880,.LM805-.LFBB35
.LM805:
	cmpq	$0, (%rsp)
	jne	.L280
.L279:
	.stabn	68,0,882,.LM806-.LFBB35
.LM806:
	movl	$0, %eax
	jmp	.L281
.L280:
	.stabn	68,0,884,.LM807-.LFBB35
.LM807:
	movq	(%rsp), %rax
	cmpq	8(%rsp), %rax
	jnb	.L282
	.stabn	68,0,886,.LM808-.LFBB35
.LM808:
	movl	$0, %eax
	jmp	.L281
.L282:
	.stabn	68,0,888,.LM809-.LFBB35
.LM809:
	movq	8(%rsp), %rax
	cmpq	(%rsp), %rax
	jne	.L283
	.stabn	68,0,890,.LM810-.LFBB35
.LM810:
	movq	(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,890,.LM811-.LFBB35
.LM811:
	cmpb	$2, %al
	je	.L284
	.stabn	68,0,892,.LM812-.LFBB35
.LM812:
	movl	$0, %eax
	jmp	.L281
.L284:
	.stabn	68,0,894,.LM813-.LFBB35
.LM813:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,894,.LM814-.LFBB35
.LM814:
	cmpq	%rax, 16(%rsp)
	je	.L285
	.stabn	68,0,896,.LM815-.LFBB35
.LM815:
	movl	$0, %eax
	jmp	.L281
.L285:
	.stabn	68,0,898,.LM816-.LFBB35
.LM816:
	movq	(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,898,.LM817-.LFBB35
.LM817:
	testb	%al, %al
	je	.L286
	.stabn	68,0,900,.LM818-.LFBB35
.LM818:
	movl	$0, %eax
	jmp	.L281
.L286:
	.stabn	68,0,902,.LM819-.LFBB35
.LM819:
	movq	(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,902,.LM820-.LFBB35
.LM820:
	testl	%eax, %eax
	je	.L287
	.stabn	68,0,904,.LM821-.LFBB35
.LM821:
	movl	$0, %eax
	jmp	.L281
.L287:
	.stabn	68,0,906,.LM822-.LFBB35
.LM822:
	movq	(%rsp), %rax
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
	movq	%rax, %rsi
	.stabn	68,0,906,.LM823-.LFBB35
.LM823:
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
	movq	%rax, %rdx
	.stabn	68,0,906,.LM824-.LFBB35
.LM824:
	movq	%rsi, %rax
	subq	%rdx, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	.stabn	68,0,906,.LM825-.LFBB35
.LM825:
	movq	(%rsp), %rax
	subq	8(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,906,.LM826-.LFBB35
.LM826:
	cmpq	%rax, %rcx
	je	.L288
	.stabn	68,0,908,.LM827-.LFBB35
.LM827:
	movl	$0, %eax
	jmp	.L281
.L288:
	.stabn	68,0,910,.LM828-.LFBB35
.LM828:
	movl	$2, %eax
	jmp	.L281
.L283:
	.stabn	68,0,913,.LM829-.LFBB35
.LM829:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,913,.LM830-.LFBB35
.LM830:
	cmpb	$1, %al
	je	.L289
	.stabn	68,0,915,.LM831-.LFBB35
.LM831:
	movl	$0, %eax
	jmp	.L281
.L289:
	.stabn	68,0,917,.LM832-.LFBB35
.LM832:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,917,.LM833-.LFBB35
.LM833:
	cmpq	%rax, (%rsp)
	je	.L290
	.stabn	68,0,919,.LM834-.LFBB35
.LM834:
	movl	$0, %eax
	jmp	.L281
.L290:
	.stabn	68,0,921,.LM835-.LFBB35
.LM835:
	movq	8(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,921,.LM836-.LFBB35
.LM836:
	testb	%al, %al
	je	.L291
	.stabn	68,0,923,.LM837-.LFBB35
.LM837:
	movl	$0, %eax
	jmp	.L281
.L291:
	.stabn	68,0,925,.LM838-.LFBB35
.LM838:
	movq	8(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,925,.LM839-.LFBB35
.LM839:
	testl	%eax, %eax
	je	.L292
	.stabn	68,0,927,.LM840-.LFBB35
.LM840:
	movl	$0, %eax
	jmp	.L281
.L292:
	.stabn	68,0,930,.LM841-.LFBB35
.LM841:
	movq	(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,930,.LM842-.LFBB35
.LM842:
	cmpb	$2, %al
	je	.L293
	.stabn	68,0,932,.LM843-.LFBB35
.LM843:
	movl	$0, %eax
	jmp	.L281
.L293:
	.stabn	68,0,934,.LM844-.LFBB35
.LM844:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,934,.LM845-.LFBB35
.LM845:
	cmpq	%rax, 16(%rsp)
	je	.L294
	.stabn	68,0,936,.LM846-.LFBB35
.LM846:
	movl	$0, %eax
	jmp	.L281
.L294:
	.stabn	68,0,938,.LM847-.LFBB35
.LM847:
	movq	(%rsp), %rax
	movzbl	24(%rax), %eax
	andl	$1, %eax
	.stabn	68,0,938,.LM848-.LFBB35
.LM848:
	testb	%al, %al
	je	.L295
	.stabn	68,0,940,.LM849-.LFBB35
.LM849:
	movl	$0, %eax
	jmp	.L281
.L295:
	.stabn	68,0,942,.LM850-.LFBB35
.LM850:
	movq	(%rsp), %rax
	movzbl	21(%rax), %ecx
	movzbl	22(%rax), %edx
	salq	$8, %rdx
	orq	%rcx, %rdx
	movzbl	23(%rax), %eax
	salq	$16, %rax
	orq	%rdx, %rax
	.stabn	68,0,942,.LM851-.LFBB35
.LM851:
	testl	%eax, %eax
	je	.L296
	.stabn	68,0,944,.LM852-.LFBB35
.LM852:
	movl	$0, %eax
	jmp	.L281
.L296:
	.stabn	68,0,946,.LM853-.LFBB35
.LM853:
	movq	(%rsp), %rax
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
	movq	%rax, %rsi
	.stabn	68,0,946,.LM854-.LFBB35
.LM854:
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
	movq	%rax, %rdx
	.stabn	68,0,946,.LM855-.LFBB35
.LM855:
	movq	%rsi, %rax
	subq	%rdx, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	movq	%rax, %rcx
	.stabn	68,0,946,.LM856-.LFBB35
.LM856:
	movq	(%rsp), %rax
	subq	8(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,946,.LM857-.LFBB35
.LM857:
	cmpq	%rax, %rcx
	je	.L297
	.stabn	68,0,948,.LM858-.LFBB35
.LM858:
	movl	$0, %eax
	jmp	.L281
.L297:
	.stabn	68,0,950,.LM859-.LFBB35
.LM859:
	movl	$2, %eax
.L281:
	.stabn	68,0,951,.LM860-.LFBB35
.LM860:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE58:
	.size	mm_cmsa1blk_isok, .-mm_cmsa1blk_isok
.Lscope35:
	.stabs	"",36,0,0,.Lscope35-.LFBB35
	.section	.rodata
.LC13:
	.string	"mm_cmsa1blk_isok ret1s == 0\n"
.LC14:
	.string	"mm_cmsa1blk_isok ret2s == 0\n"
	.text
	.stabs	"mm_cmsa2blk_isok:F(0,7)",36,0,953,mm_cmsa2blk_isok
	.stabs	"bafh:p(0,82)",160,0,953,40
	.stabs	"_1ms:p(0,63)",160,0,953,32
	.stabs	"_1me:p(0,63)",160,0,953,24
	.stabs	"_2ms:p(0,63)",160,0,953,16
	.stabs	"_2me:p(0,63)",160,0,953,8
	.globl	mm_cmsa2blk_isok
	.type	mm_cmsa2blk_isok, @function
mm_cmsa2blk_isok:
	.stabn	68,0,954,.LM861-.LFBB36
.LM861:
.LFBB36:
.LFB59:
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
.L312:
	leaq	.L312(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L312, %r11
	addq	%r11, %rbx
	movq	%rdi, 40(%rsp)
	movq	%rsi, 32(%rsp)
	movq	%rdx, 24(%rsp)
	movq	%rcx, 16(%rsp)
	movq	%r8, 8(%rsp)
	.stabn	68,0,955,.LM862-.LFBB36
.LM862:
	cmpq	$0, 40(%rsp)
	je	.L300
	.stabn	68,0,955,.LM863-.LFBB36
.LM863:
	cmpq	$0, 32(%rsp)
	je	.L300
	.stabn	68,0,955,.LM864-.LFBB36
.LM864:
	cmpq	$0, 24(%rsp)
	je	.L300
	.stabn	68,0,955,.LM865-.LFBB36
.LM865:
	cmpq	$0, 16(%rsp)
	je	.L300
	.stabn	68,0,956,.LM866-.LFBB36
.LM866:
	cmpq	$0, 8(%rsp)
	je	.L300
	.stabn	68,0,956,.LM867-.LFBB36
.LM867:
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	je	.L300
	.stabn	68,0,957,.LM868-.LFBB36
.LM868:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	jne	.L301
.L300:
	.stabn	68,0,959,.LM869-.LFBB36
.LM869:
	movl	$0, %eax
	jmp	.L302
.L301:
	.stabn	68,0,961,.LM870-.LFBB36
.LM870:
	movq	$0, 56(%rsp)
	.stabn	68,0,961,.LM871-.LFBB36
.LM871:
	movq	$0, 48(%rsp)
	.stabn	68,0,962,.LM872-.LFBB36
.LM872:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_cmsa1blk_isok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,963,.LM873-.LFBB36
.LM873:
	cmpq	$0, 56(%rsp)
	jne	.L303
	.stabn	68,0,965,.LM874-.LFBB36
.LM874:
	movabsq	$.LC13@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L303:
	.stabn	68,0,967,.LM875-.LFBB36
.LM875:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_cmsa1blk_isok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,968,.LM876-.LFBB36
.LM876:
	cmpq	$0, 48(%rsp)
	jne	.L304
	.stabn	68,0,970,.LM877-.LFBB36
.LM877:
	movabsq	$.LC14@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L304:
	.stabn	68,0,972,.LM878-.LFBB36
.LM878:
	cmpq	$2, 56(%rsp)
	jne	.L305
	.stabn	68,0,972,.LM879-.LFBB36
.LM879:
	cmpq	$2, 48(%rsp)
	jne	.L305
	.stabn	68,0,974,.LM880-.LFBB36
.LM880:
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	jnb	.L306
	.stabn	68,0,974,.LM881-.LFBB36
.LM881:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	jnb	.L306
	.stabn	68,0,976,.LM882-.LFBB36
.LM882:
	movq	24(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,976,.LM883-.LFBB36
.LM883:
	cmpq	%rax, 16(%rsp)
	je	.L307
	.stabn	68,0,978,.LM884-.LFBB36
.LM884:
	movl	$1, %eax
	jmp	.L302
.L307:
	.stabn	68,0,980,.LM885-.LFBB36
.LM885:
	movq	24(%rsp), %rax
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
	.stabn	68,0,980,.LM886-.LFBB36
.LM886:
	leaq	1(%rax), %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	.stabn	68,0,980,.LM887-.LFBB36
.LM887:
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
	.stabn	68,0,980,.LM888-.LFBB36
.LM888:
	cmpq	%rax, %rdx
	je	.L308
	.stabn	68,0,982,.LM889-.LFBB36
.LM889:
	movl	$1, %eax
	jmp	.L302
.L308:
	.stabn	68,0,984,.LM890-.LFBB36
.LM890:
	movl	$2, %eax
	jmp	.L302
.L306:
	.stabn	68,0,986,.LM891-.LFBB36
.LM891:
	movq	32(%rsp), %rax
	cmpq	16(%rsp), %rax
	jbe	.L309
	.stabn	68,0,986,.LM892-.LFBB36
.LM892:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	jbe	.L309
	.stabn	68,0,988,.LM893-.LFBB36
.LM893:
	movq	8(%rsp), %rax
	addq	$40, %rax
	.stabn	68,0,988,.LM894-.LFBB36
.LM894:
	cmpq	%rax, 32(%rsp)
	je	.L310
	.stabn	68,0,990,.LM895-.LFBB36
.LM895:
	movl	$1, %eax
	jmp	.L302
.L310:
	.stabn	68,0,992,.LM896-.LFBB36
.LM896:
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
	.stabn	68,0,992,.LM897-.LFBB36
.LM897:
	leaq	1(%rax), %rdx
	movabsq	$4503599627370495, %rax
	andq	%rax, %rdx
	.stabn	68,0,992,.LM898-.LFBB36
.LM898:
	movq	32(%rsp), %rax
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
	.stabn	68,0,992,.LM899-.LFBB36
.LM899:
	cmpq	%rax, %rdx
	je	.L311
	.stabn	68,0,994,.LM900-.LFBB36
.LM900:
	movl	$1, %eax
	jmp	.L302
.L311:
	.stabn	68,0,996,.LM901-.LFBB36
.LM901:
	movl	$4, %eax
	jmp	.L302
.L309:
	.stabn	68,0,998,.LM902-.LFBB36
.LM902:
	movl	$0, %eax
	jmp	.L302
.L305:
	.stabn	68,0,1000,.LM903-.LFBB36
.LM903:
	movl	$0, %eax
.L302:
	.stabn	68,0,1001,.LM904-.LFBB36
.LM904:
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
.LFE59:
	.size	mm_cmsa2blk_isok, .-mm_cmsa2blk_isok
	.stabs	"ret1s:(0,7)",128,0,961,56
	.stabs	"ret2s:(0,7)",128,0,961,48
	.stabn	192,0,0,.LFBB36-.LFBB36
	.stabn	224,0,0,.Lscope36-.LFBB36
.Lscope36:
	.stabs	"",36,0,0,.Lscope36-.LFBB36
	.stabs	"chek_cl2molkflg:F(0,6)",36,0,1003,chek_cl2molkflg
	.stabs	"bafh:p(0,82)",160,0,1003,32
	.stabs	"_1ms:p(0,63)",160,0,1003,24
	.stabs	"_1me:p(0,63)",160,0,1003,16
	.stabs	"_2ms:p(0,63)",160,0,1003,8
	.stabs	"_2me:p(0,63)",160,0,1003,0
	.globl	chek_cl2molkflg
	.type	chek_cl2molkflg, @function
chek_cl2molkflg:
	.stabn	68,0,1004,.LM905-.LFBB37
.LM905:
.LFBB37:
.LFB60:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L333:
	leaq	.L333(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L333, %r11
	addq	%r11, %rax
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,1005,.LM906-.LFBB37
.LM906:
	cmpq	$0, 32(%rsp)
	je	.L314
	.stabn	68,0,1005,.LM907-.LFBB37
.LM907:
	cmpq	$0, 24(%rsp)
	je	.L314
	.stabn	68,0,1005,.LM908-.LFBB37
.LM908:
	cmpq	$0, 16(%rsp)
	je	.L314
	.stabn	68,0,1005,.LM909-.LFBB37
.LM909:
	cmpq	$0, 8(%rsp)
	je	.L314
	.stabn	68,0,1005,.LM910-.LFBB37
.LM910:
	cmpq	$0, (%rsp)
	jne	.L315
.L314:
	.stabn	68,0,1007,.LM911-.LFBB37
.LM911:
	movl	$0, %eax
	jmp	.L316
.L315:
	.stabn	68,0,1009,.LM912-.LFBB37
.LM912:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	je	.L317
	.stabn	68,0,1009,.LM913-.LFBB37
.LM913:
	movq	16(%rsp), %rax
	cmpq	(%rsp), %rax
	jne	.L318
.L317:
	.stabn	68,0,1011,.LM914-.LFBB37
.LM914:
	movl	$0, %eax
	jmp	.L316
.L318:
	.stabn	68,0,1013,.LM915-.LFBB37
.LM915:
	movq	(%rsp), %rax
	subq	24(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movabsq	$-3689348814741910323, %rax
	imulq	%rdx, %rax
	.stabn	68,0,1013,.LM916-.LFBB37
.LM916:
	leaq	1(%rax), %rdx
	.stabn	68,0,1013,.LM917-.LFBB37
.LM917:
	movq	32(%rsp), %rax
	movq	16(%rax), %rax
	.stabn	68,0,1013,.LM918-.LFBB37
.LM918:
	cmpq	%rax, %rdx
	je	.L319
	.stabn	68,0,1015,.LM919-.LFBB37
.LM919:
	movl	$0, %eax
	jmp	.L316
.L319:
	.stabn	68,0,1017,.LM920-.LFBB37
.LM920:
	movq	24(%rsp), %rax
	cmpq	16(%rsp), %rax
	jne	.L320
	.stabn	68,0,1017,.LM921-.LFBB37
.LM921:
	movq	8(%rsp), %rax
	cmpq	(%rsp), %rax
	jne	.L320
	.stabn	68,0,1019,.LM922-.LFBB37
.LM922:
	movq	24(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1019,.LM923-.LFBB37
.LM923:
	cmpb	$1, %al
	jne	.L321
	.stabn	68,0,1019,.LM924-.LFBB37
.LM924:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1019,.LM925-.LFBB37
.LM925:
	cmpq	%rax, (%rsp)
	je	.L322
.L321:
	.stabn	68,0,1021,.LM926-.LFBB37
.LM926:
	movl	$0, %eax
	jmp	.L316
.L322:
	.stabn	68,0,1023,.LM927-.LFBB37
.LM927:
	movq	(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1023,.LM928-.LFBB37
.LM928:
	cmpb	$2, %al
	jne	.L323
	.stabn	68,0,1023,.LM929-.LFBB37
.LM929:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1023,.LM930-.LFBB37
.LM930:
	cmpq	%rax, 32(%rsp)
	je	.L324
.L323:
	.stabn	68,0,1025,.LM931-.LFBB37
.LM931:
	movl	$0, %eax
	jmp	.L316
.L324:
	.stabn	68,0,1027,.LM932-.LFBB37
.LM932:
	movl	$1, %eax
	jmp	.L316
.L320:
	.stabn	68,0,1030,.LM933-.LFBB37
.LM933:
	movq	24(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1030,.LM934-.LFBB37
.LM934:
	cmpb	$1, %al
	jne	.L325
	.stabn	68,0,1030,.LM935-.LFBB37
.LM935:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1030,.LM936-.LFBB37
.LM936:
	cmpq	%rax, (%rsp)
	je	.L326
.L325:
	.stabn	68,0,1032,.LM937-.LFBB37
.LM937:
	movl	$0, %eax
	jmp	.L316
.L326:
	.stabn	68,0,1034,.LM938-.LFBB37
.LM938:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1034,.LM939-.LFBB37
.LM939:
	testb	%al, %al
	jne	.L327
	.stabn	68,0,1034,.LM940-.LFBB37
.LM940:
	movq	16(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1034,.LM941-.LFBB37
.LM941:
	testq	%rax, %rax
	je	.L328
.L327:
	.stabn	68,0,1036,.LM942-.LFBB37
.LM942:
	movl	$0, %eax
	jmp	.L316
.L328:
	.stabn	68,0,1038,.LM943-.LFBB37
.LM943:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1038,.LM944-.LFBB37
.LM944:
	testb	%al, %al
	jne	.L329
	.stabn	68,0,1038,.LM945-.LFBB37
.LM945:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1038,.LM946-.LFBB37
.LM946:
	testq	%rax, %rax
	je	.L330
.L329:
	.stabn	68,0,1040,.LM947-.LFBB37
.LM947:
	movl	$0, %eax
	jmp	.L316
.L330:
	.stabn	68,0,1042,.LM948-.LFBB37
.LM948:
	movq	(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1042,.LM949-.LFBB37
.LM949:
	cmpb	$2, %al
	jne	.L331
	.stabn	68,0,1042,.LM950-.LFBB37
.LM950:
	movq	(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1042,.LM951-.LFBB37
.LM951:
	cmpq	%rax, 32(%rsp)
	je	.L332
.L331:
	.stabn	68,0,1044,.LM952-.LFBB37
.LM952:
	movl	$0, %eax
	jmp	.L316
.L332:
	.stabn	68,0,1046,.LM953-.LFBB37
.LM953:
	movl	$1, %eax
.L316:
	.stabn	68,0,1047,.LM954-.LFBB37
.LM954:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE60:
	.size	chek_cl2molkflg, .-chek_cl2molkflg
.Lscope37:
	.stabs	"",36,0,0,.Lscope37-.LFBB37
	.stabs	"mm_clear_2msaolflg:F(0,6)",36,0,1049,mm_clear_2msaolflg
	.stabs	"bafh:p(0,82)",160,0,1049,32
	.stabs	"_1ms:p(0,63)",160,0,1049,24
	.stabs	"_1me:p(0,63)",160,0,1049,16
	.stabs	"_2ms:p(0,63)",160,0,1049,8
	.stabs	"_2me:p(0,63)",160,0,1049,0
	.globl	mm_clear_2msaolflg
	.type	mm_clear_2msaolflg, @function
mm_clear_2msaolflg:
	.stabn	68,0,1050,.LM955-.LFBB38
.LM955:
.LFBB38:
.LFB61:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L340:
	leaq	.L340(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L340, %r11
	addq	%r11, %rax
	movq	%rdi, 32(%rsp)
	movq	%rsi, 24(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 8(%rsp)
	movq	%r8, (%rsp)
	.stabn	68,0,1051,.LM956-.LFBB38
.LM956:
	cmpq	$0, 32(%rsp)
	je	.L335
	.stabn	68,0,1051,.LM957-.LFBB38
.LM957:
	cmpq	$0, 24(%rsp)
	je	.L335
	.stabn	68,0,1051,.LM958-.LFBB38
.LM958:
	cmpq	$0, 16(%rsp)
	je	.L335
	.stabn	68,0,1051,.LM959-.LFBB38
.LM959:
	cmpq	$0, 8(%rsp)
	je	.L335
	.stabn	68,0,1051,.LM960-.LFBB38
.LM960:
	cmpq	$0, (%rsp)
	jne	.L336
.L335:
	.stabn	68,0,1053,.LM961-.LFBB38
.LM961:
	movl	$0, %eax
	jmp	.L337
.L336:
	.stabn	68,0,1055,.LM962-.LFBB38
.LM962:
	movq	24(%rsp), %rax
	cmpq	8(%rsp), %rax
	je	.L338
	.stabn	68,0,1055,.LM963-.LFBB38
.LM963:
	movq	16(%rsp), %rax
	cmpq	(%rsp), %rax
	jne	.L339
.L338:
	.stabn	68,0,1057,.LM964-.LFBB38
.LM964:
	movl	$0, %eax
	jmp	.L337
.L339:
	.stabn	68,0,1060,.LM965-.LFBB38
.LM965:
	movq	16(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,1061,.LM966-.LFBB38
.LM966:
	movq	16(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,1062,.LM967-.LFBB38
.LM967:
	movq	8(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,1063,.LM968-.LFBB38
.LM968:
	movq	8(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,1064,.LM969-.LFBB38
.LM969:
	movq	24(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$1, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,1065,.LM970-.LFBB38
.LM970:
	movq	24(%rsp), %rax
	movq	(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,1066,.LM971-.LFBB38
.LM971:
	movq	(%rsp), %rax
	movzbl	20(%rax), %edx
	andl	$-4, %edx
	orl	$2, %edx
	movb	%dl, 20(%rax)
	.stabn	68,0,1067,.LM972-.LFBB38
.LM972:
	movq	(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,1068,.LM973-.LFBB38
.LM973:
	movl	$1, %eax
.L337:
	.stabn	68,0,1069,.LM974-.LFBB38
.LM974:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE61:
	.size	mm_clear_2msaolflg, .-mm_clear_2msaolflg
.Lscope38:
	.stabs	"",36,0,0,.Lscope38-.LFBB38
	.section	.rodata
.LC15:
	.string	"chek_cl2molkflg err1\n"
.LC16:
	.string	"chek_cl2molkflg err2\n"
	.text
	.stabs	"mm_find_cmsa2blk:F(0,7)",36,0,1071,mm_find_cmsa2blk
	.stabs	"fbafh:p(0,82)",160,0,1071,24
	.stabs	"rfnms:p(0,86)",160,0,1071,16
	.stabs	"rfnme:p(0,86)",160,0,1071,8
	.globl	mm_find_cmsa2blk
	.type	mm_find_cmsa2blk, @function
mm_find_cmsa2blk:
	.stabn	68,0,1072,.LM975-.LFBB39
.LM975:
.LFBB39:
.LFB62:
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
.L359:
	leaq	.L359(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L359, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1073,.LM976-.LFBB39
.LM976:
	cmpq	$0, 24(%rsp)
	je	.L342
	.stabn	68,0,1073,.LM977-.LFBB39
.LM977:
	cmpq	$0, 16(%rsp)
	je	.L342
	.stabn	68,0,1073,.LM978-.LFBB39
.LM978:
	cmpq	$0, 8(%rsp)
	jne	.L343
.L342:
	.stabn	68,0,1075,.LM979-.LFBB39
.LM979:
	movl	$0, %eax
	jmp	.L344
.L343:
	.stabn	68,0,1077,.LM980-.LFBB39
.LM980:
	movq	16(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,1078,.LM981-.LFBB39
.LM981:
	movq	8(%rsp), %rax
	movq	(%rax), %rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,1079,.LM982-.LFBB39
.LM982:
	movq	24(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,1079,.LM983-.LFBB39
.LM983:
	testq	%rax, %rax
	jne	.L345
	.stabn	68,0,1081,.LM984-.LFBB39
.LM984:
	movl	$1, %eax
	jmp	.L344
.L345:
	.stabn	68,0,1083,.LM985-.LFBB39
.LM985:
	movq	$0, 88(%rsp)
	.stabn	68,0,1084,.LM986-.LFBB39
.LM986:
	movq	$0, 40(%rsp)
	.stabn	68,0,1084,.LM987-.LFBB39
.LM987:
	movq	$0, 80(%rsp)
	.stabn	68,0,1084,.LM988-.LFBB39
.LM988:
	movq	$0, 72(%rsp)
	.stabn	68,0,1085,.LM989-.LFBB39
.LM989:
	movq	$0, 64(%rsp)
	.stabn	68,0,1086,.LM990-.LFBB39
.LM990:
	movq	24(%rsp), %rax
	movq	64(%rax), %rax
	movq	%rax, 88(%rsp)
	.stabn	68,0,1086,.LM991-.LFBB39
.LM991:
	jmp	.L346
.L350:
	.stabn	68,0,1088,.LM992-.LFBB39
.LM992:
	movq	88(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1089,.LM993-.LFBB39
.LM993:
	movq	24(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,1089,.LM994-.LFBB39
.LM994:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,1089,.LM995-.LFBB39
.LM995:
	movq	40(%rsp), %rax
	leaq	(%rdx,%rax), %rdi
	movq	40(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rdi, %r8
	movq	%rax, %rdi
	movabsq	$mm_cmsa2blk_isok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,1090,.LM996-.LFBB39
.LM996:
	cmpq	$2, 64(%rsp)
	je	.L347
	.stabn	68,0,1090,.LM997-.LFBB39
.LM997:
	cmpq	$4, 64(%rsp)
	jne	.L348
.L347:
	.stabn	68,0,1092,.LM998-.LFBB39
.LM998:
	movq	40(%rsp), %rax
	movq	%rax, 80(%rsp)
	.stabn	68,0,1093,.LM999-.LFBB39
.LM999:
	movq	24(%rsp), %rax
	movq	16(%rax), %rdx
	.stabn	68,0,1093,.LM1000-.LFBB39
.LM1000:
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,1093,.LM1001-.LFBB39
.LM1001:
	movq	40(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,1094,.LM1002-.LFBB39
.LM1002:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_del@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1095,.LM1003-.LFBB39
.LM1003:
	movq	24(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,1095,.LM1004-.LFBB39
.LM1004:
	leaq	-1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,1096,.LM1005-.LFBB39
.LM1005:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1096,.LM1006-.LFBB39
.LM1006:
	leaq	-1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,1097,.LM1007-.LFBB39
.LM1007:
	jmp	.L349
.L348:
	.stabn	68,0,1086,.LM1008-.LFBB39
.LM1008:
	movq	88(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 88(%rsp)
.L346:
	.stabn	68,0,1086,.LM1009-.LFBB39
.LM1009:
	movq	24(%rsp), %rax
	addq	$56, %rax
	.stabn	68,0,1086,.LM1010-.LFBB39
.LM1010:
	cmpq	%rax, 88(%rsp)
	jne	.L350
	.stabn	68,0,1100,.LM1011-.LFBB39
.LM1011:
	nop
.L349:
	.stabn	68,0,1101,.LM1012-.LFBB39
.LM1012:
	cmpq	$0, 64(%rsp)
	je	.L351
	.stabn	68,0,1101,.LM1013-.LFBB39
.LM1013:
	cmpq	$1, 64(%rsp)
	jne	.L352
.L351:
	.stabn	68,0,1103,.LM1014-.LFBB39
.LM1014:
	movl	$1, %eax
	jmp	.L344
.L352:
	.stabn	68,0,1105,.LM1015-.LFBB39
.LM1015:
	cmpq	$2, 64(%rsp)
	jne	.L353
	.stabn	68,0,1107,.LM1016-.LFBB39
.LM1016:
	movq	24(%rsp), %rax
	leaq	104(%rax), %rdi
	movq	72(%rsp), %rsi
	movq	80(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movabsq	$mm_clear_2msaolflg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1107,.LM1017-.LFBB39
.LM1017:
	cmpq	$1, %rax
	jne	.L354
	.stabn	68,0,1109,.LM1018-.LFBB39
.LM1018:
	movq	24(%rsp), %rax
	leaq	104(%rax), %rdi
	movq	72(%rsp), %rsi
	movq	80(%rsp), %rcx
	movq	48(%rsp), %rdx
	movq	56(%rsp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movabsq	$chek_cl2molkflg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1109,.LM1019-.LFBB39
.LM1019:
	testq	%rax, %rax
	jne	.L355
	.stabn	68,0,1111,.LM1020-.LFBB39
.LM1020:
	movabsq	$.LC15@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L355:
	.stabn	68,0,1113,.LM1021-.LFBB39
.LM1021:
	movq	16(%rsp), %rax
	movq	56(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,1114,.LM1022-.LFBB39
.LM1022:
	movq	8(%rsp), %rax
	movq	72(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,1115,.LM1023-.LFBB39
.LM1023:
	movl	$2, %eax
	jmp	.L344
.L354:
	.stabn	68,0,1117,.LM1024-.LFBB39
.LM1024:
	movl	$0, %eax
	jmp	.L344
.L353:
	.stabn	68,0,1119,.LM1025-.LFBB39
.LM1025:
	cmpq	$4, 64(%rsp)
	jne	.L356
	.stabn	68,0,1121,.LM1026-.LFBB39
.LM1026:
	movq	24(%rsp), %rax
	leaq	104(%rax), %rdi
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movabsq	$mm_clear_2msaolflg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1121,.LM1027-.LFBB39
.LM1027:
	cmpq	$1, %rax
	jne	.L357
	.stabn	68,0,1123,.LM1028-.LFBB39
.LM1028:
	movq	24(%rsp), %rax
	leaq	104(%rax), %rdi
	movq	48(%rsp), %rsi
	movq	56(%rsp), %rcx
	movq	72(%rsp), %rdx
	movq	80(%rsp), %rax
	movq	%rsi, %r8
	movq	%rax, %rsi
	movabsq	$chek_cl2molkflg@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1123,.LM1029-.LFBB39
.LM1029:
	testq	%rax, %rax
	jne	.L358
	.stabn	68,0,1125,.LM1030-.LFBB39
.LM1030:
	movabsq	$.LC16@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L358:
	.stabn	68,0,1127,.LM1031-.LFBB39
.LM1031:
	movq	16(%rsp), %rax
	movq	80(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,1128,.LM1032-.LFBB39
.LM1032:
	movq	8(%rsp), %rax
	movq	48(%rsp), %rdx
	movq	%rdx, (%rax)
	.stabn	68,0,1129,.LM1033-.LFBB39
.LM1033:
	movl	$2, %eax
	jmp	.L344
.L357:
	.stabn	68,0,1132,.LM1034-.LFBB39
.LM1034:
	movl	$0, %eax
	jmp	.L344
.L356:
	.stabn	68,0,1134,.LM1035-.LFBB39
.LM1035:
	movl	$0, %eax
.L344:
	.stabn	68,0,1135,.LM1036-.LFBB39
.LM1036:
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
.LFE62:
	.size	mm_find_cmsa2blk, .-mm_find_cmsa2blk
	.stabs	"freemstat:(0,63)",128,0,1077,56
	.stabs	"freemend:(0,63)",128,0,1078,48
	.stabs	"tmplst:(0,2)",128,0,1083,88
	.stabs	"tmpmsa:(0,63)",128,0,1084,40
	.stabs	"blkms:(0,63)",128,0,1084,80
	.stabs	"blkme:(0,63)",128,0,1084,72
	.stabs	"rets:(0,7)",128,0,1085,64
	.stabn	192,0,0,.LFBB39-.LFBB39
	.stabn	224,0,0,.Lscope39-.LFBB39
.Lscope39:
	.stabs	"",36,0,0,.Lscope39-.LFBB39
	.section	.rodata
.LC17:
	.string	"(~0UL)<=bafhp->af_fobjnr\n"
	.text
	.stabs	"mpobf_add_msadsc:F(0,6)",36,0,1137,mpobf_add_msadsc
	.stabs	"bafhp:p(0,82)",160,0,1137,24
	.stabs	"freemstat:p(0,63)",160,0,1137,16
	.stabs	"freemend:p(0,63)",160,0,1137,8
	.globl	mpobf_add_msadsc
	.type	mpobf_add_msadsc, @function
mpobf_add_msadsc:
	.stabn	68,0,1138,.LM1037-.LFBB40
.LM1037:
.LFBB40:
.LFB63:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L368:
	leaq	.L368(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L368, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1139,.LM1038-.LFBB40
.LM1038:
	cmpq	$0, 24(%rsp)
	je	.L361
	.stabn	68,0,1139,.LM1039-.LFBB40
.LM1039:
	cmpq	$0, 16(%rsp)
	je	.L361
	.stabn	68,0,1139,.LM1040-.LFBB40
.LM1040:
	cmpq	$0, 8(%rsp)
	jne	.L362
.L361:
	.stabn	68,0,1141,.LM1041-.LFBB40
.LM1041:
	movl	$0, %eax
	jmp	.L363
.L362:
	.stabn	68,0,1143,.LM1042-.LFBB40
.LM1042:
	movq	8(%rsp), %rdx
	cmpq	16(%rsp), %rdx
	jnb	.L364
	.stabn	68,0,1145,.LM1043-.LFBB40
.LM1043:
	movl	$0, %eax
	jmp	.L363
.L364:
	.stabn	68,0,1147,.LM1044-.LFBB40
.LM1044:
	movq	24(%rsp), %rdx
	movq	16(%rdx), %rcx
	.stabn	68,0,1147,.LM1045-.LFBB40
.LM1045:
	movq	8(%rsp), %rdx
	subq	16(%rsp), %rdx
	movq	%rdx, %rsi
	sarq	$3, %rsi
	movabsq	$-3689348814741910323, %rdx
	imulq	%rsi, %rdx
	.stabn	68,0,1147,.LM1046-.LFBB40
.LM1046:
	addq	$1, %rdx
	.stabn	68,0,1147,.LM1047-.LFBB40
.LM1047:
	cmpq	%rdx, %rcx
	je	.L365
	.stabn	68,0,1149,.LM1048-.LFBB40
.LM1048:
	movl	$0, %eax
	jmp	.L363
.L365:
	.stabn	68,0,1151,.LM1049-.LFBB40
.LM1049:
	movq	24(%rsp), %rdx
	movq	24(%rdx), %rdx
	.stabn	68,0,1151,.LM1050-.LFBB40
.LM1050:
	cmpq	$-1, %rdx
	je	.L366
	.stabn	68,0,1151,.LM1051-.LFBB40
.LM1051:
	movq	24(%rsp), %rdx
	movq	32(%rdx), %rdx
	.stabn	68,0,1151,.LM1052-.LFBB40
.LM1052:
	cmpq	$-1, %rdx
	jne	.L367
.L366:
	.stabn	68,0,1153,.LM1053-.LFBB40
.LM1053:
	movabsq	$.LC17@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rdx
	movq	%rdx, %rdi
	movq	%rax, %r15
	movabsq	$system_error@PLTOFF, %rdx
	addq	%rax, %rdx
	call	*%rdx
	.stabn	68,0,1154,.LM1054-.LFBB40
.LM1054:
	movl	$0, %eax
	jmp	.L363
.L367:
	.stabn	68,0,1156,.LM1055-.LFBB40
.LM1055:
	movq	16(%rsp), %rdx
	movzbl	20(%rdx), %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movb	%cl, 20(%rdx)
	.stabn	68,0,1159,.LM1056-.LFBB40
.LM1056:
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rcx
	movq	%rcx, 32(%rdx)
	.stabn	68,0,1160,.LM1057-.LFBB40
.LM1057:
	movq	8(%rsp), %rdx
	movzbl	20(%rdx), %ecx
	andl	$-4, %ecx
	orl	$2, %ecx
	movb	%cl, 20(%rdx)
	.stabn	68,0,1163,.LM1058-.LFBB40
.LM1058:
	movq	8(%rsp), %rdx
	movq	24(%rsp), %rcx
	movq	%rcx, 32(%rdx)
	.stabn	68,0,1166,.LM1059-.LFBB40
.LM1059:
	movq	24(%rsp), %rdx
	leaq	56(%rdx), %rcx
	movq	16(%rsp), %rdx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	movabsq	$list_add@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,1169,.LM1060-.LFBB40
.LM1060:
	movq	24(%rsp), %rax
	movq	24(%rax), %rax
	.stabn	68,0,1169,.LM1061-.LFBB40
.LM1061:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 24(%rax)
	.stabn	68,0,1170,.LM1062-.LFBB40
.LM1062:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1170,.LM1063-.LFBB40
.LM1063:
	leaq	1(%rax), %rdx
	movq	24(%rsp), %rax
	movq	%rdx, 32(%rax)
	.stabn	68,0,1171,.LM1064-.LFBB40
.LM1064:
	movl	$1, %eax
.L363:
	.stabn	68,0,1172,.LM1065-.LFBB40
.LM1065:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE63:
	.size	mpobf_add_msadsc, .-mpobf_add_msadsc
.Lscope40:
	.stabs	"",36,0,0,.Lscope40-.LFBB40
	.section	.rodata
.LC18:
	.string	"mm_find_cmsa2blk retn 0\n"
	.text
	.stabs	"mm_merpages_onbafhlst:F(0,6)",36,0,1174,mm_merpages_onbafhlst
	.stabs	"freemsa:p(0,63)",160,0,1174,24
	.stabs	"freepgs:p(0,15)",160,0,1174,16
	.stabs	"relbf:p(0,82)",160,0,1174,8
	.stabs	"merbf:p(0,82)",160,0,1174,0
	.globl	mm_merpages_onbafhlst
	.type	mm_merpages_onbafhlst, @function
mm_merpages_onbafhlst:
	.stabn	68,0,1175,.LM1066-.LFBB41
.LM1066:
.LFBB41:
.LFB64:
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
.L379:
	leaq	.L379(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L379, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	movq	%rcx, (%rsp)
	.stabn	68,0,1176,.LM1067-.LFBB41
.LM1067:
	movq	$0, 48(%rsp)
	.stabn	68,0,1177,.LM1068-.LFBB41
.LM1068:
	movq	24(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1177,.LM1069-.LFBB41
.LM1069:
	movq	16(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,1177,.LM1070-.LFBB41
.LM1070:
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,1177,.LM1071-.LFBB41
.LM1071:
	movq	%rax, 32(%rsp)
	.stabn	68,0,1178,.LM1072-.LFBB41
.LM1072:
	movq	8(%rsp), %rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,1181,.LM1073-.LFBB41
.LM1073:
	jmp	.L370
.L374:
	.stabn	68,0,1184,.LM1074-.LFBB41
.LM1074:
	leaq	32(%rsp), %rdx
	leaq	40(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_find_cmsa2blk@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,1185,.LM1075-.LFBB41
.LM1075:
	cmpq	$1, 48(%rsp)
	je	.L378
	.stabn	68,0,1189,.LM1076-.LFBB41
.LM1076:
	cmpq	$0, 48(%rsp)
	jne	.L373
	.stabn	68,0,1191,.LM1077-.LFBB41
.LM1077:
	movabsq	$.LC18@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L373:
	.stabn	68,0,1181,.LM1078-.LFBB41
.LM1078:
	addq	$104, 56(%rsp)
.L370:
	.stabn	68,0,1181,.LM1079-.LFBB41
.LM1079:
	movq	56(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L374
	jmp	.L372
.L378:
	.stabn	68,0,1187,.LM1080-.LFBB41
.LM1080:
	nop
.L372:
	.stabn	68,0,1196,.LM1081-.LFBB41
.LM1081:
	movq	32(%rsp), %rdx
	movq	40(%rsp), %rcx
	movq	56(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mpobf_add_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1196,.LM1082-.LFBB41
.LM1082:
	testq	%rax, %rax
	jne	.L375
	.stabn	68,0,1198,.LM1083-.LFBB41
.LM1083:
	movl	$0, %eax
	jmp	.L377
.L375:
	.stabn	68,0,1200,.LM1084-.LFBB41
.LM1084:
	movl	$1, %eax
.L377:
	.stabn	68,0,1201,.LM1085-.LFBB41
.LM1085:
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
.LFE64:
	.size	mm_merpages_onbafhlst, .-mm_merpages_onbafhlst
	.stabs	"rets:(0,7)",128,0,1176,48
	.stabs	"mnxs:(0,63)",128,0,1177,40
	.stabs	"mnxe:(0,63)",128,0,1177,32
	.stabs	"tmpbf:(0,82)",128,0,1178,56
	.stabn	192,0,0,.LFBB41-.LFBB41
	.stabn	224,0,0,.Lscope41-.LFBB41
.Lscope41:
	.stabs	"",36,0,0,.Lscope41-.LFBB41
	.section	.rodata
	.align 8
.LC19:
	.string	"mm_merpages_onmarea proc memarea merge fail\n"
	.text
	.stabs	"mm_merpages_onmarea:F(0,6)",36,0,1203,mm_merpages_onmarea
	.stabs	"malckp:p(0,17)",160,0,1203,24
	.stabs	"freemsa:p(0,63)",160,0,1203,16
	.stabs	"freepgs:p(0,15)",160,0,1203,8
	.globl	mm_merpages_onmarea
	.type	mm_merpages_onmarea, @function
mm_merpages_onmarea:
	.stabn	68,0,1204,.LM1086-.LFBB42
.LM1086:
.LFBB42:
.LFB65:
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
.L397:
	leaq	.L397(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L397, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1205,.LM1087-.LFBB42
.LM1087:
	cmpq	$0, 24(%rsp)
	je	.L381
	.stabn	68,0,1205,.LM1088-.LFBB42
.LM1088:
	cmpq	$0, 16(%rsp)
	je	.L381
	.stabn	68,0,1205,.LM1089-.LFBB42
.LM1089:
	cmpq	$0, 8(%rsp)
	jne	.L382
.L381:
	.stabn	68,0,1207,.LM1090-.LFBB42
.LM1090:
	movl	$0, %eax
	jmp	.L396
.L382:
	.stabn	68,0,1210,.LM1091-.LFBB42
.LM1091:
	movq	$0, 72(%rsp)
	.stabn	68,0,1211,.LM1092-.LFBB42
.LM1092:
	movq	$0, 64(%rsp)
	.stabn	68,0,1212,.LM1093-.LFBB42
.LM1093:
	movq	24(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,1212,.LM1094-.LFBB42
.LM1094:
	cmpq	$3, %rax
	jne	.L384
	.stabn	68,0,1214,.LM1095-.LFBB42
.LM1095:
	movq	24(%rsp), %rax
	addq	$5800, %rax
	movq	%rax, 72(%rsp)
	.stabn	68,0,1215,.LM1096-.LFBB42
.LM1096:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_merpages_opmsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 64(%rsp)
	.stabn	68,0,1216,.LM1097-.LFBB42
.LM1097:
	cmpq	$2, 64(%rsp)
	jne	.L385
	.stabn	68,0,1218,.LM1098-.LFBB42
.LM1098:
	movq	8(%rsp), %rdx
	movq	%rdx, %rax
	salq	$2, %rax
	addq	%rdx, %rax
	salq	$3, %rax
	leaq	-40(%rax), %rdx
	.stabn	68,0,1218,.LM1099-.LFBB42
.LM1099:
	movq	16(%rsp), %rax
	addq	%rax, %rdx
	movq	16(%rsp), %rcx
	movq	72(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mpobf_add_msadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1218,.LM1100-.LFBB42
.LM1100:
	testq	%rax, %rax
	jne	.L386
	.stabn	68,0,1220,.LM1101-.LFBB42
.LM1101:
	movabsq	$.LC19@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L386:
	.stabn	68,0,1222,.LM1102-.LFBB42
.LM1102:
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_update_memarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1223,.LM1103-.LFBB42
.LM1103:
	movq	8(%rsp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	movabsq	$mm_update_memmgrob@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1224,.LM1104-.LFBB42
.LM1104:
	movl	$1, %eax
	jmp	.L396
.L385:
	.stabn	68,0,1226,.LM1105-.LFBB42
.LM1105:
	cmpq	$1, 64(%rsp)
	jne	.L387
	.stabn	68,0,1228,.LM1106-.LFBB42
.LM1106:
	movl	$1, %eax
	jmp	.L396
.L387:
	.stabn	68,0,1230,.LM1107-.LFBB42
.LM1107:
	cmpq	$0, 64(%rsp)
	jne	.L388
	.stabn	68,0,1232,.LM1108-.LFBB42
.LM1108:
	movl	$0, %eax
	jmp	.L396
.L388:
	.stabn	68,0,1234,.LM1109-.LFBB42
.LM1109:
	movl	$0, %eax
	jmp	.L396
.L384:
	.stabn	68,0,1237,.LM1110-.LFBB42
.LM1110:
	movq	$0, 40(%rsp)
	.stabn	68,0,1237,.LM1111-.LFBB42
.LM1111:
	movq	$0, 32(%rsp)
	.stabn	68,0,1238,.LM1112-.LFBB42
.LM1112:
	movq	$0, 56(%rsp)
	.stabn	68,0,1240,.LM1113-.LFBB42
.LM1113:
	leaq	32(%rsp), %rcx
	leaq	40(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	24(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$onfpgs_retn_bafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,1241,.LM1114-.LFBB42
.LM1114:
	cmpq	$0, 56(%rsp)
	jne	.L389
	.stabn	68,0,1243,.LM1115-.LFBB42
.LM1115:
	movl	$0, %eax
	jmp	.L396
.L389:
	.stabn	68,0,1245,.LM1116-.LFBB42
.LM1116:
	movq	40(%rsp), %rax
	.stabn	68,0,1245,.LM1117-.LFBB42
.LM1117:
	testq	%rax, %rax
	je	.L390
	.stabn	68,0,1245,.LM1118-.LFBB42
.LM1118:
	movq	32(%rsp), %rax
	.stabn	68,0,1245,.LM1119-.LFBB42
.LM1119:
	testq	%rax, %rax
	jne	.L391
.L390:
	.stabn	68,0,1247,.LM1120-.LFBB42
.LM1120:
	movl	$0, %eax
	jmp	.L396
.L391:
	.stabn	68,0,1251,.LM1121-.LFBB42
.LM1121:
	movq	40(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_merpages_opmsadsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,1252,.LM1122-.LFBB42
.LM1122:
	cmpq	$2, 48(%rsp)
	jne	.L392
	.stabn	68,0,1255,.LM1123-.LFBB42
.LM1123:
	movq	32(%rsp), %rcx
	movq	40(%rsp), %rdx
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$mm_merpages_onbafhlst@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,1256,.LM1124-.LFBB42
.LM1124:
	cmpq	$1, 56(%rsp)
	jne	.L393
	.stabn	68,0,1258,.LM1125-.LFBB42
.LM1125:
	movq	8(%rsp), %rcx
	movq	24(%rsp), %rax
	movl	$1, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_update_memarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1259,.LM1126-.LFBB42
.LM1126:
	movq	8(%rsp), %rax
	movl	$1, %esi
	movq	%rax, %rdi
	movabsq	$mm_update_memmgrob@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1260,.LM1127-.LFBB42
.LM1127:
	movq	56(%rsp), %rax
	jmp	.L396
.L393:
	.stabn	68,0,1262,.LM1128-.LFBB42
.LM1128:
	movl	$0, %eax
	jmp	.L396
.L392:
	.stabn	68,0,1264,.LM1129-.LFBB42
.LM1129:
	cmpq	$1, 48(%rsp)
	jne	.L394
	.stabn	68,0,1266,.LM1130-.LFBB42
.LM1130:
	movl	$1, %eax
	jmp	.L396
.L394:
	.stabn	68,0,1268,.LM1131-.LFBB42
.LM1131:
	cmpq	$0, 48(%rsp)
	jne	.L395
	.stabn	68,0,1270,.LM1132-.LFBB42
.LM1132:
	movl	$0, %eax
	jmp	.L396
.L395:
	.stabn	68,0,1272,.LM1133-.LFBB42
.LM1133:
	movl	$0, %eax
.L396:
	.stabn	68,0,1273,.LM1134-.LFBB42
.LM1134:
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
.LFE65:
	.size	mm_merpages_onmarea, .-mm_merpages_onmarea
	.stabs	"prcbf:(0,82)",128,0,1210,72
	.stabs	"pocs:(0,7)",128,0,1211,64
	.stabs	"retrelbf:(0,82)",128,0,1237,40
	.stabs	"retmerbf:(0,82)",128,0,1237,32
	.stabs	"rets:(0,6)",128,0,1238,56
	.stabs	"mopms:(0,7)",128,0,1251,48
	.stabn	192,0,0,.LFBB42-.LFBB42
	.stabn	224,0,0,.Lscope42-.LFBB42
.Lscope42:
	.stabs	"",36,0,0,.Lscope42-.LFBB42
	.stabs	"mm_merpages_core:F(0,6)",36,0,1276,mm_merpages_core
	.stabs	"marea:p(0,17)",160,0,1276,24
	.stabs	"freemsa:p(0,63)",160,0,1276,16
	.stabs	"freepgs:p(0,15)",160,0,1276,8
	.globl	mm_merpages_core
	.type	mm_merpages_core, @function
mm_merpages_core:
	.stabn	68,0,1277,.LM1135-.LFBB43
.LM1135:
.LFBB43:
.LFB66:
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
.L404:
	leaq	.L404(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L404, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1278,.LM1136-.LFBB43
.LM1136:
	cmpq	$0, 24(%rsp)
	je	.L399
	.stabn	68,0,1278,.LM1137-.LFBB43
.LM1137:
	cmpq	$0, 16(%rsp)
	je	.L399
	.stabn	68,0,1278,.LM1138-.LFBB43
.LM1138:
	cmpq	$0, 8(%rsp)
	jne	.L400
.L399:
	.stabn	68,0,1280,.LM1139-.LFBB43
.LM1139:
	movl	$0, %eax
	jmp	.L403
.L400:
	.stabn	68,0,1282,.LM1140-.LFBB43
.LM1140:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$scan_freemsa_isok@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1282,.LM1141-.LFBB43
.LM1141:
	testq	%rax, %rax
	jne	.L402
	.stabn	68,0,1284,.LM1142-.LFBB43
.LM1142:
	movl	$0, %eax
	jmp	.L403
.L402:
	.stabn	68,0,1286,.LM1143-.LFBB43
.LM1143:
	movq	$0, 40(%rsp)
	.stabn	68,0,1290,.LM1144-.LFBB43
.LM1144:
	movq	24(%rsp), %rax
	leaq	16(%rax), %rdx
	leaq	32(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinlock_cli@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,1293,.LM1145-.LFBB43
.LM1145:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_merpages_onmarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1296,.LM1146-.LFBB43
.LM1146:
	movq	24(%rsp), %rax
	leaq	16(%rax), %rdx
	leaq	32(%rsp), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	movq	%rbx, %r15
	movabsq	$knl_spinunlock_sti@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,1297,.LM1147-.LFBB43
.LM1147:
	movq	40(%rsp), %rax
.L403:
	.stabn	68,0,1298,.LM1148-.LFBB43
.LM1148:
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
.LFE66:
	.size	mm_merpages_core, .-mm_merpages_core
	.stabs	"rets:(0,6)",128,0,1286,40
	.stabs	"cpuflg:(0,16)",128,0,1287,32
	.stabn	192,0,0,.LFBB43-.LFBB43
	.stabn	224,0,0,.Lscope43-.LFBB43
.Lscope43:
	.stabs	"",36,0,0,.Lscope43-.LFBB43
	.stabs	"mm_merpages_fmwk:F(0,6)",36,0,1301,mm_merpages_fmwk
	.stabs	"mmobjp:p(0,60)",160,0,1301,24
	.stabs	"freemsa:p(0,63)",160,0,1301,16
	.stabs	"freepgs:p(0,15)",160,0,1301,8
	.globl	mm_merpages_fmwk
	.type	mm_merpages_fmwk, @function
mm_merpages_fmwk:
	.stabn	68,0,1302,.LM1149-.LFBB44
.LM1149:
.LFBB44:
.LFB67:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
.L409:
	leaq	.L409(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L409, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1304,.LM1150-.LFBB44
.LM1150:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	24(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$onfrmsa_retn_marea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1305,.LM1151-.LFBB44
.LM1151:
	cmpq	$0, 40(%rsp)
	jne	.L406
	.stabn	68,0,1307,.LM1152-.LFBB44
.LM1152:
	movl	$0, %eax
	jmp	.L407
.L406:
	.stabn	68,0,1311,.LM1153-.LFBB44
.LM1153:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rcx
	movq	40(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$mm_merpages_core@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,1312,.LM1154-.LFBB44
.LM1154:
	cmpq	$0, 32(%rsp)
	jne	.L408
	.stabn	68,0,1314,.LM1155-.LFBB44
.LM1155:
	movl	$0, %eax
	jmp	.L407
.L408:
	.stabn	68,0,1316,.LM1156-.LFBB44
.LM1156:
	movq	32(%rsp), %rax
.L407:
	.stabn	68,0,1317,.LM1157-.LFBB44
.LM1157:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE67:
	.size	mm_merpages_fmwk, .-mm_merpages_fmwk
	.stabs	"marea:(0,17)",128,0,1304,40
	.stabs	"rets:(0,6)",128,0,1311,32
	.stabn	192,0,0,.LFBB44-.LFBB44
	.stabn	224,0,0,.Lscope44-.LFBB44
.Lscope44:
	.stabs	"",36,0,0,.Lscope44-.LFBB44
	.stabs	"mm_merge_pages:F(0,6)",36,0,1323,mm_merge_pages
	.stabs	"mmobjp:p(0,60)",160,0,1323,24
	.stabs	"freemsa:p(0,63)",160,0,1323,16
	.stabs	"freepgs:p(0,15)",160,0,1323,8
	.globl	mm_merge_pages
	.type	mm_merge_pages, @function
mm_merge_pages:
	.stabn	68,0,1324,.LM1158-.LFBB45
.LM1158:
.LFBB45:
.LFB68:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
.L415:
	leaq	.L415(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L415, %r11
	addq	%r11, %rax
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1325,.LM1159-.LFBB45
.LM1159:
	cmpq	$0, 24(%rsp)
	je	.L411
	.stabn	68,0,1325,.LM1160-.LFBB45
.LM1160:
	cmpq	$0, 16(%rsp)
	je	.L411
	.stabn	68,0,1325,.LM1161-.LFBB45
.LM1161:
	cmpq	$0, 8(%rsp)
	jne	.L412
.L411:
	.stabn	68,0,1327,.LM1162-.LFBB45
.LM1162:
	movl	$0, %eax
	jmp	.L413
.L412:
	.stabn	68,0,1331,.LM1163-.LFBB45
.LM1163:
	movq	8(%rsp), %rdx
	movq	16(%rsp), %rsi
	movq	24(%rsp), %rcx
	movq	%rcx, %rdi
	movabsq	$mm_merpages_fmwk@GOTOFF, %rcx
	leaq	(%rax,%rcx), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1332,.LM1164-.LFBB45
.LM1164:
	cmpq	$0, 40(%rsp)
	jne	.L414
	.stabn	68,0,1334,.LM1165-.LFBB45
.LM1165:
	movl	$0, %eax
	jmp	.L413
.L414:
	.stabn	68,0,1336,.LM1166-.LFBB45
.LM1166:
	movq	40(%rsp), %rax
.L413:
	.stabn	68,0,1337,.LM1167-.LFBB45
.LM1167:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE68:
	.size	mm_merge_pages, .-mm_merge_pages
	.stabs	"rets:(0,6)",128,0,1331,40
	.stabn	192,0,0,.LFBB45-.LFBB45
	.stabn	224,0,0,.Lscope45-.LFBB45
.Lscope45:
	.stabs	"",36,0,0,.Lscope45-.LFBB45
	.stabs	"mchkstuc_t_init:F(0,1)",36,0,1339,mchkstuc_t_init
	.stabs	"initp:p(0,88)=*(0,89)=(0,90)=xss_MCHKSTUC:",160,0,1339,0
	.stabs	"s_MCHKSTUC:T(0,90)=s72mc_list:(0,3),0,128;mc_phyadr:(0,11),128,64;mc_viradr:(0,11),192,64;mc_sz:(0,11),256,64;mc_chkval:(0,11),320,64;mc_msa:(0,63),384,64;mc_chksadr:(0,91)=*(0,11),448,64;mc_chkeadr:(0,91),512,64;;",128,0,0,0
	.globl	mchkstuc_t_init
	.type	mchkstuc_t_init, @function
mchkstuc_t_init:
	.stabn	68,0,1340,.LM1168-.LFBB46
.LM1168:
.LFBB46:
.LFB69:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L418:
	leaq	.L418(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L418, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,1341,.LM1169-.LFBB46
.LM1169:
	movq	(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$list_init@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,1342,.LM1170-.LFBB46
.LM1170:
	movq	(%rsp), %rax
	movq	$0, 16(%rax)
	.stabn	68,0,1343,.LM1171-.LFBB46
.LM1171:
	movq	(%rsp), %rax
	movq	$0, 24(%rax)
	.stabn	68,0,1344,.LM1172-.LFBB46
.LM1172:
	movq	(%rsp), %rax
	movq	$0, 32(%rax)
	.stabn	68,0,1345,.LM1173-.LFBB46
.LM1173:
	movq	(%rsp), %rax
	movq	$0, 40(%rax)
	.stabn	68,0,1346,.LM1174-.LFBB46
.LM1174:
	movq	(%rsp), %rax
	movq	$0, 48(%rax)
	.stabn	68,0,1347,.LM1175-.LFBB46
.LM1175:
	movq	(%rsp), %rax
	movq	$0, 56(%rax)
	.stabn	68,0,1348,.LM1176-.LFBB46
.LM1176:
	movq	(%rsp), %rax
	movq	$0, 64(%rax)
	.stabn	68,0,1349,.LM1177-.LFBB46
.LM1177:
	nop
	.stabn	68,0,1350,.LM1178-.LFBB46
.LM1178:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE69:
	.size	mchkstuc_t_init, .-mchkstuc_t_init
.Lscope46:
	.stabs	"",36,0,0,.Lscope46-.LFBB46
	.section	.rodata
.LC20:
	.string	"write_one_mchkstuc msa pnr 0\n"
	.text
	.stabs	"write_one_mchkstuc:F(0,1)",36,0,1352,write_one_mchkstuc
	.stabs	"msa:p(0,63)",160,0,1352,8
	.stabs	"pnr:p(0,15)",160,0,1352,0
	.globl	write_one_mchkstuc
	.type	write_one_mchkstuc, @function
write_one_mchkstuc:
	.stabn	68,0,1353,.LM1179-.LFBB47
.LM1179:
.LFBB47:
.LFB70:
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
.L423:
	leaq	.L423(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L423, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,1354,.LM1180-.LFBB47
.LM1180:
	cmpq	$0, 8(%rsp)
	je	.L420
	.stabn	68,0,1354,.LM1181-.LFBB47
.LM1181:
	cmpq	$0, (%rsp)
	jne	.L421
.L420:
	.stabn	68,0,1356,.LM1182-.LFBB47
.LM1182:
	movabsq	$.LC20@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L421:
	.stabn	68,0,1358,.LM1183-.LFBB47
.LM1183:
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
	.stabn	68,0,1358,.LM1184-.LFBB47
.LM1184:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	.stabn	68,0,1358,.LM1185-.LFBB47
.LM1185:
	movq	%rax, 40(%rsp)
	.stabn	68,0,1359,.LM1186-.LFBB47
.LM1186:
	movq	40(%rsp), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$phyadr_to_viradr@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,1360,.LM1187-.LFBB47
.LM1187:
	movq	(%rsp), %rax
	salq	$12, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,1361,.LM1188-.LFBB47
.LM1188:
	movq	32(%rsp), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,1362,.LM1189-.LFBB47
.LM1189:
	movq	16(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$mchkstuc_t_init@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1363,.LM1190-.LFBB47
.LM1190:
	movq	16(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	%rdx, 16(%rax)
	.stabn	68,0,1364,.LM1191-.LFBB47
.LM1191:
	movq	16(%rsp), %rax
	movq	32(%rsp), %rdx
	movq	%rdx, 24(%rax)
	.stabn	68,0,1365,.LM1192-.LFBB47
.LM1192:
	movq	16(%rsp), %rax
	movq	24(%rsp), %rdx
	movq	%rdx, 32(%rax)
	.stabn	68,0,1366,.LM1193-.LFBB47
.LM1193:
	movq	16(%rsp), %rax
	movq	40(%rsp), %rdx
	movq	%rdx, 40(%rax)
	.stabn	68,0,1367,.LM1194-.LFBB47
.LM1194:
	movq	16(%rsp), %rax
	movq	8(%rsp), %rdx
	movq	%rdx, 48(%rax)
	.stabn	68,0,1368,.LM1195-.LFBB47
.LM1195:
	movq	16(%rsp), %rax
	leaq	72(%rax), %rdx
	.stabn	68,0,1368,.LM1196-.LFBB47
.LM1196:
	movq	16(%rsp), %rax
	movq	%rdx, 56(%rax)
	.stabn	68,0,1369,.LM1197-.LFBB47
.LM1197:
	movq	32(%rsp), %rdx
	movq	24(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,1369,.LM1198-.LFBB47
.LM1198:
	subq	$1, %rax
	.stabn	68,0,1369,.LM1199-.LFBB47
.LM1199:
	movq	%rax, %rdx
	.stabn	68,0,1369,.LM1200-.LFBB47
.LM1200:
	movq	16(%rsp), %rax
	movq	%rdx, 64(%rax)
	.stabn	68,0,1370,.LM1201-.LFBB47
.LM1201:
	movq	16(%rsp), %rax
	movabsq	$memmgrob@GOT, %rdx
	movq	(%rbx,%rdx), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$list_add@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1371,.LM1202-.LFBB47
.LM1202:
	nop
	.stabn	68,0,1372,.LM1203-.LFBB47
.LM1203:
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
.LFE70:
	.size	write_one_mchkstuc, .-write_one_mchkstuc
	.stabs	"phyadr:(0,11)",128,0,1358,40
	.stabs	"viradr:(0,15)",128,0,1359,32
	.stabs	"sz:(0,15)",128,0,1360,24
	.stabs	"mchks:(0,88)",128,0,1361,16
	.stabs	"mchkstuc_t:t(0,89)",128,0,22,0
	.stabn	192,0,0,.LFBB47-.LFBB47
	.stabn	224,0,0,.Lscope47-.LFBB47
.Lscope47:
	.stabs	"",36,0,0,.Lscope47-.LFBB47
	.section	.rodata
.LC21:
	.string	"chek_one_mchks 1\n"
.LC22:
	.string	"chek_one_mchks 2\n"
	.text
	.stabs	"chek_one_mchks:F(0,6)",36,0,1374,chek_one_mchks
	.stabs	"mchs:p(0,88)",160,0,1374,8
	.globl	chek_one_mchks
	.type	chek_one_mchks, @function
chek_one_mchks:
	.stabn	68,0,1375,.LM1204-.LFBB48
.LM1204:
.LFBB48:
.LFB71:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L430:
	leaq	.L430(%rip), %rdx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L430, %r11
	addq	%r11, %rdx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1376,.LM1205-.LFBB48
.LM1205:
	cmpq	$0, 8(%rsp)
	jne	.L425
	.stabn	68,0,1378,.LM1206-.LFBB48
.LM1206:
	movl	$0, %eax
	jmp	.L426
.L425:
	.stabn	68,0,1380,.LM1207-.LFBB48
.LM1207:
	movq	8(%rsp), %rax
	movq	48(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,1380,.LM1208-.LFBB48
.LM1208:
	movq	$0, 16(%rsp)
	.stabn	68,0,1381,.LM1209-.LFBB48
.LM1209:
	movq	24(%rsp), %rax
	movzbl	20(%rax), %eax
	andl	$3, %eax
	.stabn	68,0,1381,.LM1210-.LFBB48
.LM1210:
	cmpb	$1, %al
	jne	.L427
	.stabn	68,0,1381,.LM1211-.LFBB48
.LM1211:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1381,.LM1212-.LFBB48
.LM1212:
	testq	%rax, %rax
	jne	.L428
.L427:
	.stabn	68,0,1383,.LM1213-.LFBB48
.LM1213:
	movabsq	$.LC21@GOTOFF, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	movq	%rdx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rcx
	addq	%rdx, %rcx
	call	*%rcx
	.stabn	68,0,1384,.LM1214-.LFBB48
.LM1214:
	movl	$0, %eax
	jmp	.L426
.L428:
	.stabn	68,0,1386,.LM1215-.LFBB48
.LM1215:
	movq	24(%rsp), %rax
	movq	32(%rax), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,1387,.LM1216-.LFBB48
.LM1216:
	movq	16(%rsp), %rax
	subq	24(%rsp), %rax
	sarq	$3, %rax
	movq	%rax, %rcx
	movabsq	$-3689348814741910323, %rax
	imulq	%rcx, %rax
	.stabn	68,0,1387,.LM1217-.LFBB48
.LM1217:
	leaq	1(%rax), %rcx
	.stabn	68,0,1387,.LM1218-.LFBB48
.LM1218:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1387,.LM1219-.LFBB48
.LM1219:
	shrq	$12, %rax
	.stabn	68,0,1387,.LM1220-.LFBB48
.LM1220:
	cmpq	%rax, %rcx
	je	.L429
	.stabn	68,0,1389,.LM1221-.LFBB48
.LM1221:
	movabsq	$.LC22@GOTOFF, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	movq	%rdx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rcx
	addq	%rdx, %rcx
	call	*%rcx
	.stabn	68,0,1390,.LM1222-.LFBB48
.LM1222:
	movl	$0, %eax
	jmp	.L426
.L429:
	.stabn	68,0,1392,.LM1223-.LFBB48
.LM1223:
	movl	$1, %eax
.L426:
	.stabn	68,0,1393,.LM1224-.LFBB48
.LM1224:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%r15
	.cfi_restore 15
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE71:
	.size	chek_one_mchks, .-chek_one_mchks
	.stabs	"mstat:(0,63)",128,0,1380,24
	.stabs	"mend:(0,63)",128,0,1380,16
	.stabn	192,0,0,.LFBB48-.LFBB48
	.stabn	224,0,0,.Lscope48-.LFBB48
.Lscope48:
	.stabs	"",36,0,0,.Lscope48-.LFBB48
	.section	.rodata
.LC23:
	.string	"chek_one_mchks smchs fail\n"
.LC24:
	.string	"chek_one_mchks dmchs fail\n"
	.align 8
.LC25:
	.string	"cmp_mchkstuc smchschkval==dmchschkval\n"
	.text
	.stabs	"cmp_mchkstuc:F(0,1)",36,0,1395,cmp_mchkstuc
	.stabs	"smchs:p(0,88)",160,0,1395,8
	.stabs	"dmchs:p(0,88)",160,0,1395,0
	.globl	cmp_mchkstuc
	.type	cmp_mchkstuc, @function
cmp_mchkstuc:
	.stabn	68,0,1396,.LM1225-.LFBB49
.LM1225:
.LFBB49:
.LFB72:
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
.L437:
	leaq	.L437(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L437, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,1397,.LM1226-.LFBB49
.LM1226:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$chek_one_mchks@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1397,.LM1227-.LFBB49
.LM1227:
	testq	%rax, %rax
	jne	.L432
	.stabn	68,0,1399,.LM1228-.LFBB49
.LM1228:
	movabsq	$.LC23@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L432:
	.stabn	68,0,1401,.LM1229-.LFBB49
.LM1229:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$chek_one_mchks@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1401,.LM1230-.LFBB49
.LM1230:
	testq	%rax, %rax
	jne	.L433
	.stabn	68,0,1403,.LM1231-.LFBB49
.LM1231:
	movabsq	$.LC24@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L433:
	.stabn	68,0,1405,.LM1232-.LFBB49
.LM1232:
	movq	8(%rsp), %rax
	movq	40(%rax), %rdx
	.stabn	68,0,1405,.LM1233-.LFBB49
.LM1233:
	movq	(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,1405,.LM1234-.LFBB49
.LM1234:
	cmpq	%rax, %rdx
	jne	.L436
	.stabn	68,0,1407,.LM1235-.LFBB49
.LM1235:
	movabsq	$.LC25@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,1409,.LM1236-.LFBB49
.LM1236:
	nop
.L436:
	nop
	.stabn	68,0,1410,.LM1237-.LFBB49
.LM1237:
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
.LFE72:
	.size	cmp_mchkstuc, .-cmp_mchkstuc
.Lscope49:
	.stabs	"",36,0,0,.Lscope49-.LFBB49
	.section	.rodata
.LC26:
	.string	"free_one_mchkstuc mchs NULL\n"
.LC27:
	.string	"mm_merge_pages adr:%x,pnr:%x\n"
	.align 8
.LC28:
	.string	"free_one_mchkstuc mm_merge_pages ret FALSE\n"
	.text
	.stabs	"free_one_mchkstuc:F(0,1)",36,0,1412,free_one_mchkstuc
	.stabs	"mchs:p(0,88)",160,0,1412,8
	.globl	free_one_mchkstuc
	.type	free_one_mchkstuc, @function
free_one_mchkstuc:
	.stabn	68,0,1413,.LM1238-.LFBB50
.LM1238:
.LFBB50:
.LFB73:
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
.L442:
	leaq	.L442(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L442, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1414,.LM1239-.LFBB50
.LM1239:
	cmpq	$0, 8(%rsp)
	jne	.L439
	.stabn	68,0,1416,.LM1240-.LFBB50
.LM1240:
	movabsq	$.LC26@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L439:
	.stabn	68,0,1418,.LM1241-.LFBB50
.LM1241:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1418,.LM1242-.LFBB50
.LM1242:
	shrq	$12, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,1419,.LM1243-.LFBB50
.LM1243:
	movq	8(%rsp), %rax
	movq	48(%rax), %rax
	movq	24(%rsp), %rdx
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$mm_merge_pages@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1419,.LM1244-.LFBB50
.LM1244:
	testq	%rax, %rax
	jne	.L440
	.stabn	68,0,1421,.LM1245-.LFBB50
.LM1245:
	movq	8(%rsp), %rax
	movq	48(%rax), %rax
	.stabn	68,0,1421,.LM1246-.LFBB50
.LM1246:
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
	.stabn	68,0,1421,.LM1247-.LFBB50
.LM1247:
	salq	$12, %rax
	movabsq	$4503599627370495, %rdx
	andq	%rdx, %rax
	movq	24(%rsp), %rdx
	movq	%rax, %rsi
	movabsq	$.LC27@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rcx
	addq	%rbx, %rcx
	call	*%rcx
	.stabn	68,0,1422,.LM1248-.LFBB50
.LM1248:
	movabsq	$.LC28@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$system_error@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
.L440:
	.stabn	68,0,1424,.LM1249-.LFBB50
.LM1249:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$list_del@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1425,.LM1250-.LFBB50
.LM1250:
	nop
	.stabn	68,0,1426,.LM1251-.LFBB50
.LM1251:
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
.LFE73:
	.size	free_one_mchkstuc, .-free_one_mchkstuc
	.stabs	"relnr:(0,15)",128,0,1418,24
	.stabn	192,0,0,.LFBB50-.LFBB50
	.stabn	224,0,0,.Lscope50-.LFBB50
.Lscope50:
	.stabs	"",36,0,0,.Lscope50-.LFBB50
	.section	.rodata
.LC29:
	.string	"free_all_mchkstuc ok\n"
	.text
	.stabs	"free_all_mchkstuc:F(0,1)",36,0,1428,free_all_mchkstuc
	.globl	free_all_mchkstuc
	.type	free_all_mchkstuc, @function
free_all_mchkstuc:
	.stabn	68,0,1429,.LM1252-.LFBB51
.LM1252:
.LFBB51:
.LFB74:
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
.L447:
	leaq	.L447(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L447, %r11
	addq	%r11, %rbx
	.stabn	68,0,1430,.LM1253-.LFBB51
.LM1253:
	movq	$0, 8(%rsp)
	.stabn	68,0,1431,.LM1254-.LFBB51
.LM1254:
	movq	$0, (%rsp)
	.stabn	68,0,1432,.LM1255-.LFBB51
.LM1255:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,1432,.LM1256-.LFBB51
.LM1256:
	jmp	.L444
.L445:
	.stabn	68,0,1434,.LM1257-.LFBB51
.LM1257:
	movq	8(%rsp), %rax
	movq	%rax, (%rsp)
	.stabn	68,0,1435,.LM1258-.LFBB51
.LM1258:
	movq	(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$free_one_mchkstuc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1432,.LM1259-.LFBB51
.LM1259:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 8(%rsp)
.L444:
	.stabn	68,0,1432,.LM1260-.LFBB51
.LM1260:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	cmpq	%rax, 8(%rsp)
	jne	.L445
	.stabn	68,0,1437,.LM1261-.LFBB51
.LM1261:
	movabsq	$.LC29@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,1438,.LM1262-.LFBB51
.LM1262:
	nop
	.stabn	68,0,1439,.LM1263-.LFBB51
.LM1263:
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
.LFE74:
	.size	free_all_mchkstuc, .-free_all_mchkstuc
	.stabs	"tmlst:(0,2)",128,0,1430,8
	.stabs	"mchs:(0,88)",128,0,1431,0
	.stabn	192,0,0,.LFBB51-.LFBB51
	.stabn	224,0,0,.Lscope51-.LFBB51
.Lscope51:
	.stabs	"",36,0,0,.Lscope51-.LFBB51
	.stabs	"chek_all_one_mchkstuc:F(0,1)",36,0,1441,chek_all_one_mchkstuc
	.stabs	"mchs:p(0,88)",160,0,1441,8
	.globl	chek_all_one_mchkstuc
	.type	chek_all_one_mchkstuc, @function
chek_all_one_mchkstuc:
	.stabn	68,0,1442,.LM1264-.LFBB52
.LM1264:
.LFBB52:
.LFB75:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$32, %rsp
	.cfi_def_cfa_offset 48
.L453:
	leaq	.L453(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L453, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1443,.LM1265-.LFBB52
.LM1265:
	movq	$0, 16(%rsp)
	.stabn	68,0,1445,.LM1266-.LFBB52
.LM1266:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,1445,.LM1267-.LFBB52
.LM1267:
	jmp	.L449
.L451:
	.stabn	68,0,1447,.LM1268-.LFBB52
.LM1268:
	movq	24(%rsp), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,1448,.LM1269-.LFBB52
.LM1269:
	movq	8(%rsp), %rax
	cmpq	16(%rsp), %rax
	je	.L450
	.stabn	68,0,1450,.LM1270-.LFBB52
.LM1270:
	movq	16(%rsp), %rdx
	movq	8(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$cmp_mchkstuc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
.L450:
	.stabn	68,0,1445,.LM1271-.LFBB52
.LM1271:
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
.L449:
	.stabn	68,0,1445,.LM1272-.LFBB52
.LM1272:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	cmpq	%rax, 24(%rsp)
	jne	.L451
	.stabn	68,0,1453,.LM1273-.LFBB52
.LM1273:
	nop
	.stabn	68,0,1454,.LM1274-.LFBB52
.LM1274:
	addq	$32, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE75:
	.size	chek_all_one_mchkstuc, .-chek_all_one_mchkstuc
	.stabs	"mchsp:(0,88)",128,0,1443,16
	.stabs	"tmplst:(0,2)",128,0,1444,24
	.stabn	192,0,0,.LFBB52-.LFBB52
	.stabn	224,0,0,.Lscope52-.LFBB52
.Lscope52:
	.stabs	"",36,0,0,.Lscope52-.LFBB52
	.section	.rodata
	.align 8
.LC30:
	.string	"\346\243\200\346\237\245\345\256\214\347\254\254%d\344\270\252\345\206\205\345\255\230\347\251\272\351\227\264\345\235\227:\346\255\243\347\241\256.....sz:%d:pgs:%d\n"
.LC31:
	.string	"\345\205\250\351\203\250\346\243\200\346\237\245\345\256\214\346\257\225:\346\255\243\347\241\256!!\n"
	.text
	.stabs	"chek_all_mchkstuc:F(0,1)",36,0,1455,chek_all_mchkstuc
	.globl	chek_all_mchkstuc
	.type	chek_all_mchkstuc, @function
chek_all_mchkstuc:
	.stabn	68,0,1456,.LM1275-.LFBB53
.LM1275:
.LFBB53:
.LFB76:
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
.L458:
	leaq	.L458(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L458, %r11
	addq	%r11, %rbx
	.stabn	68,0,1457,.LM1276-.LFBB53
.LM1276:
	movq	$0, 8(%rsp)
	.stabn	68,0,1459,.LM1277-.LFBB53
.LM1277:
	movq	$0, 16(%rsp)
	.stabn	68,0,1460,.LM1278-.LFBB53
.LM1278:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,1460,.LM1279-.LFBB53
.LM1279:
	jmp	.L455
.L456:
	.stabn	68,0,1462,.LM1280-.LFBB53
.LM1280:
	movq	24(%rsp), %rax
	movq	%rax, 8(%rsp)
	.stabn	68,0,1463,.LM1281-.LFBB53
.LM1281:
	movq	8(%rsp), %rax
	movq	%rax, %rdi
	movabsq	$chek_all_one_mchkstuc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1464,.LM1282-.LFBB53
.LM1282:
	addq	$1, 16(%rsp)
	.stabn	68,0,1465,.LM1283-.LFBB53
.LM1283:
	movq	8(%rsp), %rax
	movq	32(%rax), %rax
	.stabn	68,0,1465,.LM1284-.LFBB53
.LM1284:
	shrq	$12, %rax
	movq	%rax, %rcx
	movq	8(%rsp), %rax
	movq	32(%rax), %rdx
	movq	16(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$.LC30@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r8
	addq	%rbx, %r8
	call	*%r8
	.stabn	68,0,1460,.LM1285-.LFBB53
.LM1285:
	movq	24(%rsp), %rax
	movq	8(%rax), %rax
	movq	%rax, 24(%rsp)
.L455:
	.stabn	68,0,1460,.LM1286-.LFBB53
.LM1286:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	cmpq	%rax, 24(%rsp)
	jne	.L456
	.stabn	68,0,1467,.LM1287-.LFBB53
.LM1287:
	movabsq	$.LC31@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,1468,.LM1288-.LFBB53
.LM1288:
	nop
	.stabn	68,0,1469,.LM1289-.LFBB53
.LM1289:
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
.LFE76:
	.size	chek_all_mchkstuc, .-chek_all_mchkstuc
	.stabs	"mchs:(0,88)",128,0,1457,8
	.stabs	"tmplst:(0,2)",128,0,1458,24
	.stabs	"i:(0,15)",128,0,1459,16
	.stabn	192,0,0,.LFBB53-.LFBB53
	.stabn	224,0,0,.Lscope53-.LFBB53
.Lscope53:
	.stabs	"",36,0,0,.Lscope53-.LFBB53
	.stabs	"retn_test_sec:F(0,15)",36,0,1471,retn_test_sec
	.globl	retn_test_sec
	.type	retn_test_sec, @function
retn_test_sec:
	.stabn	68,0,1472,.LM1290-.LFBB54
.LM1290:
.LFBB54:
.LFB77:
	.cfi_startproc
	endbr64
	subq	$32, %rsp
	.cfi_def_cfa_offset 40
.L466:
	leaq	.L466(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L466, %r11
	addq	%r11, %rax
	.stabn	68,0,1473,.LM1291-.LFBB54
.LM1291:
	movabsq	$memmgrob@GOT, %rdx
	movq	(%rax,%rdx), %rdx
	movq	176(%rdx), %rdx
	movq	%rdx, 8(%rsp)
	.stabn	68,0,1473,.LM1292-.LFBB54
.LM1292:
	movq	$0, 24(%rsp)
.LBB8:
	.stabn	68,0,1474,.LM1293-.LFBB54
.LM1293:
	movq	$0, 16(%rsp)
	.stabn	68,0,1474,.LM1294-.LFBB54
.LM1294:
	jmp	.L460
.L463:
	.stabn	68,0,1476,.LM1295-.LFBB54
.LM1295:
	movq	16(%rsp), %rdx
	imulq	$5912, %rdx, %rcx
	movq	8(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,1476,.LM1296-.LFBB54
.LM1296:
	movq	40(%rdx), %rdx
	.stabn	68,0,1476,.LM1297-.LFBB54
.LM1297:
	cmpq	$2, %rdx
	jne	.L461
	.stabn	68,0,1478,.LM1298-.LFBB54
.LM1298:
	movq	16(%rsp), %rax
	imulq	$5912, %rax, %rdx
	.stabn	68,0,1478,.LM1299-.LFBB54
.LM1299:
	movq	8(%rsp), %rax
	addq	%rdx, %rax
	movq	%rax, 24(%rsp)
	.stabn	68,0,1479,.LM1300-.LFBB54
.LM1300:
	jmp	.L462
.L461:
	.stabn	68,0,1474,.LM1301-.LFBB54
.LM1301:
	addq	$1, 16(%rsp)
.L460:
	.stabn	68,0,1474,.LM1302-.LFBB54
.LM1302:
	movabsq	$memmgrob@GOT, %rdx
	movq	(%rax,%rdx), %rdx
	movq	184(%rdx), %rdx
	.stabn	68,0,1474,.LM1303-.LFBB54
.LM1303:
	cmpq	%rdx, 16(%rsp)
	jb	.L463
.L462:
.LBE8:
	.stabn	68,0,1482,.LM1304-.LFBB54
.LM1304:
	cmpq	$0, 24(%rsp)
	jne	.L464
	.stabn	68,0,1484,.LM1305-.LFBB54
.LM1305:
	movl	$0, %eax
	jmp	.L465
.L464:
	.stabn	68,0,1486,.LM1306-.LFBB54
.LM1306:
	movq	24(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,1486,.LM1307-.LFBB54
.LM1307:
	shrq	$5, %rax
	movabsq	$655884233731895169, %rdx
	mulq	%rdx
	movq	%rdx, %rax
	shrq	$3, %rax
.L465:
	.stabn	68,0,1487,.LM1308-.LFBB54
.LM1308:
	addq	$32, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE77:
	.size	retn_test_sec, .-retn_test_sec
	.stabs	"mrp:(0,17)",128,0,1473,8
	.stabs	"mar:(0,17)",128,0,1473,24
	.stabn	192,0,0,.LFBB54-.LFBB54
	.stabs	"i:(0,15)",128,0,1474,16
	.stabn	192,0,0,.LBB8-.LFBB54
	.stabn	224,0,0,.LBE8-.LFBB54
	.stabn	224,0,0,.Lscope54-.LFBB54
.Lscope54:
	.stabs	"",36,0,0,.Lscope54-.LFBB54
	.section	.rodata
	.align 8
.LC32:
	.string	"\346\211\200\345\210\206\351\205\215\350\277\236\347\273\255\347\211\251\347\220\206\345\206\205\345\255\230\351\241\265\351\235\242\347\232\204\351\246\226\345\234\260\345\235\200:%x,\350\277\236\347\273\255\347\211\251\347\220\206\345\206\205\345\255\230\351\241\265\351\235\242\346\225\260:%d,\350\277\236\347\273\255\347\211\251\347\220\206\345\206\205\345\255\230\345\244\247\345\260\217:%dMB,CPU\346\227\266\351\222\237\345\221\250\346\234\237:%d,PAGES:%d\n"
.LC33:
	.string	"TEST PROC_MAREA OK\n"
	.text
	.stabs	"test_proc_marea:F(0,1)",36,0,1489,test_proc_marea
	.stabs	"mr:p(0,17)",160,0,1489,8
	.globl	test_proc_marea
	.type	test_proc_marea, @function
test_proc_marea:
	.stabn	68,0,1490,.LM1309-.LFBB55
.LM1309:
.LFBB55:
.LFB78:
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
.L475:
	leaq	.L475(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L475, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1491,.LM1310-.LFBB55
.LM1310:
	movq	$0, 56(%rsp)
	.stabn	68,0,1492,.LM1311-.LFBB55
.LM1311:
	movq	$0, 24(%rsp)
	.stabn	68,0,1492,.LM1312-.LFBB55
.LM1312:
	movq	$1, 48(%rsp)
	.stabn	68,0,1493,.LM1313-.LFBB55
.LM1313:
	movq	$0, 40(%rsp)
	.stabn	68,0,1493,.LM1314-.LFBB55
.LM1314:
	movq	$0, 32(%rsp)
.L471:
	.stabn	68,0,1497,.LM1315-.LFBB55
.LM1315:
	movq	8(%rsp), %rax
	movq	40(%rax), %rax
	.stabn	68,0,1497,.LM1316-.LFBB55
.LM1316:
	cmpq	$3, %rax
	jne	.L473
	.stabn	68,0,1502,.LM1317-.LFBB55
.LM1317:
	movabsq	$x86_rdtsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1503,.LM1318-.LFBB55
.LM1318:
	leaq	24(%rsp), %rax
	movq	%rax, %rdx
	movl	$1, %esi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$mm_divpages_procmarea@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 56(%rsp)
	.stabn	68,0,1504,.LM1319-.LFBB55
.LM1319:
	movabsq	$x86_rdtsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,1505,.LM1320-.LFBB55
.LM1320:
	cmpq	$0, 56(%rsp)
	je	.L474
	.stabn	68,0,1509,.LM1321-.LFBB55
.LM1321:
	movq	24(%rsp), %rdx
	movq	56(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$write_one_mchkstuc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1511,.LM1322-.LFBB55
.LM1322:
	movq	32(%rsp), %rax
	subq	40(%rsp), %rax
	movq	%rax, %rdi
	.stabn	68,0,1511,.LM1323-.LFBB55
.LM1323:
	movq	24(%rsp), %rax
	salq	$12, %rax
	.stabn	68,0,1511,.LM1324-.LFBB55
.LM1324:
	shrq	$20, %rax
	movq	%rax, %rcx
	.stabn	68,0,1510,.LM1325-.LFBB55
.LM1325:
	movq	24(%rsp), %rdx
	.stabn	68,0,1511,.LM1326-.LFBB55
.LM1326:
	movq	56(%rsp), %rax
	movzbl	25(%rax), %esi
	shrb	$4, %sil
	movzbl	%sil, %r8d
	movzbl	26(%rax), %esi
	salq	$4, %rsi
	orq	%rsi, %r8
	movzbl	27(%rax), %esi
	salq	$12, %rsi
	orq	%rsi, %r8
	movzbl	28(%rax), %esi
	salq	$20, %rsi
	orq	%rsi, %r8
	movzbl	29(%rax), %esi
	salq	$28, %rsi
	orq	%rsi, %r8
	movzbl	30(%rax), %esi
	salq	$36, %rsi
	orq	%r8, %rsi
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rsi, %rax
	.stabn	68,0,1511,.LM1327-.LFBB55
.LM1327:
	salq	$12, %rax
	movabsq	$4503599627370495, %rsi
	andq	%rsi, %rax
	.stabn	68,0,1510,.LM1328-.LFBB55
.LM1328:
	movq	%rax, %rsi
	movq	48(%rsp), %rax
	movq	%rax, %r9
	movq	%rdi, %r8
	movabsq	$.LC32@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r10
	addq	%rbx, %r10
	call	*%r10
	.stabn	68,0,1497,.LM1329-.LFBB55
.LM1329:
	jmp	.L471
.L473:
	.stabn	68,0,1500,.LM1330-.LFBB55
.LM1330:
	nop
	jmp	.L469
.L474:
	.stabn	68,0,1507,.LM1331-.LFBB55
.LM1331:
	nop
.L469:
	.stabn	68,0,1514,.LM1332-.LFBB55
.LM1332:
	movabsq	$.LC33@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,1515,.LM1333-.LFBB55
.LM1333:
	nop
	.stabn	68,0,1516,.LM1334-.LFBB55
.LM1334:
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
.LFE78:
	.size	test_proc_marea, .-test_proc_marea
	.stabs	"retmsa:(0,63)",128,0,1491,56
	.stabs	"retpnr:(0,15)",128,0,1492,24
	.stabs	"pages:(0,15)",128,0,1492,48
	.stabs	"stsc:(0,11)",128,0,1493,40
	.stabs	"etsc:(0,11)",128,0,1493,32
	.stabn	192,0,0,.LFBB55-.LFBB55
	.stabn	224,0,0,.Lscope55-.LFBB55
.Lscope55:
	.stabs	"",36,0,0,.Lscope55-.LFBB55
	.stabs	"test_maxone_marea:F(0,1)",36,0,1518,test_maxone_marea
	.stabs	"mr:p(0,17)",160,0,1518,8
	.globl	test_maxone_marea
	.type	test_maxone_marea, @function
test_maxone_marea:
	.stabn	68,0,1519,.LM1335-.LFBB56
.LM1335:
.LFBB56:
.LFB79:
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
.L481:
	leaq	.L481(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L481, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1520,.LM1336-.LFBB56
.LM1336:
	movq	$0, 48(%rsp)
	.stabn	68,0,1521,.LM1337-.LFBB56
.LM1337:
	movq	$0, 24(%rsp)
	.stabn	68,0,1521,.LM1338-.LFBB56
.LM1338:
	movq	$1, 56(%rsp)
	.stabn	68,0,1522,.LM1339-.LFBB56
.LM1339:
	movq	$0, 40(%rsp)
	.stabn	68,0,1522,.LM1340-.LFBB56
.LM1340:
	movq	$0, 32(%rsp)
	.stabn	68,0,1525,.LM1341-.LFBB56
.LM1341:
	jmp	.L477
.L479:
	.stabn	68,0,1535,.LM1342-.LFBB56
.LM1342:
	movabsq	$x86_rdtsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1536,.LM1343-.LFBB56
.LM1343:
	movq	8(%rsp), %rax
	movq	40(%rax), %rcx
	leaq	24(%rsp), %rdx
	movq	56(%rsp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$mm_division_pages@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,1537,.LM1344-.LFBB56
.LM1344:
	movabsq	$x86_rdtsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,1540,.LM1345-.LFBB56
.LM1345:
	cmpq	$0, 48(%rsp)
	je	.L478
	.stabn	68,0,1542,.LM1346-.LFBB56
.LM1346:
	movq	24(%rsp), %rdx
	movq	48(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$write_one_mchkstuc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1544,.LM1347-.LFBB56
.LM1347:
	movq	32(%rsp), %rax
	subq	40(%rsp), %rax
	movq	%rax, %rdi
	.stabn	68,0,1544,.LM1348-.LFBB56
.LM1348:
	movq	24(%rsp), %rax
	salq	$12, %rax
	.stabn	68,0,1544,.LM1349-.LFBB56
.LM1349:
	shrq	$20, %rax
	movq	%rax, %rcx
	.stabn	68,0,1543,.LM1350-.LFBB56
.LM1350:
	movq	24(%rsp), %rdx
	.stabn	68,0,1544,.LM1351-.LFBB56
.LM1351:
	movq	48(%rsp), %rax
	movzbl	25(%rax), %esi
	shrb	$4, %sil
	movzbl	%sil, %r8d
	movzbl	26(%rax), %esi
	salq	$4, %rsi
	orq	%rsi, %r8
	movzbl	27(%rax), %esi
	salq	$12, %rsi
	orq	%rsi, %r8
	movzbl	28(%rax), %esi
	salq	$20, %rsi
	orq	%rsi, %r8
	movzbl	29(%rax), %esi
	salq	$28, %rsi
	orq	%rsi, %r8
	movzbl	30(%rax), %esi
	salq	$36, %rsi
	orq	%r8, %rsi
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rsi, %rax
	.stabn	68,0,1544,.LM1352-.LFBB56
.LM1352:
	salq	$12, %rax
	movabsq	$4503599627370495, %rsi
	andq	%rsi, %rax
	.stabn	68,0,1543,.LM1353-.LFBB56
.LM1353:
	movq	%rax, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %r9
	movq	%rdi, %r8
	movabsq	$.LC32@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r10
	addq	%rbx, %r10
	call	*%r10
.L478:
	.stabn	68,0,1546,.LM1354-.LFBB56
.LM1354:
	addq	$1, 56(%rsp)
.L477:
	.stabn	68,0,1525,.LM1355-.LFBB56
.LM1355:
	movq	8(%rsp), %rax
	movq	160(%rax), %rax
	.stabn	68,0,1525,.LM1356-.LFBB56
.LM1356:
	cmpq	%rax, 56(%rsp)
	jb	.L479
	.stabn	68,0,1548,.LM1357-.LFBB56
.LM1357:
	nop
	.stabn	68,0,1549,.LM1358-.LFBB56
.LM1358:
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
.LFE79:
	.size	test_maxone_marea, .-test_maxone_marea
	.stabs	"retmsa:(0,63)",128,0,1520,48
	.stabs	"retpnr:(0,15)",128,0,1521,24
	.stabs	"pages:(0,15)",128,0,1521,56
	.stabs	"stsc:(0,11)",128,0,1522,40
	.stabs	"etsc:(0,11)",128,0,1522,32
	.stabn	192,0,0,.LFBB56-.LFBB56
	.stabn	224,0,0,.Lscope56-.LFBB56
.Lscope56:
	.stabs	"",36,0,0,.Lscope56-.LFBB56
	.section	.rodata
.LC34:
	.string	"in for retmsa==NULL:%x\n"
.LC35:
	.string	"test_onedivmer_all 0k\n"
	.text
	.stabs	"test_onedivmer_all:F(0,1)",36,0,1551,test_onedivmer_all
	.stabs	"ma:p(0,17)",160,0,1551,8
	.globl	test_onedivmer_all
	.type	test_onedivmer_all, @function
test_onedivmer_all:
	.stabn	68,0,1552,.LM1359-.LFBB57
.LM1359:
.LFBB57:
.LFB80:
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
.L488:
	leaq	.L488(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L488, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,1553,.LM1360-.LFBB57
.LM1360:
	movq	$1, 56(%rsp)
	.stabn	68,0,1553,.LM1361-.LFBB57
.LM1361:
	movq	$0, 24(%rsp)
	.stabn	68,0,1554,.LM1362-.LFBB57
.LM1362:
	movq	$0, 48(%rsp)
	.stabn	68,0,1554,.LM1363-.LFBB57
.LM1363:
	movq	$0, 40(%rsp)
	.stabn	68,0,1555,.LM1364-.LFBB57
.LM1364:
	movq	$0, 32(%rsp)
	.stabn	68,0,1558,.LM1365-.LFBB57
.LM1365:
	jmp	.L483
.L486:
	.stabn	68,0,1560,.LM1366-.LFBB57
.LM1366:
	movabsq	$x86_rdtsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 48(%rsp)
	.stabn	68,0,1561,.LM1367-.LFBB57
.LM1367:
	movq	8(%rsp), %rax
	movq	40(%rax), %rcx
	leaq	24(%rsp), %rdx
	movq	56(%rsp), %rax
	movl	$0, %r8d
	movq	%rax, %rsi
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movabsq	$mm_division_pages@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 32(%rsp)
	.stabn	68,0,1562,.LM1368-.LFBB57
.LM1368:
	movabsq	$x86_rdtsc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,1563,.LM1369-.LFBB57
.LM1369:
	cmpq	$0, 32(%rsp)
	jne	.L484
	.stabn	68,0,1565,.LM1370-.LFBB57
.LM1370:
	movq	56(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$.LC34@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,1566,.LM1371-.LFBB57
.LM1371:
	jmp	.L485
.L484:
	.stabn	68,0,1568,.LM1372-.LFBB57
.LM1372:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$write_one_mchkstuc@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1570,.LM1373-.LFBB57
.LM1373:
	movq	40(%rsp), %rax
	subq	48(%rsp), %rax
	movq	%rax, %rdi
	.stabn	68,0,1570,.LM1374-.LFBB57
.LM1374:
	movq	24(%rsp), %rax
	salq	$12, %rax
	.stabn	68,0,1570,.LM1375-.LFBB57
.LM1375:
	shrq	$20, %rax
	movq	%rax, %rcx
	.stabn	68,0,1569,.LM1376-.LFBB57
.LM1376:
	movq	24(%rsp), %rdx
	.stabn	68,0,1570,.LM1377-.LFBB57
.LM1377:
	movq	32(%rsp), %rax
	movzbl	25(%rax), %esi
	shrb	$4, %sil
	movzbl	%sil, %r8d
	movzbl	26(%rax), %esi
	salq	$4, %rsi
	orq	%rsi, %r8
	movzbl	27(%rax), %esi
	salq	$12, %rsi
	orq	%rsi, %r8
	movzbl	28(%rax), %esi
	salq	$20, %rsi
	orq	%rsi, %r8
	movzbl	29(%rax), %esi
	salq	$28, %rsi
	orq	%rsi, %r8
	movzbl	30(%rax), %esi
	salq	$36, %rsi
	orq	%r8, %rsi
	movzbl	31(%rax), %eax
	salq	$44, %rax
	orq	%rsi, %rax
	.stabn	68,0,1570,.LM1378-.LFBB57
.LM1378:
	salq	$12, %rax
	movabsq	$4503599627370495, %rsi
	andq	%rsi, %rax
	.stabn	68,0,1569,.LM1379-.LFBB57
.LM1379:
	movq	%rax, %rsi
	movq	56(%rsp), %rax
	movq	%rax, %r9
	movq	%rdi, %r8
	movabsq	$.LC32@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %r10
	addq	%rbx, %r10
	call	*%r10
.L483:
	.stabn	68,0,1558,.LM1380-.LFBB57
.LM1380:
	movq	8(%rsp), %rax
	movq	144(%rax), %rax
	.stabn	68,0,1558,.LM1381-.LFBB57
.LM1381:
	cmpq	%rax, 56(%rsp)
	jb	.L486
.L485:
	.stabn	68,0,1572,.LM1382-.LFBB57
.LM1382:
	movl	$0, %eax
	movabsq	$chek_all_mchkstuc@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,1573,.LM1383-.LFBB57
.LM1383:
	movl	$0, %eax
	movabsq	$free_all_mchkstuc@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,1575,.LM1384-.LFBB57
.LM1384:
	movabsq	$.LC35@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rdx
	addq	%rbx, %rdx
	call	*%rdx
	.stabn	68,0,1576,.LM1385-.LFBB57
.LM1385:
	nop
	.stabn	68,0,1577,.LM1386-.LFBB57
.LM1386:
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
.LFE80:
	.size	test_onedivmer_all, .-test_onedivmer_all
	.stabs	"pages:(0,15)",128,0,1553,56
	.stabs	"retpnr:(0,15)",128,0,1553,24
	.stabs	"stsc:(0,11)",128,0,1554,48
	.stabs	"etsc:(0,11)",128,0,1554,40
	.stabs	"retmsa:(0,63)",128,0,1555,32
	.stabn	192,0,0,.LFBB57-.LFBB57
	.stabn	224,0,0,.Lscope57-.LFBB57
.Lscope57:
	.stabs	"",36,0,0,.Lscope57-.LFBB57
	.stabs	"test_maxdiv_all:F(0,1)",36,0,1579,test_maxdiv_all
	.globl	test_maxdiv_all
	.type	test_maxdiv_all, @function
test_maxdiv_all:
	.stabn	68,0,1580,.LM1387-.LFBB58
.LM1387:
.LFBB58:
.LFB81:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L493:
	leaq	.L493(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L493, %r11
	addq	%r11, %rbx
.LBB9:
	.stabn	68,0,1581,.LM1388-.LFBB58
.LM1388:
	movq	$0, 8(%rsp)
	.stabn	68,0,1581,.LM1389-.LFBB58
.LM1389:
	jmp	.L490
.L491:
	.stabn	68,0,1587,.LM1390-.LFBB58
.LM1390:
	movabsq	$memmgrob@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	176(%rax), %rdx
	.stabn	68,0,1587,.LM1391-.LFBB58
.LM1391:
	movq	8(%rsp), %rax
	imulq	$5912, %rax, %rax
	.stabn	68,0,1587,.LM1392-.LFBB58
.LM1392:
	addq	%rdx, %rax
	movq	%rax, %rdi
	movabsq	$test_onedivmer_all@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,1581,.LM1393-.LFBB58
.LM1393:
	addq	$1, 8(%rsp)
.L490:
	.stabn	68,0,1581,.LM1394-.LFBB58
.LM1394:
	cmpq	$2, 8(%rsp)
	jbe	.L491
.LBE9:
	.stabn	68,0,1590,.LM1395-.LFBB58
.LM1395:
	nop
	.stabn	68,0,1591,.LM1396-.LFBB58
.LM1396:
	addq	$16, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE81:
	.size	test_maxdiv_all, .-test_maxdiv_all
	.stabs	"i:(0,15)",128,0,1581,8
	.stabn	192,0,0,.LBB9-.LFBB58
	.stabn	224,0,0,.LBE9-.LFBB58
.Lscope58:
	.stabs	"",36,0,0,.Lscope58-.LFBB58
	.stabs	"test_divsion_pages:F(0,1)",36,0,1593,test_divsion_pages
	.globl	test_divsion_pages
	.type	test_divsion_pages, @function
test_divsion_pages:
	.stabn	68,0,1594,.LM1397-.LFBB59
.LM1397:
.LFBB59:
.LFB82:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
.L496:
	leaq	.L496(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L496, %r11
	addq	%r11, %rbx
	.stabn	68,0,1596,.LM1398-.LFBB59
.LM1398:
	movl	$0, %eax
	movabsq	$test_maxdiv_all@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,1598,.LM1399-.LFBB59
.LM1399:
	movl	$0, %eax
	movabsq	$free_all_mchkstuc@GOTOFF, %rdx
	leaq	(%rbx,%rdx), %rdx
	call	*%rdx
	.stabn	68,0,1649,.LM1400-.LFBB59
.LM1400:
	nop
	.stabn	68,0,1650,.LM1401-.LFBB59
.LM1401:
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE82:
	.size	test_divsion_pages, .-test_divsion_pages
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
