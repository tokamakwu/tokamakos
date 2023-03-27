#include "cmctl.h"

void inithead_entry()
{
    init_curs();
    close_curs();
    clear_screen(VGADP_DFVL); // 0x0700

    // 此时还处于字符模式下, 屏幕规格是: 80(列, x 坐标) * 25(行, y坐标)
    char_t buf[] = "loading Tokamak...";
    cursor_t *curp = kprint(buf);
    curp = kprint(buf);
    curp = kprint(buf);
    curp = kprint(buf);
    kprint("cur x=%d, cur y=%d\n", curp->x, curp->y);

    write_realintsvefile();
    write_ldrkrlfile();

    return;
}

void write_realintsvefile()
{
    fhdsc_t *fhdscp = find_file("initldrsve.bin");
    if (NULL == fhdscp)
    {
        error("not found initldrsve.bin");
    }
    // src -> dst
    m2mcopy((void *)((u32_t)(fhdscp->fhd_intsfsoff) + LDRFILEADR),
            (void *)REALDRV_PHYADR, (sint_t)fhdscp->fhd_frealsz);
    return;
}

fhdsc_t *find_file(char_t *fname)
{
    // 映像文件头描述符在 GRUB头后, 即需要跳过 4k
    mlosrddsc_t *imghdscp = (mlosrddsc_t *)(LDRFILEADR + 0x1000);
    if (imghdscp->mdc_endgic != MDC_ENDGIC ||
        imghdscp->mdc_rv != MDC_RVGIC ||
        imghdscp->mdc_fhdnr < 2 ||
        imghdscp->mdc_filnr < 2)
    {
        error("not valide image file");
    }

    fhdsc_t *fhdscp = (fhdsc_t *)((u32_t)(imghdscp->mdc_fhdbk_s) + LDRFILEADR);
    s64_t rethn = -1;
    for (u64_t i = 0; i < imghdscp->mdc_fhdnr; i++)
    {
        // 此处的 strcmpl 只会使用inithead.c 中定义的 strcmpl 函数, 不会用到 fs.c 中的 strcmpl
        // 原因是 在链接的时候没有用到 fs.o 文件
        if (strcmpl(fname, fhdscp[i].fhd_name) == 0)
        {
            rethn = (s64_t)i;
            goto ok;
        }
    }
    rethn = -1;
ok:
    if (rethn < 0)
    {
        error("not found file");
    }
    return &fhdscp[rethn];
}

void write_ldrkrlfile()
{
    fhdsc_t *fhdscp = find_file("initldrkrl.bin");
    if (NULL == fhdscp)
    {
        error("not found initldrkrl.bin");
    }

    // ILDRKRL_PHYADR 0x200000;  LDRFILEADR 0x4000000;
    m2mcopy((void *)((u32_t)fhdscp->fhd_intsfsoff + LDRFILEADR),
            (void *)ILDRKRL_PHYADR, (sint_t)fhdscp->fhd_frealsz);
    return;
}

void error(char_t *estr)
{
    // kprint 定义在 initldr/ldrkrl/vgastr.c 中
    kprint("INITLDR DIE ERROR:%s\n", estr);
    for (;;)
        ;
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