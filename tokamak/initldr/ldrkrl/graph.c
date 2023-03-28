#include "cmctl.h"

void write_pixcolor(machbstart_t *mbsp, u32_t x, u32_t y, pixl_t pix)
{
    u8_t *p24bas;
    if (mbsp->mb_ghparm.gh_onepixbits == 24)
    {
        u32_t p24adr = (x + (y * mbsp->mb_ghparm.gh_x)) * 3;
        p24bas = (u8_t *)(p24adr + mbsp->mb_ghparm.gh_framphyadr);
        p24bas[0] = (u8_t)(pix);
        p24bas[1] = (u8_t)(pix >> 8);
        p24bas[2] = (u8_t)(pix >> 16);
        return;
    }
    u32_t *phybas = (u32_t *)mbsp->mb_ghparm.gh_framphyadr;
    phybas[x + (y * mbsp->mb_ghparm.gh_x)] = pix;

    return;
}

void bmp_print(void *bmfile, machbstart_t *mbsp)
{
    if (NULL == bmfile)
    {
        return;
    }

    pixl_t pix = 0;
    bmdbgr_t *bpixp = NULL;
    // bmp 文件格式: 最开始是 bmfhead_t, 接着是 bitminfo_t, 其他, 图像信息
    bmfhead_t *bmphdp = (bmfhead_t *)bmfile;
    bitminfo_t *binfp = (bitminfo_t *)(bmphdp + 1);
    u32_t img = (u32_t)bmfile + bmphdp->bf_off; // 图像信息开始地址
    bpixp = (bmdbgr_t *)img;
    int l = 0;
    int k = 0;
    // TODO: 为什么这么计算: (宽 * 24 + 31) / 8 取整数部分
    int ilinebc = (((binfp->bi_w * 24) + 31) >> 5) << 2;
    // TODO: 循环为什么从 639开始, y 循环 510 次; 难道是因为图片是这么大吗
    for (int y = 639; y >= 129; y--, l++)
    {
        k = 0;
        // x = 322, 340次?
        for (int x = 322; x < 662; x++)
        {
            pix = BGRA(bpixp[k].bmd_r, bpixp[k].bmd_g, bpixp[k].bmd_b);
            write_pixcolor(mbsp, x, y, pix);
            k++;
        }
        bpixp = (bmdbgr_t *)(((int)bpixp) + ilinebc);
    }
    return;
}

void logo(machbstart_t *mbsp)
{
    u32_t retadr = 0, sz = 0;
    // 在映像文件中获取logo.bmp文件的地址和大小
    get_file_rpadrandsz("logo.bmp", mbsp, &retadr, &sz);
    if (0 == retadr)
    {
        kerror("logo getfilerpadrsz err");
    }

    // 显示logo文件中的图像数据
    bmp_print((void *)retadr, mbsp);

    return;
}

// 初始化圖形信息
void init_graph(machbstart_t *mbsp)
{
    // 初始化图形数据结构, 给 graph_t 结构初始化为0
    graph_t_init(&mbsp->mb_ghparm);

    // 获取VBE模式, 通过BIOS中断
    init_bgadevice(mbsp); // TODO: 已经设置gh_mode = BGAMODE, 这个if语句不会执行呀? 迷惑
    if (mbsp->mb_ghparm.gh_mode != BGAMODE)  // #define BGAMODE 3
    {
        // 获取VBE模式, 通过BIOS中断
        get_vbemode(mbsp);

        // 获取一个具体VBE模式的信息, 通过BIOS中断
        get_vbemodeinfo(mbsp);

        // 设置VBE模式, 通过BIOS中断
        set_vbemodeinfo();
    }

    init_kinitfvram(mbsp);
    logo(mbsp);
    return;
}

void graph_t_init(graph_t *initp)
{
    memset(initp, 0, sizeof(graph_t));
    return;
}

void init_kinitfvram(machbstart_t *mbsp)
{
    // #define KINITFRVM_PHYADR 0x800000
    mbsp->mb_fvrmphyadr = KINITFRVM_PHYADR;
    mbsp->mb_fvrmsz = KINITFRVM_SZ; // #define KINITFRVM_SZ 0x400000
    memset((void *)KINITFRVM_PHYADR, 0, KINITFRVM_SZ);

    return;
}

u32_t vfartolineadr(u32_t vfar)
{
    u32_t tmps = 0, sec = 0, off = 0;
    off = vfar & 0xffff;
    tmps = (vfar >> 16) & 0xffff;
    sec = tmps << 4;
    return (sec + off);
}

