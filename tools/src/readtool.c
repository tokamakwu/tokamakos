#include "ctrlhead.h"
#include "md5.h"

int main(int argc, char *argv[])
{
    if (argc < 2)
    {
        img_error("请输入合并后的镜像文件名称");
    }

    int fd = tk_openfile(argv[1], O_RDONLY);
    if (fd < 1)
    {
        img_error("open cosmos.eki error");
    }

    void *buf = tk_mem(BINFH_BUF_SZ, NULL, MEMFLAG_ALLOC);
    if (buf == NULL)
    {
        if (tk_closefile(fd) == -1)
        {
            img_error("alloc buf error and close fd error");
        }
        img_error("alloc buf error");
    }
    tk_memclr(buf, 0, BINFH_BUF_SZ);
    if (tk_readfile(fd, buf, (size_t)BINFH_BUF_SZ) == -1)
    {
        img_error("read imghead error");
    }

    u8_t out[16] = {0}; // 记录 md5 结果
    MD5Calc((u8_t *)buf, BINFH_BUF_SZ, out);
    printf("md5sum byte value: ");
    for (int i = 0; i < 16; i++)
    {
        printf("%x ", out[i]);
    }
    printf("\n");

    tk_memclr(buf, 0, BINFH_BUF_SZ); // 复用前面的buf
    if (tk_readfile(fd, buf, (size_t)BINFH_BUF_SZ) == -1)
    {
        img_error("read imghdsc error");
    }

    imghdsc_t *imghdscp = (imghdsc_t *)buf;
    char *chp = (char *)imghdscp;
    printf("mgic: ");
    for (int i = 0; i < 8; i++)
    {
        printf("%c", chp[i]);
    }
    printf("\n");

    u64_t file_nr = (int)imghdscp->file_nr;
    u64_t fhdsc_sz = imghdscp->fhdsc_sz;
    printf("file end offset: %lx\n", imghdscp->file_eoff);

    tk_memclr(buf, 0, BINFH_BUF_SZ); // 复用前面的buf
    if (tk_readfile(fd, buf, (size_t)BINFH_BUF_SZ) == -1)
    {
        img_error("read fhdsc error");
    }
    fhdsc_t *fhdscp = (fhdsc_t *)buf;

    printf("total file count=%ld, fhdsc_sz=%ld\n", file_nr, fhdsc_sz);
    for (u64_t i = 0; i < file_nr; i++)
    {
        printf("fname: %s, fsz=%ld\n", fhdscp[i].name, fhdscp[i].sz);
    }

    if (tk_mem(BINFH_BUF_SZ, buf, MEMFLAG_FREE) == NULL)
    {
        img_error("free memory error");
    }
    return 0;
}