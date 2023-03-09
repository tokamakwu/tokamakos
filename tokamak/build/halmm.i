# 0 "../hal/x86/halmm.c"
# 1 "/home/casper/myoscode/tokamakos/tokamak/build//"
# 0 "<built-in>"
# 0 "<command-line>"
# 1 "../hal/x86/halmm.c"
# 1 "../include/cosmostypes.h" 1
# 9 "../include/cosmostypes.h"
# 1 "../include/config.h" 1
# 10 "../include/cosmostypes.h" 2
# 1 "../include/bastypeinc/bastype.h" 1






# 1 "../include/bastypeinc/bastype_t.h" 1







typedef unsigned char u8_t;
typedef unsigned short u16_t;
typedef unsigned int u32_t;
typedef unsigned long u64_t;
typedef char s8_t;
typedef short s16_t;
typedef int s32_t;
typedef long s64_t;
typedef long sint_t;
typedef unsigned long uint_t;
typedef u64_t cpuflg_t;
typedef unsigned long adr_t;

typedef sint_t bool_t;
typedef u32_t dev_t;
typedef const char *str_t;
typedef char char_t;
typedef unsigned long drv_t;
typedef unsigned long mrv_t;
typedef sint_t drvstus_t;
typedef sint_t sysstus_t;
typedef sint_t hand_t;
typedef void *buf_t;
typedef unsigned long size_t;
typedef u32_t reg_t;

typedef void (*inthandler_t)();
typedef drv_t (*i_handle_t)(uint_t int_nr);
typedef drv_t (*f_handle_t)(uint_t int_nr, void *sframe);
typedef drvstus_t (*intflthandle_t)(uint_t ift_nr, void *device, void *sframe);
typedef u64_t mmstus_t;
# 8 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/list_t.h" 1
# 9 "../include/bastypeinc/list_t.h"
typedef struct s_LIST_H {
       struct s_LIST_H *prev,*next;
}list_h_t;

typedef struct s_TREE
{
 u16_t tr_type;
 u16_t tr_color;

 u64_t tr_hight;
 struct s_TREE* tr_left;
 struct s_TREE* tr_right;
 struct s_TREE* tr_paret;
 struct s_TREE* tr_subs;
}tree_t;
# 9 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/spinlock_t.h" 1
# 11 "../include/bastypeinc/spinlock_t.h"
typedef struct
{
  volatile u32_t lock;
} spinlock_t;
# 10 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/sem_t.h" 1
# 12 "../include/bastypeinc/sem_t.h"
typedef struct s_ATOMIC{
 volatile s32_t a_count;
}atomic_t;


typedef struct s_KWLST
{
    spinlock_t wl_lock;
    uint_t wl_tdnr;
    list_h_t wl_list;
}kwlst_t;

typedef struct s_SEM
{
 spinlock_t sem_lock;
 uint_t sem_flg;
 sint_t sem_count;
 kwlst_t sem_waitlst;
}sem_t;
typedef struct s_WAIT_L_HEAD
{
 list_h_t wlh_llist;
 spinlock_t wlh_lock;
 atomic_t wlh_count;
 void* wlh_privte;
 bool_t (*wlh_upfun)(u32_t func,struct s_WAIT_L_HEAD* wlhp);
}wait_l_head_t;

typedef struct s_WAIT_L
{
 list_h_t wl_hlist;
 u32_t wl_flags;
 void* wl_thead;
}wait_l_t;
# 11 "../include/bastypeinc/bastype.h" 2
# 1 "../include/bastypeinc/list.h" 1
# 9 "../include/bastypeinc/list.h"
static inline void list_init(list_h_t *list)
{
 list->prev = list;
 list->next = list;
 return;
}

static inline void __list_del(list_h_t *prev, list_h_t *next)
{
 next->prev = prev;
 prev->next = next;
 return;
}

static inline void __list_add(list_h_t *new, list_h_t *prev, list_h_t *next)
{
 next->prev = new;
 new->next = next;
 new->prev = prev;
 prev->next = new;
 return;
}

static inline void list_add(list_h_t *new, list_h_t *head)
{
 __list_add(new, head, head->next);
 return;
}

static inline void list_add_tail(list_h_t *new, list_h_t *head)
{
 __list_add(new, head->prev, head);
 return;
}

static inline void __list_del_entry(list_h_t *entry)
{
 __list_del(entry->prev, entry->next);
 return;
}

static inline void list_del(list_h_t *entry)
{
 __list_del(entry->prev, entry->next);
 list_init(entry);
 return;
}

static inline void list_move(list_h_t *list, list_h_t *head)
{
 list_del(list);
 list_add(list, head);
 return;
}
static inline void list_move_tail(list_h_t *list, list_h_t *head)
{
 list_del(list);
 list_add_tail(list, head);
 return;
}

static inline bool_t list_is_empty(const list_h_t *head)
{
 if (head->next == head)
 {
  return 1;
 }
 return 0;
}

static inline bool_t list_is_empty_careful(const list_h_t *head)
{
 list_h_t *next = head->next;
 if (next == head && next == head->prev)
 {
  return 1;
 }
 return 0;
}
# 12 "../include/bastypeinc/bastype.h" 2
# 11 "../include/cosmostypes.h" 2
# 1 "../include/halinc/haltypes.h" 1






# 1 "../include/halinc/halplatform_t.h" 1






# 1 "../include/halinc/bdvideo_t.h" 1







typedef struct s_VBEINFO
{
    char vbesignature[4];
    u16_t vbeversion;
    u32_t oemstringptr;
    u32_t capabilities;
    u32_t videomodeptr;
    u16_t totalmemory;
    u16_t oemsoftwarerev;
    u32_t oemvendornameptr;
    u32_t oemproductnameptr;
    u32_t oemproductrevptr;
    u8_t reserved[222];
    u8_t oemdata[256];
} __attribute__((packed)) vbeinfo_t;

typedef struct s_VBEOMINFO
{
    u16_t ModeAttributes;
    u8_t WinAAttributes;
    u8_t WinBAttributes;
    u16_t WinGranularity;
    u16_t WinSize;
    u16_t WinASegment;
    u16_t WinBSegment;
    u32_t WinFuncPtr;
    u16_t BytesPerScanLine;
    u16_t XResolution;
    u16_t YResolution;
    u8_t XCharSize;
    u8_t YCharSize;
    u8_t NumberOfPlanes;
    u8_t BitsPerPixel;
    u8_t NumberOfBanks;
    u8_t MemoryModel;
    u8_t BankSize;
    u8_t NumberOfImagePages;
    u8_t Reserved;
    u8_t RedMaskSize;
    u8_t RedFieldPosition;
    u8_t GreenMaskSize;
    u8_t GreenFieldPosition;
    u8_t BlueMaskSize;
    u8_t BlueFieldPosition;
    u8_t RsvdMaskSize;
    u8_t RsvdFieldPosition;
    u8_t DirectColorModeInfo;
    u32_t PhysBasePtr;
    u32_t Reserved1;
    u16_t Reserved2;
    u16_t LinBytesPerScanLine;
    u8_t BnkNumberOfImagePages;
    u8_t LinNumberOfImagePages;
    u8_t LinRedMaskSize;
    u8_t LinRedFieldPosition;
    u8_t LinGreenMaskSize;
    u8_t LinGreenFieldPosition;
    u8_t LinBlueMaskSize;
    u8_t LinBlueFieldPosition;
    u8_t LinRsvdMaskSize;
    u8_t LinRsvdFieldPosition;
    u32_t MaxPixelClock;
    u8_t Reserved3[189];
} __attribute__((packed)) vbeominfo_t;
# 83 "../include/halinc/bdvideo_t.h"
typedef u32_t pixl_t;




typedef struct s_GRAPH
{
    u32_t gh_mode;
    u32_t gh_x;
    u32_t gh_y;
    u32_t gh_framphyadr;
    u32_t gh_onepixbits;
    u32_t gh_vbemodenr;
    u32_t gh_vifphyadr;
    u32_t gh_vmifphyadr;
    u32_t gh_bank;
    u32_t gh_curdipbnk;
    u32_t gh_nextbnk;
    u32_t gh_banksz;
    u32_t gh_logophyadrs;
    u32_t gh_logophyadre;
    u32_t gh_fontadr;
    u32_t gh_ftsectadr;
    u32_t gh_ftsectnr;
    u32_t gh_fnthight;
    u32_t gh_nxtcharsx;
    u32_t gh_nxtcharsy;
    u32_t gh_linesz;
    vbeinfo_t gh_vbeinfo;
    vbeominfo_t gh_vminfo;
} __attribute__((packed)) graph_t;

typedef struct s_BMFHEAD
{
    u16_t bf_tag;
    u32_t bf_size;
    u16_t bf_resd1;
    u16_t bf_resd2;
    u32_t bf_off;
} __attribute__((packed)) bmfhead_t;

typedef struct s_BITMINFO
{
    u32_t bi_size;
    s32_t bi_w;
    s32_t bi_h;
    u16_t bi_planes;
    u16_t bi_bcount;
    u32_t bi_comp;
    u32_t bi_szimg;
    s32_t bi_xpelsper;
    s32_t bi_ypelsper;
    u32_t bi_clruserd;
    u32_t bi_clrimport;
} __attribute__((packed)) bitminfo_t;

typedef struct s_BMDBGR
{
    u8_t bmd_b;
    u8_t bmd_g;
    u8_t bmd_r;
} __attribute__((packed)) bmdbgr_t;

typedef struct s_UTF8
{
    u8_t utf_b1;
    u8_t utf_b2;
    u8_t utf_b3;
    u8_t utf_b4;
    u8_t utf_b5;
    u8_t utf_b6;
} __attribute__((packed)) utf8_t;

typedef struct s_FONTFHDER
{
    u8_t fh_mgic[4];
    u32_t fh_fsize;
    u8_t fh_sectnr;
    u8_t fh_fhght;
    u16_t fh_wcpflg;
    u16_t fh_nchars;
    u8_t fh_rev[2];
} __attribute__((packed)) fontfhder_t;

typedef struct s_FTSECTIF
{
    u16_t fsf_fistuc;
    u16_t fsf_lastuc;
    u32_t fsf_off;
} __attribute__((packed)) ftsectif_t;

typedef struct s_UFTINDX
{
    u32_t ui_choff : 26;
    u32_t ui_chwith : 6;
} __attribute__((packed)) uftindx_t;

typedef struct s_FNTDATA
{
    u8_t fntwxbyte;
    u8_t fnthx;
    u8_t fntwx;
    u8_t fntchmap[32];
} __attribute__((packed)) fntdata_t;



typedef struct s_DFTGHOPS
{

    size_t (*dgo_read)(void *ghpdev, void *outp, size_t rdsz);
    size_t (*dgo_write)(void *ghpdev, void *inp, size_t wesz);
    sint_t (*dgo_ioctrl)(void *ghpdev, void *outp, uint_t iocode);


    void (*dgo_flush)(void *ghpdev);
    sint_t (*dgo_set_bank)(void *ghpdev, sint_t bnr);


    pixl_t (*dgo_readpix)(void *ghpdev, uint_t x, uint_t y);
    void (*dgo_writepix)(void *ghpdev, pixl_t pix, uint_t x, uint_t y);

    pixl_t (*dgo_dxreadpix)(void *ghpdev, uint_t x, uint_t y);
    void (*dgo_dxwritepix)(void *ghpdev, pixl_t pix, uint_t x, uint_t y);


    sint_t (*dgo_set_xy)(void *ghpdev, uint_t x, uint_t y);
    sint_t (*dgo_set_vwh)(void *ghpdev, uint_t vwt, uint_t vhi);
    sint_t (*dgo_set_xyoffset)(void *ghpdev, uint_t xoff, uint_t yoff);


    sint_t (*dgo_get_xy)(void *ghpdev, uint_t *rx, uint_t *ry);
    sint_t (*dgo_get_vwh)(void *ghpdev, uint_t *rvwt, uint_t *rvhi);
    sint_t (*dgo_get_xyoffset)(void *ghpdev, uint_t *rxoff, uint_t *ryoff);

} dftghops_t;