void get_vbemode(machbstart_t *mbsp)
{
    realadr_call_entry(RLINTNR(2), 0, 0);
    //#define VBEINFO_ADR 0x6000
    vbeinfo_t *vbeinfoptr = (vbeinfo_t *)VBEINFO_ADR;
    u16_t *mnm;

    if (vbeinfoptr->vbesignature[0] != 'V' ||
        vbeinfoptr->vbesignature[1] != 'E' ||
        vbeinfoptr->vbesignature[2] != 'S' ||
        vbeinfoptr->vbesignature[3] != 'A')
    {
        kerror("vbe is not VESA");
    }
    kprint("vbe vbever:%x\n", vbeinfoptr->vbeversion);

    if (vbeinfoptr->vbeversion < 0x0200)
    {
        kerror("vbe version not vbe3");
    }

    if (vbeinfoptr->videomodeptr > 0xffff)
    {
        mnm = (u16_t *)vfartolineadr(vbeinfoptr->videomodeptr); //
    }
    else
    {
        mnm = (u16_t *)(vbeinfoptr->videomodeptr);
    }

    int bm = 0;
    for (int i = 0; mnm[i] != 0xffff; i++)
    {
        if (mnm[i] == 0x118)
        {
            bm = 1;
        }
        if (i > 0x1000)
        {
            break;
        }
    }

    if (bm == 0)
    {
        kerror("getvbemode not 118");
    }
    mbsp->mb_ghparm.gh_mode = VBEMODE;  // #define VBEMODE 1
    mbsp->mb_ghparm.gh_vbemodenr = 0x118;
    mbsp->mb_ghparm.gh_vifphyadr = VBEINFO_ADR;  //#define VBEINFO_ADR 0x6000
    m2mcopy(vbeinfoptr, &mbsp->mb_ghparm.gh_vbeinfo, sizeof(vbeinfo_t));
    return;
}

void bga_write_reg(u16_t index, u16_t data)
{
    out_u16(VBE_DISPI_IOPORT_INDEX, index);
    out_u16(VBE_DISPI_IOPORT_DATA, data);
    return;
}

u16_t bga_read_reg(u16_t index)
{
    // VBE_DISPI_IOPORT_INDEX = 0x01CE
    out_u16(VBE_DISPI_IOPORT_INDEX, index);

    // VBE_DISPI_IOPORT_DATA = 0x01CF
    return in_u16(VBE_DISPI_IOPORT_DATA);
}

u32_t get_bgadevice()
{
    // VBE_DISPI_INDEX_ID = 0
    u16_t bgaid = bga_read_reg(VBE_DISPI_INDEX_ID);
    // BGA_DEV_ID0 = 0xB0C0 setting X and Y resolution and bit depth (8 BPP only), banked mode
    // BGA_DEV_ID5 = 0xB0C5 VRAM increased to 16 MB? [TODO: verify and check for other changes]
    if (BGA_DEV_ID0 <= bgaid && BGA_DEV_ID5 >= bgaid)
    {
        bga_write_reg(VBE_DISPI_INDEX_ID, bgaid);
        if (bga_read_reg(VBE_DISPI_INDEX_ID) != bgaid)
        {
            return 0;
        }
        return (u32_t)bgaid;
    }
    return 0;
}

