#include "cosmostypes.h"
#include "cosmosmctrl.h"

// 平台初始化函数
void init_halplaltform()
{
    // 复制机器信息结构
    init_machbstart();

    // 初始化图形显示驱动
    init_bdvideo();

    return;
}

void machbstart_t_init(machbstart_t *initp)
{
    // 清零
    memset(initp, 0, sizeof(machbstart_t));
    return;
}

void init_machbstart()
{
    machbstart_t *kmbsp = &kmachbsp;
    machbstart_t *smbsp = MBSPADR; // 物理地址1MB处
    machbstart_t_init(kmbsp);

    // 复制一份数据到内核中, 要把地址转换成虚拟地址
    // TODO: 虚拟地址没有搞明白? 进入内核前已经开启了长模式和分页管理
    memcopy((void *)phyadr_to_viradr((adr_t)smbsp),
            (void *)kmbsp, sizeof(machbstart_t));
    return;
}

// 将地址转换为虚拟地址
adr_t phyadr_to_viradr(adr_t kphyadr)
{
    if (kphyadr >= KRNL_MAP_PHYADDRESS_END) // 0x400000000
    {
        system_error("phyadr_to_viradr err\n");
        return KRNL_ADDR_ERROR; // 0xf800000000000
    }

    return kphyadr + KRNL_MAP_VIRTADDRESS_START; // 0xffff800000000000
}

adr_t viradr_to_phyadr(adr_t kviradr)
{
    if (kviradr < KRNL_MAP_VIRTADDRESS_START || kviradr > KRNL_MAP_VIRTADDRESS_END)
    {
        system_error("viradr_to_phyadr err\n");
        return KRNL_ADDR_ERROR;
    }
    return kviradr - KRNL_MAP_VIRTADDRESS_START;
}

void get_file_rvadrandsz(char_t *fname, machbstart_t *mbsp, u64_t *retadr, u64_t *retsz)
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

    padr = fhdsc->fhd_intsfsoff + phyadr_to_viradr((adr_t)mbsp->mb_imgpadr);
    fsz = fhdsc->fhd_frealsz;

    *retadr = padr;
    *retsz = fsz;
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

fhdsc_t *get_fileinfo(char_t *fname, machbstart_t *mbsp)
{
    mlosrddsc_t *mrddadrs = (mlosrddsc_t *)phyadr_to_viradr((adr_t)(mbsp->mb_imgpadr + MLOSDSC_OFF));
    if (mrddadrs->mdc_endgic != MDC_ENDGIC ||
        mrddadrs->mdc_rv != MDC_RVGIC ||
        mrddadrs->mdc_fhdnr < 2 ||
        mrddadrs->mdc_filnr < 2)
    {
        system_error("no mrddsc");
    }
    s64_t rethn = -1;
    fhdsc_t *fhdscstart = (fhdsc_t *)((uint_t)((mrddadrs->mdc_fhdbk_s) + (phyadr_to_viradr((adr_t)mbsp->mb_imgpadr))));

    for (u64_t i = 0; i < mrddadrs->mdc_fhdnr; i++)
    {
        if (strcmpl(fname, fhdscstart[i].fhd_name) == 0)
        {
            rethn = (s64_t)i;
            goto ok;
        }
    }
    rethn = -1;
ok:
    if (rethn < 0)
    {
        system_error("not find file");
    }
    return &fhdscstart[rethn];
}

// 检查两段内存是否有重叠
int adrzone_is_ok(u64_t sadr, u64_t slen, u64_t kadr, u64_t klen)
{
    if (kadr >= sadr && kadr <= (sadr + slen))
    {
        return -1;
    }

    if (kadr <= sadr && ((kadr + klen) >= sadr))
    {
        return -2;
    }

    return 0;
}
int initchkadr_is_ok(machbstart_t *mbsp, u64_t chkadr, u64_t cksz)
{
    // u64_t len=chkadr+cksz;
    if (adrzone_is_ok((mbsp->mb_krlinitstack - mbsp->mb_krlitstacksz), mbsp->mb_krlitstacksz, chkadr, cksz) != 0)
    {
        return -1;
    }
    if (adrzone_is_ok(mbsp->mb_imgpadr, mbsp->mb_imgsz, chkadr, cksz) != 0)
    {
        return -2;
    }
    if (adrzone_is_ok(mbsp->mb_krlimgpadr, mbsp->mb_krlsz, chkadr, cksz) != 0)
    {
        return -3;
    }
    if (adrzone_is_ok(mbsp->mb_bfontpadr, mbsp->mb_bfontsz, chkadr, cksz) != 0)
    {
        return -4;
    }
    if (adrzone_is_ok(mbsp->mb_e820padr, mbsp->mb_e820sz, chkadr, cksz) != 0)
    {
        return -5;
    }
    if (adrzone_is_ok(mbsp->mb_memznpadr, mbsp->mb_memznsz, chkadr, cksz) != 0)
    {
        return -6;
    }
    if (adrzone_is_ok(mbsp->mb_memmappadr, mbsp->mb_memmapsz, chkadr, cksz) != 0)
    {
        return -7;
    }
    if (adrzone_is_ok(mbsp->mb_e820expadr, mbsp->mb_e820exsz, chkadr, cksz) != 0)
    {
        return -8;
    }
    if ((chkadr + cksz) >= mbsp->mb_kpmapphymemsz)
    {
        return -9;
    }
    return 0;
}

#pragma GCC push_options
#pragma GCC optimize("O0")

void die(u32_t dt)
{
    u32_t dttt = dt, dtt = dt;
    if (dt == 0)
    {
        for (;;)
            ;
    }

    for (u32_t i = 0; i < dt; i++)
    {
        for (u32_t j = 0; j < dtt; j++)
        {
            for (u32_t k = 0; k < dttt; k++)
            {
                ;
            }
        }
    }

    return;
}

#pragma GCC pop_options