typedef struct s_DFTGRAPH
{
    u64_t gh_mode;
    u64_t gh_x;
    u64_t gh_y;
    u64_t gh_framphyadr;
    u64_t gh_fvrmphyadr;
    u64_t gh_fvrmsz;
    u64_t gh_onepixbits;
    u64_t gh_onepixbyte;
    u64_t gh_vbemodenr;
    u64_t gh_bank;
    u64_t gh_curdipbnk;
    u64_t gh_nextbnk;
    u64_t gh_banksz;
    u64_t gh_fontadr;
    u64_t gh_fontsz;
    u64_t gh_fnthight;
    u64_t gh_nxtcharsx;
    u64_t gh_nxtcharsy;
    u64_t gh_linesz;
    pixl_t gh_deffontpx;
    u64_t gh_chardxw;
    u64_t gh_flush;
    u64_t gh_framnr;
    u64_t gh_fshdata;
    dftghops_t gh_opfun;
} dftgraph_t;
# 8 "../include/halinc/halplatform_t.h" 2
# 49 "../include/halinc/halplatform_t.h"
typedef struct s_MRSDP
{
    u64_t rp_sign;
    u8_t rp_chksum;
    u8_t rp_oemid[6];
    u8_t rp_revn;
    u32_t rp_rsdtphyadr;
    u32_t rp_len;
    u64_t rp_xsdtphyadr;
    u8_t rp_echksum;
    u8_t rp_resv[3];
} __attribute__((packed)) mrsdp_t;

typedef struct s_MACHBSTART
{
    u64_t mb_migc;
    u64_t mb_chksum;
    u64_t mb_krlinitstack;
    u64_t mb_krlitstacksz;
    u64_t mb_imgpadr;
    u64_t mb_imgsz;
    u64_t mb_krlimgpadr;
    u64_t mb_krlsz;
    u64_t mb_krlvec;
    u64_t mb_krlrunmode;
    u64_t mb_kalldendpadr;
    u64_t mb_ksepadrs;
    u64_t mb_ksepadre;
    u64_t mb_kservadrs;
    u64_t mb_kservadre;
    u64_t mb_nextwtpadr;
    u64_t mb_bfontpadr;
    u64_t mb_bfontsz;
    u64_t mb_fvrmphyadr;
    u64_t mb_fvrmsz;
    u64_t mb_cpumode;
    u64_t mb_memsz;
    u64_t mb_e820padr;
    u64_t mb_e820nr;
    u64_t mb_e820sz;
    u64_t mb_e820expadr;
    u64_t mb_e820exnr;
    u64_t mb_e820exsz;
    u64_t mb_memznpadr;
    u64_t mb_memznnr;
    u64_t mb_memznsz;
    u64_t mb_memznchksum;
    u64_t mb_memmappadr;
    u64_t mb_memmapnr;
    u64_t mb_memmapsz;
    u64_t mb_memmapchksum;
    u64_t mb_pml4padr;
    u64_t mb_subpageslen;
    u64_t mb_kpmapphymemsz;
    u64_t mb_ebdaphyadr;
    mrsdp_t mb_mrsdp;
    graph_t mb_ghparm;
} __attribute__((packed)) machbstart_t;
# 130 "../include/halinc/halplatform_t.h"
typedef struct s_e820
{
    u64_t saddr;
    u64_t lsize;
    u32_t type;
} __attribute__((packed)) e820map_t;

typedef struct s_fhdsc
{
    u64_t fhd_type;
    u64_t fhd_subtype;
    u64_t fhd_stuts;
    u64_t fhd_id;
    u64_t fhd_intsfsoff;
    u64_t fhd_intsfend;
    u64_t fhd_frealsz;
    u64_t fhd_fsum;
    char fhd_name[192];
} fhdsc_t;

typedef struct s_mlosrddsc
{
    u64_t mdc_mgic;
    u64_t mdc_sfsum;
    u64_t mdc_sfsoff;
    u64_t mdc_sfeoff;
    u64_t mdc_sfrlsz;
    u64_t mdc_ldrbk_s;
    u64_t mdc_ldrbk_e;
    u64_t mdc_ldrbk_rsz;
    u64_t mdc_ldrbk_sum;
    u64_t mdc_fhdbk_s;
    u64_t mdc_fhdbk_e;
    u64_t mdc_fhdbk_rsz;
    u64_t mdc_fhdbk_sum;
    u64_t mdc_filbk_s;
    u64_t mdc_filbk_e;
    u64_t mdc_filbk_rsz;
    u64_t mdc_filbk_sum;
    u64_t mdc_ldrcodenr;
    u64_t mdc_fhdnr;
    u64_t mdc_filnr;
    u64_t mdc_endgic;
    u64_t mdc_rv;
} mlosrddsc_t;
# 8 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/cpu_t.h" 1
# 11 "../include/halinc/cpu_t.h"
typedef struct s_INTSTKREGS
{
    reg_t rvsgs;
    reg_t rvsfs;
    reg_t rvses;
    reg_t rvsds;
    reg_t parmv7;
    reg_t parmv6;
    reg_t parmv5;
    reg_t parmv4;
    reg_t parmv3;
    reg_t parmv2;
    reg_t parmv1;
    reg_t rvseip;
    reg_t rvscs;
    reg_t rvseflags;
    reg_t rvsesp;
    reg_t rvsss;
}intstkregs_t;
# 9 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halcpuctrl_t.h" 1
# 10 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halmmu_t.h" 1
# 11 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halintupt_t.h" 1
# 11 "../include/halinc/halintupt_t.h"
typedef struct s_ILNEDSC
{
    u32_t ild_modflg;
    u32_t ild_devid;
    u32_t ild_physid;
    u32_t ild_clxsubinr;
} ilnedsc_t;

typedef struct s_INTFLTDSC
{
    spinlock_t i_lock;
    u32_t i_flg;
    u32_t i_stus;
    uint_t i_prity;
    uint_t i_irqnr;
    uint_t i_deep;
    u64_t i_indx;
    list_h_t i_serlist;
    uint_t i_sernr;
    list_h_t i_serthrdlst;
    uint_t i_serthrdnr;
    void *i_onethread;
    void *i_rbtreeroot;
    list_h_t i_serfisrlst;
    uint_t i_serfisrnr;
    void *i_msgmpool;
    void *i_privp;
    void *i_extp;
} intfltdsc_t;

typedef struct s_INTSERDSC
{
    list_h_t s_list;
    list_h_t s_indevlst;
    u32_t s_flg;
    intfltdsc_t *s_intfltp;
    void *s_device;
    uint_t s_indx;
    intflthandle_t s_handle;
} intserdsc_t;

typedef struct s_KITHREAD
{
    spinlock_t kit_lock;
    list_h_t kit_list;
    u32_t kit_flg;
    u32_t kit_stus;
    uint_t kit_prity;
    u64_t kit_scdidx;
    uint_t kit_runmode;
    uint_t kit_cpuid;
    u16_t kit_cs;
    u16_t kit_ss;
    uint_t kit_nxteip;
    uint_t kit_nxtesp;
    void *kit_stk;
    size_t kit_stksz;
    void *kit_runadr;
    void *kit_binmodadr;
    void *kit_mmdsc;
    void *kit_privp;
    void *kit_extp;
} kithread_t;
# 12 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halmm_t.h" 1
# 96 "../include/halinc/halmm_t.h"
typedef struct s_PHYMMARGE
{
    spinlock_t pmr_lock;
    u32_t pmr_type;
    u32_t pmr_stype;
    u32_t pmr_dtype;
    u32_t pmr_flgs;
    u32_t pmr_stus;
    u64_t pmr_saddr;
    u64_t pmr_lsize;
    u64_t pmr_end;


    u64_t pmr_rrvmsaddr;
    u64_t pmr_rrvmend;

    void *pmr_prip;
    void *pmr_extp;
} phymmarge_t;

typedef struct s_PHYADRSPCE
{
    u32_t ap_flgs;
    u32_t ap_devtype;
    adr_t ap_adrstart;
    adr_t ap_adrend;
} phyadrspce_t;

typedef struct s_MMAPDSC
{
    list_h_t map_list;
    spinlock_t map_lock;
    adr_t map_phyadr;
    adr_t map_phyadrend;
    u32_t map_allcount;
    u32_t map_flg;



} mmapdsc_t;
typedef struct s_ALCFRELST
{
    spinlock_t afl_lock;
    size_t afl_sz;
    list_h_t afl_fulllsth;
    list_h_t afl_emtplsth;
    list_h_t afl_fuemlsth;


} alcfrelst_t;
typedef struct s_PHYMEM
{
    list_h_t pmm_list;
    spinlock_t pmm_lock;
    uint_t freeblks;
    uint_t allcblks;
    alcfrelst_t pmm_sz_lsth[6];


} phymem_t;
# 13 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halmach_t.h" 1
# 14 "../include/halinc/haltypes.h" 2


# 1 "../include/halinc/halgdtidt_t.h" 1
# 96 "../include/halinc/halgdtidt_t.h"
typedef struct s_descriptor
{
 u16_t limit_low;
 u16_t base_low;
 u8_t base_mid;
 u8_t attr1;
 u8_t limit_high_attr2;
 u8_t base_high;
} __attribute__((packed)) descriptor_t;


typedef struct s_GATE
{
 u16_t offset_low;
 u16_t selector;




 u8_t dcount;
 u8_t attr;
 u16_t offset_high;
 u32_t offset_high_h;
 u32_t offset_resv;
} __attribute__((packed)) gate_t;

typedef struct s_GDTPTR
{
 u16_t gdtLen;
 u64_t gdtbass;
} __attribute__((packed)) igdtr_t;

typedef struct s_IDTPTR
{
 u16_t idtLen;
 u64_t idtbass;
} __attribute__((packed)) iidtr_t;

typedef struct s_X64TSS
{
 u32_t reserv0;
 u64_t rsp0;
 u64_t rsp1;
 u64_t rsp2;
 u64_t reserv28;
 u64_t ist[7];
 u64_t reserv92;
 u16_t reserv100;
 u16_t iobase;

} __attribute__((packed)) x64tss_t;
# 17 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/pages64_t.h" 1
# 57 "../include/halinc/pages64_t.h"
typedef struct s_KPML4
{
 u64_t p_val;
} __attribute__((packed)) kpml4_t;

typedef struct s_KPDPTE
{
 u64_t p_val;
} __attribute__((packed)) kpdpte_t;

typedef struct s_KPDE
{
 u64_t p_val;
} __attribute__((packed)) kpde_t;
# 18 "../include/halinc/haltypes.h" 2

# 1 "../include/halinc/memmgrtypes.h" 1







# 1 "../include/halinc/msadsc_t.h" 1
# 27 "../include/halinc/msadsc_t.h"
typedef struct s_MSADFLGS
{
 u32_t mf_olkty : 2;
 u32_t mf_lstty : 1;
 u32_t mf_mocty : 2;
 u32_t mf_marty : 3;
 u32_t mf_uindx : 24;
} __attribute__((packed)) msadflgs_t;
# 48 "../include/halinc/msadsc_t.h"
typedef struct s_PHYADRFLGS
{
 u64_t paf_alloc : 1;
 u64_t paf_shared : 1;
 u64_t paf_swap : 1;
 u64_t paf_cache : 1;
 u64_t paf_kmap : 1;
 u64_t paf_lock : 1;
 u64_t paf_dirty : 1;
 u64_t paf_busy : 1;
 u64_t paf_rv2 : 4;
 u64_t paf_padrs : 52;
} __attribute__((packed)) phyadrflgs_t;

