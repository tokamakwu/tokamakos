#include "ctrlhead.h"

void set_imghead()
{
    imgzone_t *imgznp = ret_imgzone();
    img_config_setzone(&imgznp->ldr_zn, 0, 0, 0xfff);
    img_config_setzone(&imgznp->imghdsc_zn, 0x1000, 0x1000, 0x1fff);

    uint_t file_nr = ret_infilenr();
    if (file_nr == 0)
    {
        img_error("no input file");
    }
    uint_t fhdblksz = BLK_ALIGN(file_nr * 256);
    img_config_setzone(&imgznp->fhdsc_zn, 0x2000, 0x2000, 0x2000 + fhdblksz - 1);

    uint_t filesz = ret_allinfilesz();
    img_config_setzone(&imgznp->file_zn, 0x2000 + fhdblksz, 0x2000 + fhdblksz, 0x2000 + fhdblksz + filesz - 1);
    return;
}

void img_config_setzone(fzone_t *fp, uint_t start_pos, uint_t curr_pos, uint_t end_pos)
{
    fp->start_pos = start_pos;
    fp->curr_pos = curr_pos;
    fp->end_pos = end_pos;
    return;
}

// 设置缓冲区和文件句柄
void new_outimg_file()
{
    char *outfname = retout_pathname();
    binfhead_t *bfhdp = ret_outfhead();
    if (outfname == NULL || bfhdp == NULL)
    {
        img_error("no outimg name or no outfile binhead");
    }

    int fd = newoutimg(outfname);
    if (fd == -1)
    {
        img_error("open outfile error");
    }

    void *binbuf = tk_mem(BINFH_BUF_SZ, NULL, MEMFLAG_ALLOC);
    if (binbuf == NULL)
    {
        if (tk_closefile(fd) == -1)
        {
            img_error("close file error and alloc binbuf error");
        }
        img_error("allocbuf error");
        return;
    }
    bfhdp->bfh_rw = BINFH_R;
    bfhdp->bfh_fd = fd;
    bfhdp->bfh_fname = outfname;
    bfhdp->bfh_fonerwbyte = BINFH_ONERW_SZ;
    bfhdp->bfh_fsum = 0;
    bfhdp->bfh_buf = binbuf;
    bfhdp->bfh_bufsz = BINFH_BUF_SZ;
    bfhdp->bfh_rbcurrp = binbuf;
    return;
}

int newoutimg(char *pathname)
{
    return tk_newfile(pathname, O_RDWR | O_CREAT | O_TRUNC, 0777);
}

int write_imginitblk()
{
    uint_t file_nr = ret_infilenr();
    if (file_nr == 0)
    {
        img_error("no input file");
        return -1;
    }
    uint_t fhdblk_cnt = BLK_ALIGN(file_nr * 256) >> 12;
    fhdblk_cnt += 2;
    void *buf = tk_mem(BINFH_BUF_SZ, NULL, MEMFLAG_ALLOC);
    if (buf == NULL)
        return -1;
    tk_memclr(buf, 0, BINFH_BUF_SZ);

    binfhead_t *bfhdp = ret_outfhead();
    for (uint_t i = 0; i < fhdblk_cnt; i++)
    {
        ssize_t sz = tk_writefile((int)bfhdp->bfh_fd, buf, (size_t)BINFH_BUF_SZ);
        if (sz == -1)
        {
            if (tk_mem(0, buf, MEMFLAG_FREE) == NULL)
            {
                img_error("write imginit blk error and freebuf error");
                return -1;
            }
            return -1;
        }
    }

    if (tk_mem(0, buf, MEMFLAG_FREE) == NULL)
    {
        img_error("freebuf error");
        return -1;
    }
    return 1;
}

sint_t write_ldrhead()
{
    char *pathname = retldr_pathname();
    sint_t rets = -1;

    binfhead_t *inbhp = ret_infhead(), *oubhp = ret_outfhead();

    sint_t sz = tk_ret_filesz(pathname);
    if (sz > BINFH_BUF_SZ || sz == 0)
    {
        img_error("ldr file over 4k or empty");
        return -1;
    }

    if (alloc_inputfile(pathname, inbhp) == -1)
    {
        img_error("alloc ldr input file error");
        return -1;
    }

    if (write_ldr_file(inbhp, oubhp) == -1)
    {
        rets = -1;
        img_error("write ldr file error");
    }
    rets = inbhp->bfh_fsz;
    if (free_inputfile(inbhp) == -1)
    {
        rets = -1;
        img_error("free input file error");
        return -1;
    }
    return rets;
}

