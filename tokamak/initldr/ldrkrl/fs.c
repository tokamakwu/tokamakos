#include "cmctl.h"

void fs_entry()
{
    return;
}

int strcmpl(const char *a, const char *b)
{
    while (*b && *a && (*b == *a))
    {
        b++;
        a++;
    }

    return *b - *a;
}

// 获取指定文件名的 文件头描述符信息
fhdsc_t *get_fileinfo(char_t *fname, machbstart_t *mbsp)
{
    mlosrddsc_t *mrddadrs = (mlosrddsc_t *)((u32_t)(mbsp->mb_imgpadr + MLOSDSC_OFF));
    if (mrddadrs->mdc_endgic != MDC_ENDGIC ||
        mrddadrs->mdc_rv != MDC_RVGIC ||
        mrddadrs->mdc_fhdnr < 2 ||
        mrddadrs->mdc_filnr < 2)
    {
        kerror("no mrddsc");
    }

    s64_t rethn = -1;
    fhdsc_t *fhdscstart = (fhdsc_t *)((u32_t)(mrddadrs->mdc_fhdbk_s) + ((u32_t)(mbsp->mb_imgpadr)));

    for (u64_t i = 0; i < mrddadrs->mdc_fhdnr; i++)
    {
        if (strcmpl(fname, fhdscstart[i].fhd_name) == 0)
        {
            rethn = (s64_t)i;
            goto ok_l;
        }
    }
    rethn = -1;
ok_l:
    if (rethn < 0)
    {
        kerror("not find file");
    }
    return &fhdscstart[rethn];
}

// 主要负责判断一个地址空间是否和内存中存放的内容有冲突
int move_krlimg(machbstart_t *mbsp, u64_t cpyadr, u64_t cpysz)
{
    // 0xffffffff = 4G-1
    if (0xffffffff <= (cpyadr + cpysz) || 1 > cpysz)
    {
        return 0;
    }

    // 4K 对齐
    void *toadr = (void *)((u32_t)(P4K_ALIGN(cpyadr + cpysz)));
    sint_t tosz = (sint_t)mbsp->mb_imgsz; // 镜像文件的大小
    // 定义在 bstartparm.c 中
    // 判断需要使用的地址范围 与 镜像文件占用的地址 是否有重叠的部分
    // !0 表示区间有重叠
    if (0 != adrzone_is_ok(mbsp->mb_imgpadr, mbsp->mb_imgsz, cpyadr, cpysz))
    {
        // 映像文件的位置 与 内核栈之间有重叠, 先检测是否有可用的连续的内存
        if (NULL == chk_memsize((e820map_t *)((u32_t)(mbsp->mb_e820padr)),
                                (u32_t)mbsp->mb_e820nr,
                                (u64_t)((u32_t)toadr),
                                (u64_t)tosz))
        {
            return -1;
        }
        // 有可用的连续内存, 则移动数据: src-> dst,
        // 将整个映像文件移动到 (cpyadr + cpysz) 最近的一个4k位置处
        m2mcopy((void *)((u32_t)mbsp->mb_imgpadr), toadr, tosz);
        mbsp->mb_imgpadr = (u64_t)((u32_t)toadr);
// TODO: 目前是不会执行到这里的
#ifdef TK_DEBUG
        kerror("enter move_krlimg");
#endif
        return 1;
    }
    return 2;
}

// 设置内核文件
void init_krlfile(machbstart_t *mbsp)
{
    // IMGKRNL_PHYADR = 0x2000000, 将 Cosmos.bin(内核代碼) 复制到 0x2000000 处
    u64_t sz = r_file_to_padr(mbsp, IMGKRNL_PHYADR, "Cosmos.bin");
    if (0 == sz)
    {
        kerror("r_file_to_padr err");
    }

    // 放置完成后更新机器信息结构中的数据
    mbsp->mb_krlimgpadr = IMGKRNL_PHYADR;
    mbsp->mb_krlsz = sz;
    // mbsp->mb_nextwtpadr 始终要保持指向下一段空闲4k内存地址對齊的首地址
    mbsp->mb_nextwtpadr = P4K_ALIGN(mbsp->mb_krlimgpadr + mbsp->mb_krlsz);
    mbsp->mb_kalldendpadr = mbsp->mb_krlimgpadr + mbsp->mb_krlsz;
    return;
}

