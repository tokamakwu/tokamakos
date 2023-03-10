#include "cmctl.h"

__attribute__((section(".data"))) cursor_t curs;

void init_curs()
{
    curs.vmem_s = VGASTR_RAM_BASE;
    curs.vmem_e = VGASTR_RAM_END;
    curs.cvmemadr = 0;
    curs.x = 0;
    curs.y = 0;
    return;
}

void close_curs()
{
    // port=0x3d4, val=0xa
    out_u8(VGACTRL_REG_ADR, VGACURS_REG_INX);

    // port=0x3d5, val=0x20
    out_u8(VGACTRL_REG_DAT, VGACURS_CLOSE);
    return;
}

void clear_screen(u16_t srrv)
{
    curs.x = 0;
    curs.y = 0;

    u16_t *p = (u16_t *)VGASTR_RAM_BASE; // 0xb8000

    // 25 * 80 = 2000
    for (uint_t i = 0; i < 2001; i++)
    {
        p[i] = srrv;
    }

    close_curs();
    return;
}

// Cosmos 该函数只会将 str 中的多个\n当作一个\n处理, 且只会在末尾换行
void GxH_strwritev2(char_t *str, cursor_t *cursptr)
{
    uint_t straddr = cursptr->x + cursptr->y * 80 * 2;
    char_t *p_strdst = (char_t *)(cursptr->vmem_s + straddr);
    u32_t tfindx = FALSE;

    while (*str)
    {
        if (*str == 10)
        {
            tfindx = TRUE;
            str++;
            if (*str == 0)
            {
                break;
            }
        }

        current_curs(cursptr, VGACHAR_DF_CFLG);

        *p_strdst = *str++;
        p_strdst += 2;
    }

    if (tfindx == TRUE)
    {
        current_curs(cursptr, VGACHAR_LR_CFLG);
    }

    return;
}

// Tokamak
void GxH_strwrite(char_t *str, cursor_t *cursptr)
{
    uint_t straddr = (cursptr->x + cursptr->y * 80) * 2;
    char_t *p_strdst = (char_t *)(cursptr->vmem_s + straddr);

    while (*str)
    {
        if (*str == '\n')
        {
            // 换行显示, 每调用一次 current_curs, x 坐标都会 +2
            // 屏幕坐标系是: x 正方向 从左到右; y 正方向 从上到下;
            // 坐标原点是 左上角; 可理解为: 平时用的数学坐标系进行180度翻转
            current_curs(cursptr, VGACHAR_LR_CFLG); // 设置换行
            str++;
            if (*str == 0) // 到了字符串的结尾, 退出循环
            {
                break;
            }
            // 重新设置下一次需要显示的字符的位置
            straddr = (cursptr->x + cursptr->y * 80) * 2;
            p_strdst = (char_t *)(cursptr->vmem_s + straddr);
            continue;
        }
        current_curs(cursptr, VGACHAR_DF_CFLG);
        *p_strdst = *str++;
        p_strdst += 2;
    }
    return;
}

char_t *numberk(char_t *str, uint_t n, sint_t base)
{
    register char_t *p;
    char_t strbuf[36];
    p = &strbuf[36];
    *--p = 0;

    if (n == 0)
    {
        *--p = '0';
    }
    else
    {
        do
        {
            *--p = "0123456789abcdef"[n % base];
        } while (n /= base);
    }

    while (*p != 0)
    {
        *str++ = *p++;
    }
    return str;
}

void set_curs(u32_t x, u32_t y)
{
    curs.x = x;
    curs.y = y;
    return;
}

void put_one_char(char_t cr, uint_t x, uint_t y)
{
    char_t *p_strdst = (char_t *)(VGASTR_RAM_BASE + (x + (y * 80 * 2)));
    *p_strdst = cr;
    return;
}

char_t *strcopy(char_t *buf, char_t *str_s)
{
    while (*str_s)
    {
        *buf = *str_s;
        buf++;
        str_s++;
    }
    return buf;
}

void vsprintfk(char_t *buf, const char_t *fmt, va_list_t args)
{
    char_t *p = buf;
    // 此处仅仅是为了方便测试而添加的
    p[0] = 'g';
    p[1] = 'r';
    p[2] = 'u';
    p[3] = 'b';
    p[4] = ' ';
    p += 5;

    va_list_t next_arg = args;
    while (*fmt)
    {
        if (*fmt != '%')
        {
            *p++ = *fmt++;
            continue;
        }

        fmt++;
        switch (*fmt)
        {
        case 'x':
            p = numberk(p, *((long *)next_arg), 16);
            next_arg += sizeof(long);
            fmt++;
            break;

        case 'd':
            p = numberk(p, *((long *)next_arg), 10);
            next_arg += sizeof(long);
            fmt++;
            break;

        case 's':
            p = strcopy(p, (char_t *)(*((long *)next_arg)));
            next_arg += sizeof(long);
            fmt++;
            break;

        default:
            break;
        }
    }
    *p = 0; // 以 \0 结束字符串
    return;
}

cursor_t* kprint(const char_t *fmt, ...)
{
    char_t buf[512];

    // 准备好获取下一个参数
    va_list_t arg = (va_list_t)((char_t *)(&fmt) + sizeof(long));

    vsprintfk(buf, fmt, arg);
    GxH_strwrite(buf, &curs);

    return &curs;
}