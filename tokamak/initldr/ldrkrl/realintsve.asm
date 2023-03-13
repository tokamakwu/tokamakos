%include "ldrasm.inc"
global _start
[section .text]
[bits 16]
_start:
_16_mode:
    ;; 此时还是在保护模式下, 描述符是在 ldrkrl32.asm 中设定的
    mov bp, 0x20 ;; 16位数据段选择子
    mov ds, bp
    mov es, bp
    mov ss, bp

    mov ebp, cr0 ;; 获取cr0的值
    and ebp, 0xfffffffe ;; CR0.P=0 关闭保护模式
    mov cr0, ebp ;; 关闭保护模式
    jmp 0:real_entry ;; 刷新CS影子寄存器, 真正进入实模式

real_entry:
    mov bp, cs
    ;; 重新设置段寄存器, 需要设置es, 因为BIOS中断调用会用到 es
    ;; 都是CS中值, 即为 0
    mov ds, bp
    mov es, bp
    mov ss, bp
    mov sp, 0x8000 ;; 设置栈

    ;; 准备调用函数
    mov bp, func_table
    add bp, ax
    call [bp] ;; 调用函数表中的汇编函数, ax是C函数中传递进来的

    ;; 准备再次进入保护模式, 为了安全, 再次关闭软中断和硬件中断
    cli
    call disable_nmi
    mov ebp, cr0
    or ebp, 1 ;; CR0.P=1
    mov cr0, ebp ;; 再一次开启保护模式

    ;; 还是利用之前设置的段描述符, 因为现在是平坦模式, 可以访问任意4G地址
    jmp dword 0x8:_32bit_mode

[bits 32] 
_32bit_mode:
    ;; 重新设置保护模式下的段寄存器, 0x10 是 32 位数据段描述符的索引
    mov bp, 0x10
    mov ds, bp
    ;; 为什么不需要还原 es 呢
    ;; mov es, bp
    mov ss, bp

    mov esi, [PM32_EIP_OFF]
    mov esp, [PM32_ESP_OFF]
    jmp esi ;; jmp会设置eip=esi, 即回到了 realadr_call_entry 函数中

[bits 16]
DispStr:
    mov bp, ax ;; ax 记录了需要显示的字符串的地址
    mov cx, 23
    mov ax, 0x1301
    mov bx, 0x0c
    mov dh, 10
    mov dl, 25
    mov bl, 15
    int 0x10
    ret

cleardisp: ;; 清屏
    mov ax, 0x600
    mov bx, 0x700
    mov cx, 0
    mov dx, 0x184f
    int 0x10
    ret

_getmap:
    push ds
    push es
    push ss
    mov esi, 0
    mov dword [E80MAP_NR], esi
    mov dword [E80MAP_ADRADR], E80MAP_ADR ;e820map结构体开始地址

    xor ebx, ebx
    mov edi, E80MAP_ADR
loop:
    mov eax, 0xe820 ;; 获取e820map结构参数
    mov ecx, 20 ;; e820map结构大小
    mov edx, 0x534d4150 ;; 获取e820map结构参数必须是这个数据
    int 0x15
    jc .1 ;; jmp if CF=1, CF=1 表示出错

    add edi, 20
    cmp edi, E80MAP_ADR + 0x1000 ;; 是否超过了4k大小
    jg .1 ;; 超过了 4k 大小, 出错

    inc esi ;; 增加1, 表示成功获取了一段内存信息
    cmp ebx, 0
    jne loop ;; 如果ebx=0, 表示已经获取完了内存结构信息
    
    jmp .2
.1:
    mov esi, 0 ;; 出错处理, 设置 e820map 结构数组元素个数为 0
.2:
    mov dword [E80MAP_NR], esi ;; 保存 e820map结构数组元素个数
    pop ss
    pop es
    pop ds
    ret

_read:
    push ds
    push es
    push ss
    xor eax, eax
    mov ah, 0x42
    mov dl, 0x80
    mov si, RWHDPACK_ADR
    int 0x13

    jc .error
    pop ss
    pop es
    pop ds
    ret
.error:
    mov ax, int13errmsg
    call DispStr
    jmp $
    pop ss
    pop es
    pop ds
    ret

_getvbemode:
    push es
    push ax
    push di

    mov di, VBEINFO_ADR ;; di=0x6000
    mov ax, 0
    mov es, ax ;; es:di -> buffer for SuperVGA information
    mov ax, 0x4f00 ;; al=0x0 VESA SuperVGA BIOS (VBE) - GET SuperVGA INFORMATION
    int 0x10

    cmp ax, 0x004f
    jz .ok

    mov ax, getvbmodeerrmsg
    call DispStr
    jmp $
.ok:
    pop di
    pop ax
    pop es
    ret

_getvbeonemodeinfo:
    push es
    push ax
    push di
    push cx

    mov di, VBEINFO_ADR
    mov ax, 0
    mov es, ax ;; es:di 256-byte buffer for mode information
    mov cx, 0x118 ;; CX = SuperVGA video mode
    mov ax, 0x4f01 ;; al=0x1 VESA SuperVGA BIOS - GET SuperVGA MODE INFORMATION
    int 0x10

    cmp ax, 0x004f
    jz .ok

    mov ax, getvbmodinfoeerrmsg
    call DispStr
    jmp $
.ok:
    pop cx
    pop di
    pop ax
    pop es
    ret

_setvbemode:
    push ax
    push bx

    mov ax, 0x4f02 ;; ah=4f, vbe 的功能入口, al=0x2 子功能号
    ;mov bx, 0x4118 ;; bx是设置显示模式, D15=0 清空内容
    mov bx, 0xc118 ;; bx是设置显示模式, D14寻找模式, =0窗口模式; D15=0 清空内容
    int 0x10

    cmp ax, 0x004f ;; 调用后的返回值存在 ax 中, ah=0x0表示调用成功, al=4f 子功能被支持
    jz .ok

    mov ax, setvbmodeerrmsg
    call DispStr
    jmp $
.ok:
    pop bx
    pop ax
    ret

disable_nmi:
    push ax
    in al, 0x70 ;; port 0x70 => NMI_EN_PORT
    or al, 0x80
    out 0x70, al
    pop ax
    ret

func_table: ;; 函数表
    dw _getmap ;; 获取内存布局视图的函数
    dw _read ;; 读取硬盘的函数
    dw _getvbemode ;; 获取显卡VBE模式 
    dw _getvbeonemodeinfo ;; 获取显卡VBE模式的数据
    dw _setvbemode ;; 设置显卡VBE模式
   
int13errmsg db 'int 13 read hdsk error', 0
getvbmodeerrmsg db "get vbemode err", 0
getvbmodinfoeerrmsg db "get vbemodeinfo err", 0
setvbmodeerrmsg db "set vbemode err", 0
