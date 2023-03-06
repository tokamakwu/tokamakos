#ifndef _MEM_H
#define _MEM_H

#define MEMFLAG_ALLOC 1
#define MEMFLAG_FREE 2

void *tk_mem(long msize, void *mfradr, uint_t mflg);
void tk_memcpy(void *dest, const void *src, size_t n);
void tk_memclr(void *p, int c, size_t n);

#endif