// 放置字库文件
void init_defutfont(machbstart_t *mbsp)
{
    u64_t sz = 0;

    // 获取下一段空闲内存空间的首地址
    u32_t dfadr = (u32_t)mbsp->mb_nextwtpadr;
    // 在映像中查找 font.fnt 文件, 并复制到对应的地址, 并返回文件的大小x
    sz = r_file_to_padr(mbsp, dfadr, "font.fnt");
    if (0 == sz)
    {
        kerror("r_file_to_padr err");
    }
    mbsp->mb_bfontpadr = (u64_t)(dfadr);
    mbsp->mb_bfontsz = sz;
    mbsp->mb_nextwtpadr = P4K_ALIGN((u32_t)(dfadr) + sz);
    mbsp->mb_kalldendpadr = mbsp->mb_bfontpadr + mbsp->mb_bfontsz;
    return;
}

// 获取指定文件名在内存中的地址和实际长度
void get_file_rpadrandsz(char_t *fname, machbstart_t *mbsp, u32_t *retadr, u32_t *retsz)
{
    u64_t padr = 0, fsz = 0;
    if (NULL == fname || NULL == mbsp)
    {
        *retadr = 0;
        return;
    }

    fhdsc_t *fhdsc = get_fileinfo(fname, mbsp);
    if (fhdsc == NULL)
    {
        *retadr = 0;
        return;
    }

    padr = fhdsc->fhd_intsfsoff + mbsp->mb_imgpadr;
    if (padr > 0xffffffff)
    {
        *retadr = 0;
        return;
    }

    fsz = (u32_t)fhdsc->fhd_frealsz;
    if (fsz > 0xffffffff)
    {
        *retadr = 0;
        return;
    }

    *retadr = (u32_t)padr;
    *retsz = (u32_t)fsz;
    return;
}

// 获取文件名对应的内容长度
u64_t get_filesz(char_t *filenm, machbstart_t *mbsp)
{
    if (filenm == NULL || mbsp == NULL)
    {
        return 0;
    }
    fhdsc_t *fhdscstart = get_fileinfo(filenm, mbsp);
    if (fhdscstart == NULL)
    {
        return 0;
    }
    return fhdscstart->fhd_frealsz;
}

// 先检测映像文件头描述符中的内容是否合法, 并设置内核初始信息中内核映射文件的地址以及大小
u64_t get_wt_imgfilesz(machbstart_t *mbsp)
{
    mlosrddsc_t *mrddadrs = MRDDSC_ADR;
    if (mrddadrs->mdc_endgic != MDC_ENDGIC ||
        mrddadrs->mdc_rv != MDC_RVGIC ||
        mrddadrs->mdc_fhdnr < 2 ||
        mrddadrs->mdc_filnr < 2)
    {
        return 0;
    }

    // grub头有4k大小 + 映像头描述符占 4k + 文件头描述符最少4k + 一个文件最小有4k, 至少有2个文件
    // 为什么至少有两个文件: 一个是 ldr.bin, 一个是 krl.bin 文件, 因此最少是 5k 大小
    if (mrddadrs->mdc_filbk_e < 0x4000)
    {
        return 0;
    }

    // u64_t retsz = LDRFILEADR; // 0x4000000
    // retsz += mrddadrs->mdc_filbk_e;
    // retsz -= LDRFILEADR;
    u64_t retsz = mrddadrs->mdc_filbk_e;
    mbsp->mb_imgpadr = LDRFILEADR;
    mbsp->mb_imgsz = retsz;
    return retsz;
}

// 将文件复制到指定的内存地址处
u64_t r_file_to_padr(machbstart_t *mbsp, u32_t f2adr, char_t *fnm)
{
    if (NULL == f2adr || NULL == fnm || NULL == mbsp)
    {
        return 0;
    }

    u32_t fpadr = 0, sz = 0;
    get_file_rpadrandsz(fnm, mbsp, &fpadr, &sz);
    if (0 == fpadr || 0 == sz)
    {
        return 0;
    }

    if (NULL == chk_memsize((e820map_t *)((u32_t)mbsp->mb_e820padr),
                            (u32_t)(mbsp->mb_e820nr), f2adr, sz))
    {
        return 0;
    }

    if (0 != chkadr_is_ok(mbsp, f2adr, sz))
    {
        return 0;
    }

    m2mcopy((void *)fpadr, (void *)f2adr, (sint_t)sz);
    return sz;
}

// 目前没有调用, 获取映像文件的实际大小
u64_t ret_imgfilesz()
{
    u64_t retsz = LDRFILEADR;
    mlosrddsc_t *mrddadrs = MRDDSC_ADR;
    if (mrddadrs->mdc_endgic != MDC_ENDGIC ||
        mrddadrs->mdc_rv != MDC_RVGIC ||
        mrddadrs->mdc_fhdnr < 2 ||
        mrddadrs->mdc_filnr < 2)
    {
        kerror("no mrddsc");
    }

    if (mrddadrs->mdc_filbk_e < 0x4000)
    {
        kerror("imgfile error");
    }

    retsz += mrddadrs->mdc_filbk_e;
    retsz -= LDRFILEADR;

    return retsz;
}
