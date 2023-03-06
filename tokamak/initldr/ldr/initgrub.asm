MBT_HDR_FLAGS	EQU 0x00010003  ;; GRUBV1 Flag
MBT_HDR_MAGIC	EQU 0x1BADB002 ;; GRUBV1 Magic
MBT2_MAGIC	EQU 0xe85250d6  ;; GRUBV2 Magic

global _start
extern inithead_entry  ;; 外部符号, C函数定义的

[section .text]
[bits 32]
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
	dd _entry ;; GRUB 会跳转到此标号处执行
	;
	; multiboot header
	;

ALIGN 8
mbhdr:
	DD	MBT2_MAGIC
	DD	0
	DD	mhdrend - mbhdr
	DD	-(0xE85250D6 + 0 + (mhdrend - mbhdr))
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

_entry:
	cli ;; 关软件中断

    ;; 关不可屏蔽中断(硬件中断)
    in al, 0x70
    or al, 0x80
    out 0x70, al

    lgdt [GDT_PTR]
    jmp dword 0x80:_32bits_entry

_32bits_entry:
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
    xor edi, edi
    xor esi, esi
    xor ebp, ebp
    xor esp, esp
    mov esp, 0x7c00 ;; 设置栈顶
    call inithead_entry ;; 调用C函数

    jmp 0x20000 ;;跳转到物理地址 0x20000, 此时还未开启分页, 逻辑地址=物理地址

GDT_START:
    knull_dsc: dq 0
    ;; G=1(4k) D/B=1 L=0 AVL=0 P=1 DPL=00 S=1 Type=1110, 段基址:0, 段长度: fffff
    kcode_dsc: dq 0x00cf9e000000ffff ;; 平坦模型地址
    kdata_dsc: dq 0x00cf92000000ffff
    k16cd_dsc: dq 0x00009e000000ffff
    k16da_dsc: dq 0x000092000000ffff
GDT_END:
GDT_PTR:
    GDTLEN dw GDT_END - GDT_START - 1 ;; GDT长度
    GDTBASE dd GDT_START ;; GDT 基地址