int alloc_inputfile(char *pathname, binfhead_t *infhp)
{
    if (pathname == NULL || infhp == NULL)
        return -1;

    int fd = tk_openfile(pathname, O_RDWR);
    if (fd == -1)
    {
        printf("open file name:%s ", pathname);
        img_error("open file error");
        return -1;
    }

    uint_t fsz = tk_ret_filesz(pathname);
    if (fsz == 0)
    {
        if (tk_closefile(fd) == -1)
        {
            img_error("file is empty and close fd error");
        }
        img_error("file is empty");
        return -1;
    }

    void *buf = tk_mem(BINFH_BUF_SZ, NULL, MEMFLAG_ALLOC);
    if (buf == NULL)
    {
        if (tk_closefile(fd) == -1)
        {
            img_error("alloc buf error and close fd error");
        }
        img_error("alloc buf error");
        return -1;
    }

    infhp->bfh_rw = BINFH_R;
    infhp->bfh_fd = fd;
    infhp->bfh_fname = pathname;
    infhp->bfh_fsz = fsz;
    infhp->bfh_fonerwbyte = BINFH_ONERW_SZ;
    infhp->bfh_fsum = 0;
    infhp->bfh_buf = buf;
    infhp->bfh_bufsz = BINFH_BUF_SZ;
    infhp->bfh_rbcurrp = buf;
    return fd;
}

int write_ldr_file(binfhead_t *ibfhp, binfhead_t *obfhp)
{
    int rets = -1;
    set_ldrfile_currpos(obfhp);

    for (; ibfhp->bfh_rwretstus != BINFH_RWALL_OK;)
    {
        read_file2buf(ibfhp);
        if (ibfhp->bfh_rwretstus == BINFH_RWONE_ER)
        {
            rets = -1;
            img_error("read input file error");
            goto err_ret;
        }

        copy_infbuf2oufbuf(ibfhp, obfhp);
        write_buf2file(obfhp);
        if (obfhp->bfh_rwretstus == BINFH_RWONE_ER)
        {
            rets = -1;
            img_error("write ldr error");
            goto err_ret;
        }
    }
    update_ldrfile_currpos(obfhp);
    rets = 1;
err_ret:
    return rets;
}

void copy_infbuf2oufbuf(binfhead_t *ifhdp, binfhead_t *ofhdp)
{
    tk_memcpy(ofhdp->bfh_buf, ifhdp->bfh_buf, ifhdp->bfh_fonerwbyte);
    return;
}

void write_buf2file(binfhead_t *fhdp)
{
    ssize_t sz = tk_writefile((int)fhdp->bfh_fd, fhdp->bfh_buf, (size_t)fhdp->bfh_fonerwbyte);

    if (sz == -1)
    {
        fhdp->bfh_rwretstus = BINFH_RWONE_ER;
        return;
    }

    fhdp->bfh_rwcount++;
    fhdp->bfh_rwfcurrbyte += sz;
    fhdp->bfh_rwretstus = BINFH_RWONE_OK;
    return;
}

void read_file2buf(binfhead_t *bfhdp)
{
    tk_memclr(bfhdp->bfh_buf, 0, bfhdp->bfh_fonerwbyte);
    ssize_t sz = tk_readfile((int)bfhdp->bfh_fd, bfhdp->bfh_buf, (size_t)bfhdp->bfh_fonerwbyte);
    if (sz == -1)
    {
        bfhdp->bfh_rwretstus = BINFH_RWONE_ER;
        return;
    }
    bfhdp->bfh_rwcount++;
    bfhdp->bfh_rwfcurrbyte += sz;
    if (bfhdp->bfh_rwfcurrbyte == bfhdp->bfh_fsz)
    {
        bfhdp->bfh_rwretstus = BINFH_RWALL_OK;
        return;
    }
    bfhdp->bfh_rwretstus = BINFH_RWONE_OK;
    return;
}

void update_ldrfile_currpos(binfhead_t *fhdp)
{
    imgzone_t *imgzp = ret_imgzone();
    off_t off = tk_seekfile((int)fhdp->bfh_fd, 0, SEEK_CUR);
    if (off == -1)
    {
        img_error("set file pos error");
    }
    imgzp->ldr_zn.curr_pos = off;
}

void set_ldrfile_currpos(binfhead_t *bfhdp)
{
    imgzone_t *imgzp = ret_imgzone();
    uint_t pos = imgzp->ldr_zn.curr_pos;
    off_t off = tk_seekfile((int)bfhdp->bfh_fd, pos, SEEK_SET);
    if (off == -1)
    {
        img_error("set file pos error");
    }
    return;
}

