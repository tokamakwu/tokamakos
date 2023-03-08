;; 定义了一些常量
%include "ldrasm.inc"
global _start
global realadr_call_entry
global IDT_PTR

extern ldrkrl_entry
[section .text]
[bits 32]
_start:
_entry:
    cli ;; 再次关闭软中断, 虽然之前也没有打开过软中断, 这是为了防御性编程

    lgdt [GDT_PTR]
    lidt [IDT_PTR]
    jmp 0x8: _32bit_mode

_32bit_mode:
    mov ax, 0x10
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
    mov esp, 0x90000
    
    call ldrkrl_entry

    ;; 0x2000000 存放的是内核代码
    jmp 0x2000000
    jmp $ ;; 防止返回后无处可去, 直接死循环

realadr_call_entry:
    pushad ;; 保存通用寄存器
    push ds
    push es
    push fs
    push gs
    
    ;; 将ip入栈, 即下一条指令的地址入栈(如果是段间调用, 会先入栈 cs, 然后入栈 ip)
    call save_eip_jmp
    
    pop gs
    pop fs
    pop es
    pop ds
    popad ;; 恢复通用寄存器
    ret

save_eip_jmp:
    pop esi ;; 弹出 call save_eip_jmp 时保存的 eip 到 esi 寄存器中
    mov [PM32_EIP_OFF], esi ;; 保存在 0x2000 的物理地址处
    mov [PM32_ESP_OFF], esp

    ;;长跳转, 把cpmty_mode处的第一个4字节装入eip, 把其后的2字节装入cs
    jmp dword far [cpmty_mode]

cpmty_mode:
    dd 0x1000 ;; 偏移位置, 0x1000 放的是16位代码
    dw 0x18 ;; 16位代码段选择子
    jmp $

GDT_START:
    knull_dsc dq 0
    ;; G=1, D/B=1, L=0, AVL=0
    ;; P=1, DPL=0, S=1, X=1,C=0,R=1,A=0
    ;; 可以尝试将 a 该为其他的值, 应该也不会有什么影响
    kcode_dsc dq 0x00cf9a000000ffff 
    kdata_dsc dq 0x00cf92000000ffff

    ;; 因为是16位代码段, 因此B(/D)位=0, G=0
    k16cd_dsc dq 0x00009a000000ffff ;; 16位代码段, 段限长设置为64k
    k16dt_dsc dq 0x000092000000ffff ;; 16位数据段, 段限长设置为64k
GDT_END:

GDT_PTR:
    GDT_LEN dw GDT_END - GDT_START - 1 ;; GDT 长度
    GDT_BASE dd GDT_START

;; 只设置了IDT的加载地址, 因为目前不会用到中断, 后续才会进行中断初始化
IDT_PTR:
    IDT_LEN dw 0x3ff
    IDT_BASE dd 0