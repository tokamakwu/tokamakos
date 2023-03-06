#ifndef _PARAM_H
#define _PARAM_H

typedef struct s_param
{
    int argc;
    char **argv;

    uint_t inf_snr;
    uint_t inf_enr;
    uint_t of_nr;
    uint_t inf_curr;
    uint_t boot_nr; // grub header file nr
    uint_t imgmode;
    uint_t inf_nr;
} param_t;

void tk_param(int, char **);
void param_is_grubhead();
void param_is_inputfile();
void param_is_outfile();
param_t *ret_param();
uint_t ret_infilenr();
uint_t ret_allinfilesz();
char *retout_pathname();
char *retldr_pathname();
char *ret_next_infile();

#endif