int free_inputfile(binfhead_t *fhdp)
{
    if (fhdp == NULL)
        return -1;
    int fd = tk_closefile((int)fhdp->bfh_fd);
    if (fd == -1)
    {
        img_error("close fd error");
        return -1;
    }

    void *buf = tk_mem(0, fhdp->bfh_buf, MEMFLAG_FREE);
    if (buf == NULL)
    {
        img_error("free buf error");
        return -1;
    }

    binfhead_init(fhdp);
    return fd;
}

sint_t write_infile(char *pathname)
{
    sint_t rets = -1;
    binfhead_t *inbhp = ret_infhead(), *oubhp = ret_outfhead();
    if (alloc_inputfile(pathname, inbhp) == -1)
    {
        img_error("alloc common input file error");
    }

    uint_t soff = ret_infile_currpos();
    if (write_one_file(inbhp, oubhp) == -1)
    {
        rets = -1;
        printf("write fname: %s ", pathname);
        img_error("write one file error");
    }
    uint_t eoff = ret_infile_currpos();

    if (write_one_fhdsc(oubhp, soff, eoff - 1, inbhp->bfh_fsz, inbhp->bfh_fname) == -1)
    {
        rets = -1;
        printf("write file desc: %s ", pathname);
        img_error("write one file desc error");
    }
    rets = inbhp->bfh_fsz;
    if (free_inputfile(inbhp) == -1)
    {
        rets = -1;
        img_error("free common input file error");
    }
    return rets;
}

int write_one_fhdsc(binfhead_t *bfhp, uint_t soff, uint_t eoff, uint_t fsz, char *fname)
{
    if (sizeof(fhdsc_t) != FHDSC_SZMAX)
    {
        return -1;
    }

    size_t fname_len = strlen(fname);
    if (fname_len >= FHDSC_NMAX)
        return -1;

    fhdsc_t *fdscbuf = (fhdsc_t *)tk_mem(sizeof(fhdsc_t), NULL, MEMFLAG_ALLOC);
    if (fdscbuf == NULL)
    {
        return -1;
    }

    fhdsc_init(fdscbuf);
    fdscbuf->soff = soff;
    fdscbuf->eoff = eoff;
    fdscbuf->sz = fsz;

    // 删除文件名中的路径, 只保留文件名, 因为后面在OS的加载时查找文件只查找文件名
    strcpy(fdscbuf->name, tk_ret_fnameonly(fname));

    set_fhdsc_currpos(bfhp);
    ssize_t sz = tk_writefile((int)bfhp->bfh_fd, (void *)fdscbuf, (size_t)sizeof(fhdsc_t));
    if (sz == -1)
    {
        img_error("write fhdsc error");
        return -1;
    }

    update_fhddsc_currpos(bfhp);
    if (tk_mem(0, fdscbuf, MEMFLAG_FREE) == NULL)
    {
        img_error("free fhdsc error");
        return -1;
    }
    return 1;
}

void fhdsc_init(fhdsc_t *initp)
{
    initp->type = 0;
    initp->subtype = 0;
    initp->stuts = 0;
    initp->id = 0;
    initp->soff = 0;
    initp->eoff = 0;
    initp->sz = 0;
    initp->sum = 0;
    for (uint_t i = 0; i < FHDSC_NMAX; i++)
    {
        initp->name[i] = 0;
    }
    return;
}

void set_fhdsc_currpos(binfhead_t *bfhp)
{
    imgzone_t *imgzp = ret_imgzone();
    uint_t pos = imgzp->fhdsc_zn.curr_pos;
    off_t off = tk_seekfile((int)bfhp->bfh_fd, pos, SEEK_SET);
    if (off == -1)
    {
        img_error("set fhdesc seek error");
    }
    return;
}

void update_fhddsc_currpos(binfhead_t *bfhp)
{
    imgzone_t *imgzp = ret_imgzone();
    off_t off = tk_seekfile((int)bfhp->bfh_fd, 0, SEEK_CUR);
    if (off == -1)
    {
        img_error("set seek error");
    }
    imgzp->fhdsc_zn.curr_pos = off;
    return;
}

uint_t ret_infile_currpos()
{
    imgzone_t *imgzp = ret_imgzone();
    uint_t pos = imgzp->file_zn.curr_pos;
    return pos;
}

void set_infile_currpos(binfhead_t *fhp)
{
    imgzone_t *imgzp = ret_imgzone();
    uint_t pos = imgzp->file_zn.curr_pos;

    off_t off = tk_seekfile((int)fhp->bfh_fd, pos, SEEK_SET);
    if (off == -1)
    {
        img_error("set seek error");
    }
    return;
}

