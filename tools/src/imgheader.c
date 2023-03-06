#include "ctrlhead.h"

imgzone_t imgzn;
binfhead_t ifhead;
binfhead_t ofhead;

void imgdsc_init(imghdsc_t *initp)
{
    char *chp = (char *)initp;
    chp[0] = 'L'; // LMOSMDSK
    chp[1] = 'M';
    chp[2] = 'O';
    chp[3] = 'S';
    chp[4] = 'M';
    chp[5] = 'D';
    chp[6] = 'S';
    chp[7] = 'K';

    initp->sum = 0;
    initp->soff = 0;
    initp->eoff = 0;
    initp->sz = sizeof(imghdsc_t);

    initp->ldr_soff = 0;
    initp->ldr_eoff = 0;
    initp->ldr_sz = 0;
    initp->ldr_sum = 0;

    initp->fhdsc_soff = 0;
    initp->fhdsc_eoff = 0;
    initp->fhdsc_sz = 0;
    initp->fhdsc_sum = 0;

    initp->file_soff = 0;
    initp->file_eoff = 0;
    initp->file_sz = 0;
    initp->file_sum = 0;

    initp->ldr_nr = 0;
    initp->fhdsc_nr = 0;
    initp->file_nr = 0;
    initp->endgic = MDC_ENDGIC;
    initp->version = MDC_RVGIC;
    return;
}

void init_imghead()
{
    imgzone_init(&imgzn);
    binfhead_init(&ifhead);
    binfhead_init(&ofhead);
    return;
}

void imgzone_init(imgzone_t *initp)
{
    fzone_init(&initp->ldr_zn);
    fzone_init(&initp->imghdsc_zn);
    fzone_init(&initp->fhdsc_zn);
    fzone_init(&initp->file_zn);
}

void fzone_init(fzone_t *initp)
{
    initp->start_pos = 0;
    initp->curr_pos = 0;
    initp->end_pos = 0;
}

void binfhead_init(binfhead_t *initp)
{
    list_init(&initp->bfh_list);
    initp->bfh_rw = 0;
    initp->bfh_rwretstus = 0;
    initp->bfh_sfadr = initp;
    initp->bfh_sfsz = sizeof(binfhead_t);
    initp->bfh_fd = -1;
    initp->bfh_fname = NULL;
    initp->bfh_fsz = 0;
    initp->bfh_rwfcurrbyte = 0;
    initp->bfh_fonerwbyte = 0;
    initp->bfh_rwcount = 0;
    initp->bfh_fsum = 0;
    initp->bfh_buf = NULL;
    initp->bfh_bufsz = 0;
    initp->bfh_rbcurrp = NULL;
    return;
}

imgzone_t *ret_imgzone()
{
    return &imgzn;
}

binfhead_t *ret_outfhead()
{
    return &ofhead;
}

binfhead_t *ret_infhead()
{
    return &ifhead;
}