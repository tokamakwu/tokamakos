#ifndef _FILE_H
#define _FILE_H

uint_t tk_ret_filesz(const char *pathname);
int tk_newfile(const char *pathname, int flags, mode_t mode);
int tk_closefile(int fd);
ssize_t tk_writefile(int fd, const void *buf, size_t count);
int tk_openfile(const char *pathname, int flags);
ssize_t tk_readfile(int fd, void *buf, size_t count);
off_t tk_seekfile(int fd, off_t offset, int whence);
sint_t tk_retfcurpos(int fd);

#endif