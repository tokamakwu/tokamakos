#ifndef _CORE_H
#define _CORE_H

void set_imghead();
void img_config_setzone(fzone_t *, uint_t start_pos, uint_t curr_pos, uint_t end_pos);
void new_outimg_file();
int newoutimg(char *pathname);
int write_imginitblk();
sint_t write_ldrhead();
int alloc_inputfile(char *pathname, binfhead_t *infhp);
int write_ldr_file(binfhead_t *ibfhp, binfhead_t *obfhp);
void copy_infbuf2oufbuf(binfhead_t *ifhdp, binfhead_t *ofhdp);
void write_buf2file(binfhead_t *);
void read_file2buf(binfhead_t *);
void update_ldrfile_currpos(binfhead_t *);
void set_ldrfile_currpos(binfhead_t *);
int free_inputfile(binfhead_t *);
sint_t write_infile(char *pathname);

uint_t ret_infile_currpos();
int write_one_fhdsc(binfhead_t *bfhp, uint_t soff, uint_t eoff, uint_t fsz, char *fname);
void fhdsc_init(fhdsc_t *initp);
void set_fhdsc_currpos(binfhead_t *bfhp);
void update_fhddsc_currpos(binfhead_t *bfhp);
void set_infile_currpos(binfhead_t *fhp);
int write_one_file(binfhead_t *ibfhp, binfhead_t *obfhp);
void update_infile_currpos(binfhead_t *fhdp);
sint_t write_headdsc();
void update_imghdsc_currpos(binfhead_t *bfhp);
void set_imghdsc_currpos(binfhead_t *bfhp);

#endif