#include "ctrlhead.h"

param_t cmd_param;

void tk_param(int argc, char **argv)
{
    cmd_param.argc = argc;
    cmd_param.argv = argv;

    param_is_grubhead();
    param_is_inputfile();
    param_is_outfile();

#ifdef DEBUG
    uint_t i = 0;
    printf("intput file: ");
    for (i = cmd_param.inf_snr; i <= cmd_param.inf_enr; i++)
    {
        printf("%s ", cmd_param.argv[i]);
    }

    i = cmd_param.of_nr;
    printf("\noutput file: %s", cmd_param.argv[i]);

    i = cmd_param.boot_nr;
    printf("\ngrub file: %s \n", cmd_param.argv[i]);
#endif
}

// 读取参数后的第一个值
void param_is_grubhead()
{
    uint_t find = 0;
    // 0 是命令名称, 需要跳过
    for (uint_t i = 1; i < (uint_t)cmd_param.argc; i++)
    {
        if (strcmp(cmd_param.argv[i], "-grub") == 0)
        {
            find = i + 1;
            goto ok_label;
        }
    }
    find = 0;

ok_label:
    if (find == 0 || find >= (uint_t)cmd_param.argc)
    {
        img_error("no found grub header file");
    }
    else if (cmd_param.argv[find][0] == '-')
    {
        img_error("grub param is not file name");
    }
    cmd_param.boot_nr = find;
    return;
}

// -f 后的所有合法值都需要读取
void param_is_inputfile()
{
    uint_t start = 0, end = 0;
    for (uint_t i = 0; i < (uint_t)cmd_param.argc; i++)
    {
        if (strcmp(cmd_param.argv[i], "-f") == 0)
        {
            start = i + 1;
            goto ok_start_label;
        }
    }
    start = 0;
ok_start_label:
    if (start == 0 || start >= (uint_t)cmd_param.argc)
    {
        img_error("no input file");
    }

    end = start;
    for (; end < (uint_t)cmd_param.argc; end++)
    {
        if (cmd_param.argv[end][0] == '-')
        {
            end--;
            goto ok_end_label;
        }
    }
    end = end - 1; // 有可能

ok_end_label:
    if (end < start)
    {
        img_error("input param no files");
    }
    cmd_param.inf_snr = start;
    cmd_param.inf_enr = end;
    return;
}

// 读取参数后的第一个值
void param_is_outfile()
{
    uint_t find = 0;
    for (uint_t i = 1; i < (uint_t)cmd_param.argc; i++)
    {
        if (strcmp(cmd_param.argv[i], "-o") == 0)
        {
            find = i + 1;
            goto ok_label;
        }
    }
    find = 0;

ok_label:
    if (find == 0 || find > (uint_t)cmd_param.argc)
    {
        img_error("no output file");
    }
    else if (cmd_param.argv[find][0] == '-')
    {
        img_error("output param no reguler file");
    }

    cmd_param.of_nr = find;
    return;
}

param_t *ret_param()
{
    return &cmd_param;
}

uint_t ret_infilenr()
{
    if (cmd_param.inf_enr < cmd_param.inf_snr)
        return 0;
    return (cmd_param.inf_enr - cmd_param.inf_snr) + 1;
}

uint_t ret_allinfilesz()
{
    uint_t total_sz = 0, fsz = 0;
    uint_t i = cmd_param.inf_snr, j = cmd_param.inf_enr;
    if (i == 0 || i < j) // 没有输入文件或输入文件非法, 直接返回0
        return 0;

    for (; i < j; i++)
    {
        fsz = tk_ret_filesz(cmd_param.argv[i]);
        if (fsz == 0) // 只要有一个文件的大小=0, 就直接返回0
            return 0;
        total_sz += fsz;
    }
    return total_sz;
}

char *retout_pathname()
{
    uint_t i = cmd_param.of_nr;
    if (cmd_param.of_nr == 0 || i >= cmd_param.argc)
        return NULL;

    return cmd_param.argv[i];
}

char *retldr_pathname()
{
    uint_t i = cmd_param.boot_nr;
    if (i == 0 || i >= cmd_param.argc)
        return NULL;

    return cmd_param.argv[i];
}

char *ret_next_infile()
{
    if (cmd_param.inf_snr == 0 || cmd_param.inf_enr == 0 ||
        cmd_param.inf_snr + cmd_param.inf_curr > cmd_param.inf_enr)
        return NULL;

    uint_t nextnr = cmd_param.inf_curr + cmd_param.inf_snr;
    if (nextnr >= cmd_param.argc)
        return NULL;

    cmd_param.inf_curr++;
    return cmd_param.argv[nextnr];
}