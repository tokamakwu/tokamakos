#include "ctrlhead.h"

void *tk_mem(long msz, void *adr, uint_t flag)
{
    if (flag == MEMFLAG_ALLOC)
    {
        return malloc(msz);
    }

    if (flag == MEMFLAG_FREE)
    {
        free(adr);
        return (void *)1; // 返回非NULL值
    }
    return NULL;
}

void tk_memcpy(void *dst, const void *src, size_t n)
{
    void *buf = memcpy(dst, src, n);
    if (buf == NULL)
    {
        img_error("memcpy error");
    }
    return;
}

void tk_memclr(void *p, int c, size_t n)
{
    void *buf = memset(p, c, n);
    if (buf == NULL)
    {
        img_error("memory clear error");
    }
    return;
}