u32_t chk_bgamaxver()
{
    // VBE_DISPI_INDEX_ID = 0, BGA_DEV_ID5 = 0xB0C5
    bga_write_reg(VBE_DISPI_INDEX_ID, BGA_DEV_ID5);
    if (bga_read_reg(VBE_DISPI_INDEX_ID) == BGA_DEV_ID5)
    {
        return (u32_t)BGA_DEV_ID5;
    }

    // #define BGA_DEV_ID4 (0xB0C4) //- VRAM increased to 8 MB
    bga_write_reg(VBE_DISPI_INDEX_ID, BGA_DEV_ID4);
    if (bga_read_reg(VBE_DISPI_INDEX_ID) == BGA_DEV_ID4)
    {
        return (u32_t)BGA_DEV_ID4;
    }

    // #define BGA_DEV_ID3 (0xB0C3) //- support for getting capabilities, support for using 8 bit DAC
    bga_write_reg(VBE_DISPI_INDEX_ID, BGA_DEV_ID3);
    if (bga_read_reg(VBE_DISPI_INDEX_ID) == BGA_DEV_ID3)
    {
        return (u32_t)BGA_DEV_ID3;
    }

    // #define BGA_DEV_ID2 (0xB0C2) //- 15, 16, 24 and 32 BPP modes, support for linear frame buffer, support for retaining memory contents on mode switching
    bga_write_reg(VBE_DISPI_INDEX_ID, BGA_DEV_ID2);
    if (bga_read_reg(VBE_DISPI_INDEX_ID) == BGA_DEV_ID2)
    {
        return (u32_t)BGA_DEV_ID2;
    }

    //#define BGA_DEV_ID1 (0xB0C1) //- virtual width and height, X and Y offset0
    bga_write_reg(VBE_DISPI_INDEX_ID, BGA_DEV_ID1);
    if (bga_read_reg(VBE_DISPI_INDEX_ID) == BGA_DEV_ID1)
    {
        return (u32_t)BGA_DEV_ID1;
    }

    //#define BGA_DEV_ID0 (0xB0C0) //- setting X and Y resolution and bit depth (8 BPP only), banked mode
    bga_write_reg(VBE_DISPI_INDEX_ID, BGA_DEV_ID0);
    if (bga_read_reg(VBE_DISPI_INDEX_ID) == BGA_DEV_ID0)
    {
        return (u32_t)BGA_DEV_ID0;
    }

    return 0;
}

void init_bgadevice(machbstart_t *mbsp)
{
    u32_t retdevid = get_bgadevice();
    if (0 == retdevid)
    {
        return;
    }

    retdevid = chk_bgamaxver();
    if (0 == retdevid)
    {
        return;
    }

    // bga_write_reg, bga_read_reg 操作: 端口号索引通过 0x01CE 进行, 数据写入通过端口 0x01CF
    //#define VBE_DISPI_INDEX_ENABLE (4), #define VBE_DISPI_DISABLED (0x00)
    bga_write_reg(VBE_DISPI_INDEX_ENABLE, VBE_DISPI_DISABLED); // 可解读为: 通过0x1ce选择4号寄存器, 设置其值为0

    //#define VBE_DISPI_INDEX_XRES (1)
    bga_write_reg(VBE_DISPI_INDEX_XRES, 1024);

    //#define VBE_DISPI_INDEX_YRES (2)
    bga_write_reg(VBE_DISPI_INDEX_YRES, 768);

    //#define VBE_DISPI_INDEX_BPP (3)
    bga_write_reg(VBE_DISPI_INDEX_BPP, 0x20);

    //#define VBE_DISPI_ENABLED (0x01), #define VBE_DISPI_LFB_ENABLED (0x40)
    bga_write_reg(VBE_DISPI_INDEX_ENABLE, VBE_DISPI_ENABLED | (VBE_DISPI_LFB_ENABLED));

    mbsp->mb_ghparm.gh_mode = BGAMODE; //#define BGAMODE 3
    mbsp->mb_ghparm.gh_vbemodenr = retdevid;
    mbsp->mb_ghparm.gh_x = 1024;
    mbsp->mb_ghparm.gh_y = 768;
    mbsp->mb_ghparm.gh_framphyadr = 0xe0000000;
    mbsp->mb_ghparm.gh_onepixbits = 0x20;
    mbsp->mb_ghparm.gh_bank = 4;
    mbsp->mb_ghparm.gh_curdipbnk = 0;
    mbsp->mb_ghparm.gh_nextbnk = 0;

    //TODO: gh_x * gh_x * 4 不应该是 gh_x * gh_y * 4 吗
    mbsp->mb_ghparm.gh_banksz = (mbsp->mb_ghparm.gh_x * mbsp->mb_ghparm.gh_x * 4);
    // test_bga();
    return;
}

