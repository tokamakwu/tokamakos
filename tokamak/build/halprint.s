	.file	"halprint.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halprint.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.stabs	"kprint:F(0,1)=(0,1)",36,0,8,kprint
	.stabs	"void:t(0,1)",128,0,0,0
	.stabs	"fmt:p(0,2)=*(0,3)=k(0,4)=(0,5)=r(0,5);0;127;",160,0,8,8
	.stabs	"char_t:t(0,4)",128,0,24,0
	.stabs	"char:t(0,5)",128,0,0,0
	.globl	kprint
	.type	kprint, @function
kprint:
	.stabn	68,0,9,.LM0-.LFBB1
.LM0:
.LFBB1:
.LFB32:
	.cfi_startproc
	endbr64
	pushq	%r15
	.cfi_def_cfa_offset 16
	.cfi_offset 15, -16
	pushq	%rbx
	.cfi_def_cfa_offset 24
	.cfi_offset 3, -24
	subq	$744, %rsp
	.cfi_def_cfa_offset 768
.L5:
	leaq	.L5(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L5, %r11
	addq	%r11, %rbx
	movq	%rdi, 8(%rsp)
	movq	%rsi, 568(%rsp)
	movq	%rdx, 576(%rsp)
	movq	%rcx, 584(%rsp)
	movq	%r8, 592(%rsp)
	movq	%r9, 600(%rsp)
	testb	%al, %al
	je	.L4
	movaps	%xmm0, 608(%rsp)
	movaps	%xmm1, 624(%rsp)
	movaps	%xmm2, 640(%rsp)
	movaps	%xmm3, 656(%rsp)
	movaps	%xmm4, 672(%rsp)
	movaps	%xmm5, 688(%rsp)
	movaps	%xmm6, 704(%rsp)
	movaps	%xmm7, 720(%rsp)
.L4:
	.stabn	68,0,12,.LM1-.LFBB1
.LM1:
	movl	$8, 24(%rsp)
	movl	$48, 28(%rsp)
	leaq	768(%rsp), %rax
	movq	%rax, 32(%rsp)
	leaq	560(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,13,.LM2-.LFBB1
.LM2:
	leaq	24(%rsp), %rdx
	movq	8(%rsp), %rcx
	leaq	48(%rsp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$vsprintfk@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	.stabn	68,0,14,.LM3-.LFBB1
.LM3:
	leaq	48(%rsp), %rax
	movq	%rax, %rsi
	movabsq	$kdftgh@GOT, %rax
	movq	(%rbx,%rax), %rax
	movq	%rax, %rdi
	movq	%rbx, %r15
	movabsq	$gstr_write@PLTOFF, %rax
	addq	%rbx, %rax
	call	*%rax
	.stabn	68,0,16,.LM4-.LFBB1
.LM4:
	nop
	.stabn	68,0,17,.LM5-.LFBB1
.LM5:
	addq	$744, %rsp
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
	.size	kprint, .-kprint
	.stabs	"buf:(0,6)=ar(0,7)=@s64;r(0,7);0;01777777777777777777777;;0;00000000000000000000777;(0,4)",128,0,10,48
	.stabs	"ap:(0,8)=(0,9)=(0,10)=ar(0,7);0;0;(0,11)=xs__va_list_tag:",128,0,11,24
	.stabs	"va_list:t(0,8)",128,0,11,0
	.stabs	"__builtin_va_list:t(0,9)",128,0,0,0
	.stabs	"__va_list_tag:t(0,11)=s24gp_offset:(0,12)=r(0,12);0;037777777777;,0,32;fp_offset:(0,12),32,32;overflow_arg_area:(0,13)=*(0,1),64,64;reg_save_area:(0,13),128,64;;",128,0,0,0
	.stabs	"unsigned int:t(0,12)",128,0,0,0
	.stabn	192,0,0,.LFBB1-.LFBB1
	.stabn	224,0,0,.Lscope1-.LFBB1
.Lscope1:
	.stabs	"",36,0,0,.Lscope1-.LFBB1
	.stabs	"strcopyk:F(0,14)=*(0,4)",36,0,19,strcopyk
	.stabs	"buf:p(0,14)",160,0,19,8
	.stabs	"str_s:p(0,14)",160,0,19,0
	.globl	strcopyk
	.type	strcopyk, @function
strcopyk:
	.stabn	68,0,20,.LM6-.LFBB2
.LM6:
.LFBB2:
.LFB33:
	.cfi_startproc
	endbr64
	subq	$16, %rsp
	.cfi_def_cfa_offset 24
.L10:
	leaq	.L10(%rip), %rax
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L10, %r11
	addq	%r11, %rax
	movq	%rdi, 8(%rsp)
	movq	%rsi, (%rsp)
	.stabn	68,0,21,.LM7-.LFBB2
.LM7:
	jmp	.L7
.L8:
	.stabn	68,0,23,.LM8-.LFBB2
.LM8:
	movq	(%rsp), %rax
	movzbl	(%rax), %edx
	.stabn	68,0,23,.LM9-.LFBB2
.LM9:
	movq	8(%rsp), %rax
	movb	%dl, (%rax)
	.stabn	68,0,24,.LM10-.LFBB2
.LM10:
	addq	$1, 8(%rsp)
	.stabn	68,0,25,.LM11-.LFBB2
.LM11:
	addq	$1, (%rsp)
.L7:
	.stabn	68,0,21,.LM12-.LFBB2
.LM12:
	movq	(%rsp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L8
	.stabn	68,0,27,.LM13-.LFBB2
.LM13:
	movq	8(%rsp), %rax
	.stabn	68,0,28,.LM14-.LFBB2
.LM14:
	addq	$16, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE33:
	.size	strcopyk, .-strcopyk
.Lscope2:
	.stabs	"",36,0,0,.Lscope2-.LFBB2
	.stabs	"vsprintfk:F(0,1)",36,0,30,vsprintfk
	.stabs	"buf:p(0,14)",160,0,30,24
	.stabs	"fmt:p(0,2)",160,0,30,16
	.stabs	"args:p(0,15)=*(0,11)",160,0,30,8
	.globl	vsprintfk
	.type	vsprintfk, @function
vsprintfk:
	.stabn	68,0,31,.LM15-.LFBB3
.LM15:
.LFBB3:
.LFB34:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$48, %rsp
	.cfi_def_cfa_offset 64
.L26:
	leaq	.L26(%rip), %rbx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L26, %r11
	addq	%r11, %rbx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,32,.LM16-.LFBB3
.LM16:
	movq	24(%rsp), %rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,33,.LM17-.LFBB3
.LM17:
	jmp	.L12
.L24:
	.stabn	68,0,35,.LM18-.LFBB3
.LM18:
	movq	16(%rsp), %rax
	movzbl	(%rax), %eax
	.stabn	68,0,35,.LM19-.LFBB3
.LM19:
	cmpb	$37, %al
	je	.L13
	.stabn	68,0,37,.LM20-.LFBB3
.LM20:
	movq	16(%rsp), %rdx
	leaq	1(%rdx), %rax
	movq	%rax, 16(%rsp)
	.stabn	68,0,37,.LM21-.LFBB3
.LM21:
	movq	40(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 40(%rsp)
	.stabn	68,0,37,.LM22-.LFBB3
.LM22:
	movzbl	(%rdx), %edx
	.stabn	68,0,37,.LM23-.LFBB3
.LM23:
	movb	%dl, (%rax)
	.stabn	68,0,38,.LM24-.LFBB3
.LM24:
	jmp	.L12
.L13:
	.stabn	68,0,40,.LM25-.LFBB3
.LM25:
	addq	$1, 16(%rsp)
	.stabn	68,0,41,.LM26-.LFBB3
.LM26:
	movq	16(%rsp), %rax
	movzbl	(%rax), %eax
	movsbl	%al, %eax
	.stabn	68,0,41,.LM27-.LFBB3
.LM27:
	cmpl	$120, %eax
	je	.L14
	cmpl	$120, %eax
	jg	.L27
	cmpl	$100, %eax
	je	.L16
	cmpl	$115, %eax
	je	.L17
	jmp	.L15
.L14:
	.stabn	68,0,44,.LM28-.LFBB3
.LM28:
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L18
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	8(%rsp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	8(%rsp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L19
.L18:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 8(%rdx)
.L19:
	movq	(%rax), %rcx
	movq	40(%rsp), %rax
	movl	$16, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$numberk@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,45,.LM29-.LFBB3
.LM29:
	addq	$1, 16(%rsp)
	.stabn	68,0,46,.LM30-.LFBB3
.LM30:
	jmp	.L12
.L16:
	.stabn	68,0,48,.LM31-.LFBB3
.LM31:
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L20
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	8(%rsp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	8(%rsp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L21
.L20:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 8(%rdx)
.L21:
	movq	(%rax), %rcx
	movq	40(%rsp), %rax
	movl	$10, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	movabsq	$numberk@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,49,.LM32-.LFBB3
.LM32:
	addq	$1, 16(%rsp)
	.stabn	68,0,50,.LM33-.LFBB3
.LM33:
	jmp	.L12
.L17:
	.stabn	68,0,52,.LM34-.LFBB3
.LM34:
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	cmpl	$47, %eax
	ja	.L22
	movq	8(%rsp), %rax
	movq	16(%rax), %rdx
	movq	8(%rsp), %rax
	movl	(%rax), %eax
	movl	%eax, %eax
	addq	%rdx, %rax
	movq	8(%rsp), %rdx
	movl	(%rdx), %edx
	leal	8(%rdx), %ecx
	movq	8(%rsp), %rdx
	movl	%ecx, (%rdx)
	jmp	.L23
.L22:
	movq	8(%rsp), %rax
	movq	8(%rax), %rax
	leaq	8(%rax), %rcx
	movq	8(%rsp), %rdx
	movq	%rcx, 8(%rdx)
.L23:
	movq	(%rax), %rax
	.stabn	68,0,52,.LM35-.LFBB3
.LM35:
	movq	%rax, %rdx
	movq	40(%rsp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	movabsq	$strcopyk@GOTOFF, %rax
	leaq	(%rbx,%rax), %rax
	call	*%rax
	movq	%rax, 40(%rsp)
	.stabn	68,0,53,.LM36-.LFBB3
.LM36:
	addq	$1, 16(%rsp)
	.stabn	68,0,54,.LM37-.LFBB3
.LM37:
	jmp	.L12
.L15:
.L27:
	.stabn	68,0,56,.LM38-.LFBB3
.LM38:
	nop
.L12:
	.stabn	68,0,33,.LM39-.LFBB3
.LM39:
	movq	16(%rsp), %rax
	movzbl	(%rax), %eax
	testb	%al, %al
	jne	.L24
	.stabn	68,0,59,.LM40-.LFBB3
.LM40:
	movq	40(%rsp), %rax
	movb	$0, (%rax)
	.stabn	68,0,60,.LM41-.LFBB3
.LM41:
	nop
	.stabn	68,0,61,.LM42-.LFBB3
.LM42:
	addq	$48, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE34:
	.size	vsprintfk, .-vsprintfk
	.stabs	"p:(0,14)",128,0,32,40
	.stabn	192,0,0,.LFBB3-.LFBB3
	.stabn	224,0,0,.Lscope3-.LFBB3
.Lscope3:
	.stabs	"",36,0,0,.Lscope3-.LFBB3
	.section	.rodata
.LC0:
	.string	"0123456789abcdef"
	.text
	.stabs	"numberk:F(0,14)",36,0,63,numberk
	.stabs	"str:p(0,14)",160,0,63,16
	.stabs	"n:p(0,16)=(0,17)=@s64;r(0,17);0;01777777777777777777777;",160,0,63,8
	.stabs	"base:p(0,18)=(0,19)=@s64;r(0,19);01000000000000000000000;00777777777777777777777;",160,0,63,0
	.stabs	"uint_t:t(0,16)",128,0,17,0
	.stabs	"long unsigned int:t(0,17)",128,0,0,0
	.stabs	"sint_t:t(0,18)",128,0,16,0
	.stabs	"long int:t(0,19)",128,0,0,0
	.globl	numberk
	.type	numberk, @function
numberk:
	.stabn	68,0,64,.LM43-.LFBB4
.LM43:
.LFBB4:
.LFB35:
	.cfi_startproc
	endbr64
	pushq	%rbx
	.cfi_def_cfa_offset 16
	.cfi_offset 3, -16
	subq	$80, %rsp
	.cfi_def_cfa_offset 96
.L34:
	leaq	.L34(%rip), %rcx
	movabsq	$_GLOBAL_OFFSET_TABLE_-.L34, %r11
	addq	%r11, %rcx
	movq	%rdi, 24(%rsp)
	movq	%rsi, 16(%rsp)
	movq	%rdx, 8(%rsp)
	.stabn	68,0,67,.LM44-.LFBB4
.LM44:
	leaq	32(%rsp), %rax
	leaq	36(%rax), %rbx
	.stabn	68,0,68,.LM45-.LFBB4
.LM45:
	subq	$1, %rbx
	movb	$0, (%rbx)
	.stabn	68,0,70,.LM46-.LFBB4
.LM46:
	cmpq	$0, 16(%rsp)
	jne	.L29
	.stabn	68,0,72,.LM47-.LFBB4
.LM47:
	subq	$1, %rbx
	movb	$48, (%rbx)
	jmp	.L31
.L29:
	.stabn	68,0,78,.LM48-.LFBB4
.LM48:
	movq	8(%rsp), %rsi
	movq	16(%rsp), %rax
	movl	$0, %edx
	divq	%rsi
	.stabn	68,0,78,.LM49-.LFBB4
.LM49:
	subq	$1, %rbx
	.stabn	68,0,78,.LM50-.LFBB4
.LM50:
	movabsq	$.LC0@GOTOFF, %rax
	addq	%rcx, %rax
	movzbl	(%rax,%rdx), %eax
	.stabn	68,0,78,.LM51-.LFBB4
.LM51:
	movb	%al, (%rbx)
	.stabn	68,0,79,.LM52-.LFBB4
.LM52:
	movq	8(%rsp), %rdi
	movq	16(%rsp), %rax
	movl	$0, %edx
	divq	%rdi
	movq	%rax, 16(%rsp)
	.stabn	68,0,79,.LM53-.LFBB4
.LM53:
	cmpq	$0, 16(%rsp)
	jne	.L29
	.stabn	68,0,82,.LM54-.LFBB4
.LM54:
	jmp	.L31
.L32:
	.stabn	68,0,84,.LM55-.LFBB4
.LM55:
	movq	%rbx, %rdx
	leaq	1(%rdx), %rbx
	.stabn	68,0,84,.LM56-.LFBB4
.LM56:
	movq	24(%rsp), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, 24(%rsp)
	.stabn	68,0,84,.LM57-.LFBB4
.LM57:
	movzbl	(%rdx), %edx
	.stabn	68,0,84,.LM58-.LFBB4
.LM58:
	movb	%dl, (%rax)
.L31:
	.stabn	68,0,82,.LM59-.LFBB4
.LM59:
	movzbl	(%rbx), %eax
	.stabn	68,0,82,.LM60-.LFBB4
.LM60:
	testb	%al, %al
	jne	.L32
	.stabn	68,0,86,.LM61-.LFBB4
.LM61:
	movq	24(%rsp), %rax
	.stabn	68,0,87,.LM62-.LFBB4
.LM62:
	addq	$80, %rsp
	.cfi_def_cfa_offset 16
	popq	%rbx
	.cfi_restore 3
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE35:
	.size	numberk, .-numberk
	.stabs	"p:r(0,14)",64,0,65,3
	.stabs	"strbuf:(0,20)=ar(0,7);0;00000000000000000000043;(0,4)",128,0,66,24
	.stabn	192,0,0,.LFBB4-.LFBB4
	.stabn	224,0,0,.Lscope4-.LFBB4
.Lscope4:
	.stabs	"",36,0,0,.Lscope4-.LFBB4
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
