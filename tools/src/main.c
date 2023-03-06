#include "ctrlhead.h"

// 调用方式: xxx -grub <grubfile> -f inputf1 inputf2 -o outfile
int main(int argc, char *argv[])
{
    tk_param(argc, argv); // 处理参数
    init_imghead();       // 初始化文件头信息
    set_imghead();        // 设置文件头信息
    new_outimg_file();
    if (write_imginitblk() == -1)
    {
        img_error("write initblk error");
    }

    if (write_ldrhead() == -1)
    {
        img_error("write ldrheader error");
    }

    char *infname = ret_next_infile();
    sint_t retsz = -1;
    while (infname != NULL)
    {
        retsz = write_infile(infname);
        if (retsz == -1)
        {
            img_error("write infile error");
        }
        infname = ret_next_infile();
    }

    if (write_headdsc() == -1)
    {
        img_error("write headdsc error");
    }

    return 0;
}