typedef struct s_MSADSC
{
 list_h_t md_list;
 spinlock_t md_lock;
 msadflgs_t md_indxflgs;
 phyadrflgs_t md_phyadrs;
 void *md_odlink;
} __attribute__((packed)) msadsc_t;
# 9 "../include/halinc/memmgrtypes.h" 2
# 1 "../include/halinc/memarea_t.h" 1
# 10 "../include/halinc/memarea_t.h"
typedef struct s_ARCLST
{
 list_h_t al_lru1;
 list_h_t al_lru2;
 uint_t al_lru1nr;
 uint_t al_lru2nr;
} arclst_t;

typedef struct s_MMAFRETS
{
 msadsc_t *mat_fist;
 uint_t mat_sz;
 uint_t mat_phyadr;
 u16_t mat_runmode;
 u16_t mat_gen;
 u32_t mat_mask;
} __attribute__((packed)) mmafrets_t;

struct s_MEMAREA;
typedef struct s_MAFUNCOBJS
{
 mmstus_t (*mafo_init)(struct s_MEMAREA *memarea, void *valp, uint_t val);
 mmstus_t (*mafo_exit)(struct s_MEMAREA *memarea);
 mmstus_t (*mafo_aloc)(struct s_MEMAREA *memarea, mmafrets_t *mafrspack, void *valp, uint_t val);
 mmstus_t (*mafo_free)(struct s_MEMAREA *memarea, mmafrets_t *mafrspack, void *valp, uint_t val);
 mmstus_t (*mafo_recy)(struct s_MEMAREA *memarea, mmafrets_t *mafrspack, void *valp, uint_t val);

} mafuncobjs_t;





typedef struct s_BAFHLST
{
 spinlock_t af_lock;
 u32_t af_stus;
 uint_t af_oder;
 uint_t af_oderpnr;
 uint_t af_fobjnr;

 uint_t af_mobjnr;
 uint_t af_alcindx;
 uint_t af_freindx;
 list_h_t af_frelst;
 list_h_t af_alclst;
 list_h_t af_ovelst;
} bafhlst_t;




typedef struct s_MEMDIVMER
{
 spinlock_t dm_lock;
 u32_t dm_stus;
 uint_t dm_dmmaxindx;
 uint_t dm_phydmindx;
 uint_t dm_predmindx;
 uint_t dm_divnr;
 uint_t dm_mernr;


 bafhlst_t dm_mdmlielst[52];
 bafhlst_t dm_onemsalst;
} memdivmer_t;
# 93 "../include/halinc/memarea_t.h"
typedef struct s_MEMAREA
{
 list_h_t ma_list;
 spinlock_t ma_lock;
 uint_t ma_stus;
 uint_t ma_flgs;
 uint_t ma_type;
 sem_t ma_sem;
 wait_l_head_t ma_waitlst;
 uint_t ma_maxpages;
 uint_t ma_allocpages;
 uint_t ma_freepages;
 uint_t ma_resvpages;
 uint_t ma_horizline;
 adr_t ma_logicstart;
 adr_t ma_logicend;
 uint_t ma_logicsz;
 adr_t ma_effectstart;
 adr_t ma_effectend;
 uint_t ma_effectsz;
 list_h_t ma_allmsadsclst;
 uint_t ma_allmsadscnr;
 arclst_t ma_arcpglst;
 mafuncobjs_t ma_funcobj;
 memdivmer_t ma_mdmdata;
 void *ma_privp;






} memarea_t;
# 10 "../include/halinc/memmgrtypes.h" 2
# 1 "../include/halinc/memdivmer_t.h" 1
# 12 "../include/halinc/memdivmer_t.h"
typedef struct s_MCHKSTUC
{
 list_h_t mc_list;
 u64_t mc_phyadr;
 u64_t mc_viradr;
 u64_t mc_sz;
 u64_t mc_chkval;
 msadsc_t* mc_msa;
 u64_t* mc_chksadr;
 u64_t* mc_chkeadr;
}mchkstuc_t;
# 11 "../include/halinc/memmgrtypes.h" 2
# 1 "../include/halinc/kmsob_t.h" 1
# 15 "../include/halinc/kmsob_t.h"
typedef struct s_MSCLST
{
 uint_t ml_msanr;
 uint_t ml_ompnr;
 list_h_t ml_list;
}msclst_t;

typedef struct s_MSOMDC
{
 msclst_t mc_lst[(5)];
 uint_t mc_msanr;
 list_h_t mc_list;
 list_h_t mc_kmobinlst;
 uint_t mc_kmobinpnr;
}msomdc_t;

typedef struct s_FREOBJH
{
 list_h_t oh_list;
 uint_t oh_stus;
 void* oh_stat;
}freobjh_t;

typedef struct s_KMSOB
{
 list_h_t so_list;
 spinlock_t so_lock;
 uint_t so_stus;
 uint_t so_flgs;
 adr_t so_vstat;
 adr_t so_vend;
 size_t so_objsz;
 size_t so_objrelsz;
 uint_t so_mobjnr;
 uint_t so_fobjnr;
 list_h_t so_frelst;
 list_h_t so_alclst;
 list_h_t so_mextlst;
 uint_t so_mextnr;
 msomdc_t so_mc;
 void* so_privp;
 void* so_extdp;
}kmsob_t;

typedef struct s_KMBEXT
{
 list_h_t mt_list;
 adr_t mt_vstat;
 adr_t mt_vend;
 kmsob_t* mt_kmsb;
 uint_t mt_mobjnr;
}kmbext_t;



typedef struct s_KOBLST
{
 list_h_t ol_emplst;
 kmsob_t* ol_cahe;
 uint_t ol_emnr;
 size_t ol_sz;
}koblst_t;

typedef struct s_KMSOBMGRHED
{
 spinlock_t ks_lock;
 list_h_t ks_tclst;
 uint_t ks_tcnr;
 uint_t ks_msobnr;
 kmsob_t* ks_msobche;
 koblst_t ks_msoblst[(64)];
}kmsobmgrhed_t;

typedef struct s_KOBCKS
{
 list_h_t kk_list;
 void* kk_vadr;
 size_t kk_sz;
}kobcks_t;
# 12 "../include/halinc/memmgrtypes.h" 2
# 1 "../include/halinc/memmgrinit_t.h" 1






typedef struct s_MEMMGROB
{
 list_h_t mo_list;
 spinlock_t mo_lock;
 uint_t mo_stus;
 uint_t mo_flgs;
 sem_t mo_sem;
 u64_t mo_memsz;
 u64_t mo_maxpages;
 u64_t mo_freepages;
 u64_t mo_alocpages;
 u64_t mo_resvpages;
 u64_t mo_horizline;
 phymmarge_t *mo_pmagestat;
 u64_t mo_pmagenr;
 msadsc_t *mo_msadscstat;
 u64_t mo_msanr;
 memarea_t *mo_mareastat;
 u64_t mo_mareanr;
 kmsobmgrhed_t mo_kmsobmgr;
 void *mo_privp;
 void *mo_extp;
} memmgrob_t;
# 13 "../include/halinc/memmgrtypes.h" 2
# 20 "../include/halinc/haltypes.h" 2


# 1 "../include/halinc/halglobal_t.h" 1
# 23 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halinit_t.h" 1
# 24 "../include/halinc/haltypes.h" 2
# 1 "../include/halinc/halprint_t.h" 1
# 11 "../include/halinc/halprint_t.h"
typedef __builtin_va_list va_list;
# 25 "../include/halinc/haltypes.h" 2
# 12 "../include/cosmostypes.h" 2
# 1 "../include/knlinc/krltypes.h" 1







# 1 "../include/knlinc/krlsem_t.h" 1
# 9 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlintupt_t.h" 1
# 10 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlpagempol_t.h" 1
# 25 "../include/knlinc/krlpagempol_t.h"
typedef struct s_PGLMAP
{
    adr_t pgl_start;
    struct s_PGLMAP* pgl_next;
}pglmap_t;

typedef struct s_MPLHEAD
{
    spinlock_t mh_lock;
    list_h_t mh_list;
    uint_t mh_hedty;
    adr_t mh_start;
    adr_t mh_end;
    adr_t mh_firtfreadr;
    pglmap_t* mh_firtpmap;
    uint_t mh_objnr;
    uint_t mh_aliobsz;
    uint_t mh_objsz;
    uint_t mh_nxtpsz;
    uint_t mh_afindx;
    uint_t mh_pmnr;
    pglmap_t* mh_pmap;
}mplhead_t;

typedef struct s_MSAHEAD
{
    uint_t mlh_nr;
    list_h_t mlh_msalst;
}msahead_t;


typedef struct s_KMEMPOOL
{
    spinlock_t mp_lock;
    list_h_t mp_list;
    uint_t mp_stus;
    uint_t mp_flgs;
    spinlock_t mp_pglock;
    spinlock_t mp_oblock;
    uint_t mp_pgmplnr;
    uint_t mp_obmplnr;
    list_h_t mp_pgmplmheadl;
    list_h_t mp_obmplmheadl;
    mplhead_t* mp_pgmplmhcach;
    mplhead_t* mp_obmplmhcach;

    msahead_t mp_msalsthead[512];

}kmempool_t;
# 11 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlobjsmpol_t.h" 1
# 13 "../include/knlinc/krlobjsmpol_t.h"
typedef struct s_OLCFGDAT
{
    size_t ocd_objsz;
    size_t ocd_nmpsz;
}olcfgdat_t;

typedef struct s_OBJMGRHEAD
{
    list_h_t omh_list;
    struct s_OBJALST* omh_paralst;
    size_t omh_objsz;
    size_t omh_aligobjsz;
    size_t omh_npinobjsz;
    uint_t omh_objnr;
    uint_t omh_alfrindx;
    adr_t omh_start;
    adr_t omh_end;
    adr_t omh_freeobjp;

}objmgrhead_t;



typedef struct s_OBJALST
{
    list_h_t oal_list;
    list_h_t oal_emplist;
    olcfgdat_t* oal_cfgmsz;
    uint_t oal_emplstnr;
    uint_t oal_lstnr;
    objmgrhead_t* oal_omhcahe;
}objalst_t;

typedef struct s_OBJMPLCTRL
{
    spinlock_t omc_lock;
    objalst_t* omc_alstcahe;

    objalst_t omc_alclst[15];
}objmplctrl_t;
# 12 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlmm_t.h" 1
# 13 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlinit_t.h" 1
# 14 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krltime_t.h" 1
# 9 "../include/knlinc/krltime_t.h"
typedef struct s_KTIME
{
    spinlock_t kt_lock;
    uint_t kt_year;
    uint_t kt_mon;
    uint_t kt_day;
    uint_t kt_date;
    uint_t kt_hour;
    uint_t kt_min;
    uint_t kt_sec;
    void* kt_datap;

}ktime_t;

typedef struct s_TIME
{

    uint_t year;
    uint_t mon;
    uint_t day;
    uint_t date;
    uint_t hour;
    uint_t min;
    uint_t sec;

}time_t;
# 15 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlglobal_t.h" 1
# 16 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlobjnode_t.h" 1
# 9 "../include/knlinc/krlobjnode_t.h"
typedef struct s_OBJNODE
{
    spinlock_t on_lock;
    list_h_t on_list;
    sem_t on_complesem;
    uint_t on_flgs;
    uint_t on_stus;
    sint_t on_opercode;
    uint_t on_objtype;
    void* on_objadr;
    uint_t on_acsflgs;
    uint_t on_acsstus;
    uint_t on_currops;
    uint_t on_len;
    uint_t on_ioctrd;
    buf_t on_buf;
    uint_t on_bufcurops;
    size_t on_bufsz;
    uint_t on_count;
    void* on_safedsc;
    void* on_fname;
    void* on_finode;
    void* on_extp;
}objnode_t;
# 17 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlthread_t.h" 1
# 49 "../include/knlinc/krlthread_t.h"
typedef struct s_MICRSTK
{
    uint_t msk_val[4];
}micrstk_t;