void test_bga()
{
    int *p = (int *)(0xe0000000);
    int *p2 = (int *)(0xe0000000 + (1024 * 768 * 4));
    int *p3 = (int *)(0xe0000000 + (1024 * 768 * 4) * 2);

    for (int i = 0; i < (1024 * 768); i++)
    {
        p2[i] = 0x00ff00ff;
    }

    for (int i = 0; i < (1024 * 768); i++)
    {
        p[i] = 0x0000ff00;
    }

    for (int i = 0; i < (1024 * 768); i++)
    {
        p3[i] = 0x00ff0000;
    }

    for (;;)
    {
        bga_write_reg(VBE_DISPI_INDEX_X_OFFSET, 0);
        bga_write_reg(VBE_DISPI_INDEX_Y_OFFSET, 0);
        bga_write_reg(VBE_DISPI_INDEX_VIRT_WIDTH, 1024);
        bga_write_reg(VBE_DISPI_INDEX_VIRT_HEIGHT, 768);
        die(0x400);
        bga_write_reg(VBE_DISPI_INDEX_X_OFFSET, 0);
        bga_write_reg(VBE_DISPI_INDEX_Y_OFFSET, 768);
        bga_write_reg(VBE_DISPI_INDEX_VIRT_WIDTH, 1024);
        bga_write_reg(VBE_DISPI_INDEX_VIRT_HEIGHT, 768 * 2);
        die(0x400);
        bga_write_reg(VBE_DISPI_INDEX_X_OFFSET, 0);
        bga_write_reg(VBE_DISPI_INDEX_Y_OFFSET, 768 * 2);
        bga_write_reg(VBE_DISPI_INDEX_VIRT_WIDTH, 1024);
        bga_write_reg(VBE_DISPI_INDEX_VIRT_HEIGHT, 768 * 3);
        die(0x400);
    }

    for (;;)
        ;
    return;
}

void get_vbemodeinfo(machbstart_t *mbsp)
{
    realadr_call_entry(RLINTNR(3), 0, 0);
    vbeominfo_t *vomif = (vbeominfo_t *)VBEMINFO_ADR;  // #define VBEINFO_ADR 0x6400
    u32_t x = vomif->XResolution, y = vomif->YResolution;
    u32_t *phybass = (u32_t *)(vomif->PhysBasePtr);

    if (vomif->BitsPerPixel < 24)
    {
        kerror("vomif->BitsPerPixel!=32");
    }

    if (x != 1024 || y != 768)
    {
        kerror("xy not");
    }

    if ((u32_t)phybass < 0x100000)
    {
        kerror("phybass not");
    }

    mbsp->mb_ghparm.gh_x = vomif->XResolution;
    mbsp->mb_ghparm.gh_y = vomif->YResolution;
    mbsp->mb_ghparm.gh_framphyadr = vomif->PhysBasePtr;
    mbsp->mb_ghparm.gh_onepixbits = vomif->BitsPerPixel;
    mbsp->mb_ghparm.gh_vmifphyadr = VBEMINFO_ADR;
    m2mcopy(vomif, &mbsp->mb_ghparm.gh_vminfo, sizeof(vbeominfo_t));

    return;
}

void set_vbemodeinfo()
{
    realadr_call_entry(RLINTNR(4), 0, 0);
    return;
}

u32_t utf8_to_unicode(utf8_t *utfp, int *retuib)
{
    u8_t uhd = utfp->utf_b1, ubyt = 0;
    u32_t ucode = 0, tmpuc = 0;
    if (0x80 > uhd) // 0xbf && uhd <= 0xbf
    {
        ucode = utfp->utf_b1 & 0x7f;
        *retuib = 1;
        return ucode;
    }

    if (0xc0 <= uhd && uhd <= 0xdf) // 0xdf
    {
        ubyt = utfp->utf_b1 & 0x1f;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b2 & 0x3f;
        ucode = (tmpuc << 6) | ubyt;
        *retuib = 2;
        return ucode;
    }

    if (0xe0 <= uhd && uhd <= 0xef) // 0xef
    {
        ubyt = utfp->utf_b1 & 0x0f;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b2 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b3 & 0x3f;
        ucode = (tmpuc << 6) | ubyt;
        *retuib = 3;
        return ucode;
    }

    if (0xf0 <= uhd && uhd <= 0xf7) // 0xf7
    {
        ubyt = utfp->utf_b1 & 0x7;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b2 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b3 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b4 & 0x3f;
        ucode = (tmpuc << 6) | ubyt;
        *retuib = 4;
        return ucode;
    }

    if (0xf8 <= uhd && uhd <= 0xfb) // 0xfb
    {
        ubyt = utfp->utf_b1 & 0x3;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b2 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b3 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b4 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b5 & 0x3f;
        ucode = (tmpuc << 6) | ubyt;
        *retuib = 5;
        return ucode;
    }

    if (0xfc <= uhd && uhd <= 0xfd) // 0xfd
    {
        ubyt = utfp->utf_b1 & 0x1;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b2 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b3 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b4 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b5 & 0x3f;
        tmpuc <<= 6;
        tmpuc |= ubyt;
        ubyt = utfp->utf_b6 & 0x3f;
        ucode = (tmpuc << 6) | ubyt;
        *retuib = 6;
        return ucode;
    }
    *retuib = 0;

    return 0;
}
