#ifndef _IMGHEADER_H
#define _IMGHEADER_H

#define BINFH_R 1
#define BINFH_W 2

#define BINFH_BUF_SZ 0x1000
#define BINFH_ONERW_SZ 0x1000
#define BINFH_RWONE_OK 1
#define BINFH_RWONE_ER 2
#define BINFH_RWALL_OK 3

#define FHDSC_NMAX 192 // 文件名长度
#define FHDSC_SZMAX 256
#define MDC_ENDGIC 0xaaffaaffaaffaaff
#define MDC_RVGIC 0xffaaffaaffaaffaa

// 映像文件头描述符
typedef struct s_imghdsc
{
    u64_t mgic; // 映像文件标识
    u64_t sum;  // 未使用
    u64_t soff; // 未使用
    u64_t eoff; // 未使用
    u64_t sz;   // 未使用

    u64_t ldr_soff; // 映像文件中二级引导器的开始偏移
    u64_t ldr_eoff; // 映像文件中二级引导器的结束偏移
    u64_t ldr_sz;   // 映像文件中二级引导器的实际大小
    u64_t ldr_sum;  // 映像文件中二级引导器的校验和

    u64_t fhdsc_soff; // 映像文件中文件头描述的开始偏移
    u64_t fhdsc_eoff; // 映像文件中文件头描述的结束偏移
    u64_t fhdsc_sz;   // 映像文件中文件头描述的实际大小
    u64_t fhdsc_sum;  // 映像文件中文件头描述的校验和

    u64_t file_soff; // 映像文件中文件数据的开始偏移
    u64_t file_eoff; // 映像文件中文件数据的结束偏移
    u64_t file_sz;   // 映像文件中文件数据的实际大小
    u64_t file_sum;  // 映像文件中文件数据的校验和

    u64_t ldr_nr;   // 映像文件中二级引导器的文件头描述符的索引号
    u64_t fhdsc_nr; // 映像文件中文件头描述符有多少个
    u64_t file_nr;  // 映像文件中文件头有多少个

    u64_t endgic;  // 映像文件结束标识
    u64_t version; // 映像文件版本
} imghdsc_t;

#define FHDSC_NMAX 192 // 文件名长度
// 文件头描述符
typedef struct s_fhdsc
{
    u64_t type;            // 文件类型
    u64_t subtype;         // 文件子类型
    u64_t stuts;           // 文件状态
    u64_t id;              // 文件id
    u64_t soff;            // 文件在映像文件位置开始偏移
    u64_t eoff;            // 文件在映像文件的结束偏移
    u64_t sz;              // 文件实际大小
    u64_t sum;             // 文件校验和
    char name[FHDSC_NMAX]; // 文件名
} fhdsc_t;

typedef struct s_fzone
{
    uint_t start_pos;
    uint_t end_pos;
    uint_t curr_pos;
} fzone_t;

typedef struct s_imgzone
{
    fzone_t ldr_zn;     // 4K GRUB 信息
    fzone_t imghdsc_zn; // 映像文件头描述符信息
    fzone_t fhdsc_zn;   // 文件头描述符信息
    fzone_t file_zn;    // 文件头中对应的文件内容信息
} imgzone_t;

typedef struct s_binfhead
{
    list_h_t bfh_list;    // 未使用
    uint_t bfh_rw;        // 操作模式
    uint_t bfh_rwretstus; // 记录当前操作的状态, 成功、失败
    void *bfh_sfadr;      // 未使用
    uint_t bfh_sfsz;      // 记录本结构体大小
    sint_t bfh_fd;        // 当前操作的文件句柄
    char *bfh_fname;      // 文件名称
    uint_t bfh_fsz;       // 文件实际大小
    uint_t bfh_rwfcurrbyte;
    uint_t bfh_fonerwbyte;
    uint_t bfh_rwcount;
    uint_t bfh_fsum; // 校验和, 也未使用
    void *bfh_buf;
    uint_t bfh_bufsz;
    void *bfh_rbcurrp;
} binfhead_t;

void init_imghead();
void binfhead_init(binfhead_t *initp);
// void img_config_setzone(fzone_t *fzn, uint_t start_pos, uint_t curr_pos, uint_t end_pos);

void imgzone_init(imgzone_t *initp);
void fzone_init(fzone_t *initp);
imgzone_t *ret_imgzone();
binfhead_t *ret_outfhead();
binfhead_t *ret_infhead();
void imgdsc_init(imghdsc_t *initp);

#endif