typedef struct s_CONTEXT
{

    reg_t ctx_usrsp;
    reg_t ctx_svcsp;
    reg_t ctx_svcspsr;
    reg_t ctx_cpsr;
    reg_t ctx_lr;

    reg_t ctx_nxteip;
    reg_t ctx_nxtesp;
    reg_t ctx_nxtss;
    reg_t ctx_nxtcs;
    x64tss_t* ctx_nxttss;






}context_t;
typedef struct s_THREAD
{
    spinlock_t td_lock;
    list_h_t td_list;
    uint_t td_flgs;
    uint_t td_stus;
    uint_t td_cpuid;
    uint_t td_id;
    uint_t td_tick;
    uint_t td_privilege;
    uint_t td_priority;
    uint_t td_runmode;
    adr_t td_krlstktop;
    adr_t td_krlstkstart;

    adr_t td_usrstktop;
    adr_t td_usrstkstart;
    void* td_mmdsc;
    void* td_resdsc;
    void* td_privtep;
    void* td_extdatap;

    context_t td_context;
    objnode_t* td_handtbl[8];
}thread_t;
# 18 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsched_t.h" 1
# 20 "../include/knlinc/krlsched_t.h"
typedef struct s_THRDLST
{
    list_h_t tdl_lsth;
    thread_t* tdl_curruntd;
    uint_t tdl_nr;
}thrdlst_t;
typedef struct s_SCHDATA
{
    spinlock_t sda_lock;
    uint_t sda_cpuid;
    uint_t sda_schdflgs;
    uint_t sda_premptidx;
    uint_t sda_threadnr;
    uint_t sda_prityidx;
    thread_t* sda_cpuidle;
    thread_t* sda_currtd;
    thrdlst_t sda_thdlst[64];
}schdata_t;

typedef struct s_SCHEDCALSS
{
    spinlock_t scls_lock;
    uint_t scls_cpunr;
    uint_t scls_threadnr;
    uint_t scls_threadid_inc;
    schdata_t scls_schda[1];
}schedclass_t;
# 19 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlwaitlist_t.h" 1
# 20 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlcpuidle_t.h" 1
# 21 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krldevice_t.h" 1
# 73 "../include/knlinc/krldevice_t.h"
typedef struct s_DEVID
{
    uint_t dev_mtype;
    uint_t dev_stype;
    uint_t dev_nr;
}devid_t;

typedef struct s_DEVTLST
{
    uint_t dtl_type;
    uint_t dtl_nr;
    list_h_t dtl_list;
}devtlst_t;



typedef struct s_DEVTABLE
{
    list_h_t devt_list;
    spinlock_t devt_lock;
    list_h_t devt_devlist;
    list_h_t devt_drvlist;
    uint_t devt_devnr;
    uint_t devt_drvnr;
    devtlst_t devt_devclsl[33];
}devtable_t;




typedef struct s_DEVICE
{
    list_h_t dev_list;
    list_h_t dev_indrvlst;
    list_h_t dev_intbllst;
    spinlock_t dev_lock;
    uint_t dev_count;
    sem_t dev_sem;
    uint_t dev_stus;
    uint_t dev_flgs;
    devid_t dev_id;
    uint_t dev_intlnenr;
    list_h_t dev_intserlst;
    list_h_t dev_rqlist;
    uint_t dev_rqlnr;
    sem_t dev_waitints;
    struct s_DRIVER* dev_drv;
    void* dev_attrb;
    void* dev_privdata;
    void* dev_userdata;
    void* dev_extdata;
    char_t* dev_name;
}device_t;


typedef drvstus_t (*drivcallfun_t)(device_t*,void*);
typedef drvstus_t (*drventyexit_t)(struct s_DRIVER*,uint_t,void*);
typedef struct s_DRIVER
{
    spinlock_t drv_lock;
    list_h_t drv_list;
    uint_t drv_stuts;
    uint_t drv_flg;
    uint_t drv_id;
    uint_t drv_count;
    sem_t drv_sem;
    void* drv_safedsc;
    void* drv_attrb;
    void* drv_privdata;
    drivcallfun_t drv_dipfun[12];
    list_h_t drv_alldevlist;
    drventyexit_t drv_entry;
    drventyexit_t drv_exit;
    void* drv_userdata;
    void* drv_extdata;
    char_t* drv_name;
}driver_t;
# 22 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlspinlock_t.h" 1
# 23 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlservice_t.h" 1
# 40 "../include/knlinc/krlservice_t.h"
typedef struct s_STKPARAME
{
    reg_t rvsgs;
    reg_t rvsfs;
    reg_t rvses;
    reg_t rvsds;
    reg_t parmv7;
    reg_t parmv6;
    reg_t parmv5;
    reg_t parmv4;
    reg_t parmv3;
    reg_t parmv2;
    reg_t parmv1;
    reg_t rvseip;
    reg_t rvscs;
    reg_t rvseflags;
    reg_t rvsesp;
    reg_t rvsss;
}stkparame_t;


typedef sysstus_t (*syscall_t)(uint_t swinr,stkparame_t* stkparm);
# 24 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvemm_t.h" 1
# 25 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvethread_t.h" 1
# 26 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveopen_t.h" 1
# 27 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveclose_t.h" 1
# 28 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveread_t.h" 1
# 29 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvewrite_t.h" 1
# 30 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsveioctrl_t.h" 1
# 31 "../include/knlinc/krltypes.h" 2
# 1 "../include/knlinc/krlsvelseek_t.h" 1
# 32 "../include/knlinc/krltypes.h" 2
# 13 "../include/cosmostypes.h" 2
# 2 "../hal/x86/halmm.c" 2
# 1 "../include/cosmosmctrl.h" 1







# 1 "../include/halinc/halheads.h" 1







# 1 "../include/halinc/link.h" 1
# 9 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halplatform.h" 1






adr_t viradr_to_phyadr(adr_t kviradr);
adr_t phyadr_to_viradr(adr_t kphyadr);
void machbstart_t_init(machbstart_t *initp);
void init_machbstart();
void init_halplaltform();
fhdsc_t *get_fileinfo(char_t *fname, machbstart_t *mbsp);
void get_file_rvadrandsz(char_t *fname, machbstart_t *mbsp, u64_t *retadr, u64_t *retsz);
void move_img2maxpadr(machbstart_t *mbsp);
int adrzone_is_ok(u64_t sadr, u64_t slen, u64_t kadr, u64_t klen);
int initchkadr_is_ok(machbstart_t *mbsp, u64_t chkadr, u64_t cksz);
int strcmpl(const char *a, const char *b);
# 10 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/cpu.h" 1
# 11 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halcpuctrl.h" 1
# 9 "../include/halinc/halcpuctrl.h"
void hal_disable_fiq();
void hal_enable_fiq();
void hal_disable_irq();
void hal_enable_irq();
void hal_disable_irqfiq();
void hal_enable_irqfiq();
void hal_disablefiq_savecpuflg(cpuflg_t* cpuflg);
void hal_enablefiq_restcpuflg(cpuflg_t* cpuflg);
void hal_disableirq_savecpuflg(cpuflg_t* cpuflg);
void hal_enableirq_restcpuflg(cpuflg_t* cpuflg);
void hal_disableirqfiq_savecpuflg(cpuflg_t* cpuflg);
void hal_enableirqfiq_restcpuflg(cpuflg_t* cpuflg);
u32_t hal_read_currmodesp();
cpuflg_t hal_read_cpuflg();
void hal_write_cpuflg(cpuflg_t cpuflg);
uint_t hal_read_ipsr();
void hal_swhmodset_sp_rscurmod(uint_t cpumod,reg_t sp);
cpuflg_t hal_read_scpuflg();
void hal_write_scpuflg(cpuflg_t scpuflg);
void hal_cpumode_switch(uint_t mode);
uint_t hal_cpumodeswitch_retoldmode(uint_t mode);
u8_t hal_io8_read(uint_t ioadr);
u16_t hal_io16_read(uint_t ioadr);
u32_t hal_io32_read(uint_t ioadr);
void hal_io8_write(uint_t ioadr,u8_t val);
void hal_io16_write(uint_t ioadr,u16_t val);
void hal_io32_write(uint_t ioadr,u32_t val);
void hal_spinlock_init(spinlock_t* lock);
void hal_spinlock_lock(spinlock_t* lock);
void hal_spinlock_unlock(spinlock_t* lock);
void hal_spinlock_saveflg_cli(spinlock_t* lock, cpuflg_t* cpuflg);
void hal_spinunlock_restflg_sti(spinlock_t* lock, cpuflg_t* cpuflg);
void knl_spinlock_init(spinlock_t* lock);
void knl_spinlock_lock(spinlock_t* lock);
void knl_spinlock_unlock(spinlock_t* lock);
void knl_spinlock_cli(spinlock_t* lock, cpuflg_t* cpuflg);
void knl_spinunlock_sti(spinlock_t* lock, cpuflg_t* cpuflg);
void hal_memset(void* setp,size_t n,u8_t setval);
void hal_memcpy(void* src,void* dst,size_t n);
void hal_sysdie(char_t* errmsg);
void system_error(char_t* errmsg);
uint_t hal_retn_cpuid();
# 12 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halmmu.h" 1







void hal_disable_cache();
u32_t cp15_read_c5();
u32_t cp15_read_c6();
u32_t hal_read_cp15regs(uint_t regnr);
# 13 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halintupt.h" 1
# 10 "../include/halinc/halintupt.h"
void intfltdsc_t_init(intfltdsc_t* initp,u32_t flg,u32_t sts,uint_t prity,uint_t irq);
void init_intfltdsc();
 void init_halintupt();
 intfltdsc_t* hal_retn_intfltdsc(uint_t irqnr);
void intserdsc_t_init(intserdsc_t* initp , u32_t flg,intfltdsc_t* intfltp,void* device,intflthandle_t handle);
bool_t hal_add_ihandle(intfltdsc_t* intdscp,intserdsc_t* serdscp);
drvstus_t hal_enable_intline(uint_t ifdnr);
drvstus_t hal_disable_intline(uint_t ifdnr);
drvstus_t hal_intflt_default(uint_t ift_nr,void* sframe);
# 14 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halmm.h" 1
# 10 "../include/halinc/halmm.h"
 void phymmarge_t_init(phymmarge_t *initp);
 void ret_phymmarge_adrandsz(machbstart_t *mbsp, phymmarge_t **retpmrvadr, u64_t *retpmrsz);
 bool_t init_one_pmrge(e820map_t *e8p, phymmarge_t *pmargep);
void phymmarge_swap(phymmarge_t *s, phymmarge_t *d);
void phymmarge_sort(phymmarge_t *argp, u64_t nr);
 u64_t initpmrge_core(e820map_t *e8sp, u64_t e8nr, phymmarge_t *pmargesp);

 void init_phymmarge();
void init_halmm();
# 15 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halmach.h" 1
# 16 "../include/halinc/halheads.h" 2

# 1 "../include/halinc/io.h" 1
# 78 "../include/halinc/io.h"
static inline void out_u8(const u16_t port, const u8_t val)
{

    __asm__ __volatile__("outb  %1, %0\n"
                         :
                         : "dN"(port), "a"(val));
}

static inline void out_u8_p(const u16_t port, const u8_t val)
{

    __asm__ __volatile__("outb  %1, %0\n\t"
                         "nop \n\t"
                         "nop \n\t"

                         :
                         : "dN"(port), "a"(val));
}

static inline u8_t in_u8(const u16_t port)
{
    u8_t tmp;

    __asm__ __volatile__("inb %1, %0\n"
                         : "=a"(tmp)
                         : "dN"(port));
    return tmp;
}

static inline void out_u16(const u16_t port, const u16_t val)
{

    __asm__ __volatile__("outw  %1, %0\n"
                         :
                         : "dN"(port), "a"(val));
}

static inline u16_t in_u16(const u16_t port)
{
    u16_t tmp;

    __asm__ __volatile__("inw %1, %0\n"
                         : "=a"(tmp)
                         : "dN"(port));
    return tmp;
};

static inline void out_u32(const u16_t port, const u32_t val)
{

    __asm__ __volatile__("outl  %1, %0\n"
                         :
                         : "dN"(port), "a"(val));
}

