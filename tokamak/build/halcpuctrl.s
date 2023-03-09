	.file	"halcpuctrl.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halcpuctrl.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.section	.rodata
.LC0:
	.string	"COSMOS SYSTEM IS DIE %s"
	.text
	.stabs	"hal_sysdie:F(0,1)=(0,1)",36,0,4,hal_sysdie
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"errmsg:p(0,2)=*(0,3)=(0,4)=r(0,4);0;127;",160,0,4,8
	.stabs	"char_t:t(0,3)",128,0,24,0
	.stabs	"char:t(0,4)",128,0,0,0
	.globl	hal_sysdie
	.type	hal_sysdie, @function
hal_sysdie:
	.stabn	68,0,5,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	subq	$16, %rsp
	.cfi_def_cfa_offset 32
.L3:
	leaq	.L3(%rip), %rdx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L3, %r11
	addq	%r11, %rdx
	movq	%rdi, 8(%rsp)
	.stabn	68,0,6,.LM1-.LFBB1
.LM1:
	movq	8(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$.LC0@GOTOFF, %rax
	leaq	(%rdx,%rax), %rax
	movq	%rax, %rdi
	movq	%rdx, %r15
	movl	$0, %eax
	movabsq	$kprint@PLTOFF, %rcx
	addq	%rdx, %rcx
	call	*%rcx
.L2:
	.stabn	68,0,7,.LM2-.LFBB1
.LM2:
	jmp	.L2
	.cfi_endproc
.LFE32:
	.size	hal_sysdie, .-hal_sysdie
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"system_error:F(0,1)",36,0,12,system_error
	.stabs	"errmsg:p(0,2)",160,0,12,8
	.globl	system_error
	.type	system_error, @function
system_error:
	.stabn	68,0,13,.LM3-.LFBB2
.LM3:
.LFBB2:
.LFB33:
	.cfi_startproc
	endbr64
	subq	$24, %rsp
	.cfi_def_cfa_offset 32
.L6:
	leaq	.L6(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L6, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	.stabn	68,0,14,.LM4-.LFBB2
.LM4:
	movq	8(%rsp), %rdx
	movq	%rdx, %rdi
	movabsq	$hal_sysdie@GOTOFF, %rdx
	leaq	(%rax,%rdx), %rax
	call	*%rax
	.stabn	68,0,15,.LM5-.LFBB2
.LM5:
	nop
	.stabn	68,0,16,.LM6-.LFBB2
.LM6:
	addq	$24, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	system_error, .-system_error
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"hal_spinlock_init:F(0,1)",36,0,18,hal_spinlock_init
	.stabs	"lock:p(0,5)=*(0,6)=(0,7)=s4lock:(0,8)=B(0,9)=(0,10)=r(0,10);0;037777777777;,0,32;;",160,0,18,0
	.stabs	"u32_t:t(0,9)",128,0,10,0
	.stabs	"unsigned int:t(0,10)",128,0,0,0
	.globl	hal_spinlock_init
	.type	hal_spinlock_init, @function
hal_spinlock_init:
	.stabn	68,0,19,.LM7-.LFBB3
.LM7:
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
	.stabn	68,0,20,.LM8-.LFBB3
.LM8:
	movq	(%rsp), %rax
	movl	$0, (%rax)
	.stabn	68,0,21,.LM9-.LFBB3
.LM9:
	nop
	.stabn	68,0,22,.LM10-.LFBB3
.LM10:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	hal_spinlock_init, .-hal_spinlock_init
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.stabs	"hal_spinlock_lock:F(0,1)",36,0,24,hal_spinlock_lock
	.stabs	"lock:p(0,5)",160,0,24,0
	.globl	hal_spinlock_lock
	.type	hal_spinlock_lock, @function
hal_spinlock_lock:
	.stabn	68,0,25,.LM11-.LFBB4
.LM11:
.LFBB4:
.LFB35:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L12:
	leaq	.L12(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L12, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,26,.LM12-.LFBB4
.LM12:
	movl	$1, %edx
	movq	(%rsp), %rax
#APP
# 26 "../hal/x86/halcpuctrl.c" 1
	1:         
lock; xchg  %edx, (%rax) 
cmpl   $0, %edx      
jnz    2f      
.section .spinlock.text,"ax"
2:         
cmpl   $0, (%rax)      
jne    2b      
jmp    1b      
.previous      

# 0 "" 2
	.stabn	68,0,41,.LM13-.LFBB4
.LM13:
#NO_APP
	nop
	.stabn	68,0,42,.LM14-.LFBB4
.LM14:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	hal_spinlock_lock, .-hal_spinlock_lock
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
	.stabs	"hal_spinlock_unlock:F(0,1)",36,0,44,hal_spinlock_unlock
	.stabs	"lock:p(0,5)",160,0,44,0
	.globl	hal_spinlock_unlock
	.type	hal_spinlock_unlock, @function
hal_spinlock_unlock:
	.stabn	68,0,45,.LM15-.LFBB5
.LM15:
.LFBB5:
.LFB36:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L15:
	leaq	.L15(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L15, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,46,.LM16-.LFBB5
.LM16:
	movq	(%rsp), %rax
#APP
# 46 "../hal/x86/halcpuctrl.c" 1
	movl   $0, (%rax)

# 0 "" 2
	.stabn	68,0,50,.LM17-.LFBB5
.LM17:
#NO_APP
	nop
	.stabn	68,0,51,.LM18-.LFBB5
.LM18:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE36:
	.size	hal_spinlock_unlock, .-hal_spinlock_unlock
.Lscope5:
	.stabs	"",36,0,0,.Lscope5-.LFBB5
	.stabs	"hal_spinlock_saveflg_cli:F(0,1)",36,0,53,hal_spinlock_saveflg_cli
	.stabs	"lock:p(0,5)",160,0,53,8
	.stabs	"cpuflg:p(0,11)=*(0,12)=(0,13)=(0,14)=@s64;r(0,14);0;01777777777777777777777;",160,0,53,0
	.stabs	"cpuflg_t:t(0,12)",128,0,18,0
	.stabs	"u64_t:t(0,13)",128,0,11,0
	.stabs	"long unsigned int:t(0,14)",128,0,0,0
	.globl	hal_spinlock_saveflg_cli
	.type	hal_spinlock_saveflg_cli, @function
hal_spinlock_saveflg_cli:
	.stabn	68,0,54,.LM19-.LFBB6
.LM19:
.LFBB6:
.LFB37:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L18:
	leaq	.L18(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L18, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,55,.LM20-.LFBB6
.LM20:
	movq	(%rsp), %rax
	movl	$1, %ecx
	movq	8(%rsp), %rdx
#APP
# 55 "../hal/x86/halcpuctrl.c" 1
	pushfq             
	cli                
	popq (%rax)            
	1:                 
	lock; xchg  %ecx, (%rdx) 
	cmpl   $0,%ecx       
	jnz    2f          
	.section .spinlock.text,"ax"
	2:                 
	cmpl   $0,(%rdx)       
	jne    2b          
	jmp    1b          
	.previous          
	
# 0 "" 2
	.stabn	68,0,74,.LM21-.LFBB6
.LM21:
#NO_APP
	nop
	.stabn	68,0,75,.LM22-.LFBB6
.LM22:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE37:
	.size	hal_spinlock_saveflg_cli, .-hal_spinlock_saveflg_cli
.Lscope6:
	.stabs	"",36,0,0,.Lscope6-.LFBB6
	.stabs	"hal_spinunlock_restflg_sti:F(0,1)",36,0,77,hal_spinunlock_restflg_sti
	.stabs	"lock:p(0,5)",160,0,77,8
	.stabs	"cpuflg:p(0,11)",160,0,77,0
	.globl	hal_spinunlock_restflg_sti
	.type	hal_spinunlock_restflg_sti, @function
hal_spinunlock_restflg_sti:
	.stabn	68,0,78,.LM23-.LFBB7
.LM23:
.LFBB7:
.LFB38:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L21:
	leaq	.L21(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L21, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,79,.LM24-.LFBB7
.LM24:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdx
#APP
# 79 "../hal/x86/halcpuctrl.c" 1
	movl   $0, (%rax)
	pushq (%rdx) 
	popfq 
	
# 0 "" 2
	.stabn	68,0,85,.LM25-.LFBB7
.LM25:
#NO_APP
	nop
	.stabn	68,0,86,.LM26-.LFBB7
.LM26:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE38:
	.size	hal_spinunlock_restflg_sti, .-hal_spinunlock_restflg_sti
.Lscope7:
	.stabs	"",36,0,0,.Lscope7-.LFBB7
	.stabs	"knl_spinlock_init:F(0,1)",36,0,88,knl_spinlock_init
	.stabs	"lock:p(0,5)",160,0,88,0
	.globl	knl_spinlock_init
	.type	knl_spinlock_init, @function
knl_spinlock_init:
	.stabn	68,0,89,.LM27-.LFBB8
.LM27:
.LFBB8:
.LFB39:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L24:
	leaq	.L24(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L24, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,90,.LM28-.LFBB8
.LM28:
	movq	(%rsp), %rax
	movl	$0, (%rax)
	.stabn	68,0,91,.LM29-.LFBB8
.LM29:
	nop
	.stabn	68,0,92,.LM30-.LFBB8
.LM30:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE39:
	.size	knl_spinlock_init, .-knl_spinlock_init
.Lscope8:
	.stabs	"",36,0,0,.Lscope8-.LFBB8
	.stabs	"knl_spinlock_lock:F(0,1)",36,0,94,knl_spinlock_lock
	.stabs	"lock:p(0,5)",160,0,94,0
	.globl	knl_spinlock_lock
	.type	knl_spinlock_lock, @function
knl_spinlock_lock:
	.stabn	68,0,95,.LM31-.LFBB9
.LM31:
.LFBB9:
.LFB40:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L27:
	leaq	.L27(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L27, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,96,.LM32-.LFBB9
.LM32:
	movl	$1, %edx
	movq	(%rsp), %rax
#APP
# 96 "../hal/x86/halcpuctrl.c" 1
	1:         
lock; xchg  %edx, (%rax) 
cmpl   $0, %edx      
jnz    2f      
.section .spinlock.text,"ax"
2:         
cmpl   $0, (%rax)      
jne    2b      
jmp    1b      
.previous      

# 0 "" 2
	.stabn	68,0,111,.LM33-.LFBB9
.LM33:
#NO_APP
	nop
	.stabn	68,0,112,.LM34-.LFBB9
.LM34:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE40:
	.size	knl_spinlock_lock, .-knl_spinlock_lock
.Lscope9:
	.stabs	"",36,0,0,.Lscope9-.LFBB9
	.stabs	"knl_spinlock_unlock:F(0,1)",36,0,114,knl_spinlock_unlock
	.stabs	"lock:p(0,5)",160,0,114,0
	.globl	knl_spinlock_unlock
	.type	knl_spinlock_unlock, @function
knl_spinlock_unlock:
	.stabn	68,0,115,.LM35-.LFBB10
.LM35:
.LFBB10:
.LFB41:
	.cfi_startproc
	endbr64
	subq	$8, %rsp
	.cfi_def_cfa_offset 16
.L30:
	leaq	.L30(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L30, %r11
	addq	%r11, %rax
	movq	%rdi, (%rsp)
	.stabn	68,0,116,.LM36-.LFBB10
.LM36:
	movq	(%rsp), %rax
#APP
# 116 "../hal/x86/halcpuctrl.c" 1
	movl   $0, (%rax)

# 0 "" 2
	.stabn	68,0,120,.LM37-.LFBB10
.LM37:
#NO_APP
	nop
	.stabn	68,0,121,.LM38-.LFBB10
.LM38:
	addq	$8, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE41:
	.size	knl_spinlock_unlock, .-knl_spinlock_unlock
.Lscope10:
	.stabs	"",36,0,0,.Lscope10-.LFBB10
	.stabs	"knl_spinlock_cli:F(0,1)",36,0,123,knl_spinlock_cli
	.stabs	"lock:p(0,5)",160,0,123,8
	.stabs	"cpuflg:p(0,11)",160,0,123,0
	.globl	knl_spinlock_cli
	.type	knl_spinlock_cli, @function
knl_spinlock_cli:
	.stabn	68,0,124,.LM39-.LFBB11
.LM39:
.LFBB11:
.LFB42:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L33:
	leaq	.L33(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L33, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,125,.LM40-.LFBB11
.LM40:
	movq	(%rsp), %rax
	movl	$1, %ecx
	movq	8(%rsp), %rdx
#APP
# 125 "../hal/x86/halcpuctrl.c" 1
	pushfq             
	cli                
	popq (%rax)            
	1:                 
	lock; xchg  %ecx, (%rdx) 
	cmpl   $0,%ecx       
	jnz    2f          
	.section .spinlock.text,"ax"
	2:                 
	cmpl   $0,(%rdx)       
	jne    2b          
	jmp    1b          
	.previous          
	
# 0 "" 2
	.stabn	68,0,144,.LM41-.LFBB11
.LM41:
#NO_APP
	nop
	.stabn	68,0,145,.LM42-.LFBB11
.LM42:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE42:
	.size	knl_spinlock_cli, .-knl_spinlock_cli
.Lscope11:
	.stabs	"",36,0,0,.Lscope11-.LFBB11
	.stabs	"knl_spinunlock_sti:F(0,1)",36,0,147,knl_spinunlock_sti
	.stabs	"lock:p(0,5)",160,0,147,8
	.stabs	"cpuflg:p(0,11)",160,0,147,0
	.globl	knl_spinunlock_sti
	.type	knl_spinunlock_sti, @function
knl_spinunlock_sti:
	.stabn	68,0,148,.LM43-.LFBB12
.LM43:
.LFBB12:
.LFB43:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L36:
	leaq	.L36(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L36, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,149,.LM44-.LFBB12
.LM44:
	movq	8(%rsp), %rax
	movq	(%rsp), %rdx
#APP
# 149 "../hal/x86/halcpuctrl.c" 1
	movl   $0, (%rax)
	pushq (%rdx) 
	popfq 
	
# 0 "" 2
	.stabn	68,0,155,.LM45-.LFBB12
.LM45:
#NO_APP
	nop
	.stabn	68,0,156,.LM46-.LFBB12
.LM46:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE43:
	.size	knl_spinunlock_sti, .-knl_spinunlock_sti
.Lscope12:
	.stabs	"",36,0,0,.Lscope12-.LFBB12
	.stabs	"hal_memset:F(0,1)",36,0,158,hal_memset
	.stabs	"u8_t:t(0,15)=(0,16)=@s8;r(0,16);0;255;",128,0,8,0
	.stabs	"unsigned char:t(0,16)",128,0,0,0
	.stabs	"setp:p(0,17)=*(0,1)",160,0,158,12
	.stabs	"n:p(0,18)=(0,14)",160,0,158,4
	.stabs	"setval:p(0,15)",160,0,158,0
	.stabs	"size_t:t(0,18)",128,0,31,0
	.globl	hal_memset
	.type	hal_memset, @function
hal_memset:
	.stabn	68,0,159,.LM47-.LFBB13
.LM47:
.LFBB13:
.LFB44:
	.cfi_startproc
	endbr64
	subq	$40, %rsp
	.cfi_def_cfa_offset 48
.L41:
	leaq	.L41(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L41, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movl	%edx, %eax
	movb	%al, 4(%rsp)
	.stabn	68,0,160,.LM48-.LFBB13
.LM48:
	movq	16(%rsp), %rax
	movq	%rax, 24(%rsp)
.LBB2:
	.stabn	68,0,161,.LM49-.LFBB13
.LM49:
	movq	$0, 32(%rsp)
	.stabn	68,0,161,.LM50-.LFBB13
.LM50:
	jmp	.L38
.L39:
	.stabn	68,0,163,.LM51-.LFBB13
.LM51:
	movq	24(%rsp), %rdx
	movq	32(%rsp), %rax
	addq	%rax, %rdx
	.stabn	68,0,163,.LM52-.LFBB13
.LM52:
	movzbl	4(%rsp), %eax
	movb	%al, (%rdx)
	.stabn	68,0,161,.LM53-.LFBB13
.LM53:
	addq	$1, 32(%rsp)
.L38:
	.stabn	68,0,161,.LM54-.LFBB13
.LM54:
	movq	32(%rsp), %rax
	cmpq	8(%rsp), %rax
	jb	.L39
.LBE2:
	.stabn	68,0,165,.LM55-.LFBB13
.LM55:
	nop
	.stabn	68,0,166,.LM56-.LFBB13
.LM56:
	addq	$40, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE44:
	.size	hal_memset, .-hal_memset
	.stabs	"_p:(0,19)=*(0,15)",128,0,160,20
	.stabn	192,0,0,.LFBB13-.LFBB13
	.stabs	"i:(0,20)=(0,14)",128,0,161,28
	.stabs	"uint_t:t(0,20)",128,0,17,0
	.stabn	192,0,0,.LBB2-.LFBB13
	.stabn	224,0,0,.LBE2-.LFBB13
	.stabn	224,0,0,.Lscope13-.LFBB13
.Lscope13:
	.stabs	"",36,0,0,.Lscope13-.LFBB13
	.stabs	"hal_memcpy:F(0,1)",36,0,168,hal_memcpy
	.stabs	"src:p(0,17)",160,0,168,16
	.stabs	"dst:p(0,17)",160,0,168,8
	.stabs	"n:p(0,18)",160,0,168,0
	.globl	hal_memcpy
	.type	hal_memcpy, @function
hal_memcpy:
	.stabn	68,0,169,.LM57-.LFBB14
.LM57:
.LFBB14:
.LFB45:
	.cfi_startproc
	endbr64
	subq	$56, %rsp
	.cfi_def_cfa_offset 64
.L46:
	leaq	.L46(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L46, %r11
	addq	%r11, %rax
	movq	%rdi, 16(%rsp)
	movq	%rsi, 8(%rsp)
	movq	%rdx, (%rsp)
	.stabn	68,0,170,.LM58-.LFBB14
.LM58:
	movq	16(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,170,.LM59-.LFBB14
.LM59:
	movq	8(%rsp), %rax
	movq	%rax, 32(%rsp)
.LBB3:
	.stabn	68,0,171,.LM60-.LFBB14
.LM60:
	movq	$0, 48(%rsp)
	.stabn	68,0,171,.LM61-.LFBB14
.LM61:
	jmp	.L43
.L44:
	.stabn	68,0,173,.LM62-.LFBB14
.LM62:
	movq	40(%rsp), %rdx
	movq	48(%rsp), %rax
	addq	%rdx, %rax
	.stabn	68,0,173,.LM63-.LFBB14
.LM63:
	movq	32(%rsp), %rcx
	movq	48(%rsp), %rdx
	addq	%rcx, %rdx
	.stabn	68,0,173,.LM64-.LFBB14
.LM64:
	movzbl	(%rax), %eax
	.stabn	68,0,173,.LM65-.LFBB14
.LM65:
	movb	%al, (%rdx)
	.stabn	68,0,171,.LM66-.LFBB14
.LM66:
	addq	$1, 48(%rsp)
.L43:
	.stabn	68,0,171,.LM67-.LFBB14
.LM67:
	movq	48(%rsp), %rax
	cmpq	(%rsp), %rax
	jb	.L44
.LBE3:
	.stabn	68,0,175,.LM68-.LFBB14
.LM68:
	nop
	.stabn	68,0,176,.LM69-.LFBB14
.LM69:
	addq	$56, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE45:
	.size	hal_memcpy, .-hal_memcpy
	.stabs	"_s:(0,19)",128,0,170,40
	.stabs	"_d:(0,19)",128,0,170,32
	.stabn	192,0,0,.LFBB14-.LFBB14
	.stabs	"i:(0,20)",128,0,171,48
	.stabn	192,0,0,.LBB3-.LFBB14
	.stabn	224,0,0,.LBE3-.LFBB14
	.stabn	224,0,0,.Lscope14-.LFBB14
.Lscope14:
	.stabs	"",36,0,0,.Lscope14-.LFBB14
	.stabs	"hal_retn_cpuid:F(0,20)",36,0,178,hal_retn_cpuid
	.globl	hal_retn_cpuid
	.type	hal_retn_cpuid, @function
hal_retn_cpuid:
	.stabn	68,0,179,.LM70-.LFBB15
.LM70:
.LFBB15:
.LFB46:
	.cfi_startproc
	endbr64
.L49:
	leaq	.L49(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L49, %r11
	addq	%r11, %rax
	.stabn	68,0,180,.LM71-.LFBB15
.LM71:
	movl	$0, %eax
	.stabn	68,0,181,.LM72-.LFBB15
.LM72:
	ret
	.cfi_endproc
.LFE46:
	.size	hal_retn_cpuid, .-hal_retn_cpuid
.Lscope15:
	.stabs	"",36,0,0,.Lscope15-.LFBB15
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