int write_one_file(binfhead_t *ibfhp, binfhead_t *obfhp)
{
    int rets = -1;
    set_infile_currpos(obfhp);

    for (; ibfhp->bfh_rwretstus != BINFH_RWALL_OK;)
    {
        read_file2buf(ibfhp);
        if (ibfhp->bfh_rwretstus == BINFH_RWONE_ER)
        {
            rets = -1;
            img_error("read file error");
            goto err_ret;
        }
        copy_infbuf2oufbuf(ibfhp, obfhp);
        write_buf2file(obfhp);
        if (obfhp->bfh_rwretstus == BINFH_RWONE_ER)
        {
            rets = -1;
            img_error("write file error");
            goto err_ret;
        }
    }
    update_infile_currpos(obfhp);
    rets = 1;
err_ret:
    return rets;
}

void update_infile_currpos(binfhead_t *fhdp)
{
    imgzone_t *imgzp = ret_imgzone();
    off_t off = tk_seekfile((int)fhdp->bfh_fd, 0, SEEK_CUR);
    if (off == -1)
    {
        img_error("set seek error");
    }
    imgzp->file_zn.curr_pos = off;
    return;
}

sint_t write_headdsc()
{
    binfhead_t *oubhp = ret_outfhead();
    uint_t file_nr = ret_infilenr();

    void *buf = tk_mem(BINFH_BUF_SZ, NULL, MEMFLAG_ALLOC);
    if (buf == NULL)
        return -1;

    tk_memclr(buf, 0, BINFH_BUF_SZ);

    imghdsc_t *dsc = (imghdsc_t *)buf;
    imgdsc_init(dsc);

    imgzone_t *imgzp = ret_imgzone();

    dsc->soff = imgzp->imghdsc_zn.start_pos;
    dsc->eoff = imgzp->imghdsc_zn.end_pos;
    dsc->sz = sizeof(imghdsc_t);

    dsc->ldr_soff = imgzp->ldr_zn.start_pos;
    dsc->ldr_eoff = imgzp->ldr_zn.end_pos;
    dsc->ldr_sz = imgzp->ldr_zn.curr_pos - imgzp->ldr_zn.start_pos;

    dsc->fhdsc_soff = imgzp->fhdsc_zn.start_pos;
    dsc->fhdsc_eoff = imgzp->fhdsc_zn.end_pos;
    dsc->fhdsc_sz = imgzp->fhdsc_zn.curr_pos - imgzp->fhdsc_zn.start_pos;

    dsc->file_soff = imgzp->file_zn.start_pos;
    dsc->file_eoff = imgzp->file_zn.end_pos;
    dsc->file_sz = imgzp->file_zn.curr_pos - imgzp->file_zn.start_pos;

    dsc->ldr_nr = 1;
    dsc->fhdsc_nr = file_nr;
    dsc->file_nr = file_nr;

    set_imghdsc_currpos(oubhp);
    ssize_t sz = tk_writefile((int)oubhp->bfh_fd, buf, (size_t)BINFH_BUF_SZ);
    if (sz == -1)
    {
        if (tk_mem(0, buf, MEMFLAG_FREE) == NULL)
        {
            img_error("write head dsc error and free buf error");
            return -1;
        }
        img_error("write head dsc error");
        return -1;
    }
    printf("write file count: %ld\n", file_nr);
    printf("image file size: %d\n", (int)dsc->file_sz);

    update_imghdsc_currpos(oubhp);
    if (tk_mem(0, buf, MEMFLAG_FREE) == NULL)
    {
        img_error("free buf error");
        return -1;
    }
    return 1;
}

void set_imghdsc_currpos(binfhead_t *bfhp)
{
    imgzone_t *imgzp = ret_imgzone();
    uint_t pos = imgzp->imghdsc_zn.curr_pos;

    off_t off = tk_seekfile((int)bfhp->bfh_fd, pos, SEEK_SET);
    if (off == -1)
    {
        img_error("set seek error");
    }

    return;
}

void update_imghdsc_currpos(binfhead_t *bfhp)
{
    imgzone_t *imgzp = ret_imgzone();
    uint_t pos = imgzp->imghdsc_zn.curr_pos;

    off_t off = tk_seekfile((int)bfhp->bfh_fd, pos, SEEK_SET);
    if (off == -1)
    {
        img_error("set leek");
    }
    imgzp->imghdsc_zn.curr_pos = off;
    return;
}