static inline u32_t in_u32(const u16_t port)
{
    u32_t tmp;

    __asm__ __volatile__("inl %1, %0\n"
                         : "=a"(tmp)
                         : "dN"(port));
    return tmp;
}

static inline u64_t read_msr(const u32_t reg)
{
    u32_t eax, edx;

    __asm__ __volatile__(
        "rdmsr"
        : "=a"(eax), "=d"(edx)
        : "c"(reg));

    return (((u64_t)edx) << 32) | (u64_t)eax;
}

static inline void write_msr(const u32_t reg, const u64_t val)
{
    __asm__ __volatile__(
        "wrmsr"
        :
        : "a"((u32_t)val), "d"((u32_t)(val >> 32)), "c"(reg));
}

static inline void memcopy(void *src, void *dest, uint_t count)
{

    u8_t *ss = src, *sd = dest;
    for (uint_t i = 0; i < count; i++)
    {
        sd[i] = ss[i];
    }
    return;
}

static inline sint_t m2mcopy(void *sadr, void *dadr, sint_t len)
{
    if (0 == sadr || 0 == dadr || 1 > len)
    {
        return 0;
    }
    u8_t *s = (u8_t *)sadr, *d = (u8_t *)dadr;
    if (s < d)
    {
        for (sint_t i = (len - 1); i >= 0; i--)
        {
            d[i] = s[i];
        }
        return len;
    }
    if (s > d)
    {
        for (sint_t j = 0; j < len; j++)
        {
            d[j] = s[j];
        }
        return len;
    }
    if (s == d)
    {
        return len;
    }
    return 0;
}

static inline void memset(void *s, u8_t c, uint_t count)
{
    u8_t *st = s;
    for (uint_t i = 0; i < count; i++)
    {
        st[i] = c;
    }
    return;
}

static inline void save_flags_cli(cpuflg_t *flags)
{
    __asm__ __volatile__(
        "pushfq \t\n"
        "cli    \t\n"
        "popq %0 \t\n"

        : "=m"(*flags)
        :
        : "memory");
    return;
}

static inline void restore_flags_sti(cpuflg_t *flagsres)
{
    __asm__ __volatile__(
        "pushq %0 \t\n"
        "popfq \t\n"
        :
        : "m"(*flagsres)
        : "memory");
    return;
}

static inline u64_t x86_rdpmc(const int ctrsel)
{
    u32_t eax, edx;

    __asm__ __volatile__(
        "rdpmc"
        : "=a"(eax), "=d"(edx)
        : "c"(ctrsel));

    return (((u64_t)edx) << 32) | (u64_t)eax;
}

static inline u64_t x86_rdtsc(void)
{
    u32_t leax, ledx;

    __asm__ __volatile__(
        "rdtsc"
        : "=a"(leax), "=d"(ledx));

    return (((u64_t)ledx) << 32) | (u64_t)leax;
}

static inline sint_t search_64rlbits(u64_t val)
{
    sint_t retbitnr = -1;
    __asm__ __volatile__(
        "bsrq %1,%q0 \t\n"
        : "+r"(retbitnr)
        : "rm"(val));
    return retbitnr + 1;
}

static inline sint_t search_32rlbits(u32_t val)
{
    sint_t retbitnr = -1;
    __asm__ __volatile__(
        "bsrl %1,%0 \t\n"
        : "+r"(retbitnr)
        : "rm"(val));
    return retbitnr + 1;
}

static inline u32_t read_kesp()
{
    u32_t esp;

    __asm__ __volatile__(
        "movl %%esp,%0"
        : "=g"(esp)
        :
        : "memory");

    return esp;
}

static inline u32_t read_kcr2()
{
    u32_t cr2;

    __asm__ __volatile__(
        "movl %%cr2,%0"
        : "=g"(cr2)
        :
        : "memory");

    return cr2;
}
static inline void set_cr3(u64_t pl4adr)
{
 __asm__ __volatile__(

             "movq %0,%%cr3 \n\t"
      :
             : "r"(pl4adr)
             : "memory"
        );
 return;
}
# 18 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halgdtidt.h" 1






void exc_divide_error();
void exc_single_step_exception();
void exc_nmi();
void exc_breakpoint_exception();
void exc_overflow();
void exc_bounds_check();
void exc_inval_opcode();
void exc_copr_not_available();
void exc_double_fault();
void exc_copr_seg_overrun();
void exc_inval_tss();
void exc_segment_not_present();
void exc_stack_exception();
void exc_general_protection();
void exc_page_fault();
void exc_copr_error();
void exc_alignment_check();
void exc_machine_check();
void exc_simd_fault();
void hxi_exc_general_intpfault();
void hxi_hwint00();
void hxi_hwint01();
void hxi_hwint02();
void hxi_hwint03();
void hxi_hwint04();
void hxi_hwint05();
void hxi_hwint06();
void hxi_hwint07();
void hxi_hwint08();
void hxi_hwint09();
void hxi_hwint10();
void hxi_hwint11();
void hxi_hwint12();
void hxi_hwint13();
void hxi_hwint14();
void hxi_hwint15();
void hxi_hwint16();
void hxi_hwint17();
void hxi_hwint18();
void hxi_hwint19();
void hxi_hwint20();
void hxi_hwint21();
void hxi_hwint22();
void hxi_hwint23();
void hxi_apic_svr();
void hxi_apic_ipi_schedul();
void hxi_apic_timer();
void hxi_apic_thermal();
void hxi_apic_performonitor();
void hxi_apic_lint0();
void hxi_apic_lint1();
void hxi_apic_error();
void exi_sys_call();
void _ret_from_user_mode();

 void init_descriptor();
 void init_idt_descriptor();
 void set_idt_desc(u8_t vector, u8_t desc_type, inthandler_t handler, u8_t privilege);


void set_igdtr(descriptor_t *gdtptr);
void set_iidtr(gate_t *idtptr);
void set_descriptor(descriptor_t *p_desc, u32_t base, u32_t limit, u16_t attribute);
void set_x64tss_descriptor(descriptor_t *p_desc, u64_t base, u32_t limit, u16_t attribute);
 void load_x64_gdt(igdtr_t *igdtrp);
 void load_x64_idt(iidtr_t *idtptr);
 void load_x64_tr(u16_t trindx);
# 19 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/i8259.h" 1
# 9 "../include/halinc/i8259.h"
void init_i8259();
void i8259_send_eoi();
void i8259_enabled_line(u32_t line);
void i8259_disable_line(u32_t line);
void i8259_save_disableline(u64_t* svline,u32_t line);
void i8259_rest_enabledline(u64_t* svline,u32_t line);
# 20 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/bdvideo.h" 1
# 9 "../include/halinc/bdvideo.h"
void set_charsdxwflush(u64_t chardxw, u64_t flush);
void hal_background();
pixl_t set_deffontpx(pixl_t setpx);
void set_ncharsxy(u64_t x, u64_t y);
u64_t *ret_vramadr_inbnk(void *ghpdev);
void bga_disp_nxtbank(void *ghpdev);
void hal_dspversion();
void fill_rect(pixl_t pix, uint_t x, uint_t y, uint_t tx, uint_t ty);
void fill_fullbitmap(char_t *bmfname);
void slou_sreen(uint_t hy);

void hal_logo();
void red();
void gre();
void blu();
void blk();
void wri();

void init_dftgraph();
void init_bdvideo();
void init_bga();
void init_vbe();

void fill_graph(dftgraph_t *kghp, pixl_t pix);
void write_pixcolor(dftgraph_t *kghp, u32_t x, u32_t y, pixl_t pix);
void drxw_pixcolor(dftgraph_t *kghp, u32_t x, u32_t y, pixl_t pix);
void flush_videoram(dftgraph_t *kghp);
u32_t utf8_to_unicode(utf8_t *utfp, int *retuib);
u8_t *ret_charsinfo(dftgraph_t *kghp, u32_t unicode, int *retchwx, int *retchhx, int *retlinb);
void put_pixonechar(dftgraph_t *kghp, u32_t unicode, pixl_t pix);
void drxput_pixonechar(dftgraph_t *kghp, u32_t unicode, pixl_t pix);
void gstr_write(dftgraph_t *kghp, char_t *buf);

u16_t bga_read_reg(u16_t index);
void bga_write_reg(u16_t index, u16_t data);
size_t bga_read(void *ghpdev, void *outp, size_t rdsz);
size_t bga_write(void *ghpdev, void *inp, size_t wesz);
sint_t bga_ioctrl(void *ghpdev, void *outp, uint_t iocode);
void bga_flush(void *ghpdev);
sint_t bga_set_bank(void *ghpdev, sint_t bnr);
pixl_t bga_readpix(void *ghpdev, uint_t x, uint_t y);
void bga_writepix(void *ghpdev, pixl_t pix, uint_t x, uint_t y);
pixl_t bga_dxreadpix(void *ghpdev, uint_t x, uint_t y);
void bga_dxwritepix(void *ghpdev, pixl_t pix, uint_t x, uint_t y);
sint_t bga_set_xy(void *ghpdev, uint_t x, uint_t y);
sint_t bga_set_vwh(void *ghpdev, uint_t vwt, uint_t vhi);
sint_t bga_set_xyoffset(void *ghpdev, uint_t xoff, uint_t yoff);
sint_t bga_get_xy(void *ghpdev, uint_t *rx, uint_t *ry);
sint_t bga_get_vwh(void *ghpdev, uint_t *rvwt, uint_t *rvhi);
sint_t bga_get_xyoffset(void *ghpdev, uint_t *rxoff, uint_t *ryoff);

size_t vbe_read(void *ghpdev, void *outp, size_t rdsz);
size_t vbe_write(void *ghpdev, void *inp, size_t wesz);
sint_t vbe_ioctrl(void *ghpdev, void *outp, uint_t iocode);
void vbe_flush(void *ghpdev);
sint_t vbe_set_bank(void *ghpdev, sint_t bnr);
pixl_t vbe_readpix(void *ghpdev, uint_t x, uint_t y);
void vbe_writepix(void *ghpdev, pixl_t pix, uint_t x, uint_t y);
pixl_t vbe_dxreadpix(void *ghpdev, uint_t x, uint_t y);
void vbe_dxwritepix(void *ghpdev, pixl_t pix, uint_t x, uint_t y);
sint_t vbe_set_xy(void *ghpdev, uint_t x, uint_t y);
sint_t vbe_set_vwh(void *ghpdev, uint_t vwt, uint_t vhi);
sint_t vbe_set_xyoffset(void *ghpdev, uint_t xoff, uint_t yoff);
sint_t vbe_get_xy(void *ghpdev, uint_t *rx, uint_t *ry);
sint_t vbe_get_vwh(void *ghpdev, uint_t *rvwt, uint_t *rvhi);
sint_t vbe_get_xyoffset(void *ghpdev, uint_t *rxoff, uint_t *ryoff);
# 21 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/memmgrmctrl.h" 1
# 9 "../include/halinc/memmgrmctrl.h"
# 1 "../include/halinc/msadsc.h" 1






void msadsc_t_init(msadsc_t *initp);
void disp_one_msadsc(msadsc_t *mp);
bool_t ret_msadsc_vadrandsz(machbstart_t *mbsp, msadsc_t **retmasvp, u64_t *retmasnr);
void write_one_msadsc(msadsc_t *msap, u64_t phyadr);
 u64_t init_msadsc_core(machbstart_t *mbsp, msadsc_t *msavstart, u64_t msanr);
 void init_msadsc();
void disp_phymsadsc();
u64_t search_segment_occupymsadsc(msadsc_t *msastart, u64_t msanr, u64_t ocpystat, u64_t ocpyend);
bool_t search_krloccupymsadsc_core(machbstart_t *mbsp);
void init_search_krloccupymm(machbstart_t *mbsp);
# 10 "../include/halinc/memmgrmctrl.h" 2
# 1 "../include/halinc/memarea.h" 1







