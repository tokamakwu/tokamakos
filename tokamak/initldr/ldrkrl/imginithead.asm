MBT_HDR_FLAGS EQU 0x00010003 ;; GRUBV1 FLAG
MBT_HDR_MAGIC EQU 0x1BADB002 ;; GRUBV1 魔数, 多引导协议头魔数
MBT2_MAGIC EQU 0xe85250d6 ;; GRUBV2 魔数, V2多引导协议头魔数

global _start
extern inithead_entry ;; 使用外部声明的变量, C函数中定义的函数名

[section .text] ;定义 .text 代码节
[bits 32] ;汇编成32位代码
;; GRUB 会将该文件加载到 _start 标号定义的地址处
;; _start 标号在链接脚本中进行了指定
_start:
	jmp _entry

align 4
mbt_hdr:
	dd MBT_HDR_MAGIC
	dd MBT_HDR_FLAGS
	dd -(MBT_HDR_MAGIC+MBT_HDR_FLAGS)
	dd mbt_hdr
	dd _start
	dd 0
	dd 0
	dd _entry
	;
	; multiboot header
	;
;以上是GRUB V1所需要的头

ALIGN 8
mbhdr:
	DD	MBT2_MAGIC
	DD	0
	DD	mhdrend - mbhdr
	DD	-(MBT2_MAGIC + 0 + (mhdrend - mbhdr))
	DW	2, 0
	DD	24
	DD	mbhdr
	DD	_start
	DD	0
	DD	0
	DW	3, 0
	DD	12
	DD	_entry 
	DD      0  
	DW	0, 0
	DD	8
mhdrend:
;以上是GRUB2所需要的头
;包含两个头是为了同时兼容GRUB、GRUB2

_entry:
	cli ;; 关软中断

	;; 关闭不可屏蔽中断(硬件中断)
	in al, 0x70
	or al, 0x80
	out 0x70, al

	lgdt [GDT_PTR]
	jmp dword 0x8:_32bit_mode

_32bit_mode:
	mov ax, 0x10 ;; 数据段选择子
	mov ds, ax
	mov es, ax
	mov fs, ax
	mov gs, ax
	mov ss, ax

	xor eax, eax
	xor ebx, ebx
	xor ecx, ecx
	xor edx, edx
	xor esi, esi
	xor edi, edi
	xor ebp, ebp
	xor esp, esp

	mov esp, 0x7c00
	call inithead_entry
	jmp 0x200000

GDT_START:
	;; 保护模式描述符
	knull dq 0

	;; G=1 粒度=4k, D(/B)=1(0:16bit sgement; 1:32bit segment), 
	;; L=0(IA32模式使用), AVL=0
	;; P=1, DPL=0, S=1(非系统段); 
	;Type = 1110(X=1(1: 可执行, 0:data), C=1(非一致性代码), R=1(可读), A=0)
	;; 1100(c), 1001 1110(9e)
	kcode dq 0x00cf9e000000ffff

	;; c=1100, 1001(P=1, DPL=0, S=1) 0010(X=0, E=0, W=1, A=0)
	kdata dq 0x00cf920000000fff

	k16cd dq 0x00009e0000000fff
	k16dt dq 0x0000920000000fff
GDT_END:

GDT_PTR:
	GDT_LEN dw GDT_END - GDT_START - 1 ;; GDT 长度(界限)
	GDT_BASE dd GDT_START