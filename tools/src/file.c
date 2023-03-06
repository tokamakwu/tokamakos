#include "ctrlhead.h"

uint_t tk_ret_filesz(const char *pathname)
{
    struct stat buf;
    int err = stat(pathname, &buf);
    if (err < 0) // 调用标准库sys/stat.h 中的state函数, 获取文件信息
    {
        return 0;
    }
    return (unsigned long)buf.st_size;
}

int tk_newfile(const char *pathname, int flags, mode_t mode)
{
    // sys/stat.h
    return open(pathname, flags, mode);
}

int tk_closefile(int fd)
{
    return close(fd);
}

ssize_t tk_writefile(int fd, const void *buf, size_t count)
{
    return write(fd, buf, count);
}

int tk_openfile(const char *pathname, int flags)
{
    return open(pathname, flags);
}

ssize_t tk_readfile(int fd, void *buf, size_t count)
{
    return read(fd, buf, count);
}

off_t tk_seekfile(int fd, off_t offset, int whence)
{
    return lseek(fd, offset, whence);
}

sint_t tk_retfcurpos(int fd)
{
    off_t retf = tk_seekfile(fd, 0, SEEK_CUR);
    if (retf == -1)
    {
        return -1;
    }
    return (sint_t)retf;
}