void arclst_t_init(arclst_t* initp);
mmstus_t mafo_deft_init(struct s_MEMAREA* memarea,void* valp,uint_t val);
mmstus_t mafo_deft_exit(struct s_MEMAREA* memarea);
mmstus_t mafo_deft_afry(struct s_MEMAREA* memarea,mmafrets_t* mafrspack,void* valp,uint_t val);
void mafuncobjs_t_init(mafuncobjs_t* initp);
void bafhlst_t_init(bafhlst_t* initp,u32_t stus,uint_t oder,uint_t oderpnr);
void memdivmer_t_init(memdivmer_t* initp);
void memarea_t_init(memarea_t* initp);
bool_t init_memarea_core(machbstart_t* mbsp);
void init_memarea();
bool_t find_inmarea_msadscsegmant(memarea_t* mareap,msadsc_t* fmstat,uint_t fmsanr,msadsc_t** retmsastatp,msadsc_t** retmsaendp,uint_t* retfmnr);
uint_t continumsadsc_is_ok(msadsc_t* prevmsa,msadsc_t* nextmsa,msadflgs_t* cmpmdfp);
bool_t scan_len_msadsc(msadsc_t* mstat,msadflgs_t* cmpmdfp,uint_t mnr,uint_t* retmnr);
uint_t check_continumsadsc(memarea_t* mareap,msadsc_t* stat,msadsc_t* end,uint_t fmnr);
bool_t merlove_scan_continumsadsc(memarea_t* mareap,msadsc_t* fmstat,uint_t* fntmsanr,uint_t fmsanr,msadsc_t** retmsastatp,msadsc_t** retmsaendp,uint_t* retfmnr);
uint_t merlove_clrflge_onmsadsc(msadsc_t* mstat,uint_t msanr);
uint_t merlove_setflgs_onmemarea(memarea_t* mareap,msadsc_t* mstat,uint_t msanr);
uint_t test_setflgs(memarea_t* mareap,msadsc_t* mstat,uint_t msanr);
bafhlst_t* find_continumsa_inbafhlst(memarea_t* mareap,uint_t fmnr);
bool_t continumsadsc_add_procmareabafh(memarea_t* mareap,bafhlst_t* bafhp,msadsc_t* fstat,msadsc_t* fend,uint_t fmnr);
bool_t continumsadsc_add_bafhlst(memarea_t* mareap,bafhlst_t* bafhp,msadsc_t* fstat,msadsc_t* fend,uint_t fmnr);
bool_t continumsadsc_mareabafh_core(memarea_t* mareap,msadsc_t** rfstat,msadsc_t** rfend,uint_t* rfmnr);
bool_t merlove_continumsadsc_mareabafh(memarea_t* mareap,msadsc_t* mstat,msadsc_t* mend,uint_t mnr);
bool_t merlove_mem_onmemarea(memarea_t* mareap,msadsc_t* mstat,uint_t msanr);
bool_t merlove_mem_core(machbstart_t* mbsp);
void init_merlove_mem();
void disp_bafhlst(bafhlst_t* bafhp);
void disp_memarea(machbstart_t* mbsp);
# 11 "../include/halinc/memmgrmctrl.h" 2
# 1 "../include/halinc/memdivmer.h" 1







void mm_update_memmgrob(uint_t realpnr,uint_t flgs);
void mm_update_memarea(memarea_t* malokp,uint_t pgnr,uint_t flgs);
memarea_t* onfrmsa_retn_marea(memmgrob_t* mmobjp,msadsc_t* freemsa,uint_t freepgs);
memarea_t* onmrtype_retn_marea(memmgrob_t* mmobjp,uint_t mrtype);
bafhlst_t* onma_retn_maxbafhlst(memarea_t* malckp);
msadsc_t* mm_divpages_opmsadsc(msadsc_t* msastat,uint_t mnr);
sint_t mm_merpages_opmsadsc(bafhlst_t* bafh,msadsc_t* freemsa,uint_t freepgs);
bool_t onmpgs_retn_bafhlst(memarea_t* malckp,uint_t pages,bafhlst_t** retrelbafh,bafhlst_t** retdivbafh);
bool_t onfpgs_retn_bafhlst(memarea_t* malckp,uint_t freepgs,bafhlst_t** retrelbf,bafhlst_t** retmerbf);
msadsc_t* mm_divipages_onbafhlst(bafhlst_t* bafhp);
bool_t mm_retnmsaob_onbafhlst(bafhlst_t* bafhp,msadsc_t** retmstat,msadsc_t** retmend);
bool_t scan_mapgsalloc_ok(memarea_t* malckp,uint_t pages);
msadsc_t* mm_maxdivpages_onmarea(memarea_t* malckp,uint_t* retrelpnr);
uint_t chek_divlenmsa(msadsc_t* msastat,msadsc_t* msaend,uint_t mnr);
bool_t mrdmb_add_msa_bafh(bafhlst_t* bafhp,msadsc_t* msastat,msadsc_t* msaend);
msadsc_t* mm_reldpgsdivmsa_bafhl(memarea_t *malckp, uint_t pages, uint_t *retrelpnr,bafhlst_t* relbfl,bafhlst_t* divbfl);
msadsc_t* mm_reldivpages_onmarea(memarea_t* malckp,uint_t pages,uint_t* retrelpnr);
msadsc_t* mm_prcdivpages_onmarea(memarea_t *malckp, uint_t pages, uint_t *retrelpnr);
msadsc_t* mm_divpages_core(memarea_t* mareap,uint_t pages,uint_t* retrealpnr,uint_t flgs);
msadsc_t* mm_divpages_fmwk(memmgrob_t* mmobjp,uint_t pages,uint_t* retrelpnr,uint_t mrtype,uint_t flgs);
msadsc_t* mm_division_pages(memmgrob_t* mmobjp,uint_t pages,uint_t*retrealpnr,uint_t mrtype,uint_t flgs);
memarea_t* retn_procmarea(memmgrob_t *mmobjp);
msadsc_t* divpages_procmarea_core(memmgrob_t *mmobjp, uint_t pages, uint_t *retrealpnr);
msadsc_t* mm_divpages_procmarea(memmgrob_t *mmobjp, uint_t pages, uint_t *retrealpnr);
bool_t scan_freemsa_isok(msadsc_t* freemsa,uint_t freepgs);
sint_t mm_cmsa1blk_isok(bafhlst_t* bafh,msadsc_t* _1ms,msadsc_t* _1me);
sint_t mm_cmsa2blk_isok(bafhlst_t* bafh,msadsc_t* _1ms,msadsc_t* _1me,msadsc_t* _2ms,msadsc_t* _2me);
bool_t chek_cl2molkflg(bafhlst_t* bafh,msadsc_t* _1ms,msadsc_t* _1me,msadsc_t* _2ms,msadsc_t* _2me);
bool_t mm_clear_2msaolflg(bafhlst_t* bafh,msadsc_t* _1ms,msadsc_t* _1me,msadsc_t* _2ms,msadsc_t* _2me);
sint_t mm_find_cmsa2blk(bafhlst_t* fbafh,msadsc_t** rfnms,msadsc_t** rfnme);
bool_t mpobf_add_msadsc(bafhlst_t* bafhp,msadsc_t* freemstat,msadsc_t* freemend);
bool_t mm_merpages_onbafhlst(msadsc_t* freemsa,uint_t freepgs,bafhlst_t* relbf,bafhlst_t* merbf);
bool_t mm_merpages_onmarea(memarea_t* malckp,msadsc_t* freemsa,uint_t freepgs);
bool_t mm_merpages_core(memarea_t* marea,msadsc_t* freemsa,uint_t freepgs);
bool_t mm_merpages_fmwk(memmgrob_t* mmobjp,msadsc_t* freemsa,uint_t freepgs);
bool_t mm_merge_pages(memmgrob_t* mmobjp,msadsc_t* freemsa,uint_t freepgs);
void mchkstuc_t_init(mchkstuc_t* initp);
void write_one_mchkstuc(msadsc_t* msa,uint_t pnr);
bool_t chek_one_mchks(mchkstuc_t* mchs);
void cmp_mchkstuc(mchkstuc_t* smchs,mchkstuc_t* dmchs);
void free_one_mchkstuc(mchkstuc_t* mchs);
void free_all_mchkstuc();
void chek_all_one_mchkstuc(mchkstuc_t* mchs);
void chek_all_mchkstuc();
uint_t retn_test_sec();
void test_proc_marea(memarea_t* mr);
void test_maxone_marea(memarea_t* mr);
void test_onedivmer_all(memarea_t* ma);
void test_maxdiv_all();
void test_divsion_pages();
# 12 "../include/halinc/memmgrmctrl.h" 2
# 1 "../include/halinc/kmsob.h" 1







void msclst_t_init(msclst_t* initp,uint_t pnr);
void msomdc_t_init(msomdc_t* initp);
void freobjh_t_init(freobjh_t* initp,uint_t stus,void* stat);
void kmsob_t_init(kmsob_t* initp);
void kmbext_t_init(kmbext_t* initp,adr_t vstat,adr_t vend,kmsob_t*kmsp);
void koblst_t_init(koblst_t* initp,size_t koblsz);
void kmsobmgrhed_t_init(kmsobmgrhed_t* initp);
void disp_kmsobmgr();
void disp_kmsob(kmsob_t* kmsp);
void init_kmsob();
void kmsob_updata_cache(kmsobmgrhed_t* kmobmgrp,koblst_t* koblp,kmsob_t* kmsp,uint_t flgs);
kmsob_t* scan_newkmsob_isok(kmsob_t* kmsp,size_t msz);
kmsob_t* scan_delkmsob_isok(kmsob_t *kmsp,void* fadrs,size_t fsz);
bool_t scan_nmszkmsob_isok(kmsob_t* kmsp,size_t msz);
bool_t scan_fadrskmsob_isok(adr_t fostat,adr_t vend,void* fadrs,size_t objsz);
bool_t scan_dfszkmsob_isok(kmsob_t* kmsp,void* fadrs,size_t fsz);
uint_t scan_kmsob_objnr(kmsob_t* kmsp);
kmsob_t* onkoblst_retn_newkmsob(koblst_t* koblp,size_t msz);
kmsob_t* onkoblst_retn_delkmsob(koblst_t *koblp,void* fadrs,size_t fsz);
koblst_t* onmsz_retn_koblst(kmsobmgrhed_t* kmmgrhlokp,size_t msz);
bool_t kmsob_add_koblst(koblst_t* koblp,kmsob_t* kmsp);
kmsob_t* _create_init_kmsob(kmsob_t* kmsp,size_t objsz,adr_t cvadrs,adr_t cvadre,msadsc_t* msa,uint_t relpnr);
kmsob_t* _create_kmsob(kmsobmgrhed_t* kmmgrlokp,koblst_t* koblp,size_t objsz);
void* kmsob_new_opkmsob(kmsob_t* kmsp,size_t msz);
bool_t kmsob_extn_pages(kmsob_t* kmsp);
void* kmsob_new_onkmsob(kmsob_t* kmsp,size_t msz);
void* kmsob_new_core(size_t msz);
void* kmsob_new(size_t msz);
uint_t scan_freekmsob_isok(kmsob_t* kmsp);
bool_t _destroy_kmsob_core(kmsobmgrhed_t* kmobmgrp,koblst_t* koblp,kmsob_t* kmsp);
bool_t _destroy_kmsob(kmsobmgrhed_t* kmobmgrp,koblst_t* koblp,kmsob_t* kmsp);
bool_t kmsob_del_opkmsob(kmsob_t* kmsp,void* fadrs,size_t fsz);
bool_t kmsob_delete_onkmsob(kmsob_t* kmsp,void* fadrs,size_t fsz);
bool_t kmsob_delete_core(void* fadrs,size_t fsz);
bool_t kmsob_delete(void* fadrs,size_t fsz);
bool_t chek_kmbext_findmsa(kmsob_t* kmsp,kmbext_t* cpbexp);
bool_t chek_one_kmbext(kmsob_t* kmsp,kmbext_t* cpbexp);
bool_t chek_onekmsob_mbext(kmsob_t* kmsp);
void chek_one_kmsob(kmsob_t* kmsp,size_t objsz);
void chek_all_kmsobstruc();
void kobcks_init(kobcks_t* initp,void* vadr,size_t sz);
void write_kobcks(kmsobmgrhed_t* kmmgrp,void* ptr,size_t sz);
void chek_one_kobcks(kobcks_t* kkp);
void chek_all_kobcks();
void free_one_kobcks(kobcks_t* kkp);
void free_all_kobcks();
void test_kmsob();
# 13 "../include/halinc/memmgrmctrl.h" 2
# 1 "../include/halinc/memmgrinit.h" 1







 void init_memmgr();
void disp_memmgrob();
void init_memmgrob();
void memmgrob_t_init(memmgrob_t* initp);
bool_t copy_pages_data(machbstart_t* mbsp);
bool_t copy_fvm_data(machbstart_t* mbsp,dftgraph_t* dgp);
void init_copy_pagesfvm();
# 14 "../include/halinc/memmgrmctrl.h" 2
# 22 "../include/halinc/halheads.h" 2

# 1 "../include/halinc/halglobal.h" 1
# 16 "../include/halinc/halglobal.h"
void exc_divide_error();
void exc_single_step_exception();
void exc_nmi();
void exc_breakpoint_exception();
void exc_overflow();
void exc_bounds_check();
void exc_inval_opcode();
void exc_copr_not_available();
void exc_double_fault();
void exc_copr_seg_overrun();
void exc_inval_tss();
void exc_segment_not_present();
void exc_stack_exception();
void exc_general_protection();
void exc_page_fault();
void exc_copr_error();
void exc_alignment_check();
void exc_machine_check();
void exc_simd_fault();
void hxi_exc_general_intpfault();
void hxi_hwint00();
void hxi_hwint01();
void hxi_hwint02();
void hxi_hwint03();
void hxi_hwint04();
void hxi_hwint05();
void hxi_hwint06();
void hxi_hwint07();
void hxi_hwint08();
void hxi_hwint09();
void hxi_hwint10();
void hxi_hwint11();
void hxi_hwint12();
void hxi_hwint13();
void hxi_hwint14();
void hxi_hwint15();
void hxi_hwint16();
void hxi_hwint17();
void hxi_hwint18();
void hxi_hwint19();
void hxi_hwint20();
void hxi_hwint21();
void hxi_hwint22();
void hxi_hwint23();
void hxi_apic_svr();
void hxi_apic_ipi_schedul();
void hxi_apic_timer();
void hxi_apic_thermal();
void hxi_apic_performonitor();
void hxi_apic_lint0();
void hxi_apic_lint1();
void hxi_apic_error();
void exi_sys_call();
void asm_ret_from_user_mode();

extern __attribute__((section(".data"))) descriptor_t x64_gdt[1][10];
extern __attribute__((section(".data"))) gate_t x64_idt[256];
extern __attribute__((section(".data"))) x64tss_t x64tss[1];
extern __attribute__((section(".data"))) igdtr_t x64_igdt_reg[1];
extern __attribute__((section(".data"))) iidtr_t x64_iidt_reg;
extern __attribute__((section(".data"))) machbstart_t kmachbsp;
extern __attribute__((section(".data"))) dftgraph_t kdftgh;
extern __attribute__((section(".data"))) memmgrob_t memmgrob;
extern __attribute__((section(".data"))) intfltdsc_t machintflt[256];



void die(u32_t dt);
# 24 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halinit.h" 1






__attribute__((section(".head.text"))) void init_hal();
# 25 "../include/halinc/halheads.h" 2
# 1 "../include/halinc/halprint.h" 1







void kprint(const char* fmt,...);
char_t* strcopyk(char_t* buf,char_t* str_s);
void vsprintfk(char* buf,const char* fmt,va_list args);
char_t* numberk(char_t* str,uint_t n, sint_t base);
void char_write_uart(char_t* buf);
# 26 "../include/halinc/halheads.h" 2
# 9 "../include/cosmosmctrl.h" 2
# 1 "../include/knlinc/krlheads.h" 1







# 1 "../include/knlinc/krlsem.h" 1







void krlsem_t_init(sem_t* initp);
void krlsem_set_sem(sem_t* setsem,uint_t flg,sint_t conut);
void krlsem_down(sem_t* sem);
void krlsem_up(sem_t* sem);
# 9 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlintupt.h" 1







intserdsc_t* krladd_irqhandle(void* device,intflthandle_t handle,uint_t phyiline);
drvstus_t krlenable_intline(uint_t ifdnr);
drvstus_t krldisable_intline(uint_t ifdnr);
# 10 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlpagempol.h" 1
# 9 "../include/knlinc/krlpagempol.h"
void init_krlpagempol();
void kmempool_t_init(kmempool_t* initp);
adr_t kmempool_page_new_callhalmm(size_t msize);
bool_t kmempool_page_delete_callhalmm(adr_t fradr,size_t frze);
void mplhead_t_init(mplhead_t* initp);
bool_t objs_delete_on_mplhead(mplhead_t* mplhdp,adr_t fradr);
adr_t objs_new_on_mplhead(mplhead_t* mplhdp);
bool_t page_delete_on_mplhead(mplhead_t* mplhdp,adr_t fradr);
adr_t page_new_on_mplhead(mplhead_t* mplhdp);
mplhead_t* objs_mpool_init(kmempool_t* kmplockp,mplhead_t* initp,size_t msize,adr_t start,adr_t end);
mplhead_t* page_mpool_init(kmempool_t* kmplockp,mplhead_t* initp,size_t msize,adr_t start,adr_t end);
bool_t del_objs_mpool(kmempool_t* kmplockp,mplhead_t* mphdp);
bool_t del_page_mpool(kmempool_t* kmplockp,mplhead_t* mphdp);
mplhead_t* new_objs_mpool(kmempool_t* kmplockp,size_t msize);
mplhead_t* new_page_mpool(kmempool_t* kmplockp,size_t msize);
mplhead_t* objsdel_mplhead_isok(mplhead_t* mhp,adr_t fradr,size_t msize);
mplhead_t* pagedel_mplhead_isok(mplhead_t* mhp,adr_t fradr,size_t msize);
mplhead_t* objsnew_mplhead_isok(mplhead_t* mhp,size_t msize);
mplhead_t* pagenew_mplhead_isok(mplhead_t* mhp,size_t msize);
mplhead_t* kmemplob_retn_mplhead(kmempool_t* kmplockp,size_t msize);
mplhead_t* kmempldelpg_retn_mplhead(kmempool_t* kmplockp,adr_t fradr,size_t msize);
mplhead_t* kmemplpg_retn_mplhead(kmempool_t* kmplockp,size_t msize);
adr_t kmempool_pages_core_new(size_t msize);
bool_t kmempool_pages_core_delete(adr_t fradr,size_t frsz);
adr_t kmempool_objsz_core_new(size_t msize);
bool_t kmempool_objsz_core_delete(adr_t fradr,size_t frsz);
adr_t kmempool_objsz_new(size_t msize);
bool_t kmempool_objsz_delete(adr_t fradr,size_t frsz);
adr_t kmempool_pages_new(size_t msize);
bool_t kmempool_pages_delete(adr_t fradr,size_t frsz);
adr_t kmempool_onsize_new(size_t msize);
bool_t kmempool_onsize_delete(adr_t fradr,size_t frsz);
adr_t kmempool_new(size_t msize);
bool_t kmempool_delete(adr_t fradr,size_t frsz);
# 11 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlobjsmpol.h" 1







void init_krlobjsmpol();
void objmgrhead_t_init(objmgrhead_t* initp,objalst_t* alstp,size_t objsz,adr_t start,adr_t end);
void objalst_t_init(objalst_t* initp,olcfgdat_t* ocfgp);
void objmplctrl_t_init(objmplctrl_t* initp);
void test_objmpool();
void objs_align(objmgrhead_t* omghp,uint_t ali);
objmgrhead_t* retn_freeobjmgrh_onobjalst(objalst_t* alstp,adr_t fradr,size_t frsz);
objmgrhead_t* retn_alocobjmgrh_onobjalst(objalst_t* alstp);
objmgrhead_t* krlnew_objmpoolandinit(objalst_t* alstp, size_t msize);
objalst_t* retn_objalst_onmsize(objmplctrl_t* omctlp,size_t msz);
bool_t free_objsz_onobjmgrhead(objmgrhead_t* omghp,adr_t fradr,size_t frsz);
bool_t krlfre_objmpoolanddele(objalst_t* alstp,objmgrhead_t* omghp,size_t frsz);
bool_t krlobjmplfree_core_onobjalst(objalst_t *alstp,adr_t fradr, size_t frsz);
bool_t krlobjsmpol_free_core(adr_t fradr, size_t frsz);
bool_t krlobjsmpol_free(adr_t fradr,size_t frsz);
adr_t krlobjsmpol_alloc(size_t msize);
adr_t aloc_objsz_onobjmgrhead(objmgrhead_t* omghp);
adr_t krlobjmplalc_core_onobjalst(objalst_t* alstp, size_t msize);
adr_t krlobjsmpol_alloc_core(size_t msize);
# 12 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlmm.h" 1






void init_krlmm();
adr_t krlnew(size_t mmsize);
bool_t krldelete(adr_t fradr, size_t frsz);
# 13 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlinit.h" 1







void init_krl();
# 14 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krltime.h" 1







void ktime_t_init(ktime_t* initp);
void init_ktime();
void krlupdate_times(uint_t year,uint_t mon,uint_t day,uint_t date,uint_t hour,uint_t min,uint_t sec);
sysstus_t krlsvetabl_time(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_time(time_t* time);
# 15 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlglobal.h" 1
# 16 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlobjnode.h" 1







void objnode_t_init(objnode_t* initp);
objnode_t* krlnew_objnode();
bool_t krldel_objnode(objnode_t* onodep);
# 17 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlthread.h" 1







void micrstk_t_init(micrstk_t* initp);
void context_t_init(context_t* initp);
uint_t krlretn_thread_id(thread_t* tdp);
void thread_t_init(thread_t* initp);
thread_t* krlnew_thread_dsc();
void krlthd_inc_tick(thread_t* thdp);
hand_t krlthd_retn_nullhand(thread_t* thdp);
hand_t krlthd_add_objnode(thread_t* thdp,objnode_t* ondp);
hand_t krlthd_del_objnode(thread_t *thdp, hand_t hand);
objnode_t* krlthd_retn_objnode(thread_t *thdp, hand_t hand);
void krlthreadkrlsatck_init(thread_t* thdp,void* runadr,reg_t cpsr,reg_t spsr);
thread_t* krlnew_thread_core(void* filerun,uint_t flg,uint_t prilg,uint_t prity,size_t usrstksz,size_t krlstksz);
thread_t* krlnew_thread(void* filerun,uint_t flg,uint_t prilg,uint_t prity,size_t usrstksz,size_t krlstksz);
# 18 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsched.h" 1







void thrdlst_t_init(thrdlst_t* initp);
void schdata_t_init(schdata_t* initp);
void schedclass_t_init(schedclass_t* initp);
void init_krlsched();
thread_t* krlsched_retn_currthread();
void krlsched_wait(kwlst_t* wlst);
void krlsched_up(kwlst_t* wlst);
void krlsched_set_schedflgs();
void krlsched_chkneed_pmptsched();
thread_t* krlsched_select_thread();
void krlschedul();
void krlschdclass_add_thread(thread_t* thdp);

__attribute__((regparm(2))) void __to_new_context(thread_t* next,thread_t* prev);



void save_to_new_context(thread_t* next,thread_t* prev);
void retnfrom_first_sched(thread_t* thrdp);
# 19 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlwaitlist.h" 1







void kwlst_t_init(kwlst_t* initp);
void krlwlst_wait(kwlst_t* wlst);
void krlwlst_up(kwlst_t* wlst);
void krlwlst_allup(kwlst_t* wlst);
void krlwlst_add_thread(kwlst_t* wlst,thread_t* tdp);
thread_t* krlwlst_del_thread(kwlst_t *wlst);
# 20 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlcpuidle.h" 1







void init_krlcpuidle();
void krlcpuidle_start();
thread_t* new_cpuidle_thread();
void new_cpuidle();
void krlcpuidle_main();
# 21 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krldevice.h" 1







void devtlst_t_init(devtlst_t* initp,uint_t dtype);
void devtable_t_init(devtable_t* initp);
void devid_t_init(devid_t* initp,uint_t mty,uint_t sty,uint_t nr);
void device_t_init(device_t* initp);
void krlretn_driverid(driver_t* dverp);
void driver_t_init(driver_t* initp);
void init_krldevice();
drvstus_t krlrun_driverentry(drventyexit_t drventry);
void init_krldriver();
drvstus_t del_driver_dsc(driver_t* drvp);
driver_t* new_driver_dsc();
drvstus_t del_device_dsc(device_t* devp);
device_t* new_device_dsc();
drvstus_t drv_defalt_func(device_t* devp,void* iopack);
bool_t krlcmp_devid(devid_t* sdidp,devid_t* cdidp);
drvstus_t krldriver_add_system(driver_t* drvp);
drvstus_t krldev_add_driver(device_t* devp,driver_t* drvp);
drvstus_t krlnew_device(device_t* devp);
drvstus_t krldev_inc_devcount(device_t* devp);
drvstus_t krldev_dec_devcount(device_t* devp);
drvstus_t krldev_add_request(device_t *devp, objnode_t* request);
drvstus_t krldev_complete_request(device_t *devp, objnode_t* request);
drvstus_t krldev_retn_request(device_t *devp,uint_t iocode,objnode_t** retreq);
drvstus_t krldev_wait_request(device_t *devp, objnode_t* request);
drvstus_t krldev_retn_rqueparm(void* request,buf_t* retbuf,uint_t* retcops,uint_t* retlen,uint_t* retioclde,uint_t* retbufcops,size_t* retbufsz);
device_t* krlonidfl_retn_device(void* dfname,uint_t flgs);
drvstus_t krlnew_devhandle(device_t* devp,intflthandle_t handle,uint_t phyiline);
drvstus_t krldev_io(objnode_t* nodep);
drvstus_t krldev_call_driver(device_t* devp,uint_t iocode,uint_t val1,uint_t val2,void* p1,void* p2);
# 22 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlspinlock.h" 1







void krlspinlock_init(spinlock_t* lock);
void krlspinlock_lock(spinlock_t* lock);
void krlspinlock_unlock(spinlock_t* lock);
void krlspinlock_cli(spinlock_t* lock,cpuflg_t* cpuflg);
void krlspinunlock_sti(spinlock_t* lock,cpuflg_t* cpuflg);
# 23 "../include/knlinc/krlheads.h" 2

# 1 "../include/knlinc/task.h" 1


void init_task();
# 25 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlservice.h" 1







sysstus_t krlservice(uint_t swinr,void* sframe);
# 26 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvemm.h" 1


sysstus_t krlsvetabl_mallocblk(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_mfreeblk(uint_t swinr,stkparame_t* stkparv);
void* krlsve_mallocblk(size_t blksz);
sysstus_t krlsve_mfreeblk(void* fradr,size_t blksz);
void* krlsve_core_mallocblk(size_t blksz);
sysstus_t krlsve_core_mfreeblk(void* fradr,size_t blksz);
# 27 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvethread.h" 1
# 9 "../include/knlinc/krlsvethread.h"
sysstus_t krlsvetabl_exel_thread(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_exit_thread(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_retn_threadhand(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_retn_threadstats(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsvetabl_set_threadstats(uint_t swinr,stkparame_t* stkparv);
hand_t krlsve_exel_thread(void* file,uint_t flgs);
sysstus_t krlsve_exit_thread();
hand_t krlsve_retn_threadhand(void* tname);
sysstus_t krlsve_retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t krlsve_set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
hand_t krlsve_core_exel_thread(void* file,uint_t flgs);
void krlsve_core_exit_thread();
hand_t krlsve_core_retn_threadhand(void* tname);
sysstus_t krlsve_core_retn_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
sysstus_t krlsve_core_set_threadstats(hand_t thand,uint_t scode,uint_t data,buf_t buf);
# 28 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveopen.h" 1







sysstus_t krlsvetabl_open(uint_t swinr,stkparame_t* stkparv);
hand_t krlsve_open(void* file,uint_t flgs,uint_t stus);
hand_t krlsve_core_open(void* file,uint_t flgs,uint_t stus);
sysstus_t krlsve_open_device(objnode_t* ondep);
# 29 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveclose.h" 1







sysstus_t krlsvetabl_close(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_close(hand_t fhand);
sysstus_t krlsve_core_close(hand_t fhand);
sysstus_t krlsve_close_device(objnode_t* ondep);
# 30 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveread.h" 1







sysstus_t krlsvetabl_read(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_core_read(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_read_device(objnode_t* ondep);
# 31 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvewrite.h" 1







sysstus_t krlsvetabl_write(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_core_write(hand_t fhand,buf_t buf,size_t len,uint_t flgs);
sysstus_t krlsve_write_device(objnode_t* ondep);
# 32 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsveioctrl.h" 1







sysstus_t krlsvetabl_ioctrl(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
sysstus_t krlsve_core_ioctrl(hand_t fhand,buf_t buf,uint_t iocode,uint_t flgs);
sysstus_t krlsve_ioctrl_device(objnode_t* ondep);
# 33 "../include/knlinc/krlheads.h" 2
# 1 "../include/knlinc/krlsvelseek.h" 1







sysstus_t krlsvetabl_lseek(uint_t swinr,stkparame_t* stkparv);
sysstus_t krlsve_lseek(hand_t fhand,uint_t lofset,uint_t flgs);
sysstus_t krlsve_core_lseek(hand_t fhand,uint_t lofset,uint_t flgs);
# 34 "../include/knlinc/krlheads.h" 2
# 10 "../include/cosmosmctrl.h" 2
# 3 "../hal/x86/halmm.c" 2

void phymmarge_t_init(phymmarge_t *initp)
{
    if (0 == initp)
    {
        return;
    }

    hal_spinlock_init(&initp->pmr_lock);
    initp->pmr_type = 0;
    initp->pmr_stype = 0;
    initp->pmr_dtype = 0;
    initp->pmr_flgs = 0;
    initp->pmr_stus = 0;
    initp->pmr_saddr = 0;
    initp->pmr_lsize = 0;
    initp->pmr_end = 0;
    initp->pmr_rrvmsaddr = 0;
    initp->pmr_rrvmend = 0;
    initp->pmr_prip = 0;
    initp->pmr_extp = 0;
    return;
}

void ret_phymmarge_adrandsz(machbstart_t *mbsp, phymmarge_t **retpmrvadr, u64_t *retpmrsz)
{
    if (0 == mbsp || 0 == mbsp->mb_e820sz || 0 == mbsp->mb_e820padr || 0 == mbsp->mb_e820nr)
    {
        *retpmrsz = 0;
        *retpmrvadr = 0;
        return;
    }

    u64_t tmpsz = mbsp->mb_e820nr * sizeof(phymmarge_t);
    u64_t tmpphyadr = mbsp->mb_nextwtpadr;
    if (0 != initchkadr_is_ok(mbsp, tmpphyadr, tmpsz))
    {
        *retpmrsz = 0;
        *retpmrvadr = 0;
        return;
    }

    *retpmrsz = tmpsz;
    *retpmrvadr = (phymmarge_t *)((adr_t)tmpphyadr);
    return;
}

bool_t init_one_pmrge(e820map_t *e8p, phymmarge_t *pmargep)
{
    u32_t ptype = 0, pstype = 0;
    if (0 == e8p || 0 == pmargep)
    {
        return 0;
    }

    phymmarge_t_init(pmargep);
    switch (e8p->type)
    {
    case 1:
        ptype = 1;
        pstype = 1;
        break;
    case 2:
        ptype = 2;
        pstype = 2;
        break;
    case 3:
        ptype = 8;
        pstype = 3;
        break;
    case 4:
        ptype = 8;
        pstype = 4;
        break;
    case 5:
        ptype = 0xff;
        pstype = 5;
        break;
    default:
        break;
    }

    if (0 == ptype)
    {
        return 0;
    }

    pmargep->pmr_type = ptype;
    pmargep->pmr_stype = pstype;
    pmargep->pmr_flgs = (1 << 1);
    pmargep->pmr_saddr = e8p->saddr;
    pmargep->pmr_lsize = e8p->lsize;
    pmargep->pmr_end = e8p->saddr + e8p->lsize - 1;
    return 1;
}




void phymmarge_swap(phymmarge_t *s, phymmarge_t *d)
{
    phymmarge_t tmp;
    phymmarge_t_init(&tmp);
    memcopy(s, &tmp, sizeof(phymmarge_t));
    memcopy(d, s, sizeof(phymmarge_t));
    memcopy(&tmp, d, sizeof(phymmarge_t));
    return;
}

void phymmarge_sort(phymmarge_t *argp, u64_t nr)
{
    u64_t i, j, k = nr - 1;
    for (j = 0; j < k; j++)
    {
        for (i = 0; i < k - j; i++)
        {
            if (argp[i].pmr_saddr > argp[i + 1].pmr_saddr)
            {
                phymmarge_swap(&argp[i], &argp[i + 1]);
            }
        }
    }
    return;
}


u64_t initpmrge_core(e820map_t *e8sp, u64_t e8nr, phymmarge_t *pmargesp)
{
    u64_t retnr = 0;
    if (0 == e8sp || 0 == pmargesp || e8nr < 1)
    {
        return 0;
    }

    for (u64_t i = 0; i < e8nr; i++)
    {

        if (init_one_pmrge(&e8sp[i], &pmargesp[i]) == 0)
        {
            return retnr;
        }
        retnr++;
    }

    return retnr;
}

void init_phymmarge()
{
    machbstart_t *mbsp = &kmachbsp;
    phymmarge_t *pmarge_adr = 0;
    u64_t pmrgesz = 0;


    ret_phymmarge_adrandsz(mbsp, &pmarge_adr, &pmrgesz);
    if (0 == pmarge_adr || 0 == pmrgesz)
    {
        system_error("init_phymmarge->NULL==pmarge_adr||0==pmrgesz\n");
        return;
    }

    u64_t tmppmrphyadr = mbsp->mb_nextwtpadr;
    if ((adr_t)tmppmrphyadr != ((adr_t)pmarge_adr))
    {
        system_error("init_phymmarge->tmppmrphyadr!=pmarge_adr2phyadr\n");
        return;
    }

    e820map_t *e8p = (e820map_t *)((adr_t)(mbsp->mb_e820padr));

    u64_t ipmgnr = initpmrge_core(e8p, mbsp->mb_e820nr, pmarge_adr);
    if (ipmgnr == 0)
    {
        system_error("init_phymmarge->initpmrge_core ret 0\n");
        return;
    }
    if ((ipmgnr * sizeof(phymmarge_t)) != pmrgesz)
    {
        system_error("init_phymmarge->ipmgnr*sizeof(phymmarge_t))!=pmrgesz\n");
        return;
    }


    mbsp->mb_e820expadr = tmppmrphyadr;
    mbsp->mb_e820exnr = ipmgnr;
    mbsp->mb_e820exsz = ipmgnr * sizeof(phymmarge_t);

    mbsp->mb_nextwtpadr = (((mbsp->mb_e820expadr + mbsp->mb_e820exsz) + ((1UL << 12))-1) & ~(((1UL << 12))-1));


    phymmarge_sort(pmarge_adr, ipmgnr);
    return;
}

void init_halmm()
{

    init_phymmarge();



    init_memmgr();
    return;
}
