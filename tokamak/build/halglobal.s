	.file	"halglobal.c"
	.stabs	"/home/casper/myoscode/tokamakos/tokamak/build/",100,0,2,.Ltext0
	.stabs	"../hal/x86/halglobal.c",100,0,2,.Ltext0
	.text
.Ltext0:
	.stabs	"gcc2_compiled.",60,0,0,0
	.globl	x64_gdt
	.section	.data,"aw"
	.align 32
	.type	x64_gdt, @object
	.size	x64_gdt, 80
x64_gdt:
	.zero	80
	.stabs	"x64_gdt:G(0,1)=ar(0,2)=@s64;r(0,2);0;01777777777777777777777;;0;0;(0,3)=ar(0,2);0;00000000000000000000011;(0,4)=(0,5)=xss_descriptor:",32,0,10,0
	.stabs	"s_descriptor:T(0,5)=s8limit_low:(0,6)=(0,7)=@s16;r(0,7);0;65535;,0,16;base_low:(0,6),16,16;base_mid:(0,8)=(0,9)=@s8;r(0,9);0;255;,32,8;attr1:(0,8),40,8;limit_high_attr2:(0,8),48,8;base_high:(0,8),56,8;;",128,0,0,0
	.stabs	"u16_t:t(0,6)",128,0,9,0
	.stabs	"short unsigned int:t(0,7)",128,0,0,0
	.stabs	"u8_t:t(0,8)",128,0,8,0
	.stabs	"unsigned char:t(0,9)",128,0,0,0
	.globl	x64_idt
	.align 32
	.type	x64_idt, @object
	.size	x64_idt, 4096
x64_idt:
	.zero	4096
	.stabs	"x64_idt:G(0,10)=ar(0,2);0;00000000000000000000377;(0,11)=(0,12)=xss_GATE:",32,0,11,0
	.stabs	"s_GATE:T(0,12)=s16offset_low:(0,6),0,16;selector:(0,6),16,16;dcount:(0,8),32,8;attr:(0,8),40,8;offset_high:(0,6),48,16;offset_high_h:(0,13)=(0,14)=r(0,14);0;037777777777;,64,32;offset_resv:(0,13),96,32;;",128,0,0,0
	.stabs	"u32_t:t(0,13)",128,0,10,0
	.stabs	"unsigned int:t(0,14)",128,0,0,0
	.globl	x64tss
	.align 32
	.type	x64tss, @object
	.size	x64tss, 104
x64tss:
	.zero	104
	.stabs	"x64tss:G(0,15)=ar(0,2);0;0;(0,16)=(0,17)=xss_X64TSS:",32,0,12,0
	.stabs	"s_X64TSS:T(0,17)=s104reserv0:(0,13),0,32;rsp0:(0,18)=(0,19)=@s64;r(0,19);0;01777777777777777777777;,32,64;rsp1:(0,18),96,64;rsp2:(0,18),160,64;reserv28:(0,18),224,64;ist:(0,20)=ar(0,2);0;00000000000000000000006;(0,18),288,448;reserv92:(0,18),736,64;reserv100:(0,6),800,16;iobase:(0,6),816,16;;",128,0,0,0
	.stabs	"u64_t:t(0,18)",128,0,11,0
	.stabs	"long unsigned int:t(0,19)",128,0,0,0
	.globl	x64_igdt_reg
	.align 8
	.type	x64_igdt_reg, @object
	.size	x64_igdt_reg, 10
x64_igdt_reg:
	.zero	10
	.stabs	"x64_igdt_reg:G(0,21)=ar(0,2);0;0;(0,22)=(0,23)=xss_GDTPTR:",32,0,13,0
	.stabs	"s_GDTPTR:T(0,23)=s10gdtLen:(0,6),0,16;gdtbass:(0,18),16,64;;",128,0,0,0
	.globl	x64_iidt_reg
	.align 8
	.type	x64_iidt_reg, @object
	.size	x64_iidt_reg, 10
x64_iidt_reg:
	.zero	10
	.stabs	"x64_iidt_reg:G(0,24)=(0,25)=xss_IDTPTR:",32,0,14,0
	.stabs	"s_IDTPTR:T(0,25)=s10idtLen:(0,6),0,16;idtbass:(0,18),16,64;;",128,0,0,0
	.stabs	"iidtr_t:t(0,24)",128,0,132,0
	.globl	kmachbsp
	.align 32
	.type	kmachbsp, @object
	.size	kmachbsp, 1207
kmachbsp:
	.zero	1207
	.stabs	"kmachbsp:G(0,26)=(0,27)=xss_MACHBSTART:",32,0,15,0
	.stabs	"s_MACHBSTART:T(0,27)=s1207mb_migc:(0,18),0,64;mb_chksum:(0,18),64,64;mb_krlinitstack:(0,18),128,64;mb_krlitstacksz:(0,18),192,64;mb_imgpadr:(0,18),256,64;mb_imgsz:(0,18),320,64;mb_krlimgpadr:(0,18),384,64;mb_krlsz:(0,18),448,64;mb_krlvec:(0,18),512,64;mb_krlrunmode:(0,18),576,64;mb_kalldendpadr:(0,18),640,64;mb_ksepadrs:(0,18),704,64;mb_ksepadre:(0,18),768,64;mb_kservadrs:(0,18),832,64;mb_kservadre:(0,18),896,64;mb_nextwtpadr:(0,18),960,64;mb_bfontpadr:(0,18),1024,64;mb_bfontsz:(0,18),1088,64;mb_fvrmphyadr:(0,18),1152,64;mb_fvrmsz:(0,18),1216,64;mb_cpumode:(0,18),1280,64;mb_memsz:(0,18),1344,64;mb_e820padr:(0,18),1408,64;mb_e820nr:(0,18),1472,64;mb_e820sz:(0,18),1536,64;mb_e820expadr:(0,18),1600,64;mb_e820exnr:(0,18),1664,64;mb_e820exsz:(0,18),1728,64;mb_memznpadr:(0,18),1792,64;mb_memznnr:(0,18),1856,64;mb_memznsz:(0,18),1920,64;mb_memznchksum:(0,18),1984,64;mb_memmappadr:(0,18),2048,64;mb_memmapnr:(0,18),2112,64;mb_memmapsz:(0,18),2176,64;mb_memmapchksum:(0,18),2240,64;mb_pml4padr:(0,18),2304,64;mb_subpageslen:(0,18),2368,64;mb_kpmapphymemsz:(0,18),2432,64;mb_ebdaphyadr:(0,18),2496,64;mb_mrsdp:(0,28)=(0,29)=xss_MRSDP:,2560,288;mb_ghparm:(0,30)=(0,31)=xss_GRAPH:,2848,6808;;",128,0,0,0
	.stabs	"machbstart_t:t(0,26)",128,0,106,0
	.stabs	"s_MRSDP:T(0,29)=s36rp_sign:(0,18),0,64;rp_chksum:(0,8),64,8;rp_oemid:(0,32)=ar(0,2);0;00000000000000000000005;(0,8),72,48;rp_revn:(0,8),120,8;rp_rsdtphyadr:(0,13),128,32;rp_len:(0,13),160,32;rp_xsdtphyadr:(0,18),192,64;rp_echksum:(0,8),256,8;rp_resv:(0,33)=ar(0,2);0;00000000000000000000002;(0,8),264,24;;",128,0,0,0
	.stabs	"s_GRAPH:T(0,31)=s851gh_mode:(0,13),0,32;gh_x:(0,13),32,32;gh_y:(0,13),64,32;gh_framphyadr:(0,13),96,32;gh_onepixbits:(0,13),128,32;gh_vbemodenr:(0,13),160,32;gh_vifphyadr:(0,13),192,32;gh_vmifphyadr:(0,13),224,32;gh_bank:(0,13),256,32;gh_curdipbnk:(0,13),288,32;gh_nextbnk:(0,13),320,32;gh_banksz:(0,13),352,32;gh_logophyadrs:(0,13),384,32;gh_logophyadre:(0,13),416,32;gh_fontadr:(0,13),448,32;gh_ftsectadr:(0,13),480,32;gh_ftsectnr:(0,13),512,32;gh_fnthight:(0,13),544,32;gh_nxtcharsx:(0,13),576,32;gh_nxtcharsy:(0,13),608,32;gh_linesz:(0,13),640,32;gh_vbeinfo:(0,34)=(0,35)=xss_VBEINFO:,672,4096;gh_vminfo:(0,36)=(0,37)=xss_VBEOMINFO:,4768,2040;;",128,0,0,0
	.stabs	"s_VBEINFO:T(0,35)=s512vbesignature:(0,38)=ar(0,2);0;00000000000000000000003;(0,39)=r(0,39);0;127;,0,32;vbeversion:(0,6),32,16;oemstringptr:(0,13),48,32;capabilities:(0,13),80,32;videomodeptr:(0,13),112,32;totalmemory:(0,6),144,16;oemsoftwarerev:(0,6),160,16;oemvendornameptr:(0,13),176,32;oemproductnameptr:(0,13),208,32;oemproductrevptr:(0,13),240,32;reserved:(0,40)=ar(0,2);0;00000000000000000000335;(0,8),272,1776;oemdata:(0,41)=ar(0,2);0;00000000000000000000377;(0,8),2048,2048;;",128,0,0,0
	.stabs	"s_VBEOMINFO:T(0,37)=s255ModeAttributes:(0,6),0,16;WinAAttributes:(0,8),16,8;WinBAttributes:(0,8),24,8;WinGranularity:(0,6),32,16;WinSize:(0,6),48,16;WinASegment:(0,6),64,16;WinBSegment:(0,6),80,16;WinFuncPtr:(0,13),96,32;BytesPerScanLine:(0,6),128,16;XResolution:(0,6),144,16;YResolution:(0,6),160,16;XCharSize:(0,8),176,8;YCharSize:(0,8),184,8;NumberOfPlanes:(0,8),192,8;BitsPerPixel:(0,8),200,8;NumberOfBanks:(0,8),208,8;MemoryModel:(0,8),216,8;BankSize:(0,8),224,8;NumberOfImagePages:(0,8),232,8;Reserved:(0,8),240,8;RedMaskSize:(0,8),248,8;RedFieldPosition:(0,8),256,8;GreenMaskSize:(0,8),264,8;GreenFieldPosition:(0,8),272,8;BlueMaskSize:(0,8),280,8;BlueFieldPosition:(0,8),288,8;RsvdMaskSize:(0,8),296,8;RsvdFieldPosition:(0,8),304,8;DirectColorModeInfo:(0,8),312,8;PhysBasePtr:(0,13),320,32;Reserved1:(0,13),352,32;Reserved2:(0,6),384,16;LinBytesPerScanLine:(0,6),400,16;BnkNumberOfImagePages:(0,8),416,8;LinNumberOfImagePages:(0,8),424,8;LinRedMaskSize:(0,8),432,8;LinRedFieldPosition:(0,8),440,8;LinGreenMaskSize:(0,8),448,8;LinGreenFieldPosition:(0,8),456,8;LinBlueMaskSize:(0,8),464,8;LinBlueFieldPosition:(0,8),472,8;LinRsvdMaskSize:(0,8),480,8;LinRsvdFieldPosition:(0,8),488,8;MaxPixelClock:(0,13),496,32;Reserved3:(0,42)=ar(0,2);0;00000000000000000000274;(0,8),528,1512;;",128,0,0,0
	.stabs	"char:t(0,39)",128,0,0,0
	.globl	kdftgh
	.align 32
	.type	kdftgh, @object
	.size	kdftgh, 312
kdftgh:
	.zero	312
	.stabs	"kdftgh:G(0,43)=(0,44)=xss_DFTGRAPH:",32,0,16,0
	.stabs	"s_DFTGRAPH:T(0,44)=s312gh_mode:(0,18),0,64;gh_x:(0,18),64,64;gh_y:(0,18),128,64;gh_framphyadr:(0,18),192,64;gh_fvrmphyadr:(0,18),256,64;gh_fvrmsz:(0,18),320,64;gh_onepixbits:(0,18),384,64;gh_onepixbyte:(0,18),448,64;gh_vbemodenr:(0,18),512,64;gh_bank:(0,18),576,64;gh_curdipbnk:(0,18),640,64;gh_nextbnk:(0,18),704,64;gh_banksz:(0,18),768,64;gh_fontadr:(0,18),832,64;gh_fontsz:(0,18),896,64;gh_fnthight:(0,18),960,64;gh_nxtcharsx:(0,18),1024,64;gh_nxtcharsy:(0,18),1088,64;gh_linesz:(0,18),1152,64;gh_deffontpx:(0,45)=(0,13),1216,32;gh_chardxw:(0,18),1280,64;gh_flush:(0,18),1344,64;gh_framnr:(0,18),1408,64;gh_fshdata:(0,18),1472,64;gh_opfun:(0,46)=(0,47)=xss_DFTGHOPS:,1536,960;;",128,0,0,0
	.stabs	"dftgraph_t:t(0,43)",128,0,247,0
	.stabs	"pixl_t:t(0,45)",128,0,83,0
	.stabs	"s_DFTGHOPS:T(0,47)=s120dgo_read:(0,48)=*(0,49)=f(0,50)=(0,19),0,64;dgo_write:(0,48),64,64;dgo_ioctrl:(0,51)=*(0,52)=f(0,53)=(0,54)=@s64;r(0,54);01000000000000000000000;00777777777777777777777;,128,64;dgo_flush:(0,55)=*(0,56)=f(0,57)=(0,57),192,64;dgo_set_bank:(0,58)=*(0,59)=f(0,53),256,64;dgo_readpix:(0,60)=*(0,61)=f(0,45),320,64;dgo_writepix:(0,62)=*(0,63)=f(0,57),384,64;dgo_dxreadpix:(0,60),448,64;dgo_dxwritepix:(0,62),512,64;dgo_set_xy:(0,64)=*(0,65)=f(0,53),576,64;dgo_set_vwh:(0,64),640,64;dgo_set_xyoffset:(0,64),704,64;dgo_get_xy:(0,66)=*(0,67)=f(0,53),768,64;dgo_get_vwh:(0,66),832,64;dgo_get_xyoffset:(0,66),896,64;;",128,0,0,0
	.stabs	"size_t:t(0,50)",128,0,31,0
	.stabs	"sint_t:t(0,53)",128,0,16,0
	.stabs	"long int:t(0,54)",128,0,0,0
	.stabs	"void:t(0,57)",128,0,0,0
	.globl	memmgrob
	.align 32
	.type	memmgrob, @object
	.size	memmgrob, 2816
memmgrob:
	.zero	2816
	.stabs	"memmgrob:G(0,68)=(0,69)=xss_MEMMGROB:",32,0,17,0
	.stabs	"s_MEMMGROB:T(0,69)=s2816mo_list:(0,70)=(0,71)=xss_LIST_H:,0,128;mo_lock:(0,72)=(0,73)=s4lock:(0,74)=B(0,13),0,32;;,128,32;mo_stus:(0,75)=(0,19),192,64;mo_flgs:(0,75),256,64;mo_sem:(0,76)=(0,77)=xss_SEM:,320,448;mo_memsz:(0,18),768,64;mo_maxpages:(0,18),832,64;mo_freepages:(0,18),896,64;mo_alocpages:(0,18),960,64;mo_resvpages:(0,18),1024,64;mo_horizline:(0,18),1088,64;mo_pmagestat:(0,78)=*(0,79)=(0,80)=xss_PHYMMARGE:,1152,64;mo_pmagenr:(0,18),1216,64;mo_msadscstat:(0,81)=*(0,82)=(0,83)=xss_MSADSC:,1280,64;mo_msanr:(0,18),1344,64;mo_mareastat:(0,84)=*(0,85)=(0,86)=xss_MEMAREA:,1408,64;mo_mareanr:(0,18),1472,64;mo_kmsobmgr:(0,87)=(0,88)=xss_KMSOBMGRHED:,1536,20864;mo_privp:(0,89)=*(0,57),22400,64;mo_extp:(0,89),22464,64;;",128,0,0,0
	.stabs	"memmgrob_t:t(0,68)",128,0,29,0
	.stabs	"s_LIST_H:T(0,71)=s16prev:(0,90)=*(0,71),0,64;next:(0,90),64,64;;",128,0,0,0
	.stabs	"uint_t:t(0,75)",128,0,17,0
	.stabs	"s_SEM:T(0,77)=s56sem_lock:(0,72),0,32;sem_flg:(0,75),64,64;sem_count:(0,53),128,64;sem_waitlst:(0,91)=(0,92)=xss_KWLST:,192,256;;",128,0,0,0
	.stabs	"s_PHYMMARGE:T(0,80)=s80pmr_lock:(0,72),0,32;pmr_type:(0,13),32,32;pmr_stype:(0,13),64,32;pmr_dtype:(0,13),96,32;pmr_flgs:(0,13),128,32;pmr_stus:(0,13),160,32;pmr_saddr:(0,18),192,64;pmr_lsize:(0,18),256,64;pmr_end:(0,18),320,64;pmr_rrvmsaddr:(0,18),384,64;pmr_rrvmend:(0,18),448,64;pmr_prip:(0,89),512,64;pmr_extp:(0,89),576,64;;",128,0,0,0
	.stabs	"s_MSADSC:T(0,83)=s40md_list:(0,70),0,128;md_lock:(0,72),128,32;md_indxflgs:(0,93)=(0,94)=xss_MSADFLGS:,160,32;md_phyadrs:(0,95)=(0,96)=xss_PHYADRFLGS:,192,64;md_odlink:(0,89),256,64;;",128,0,0,0
	.stabs	"s_MEMAREA:T(0,86)=s5912ma_list:(0,70),0,128;ma_lock:(0,72),128,32;ma_stus:(0,75),192,64;ma_flgs:(0,75),256,64;ma_type:(0,75),320,64;ma_sem:(0,76),384,448;ma_waitlst:(0,97)=(0,98)=xss_WAIT_L_HEAD:,832,320;ma_maxpages:(0,75),1152,64;ma_allocpages:(0,75),1216,64;ma_freepages:(0,75),1280,64;ma_resvpages:(0,75),1344,64;ma_horizline:(0,75),1408,64;ma_logicstart:(0,99)=(0,19),1472,64;ma_logicend:(0,99),1536,64;ma_logicsz:(0,75),1600,64;ma_effectstart:(0,99),1664,64;ma_effectend:(0,99),1728,64;ma_effectsz:(0,75),1792,64;ma_allmsadsclst:(0,70),1856,128;ma_allmsadscnr:(0,75),1984,64;ma_arcpglst:(0,100)=(0,101)=xss_ARCLST:,2048,384;ma_funcobj:(0,102)=(0,103)=xss_MAFUNCOBJS:,2432,320;ma_mdmdata:(0,104)=(0,105)=xss_MEMDIVMER:,2752,44480;ma_privp:(0,89),47232,64;;",128,0,0,0
	.stabs	"s_KMSOBMGRHED:T(0,88)=s2608ks_lock:(0,72),0,32;ks_tclst:(0,70),64,128;ks_tcnr:(0,75),192,64;ks_msobnr:(0,75),256,64;ks_msobche:(0,106)=*(0,107)=(0,108)=xss_KMSOB:,320,64;ks_msoblst:(0,109)=ar(0,2);0;00000000000000000000077;(0,110)=(0,111)=xss_KOBLST:,384,20480;;",128,0,0,0
	.stabs	"s_KWLST:T(0,92)=s32wl_lock:(0,72),0,32;wl_tdnr:(0,75),64,64;wl_list:(0,70),128,128;;",128,0,0,0
	.stabs	"s_MSADFLGS:T(0,94)=s4mf_olkty:(0,13),0,2;mf_lstty:(0,13),2,1;mf_mocty:(0,13),3,2;mf_marty:(0,13),5,3;mf_uindx:(0,13),8,24;;",128,0,0,0
	.stabs	"s_PHYADRFLGS:T(0,96)=s8paf_alloc:(0,18),0,1;paf_shared:(0,18),1,1;paf_swap:(0,18),2,1;paf_cache:(0,18),3,1;paf_kmap:(0,18),4,1;paf_lock:(0,18),5,1;paf_dirty:(0,18),6,1;paf_busy:(0,18),7,1;paf_rv2:(0,18),8,4;paf_padrs:(0,18),12,52;;",128,0,0,0
	.stabs	"s_WAIT_L_HEAD:T(0,98)=s40wlh_llist:(0,70),0,128;wlh_lock:(0,72),128,32;wlh_count:(0,112)=(0,113)=xss_ATOMIC:,160,32;wlh_privte:(0,89),192,64;wlh_upfun:(0,114)=*(0,115)=f(0,116)=(0,53),256,64;;",128,0,0,0
	.stabs	"adr_t:t(0,99)",128,0,19,0
	.stabs	"s_ARCLST:T(0,101)=s48al_lru1:(0,70),0,128;al_lru2:(0,70),128,128;al_lru1nr:(0,75),256,64;al_lru2nr:(0,75),320,64;;",128,0,0,0
	.stabs	"s_MAFUNCOBJS:T(0,103)=s40mafo_init:(0,117)=*(0,118)=f(0,119)=(0,18),0,64;mafo_exit:(0,120)=*(0,121)=f(0,119),64,64;mafo_aloc:(0,122)=*(0,123)=f(0,119),128,64;mafo_free:(0,122),192,64;mafo_recy:(0,122),256,64;;",128,0,0,0
	.stabs	"s_MEMDIVMER:T(0,105)=s5560dm_lock:(0,72),0,32;dm_stus:(0,13),32,32;dm_dmmaxindx:(0,75),64,64;dm_phydmindx:(0,75),128,64;dm_predmindx:(0,75),192,64;dm_divnr:(0,75),256,64;dm_mernr:(0,75),320,64;dm_mdmlielst:(0,124)=ar(0,2);0;00000000000000000000063;(0,125)=(0,126)=xss_BAFHLST:,384,43264;dm_onemsalst:(0,125),43648,832;;",128,0,0,0
	.stabs	"s_KMSOB:T(0,108)=s368so_list:(0,70),0,128;so_lock:(0,72),128,32;so_stus:(0,75),192,64;so_flgs:(0,75),256,64;so_vstat:(0,99),320,64;so_vend:(0,99),384,64;so_objsz:(0,50),448,64;so_objrelsz:(0,50),512,64;so_mobjnr:(0,75),576,64;so_fobjnr:(0,75),640,64;so_frelst:(0,70),704,128;so_alclst:(0,70),832,128;so_mextlst:(0,70),960,128;so_mextnr:(0,75),1088,64;so_mc:(0,127)=(0,128)=xss_MSOMDC:,1152,1664;so_privp:(0,89),2816,64;so_extdp:(0,89),2880,64;;",128,0,0,0
	.stabs	"s_KOBLST:T(0,111)=s40ol_emplst:(0,70),0,128;ol_cahe:(0,106),128,64;ol_emnr:(0,75),192,64;ol_sz:(0,50),256,64;;",128,0,0,0
	.stabs	"s_ATOMIC:T(0,113)=s4a_count:(0,129)=B(0,130)=(0,131)=r(0,131);-2147483648;2147483647;,0,32;;",128,0,0,0
	.stabs	"bool_t:t(0,116)",128,0,21,0
	.stabs	"mmstus_t:t(0,119)",128,0,38,0
	.stabs	"s_BAFHLST:T(0,126)=s104af_lock:(0,72),0,32;af_stus:(0,13),32,32;af_oder:(0,75),64,64;af_oderpnr:(0,75),128,64;af_fobjnr:(0,75),192,64;af_mobjnr:(0,75),256,64;af_alcindx:(0,75),320,64;af_freindx:(0,75),384,64;af_frelst:(0,70),448,128;af_alclst:(0,70),576,128;af_ovelst:(0,70),704,128;;",128,0,0,0
	.stabs	"s_MSOMDC:T(0,128)=s208mc_lst:(0,132)=ar(0,2);0;00000000000000000000004;(0,133)=(0,134)=xss_MSCLST:,0,1280;mc_msanr:(0,75),1280,64;mc_list:(0,70),1344,128;mc_kmobinlst:(0,70),1472,128;mc_kmobinpnr:(0,75),1600,64;;",128,0,0,0
	.stabs	"s32_t:t(0,130)",128,0,14,0
	.stabs	"int:t(0,131)",128,0,0,0
	.stabs	"s_MSCLST:T(0,134)=s32ml_msanr:(0,75),0,64;ml_ompnr:(0,75),64,64;ml_list:(0,70),128,128;;",128,0,0,0
	.globl	machintflt
	.align 32
	.type	machintflt, @object
	.size	machintflt, 40960
machintflt:
	.zero	40960
	.stabs	"machintflt:G(0,135)=ar(0,2);0;00000000000000000000377;(0,136)=(0,137)=xss_INTFLTDSC:",32,0,18,0
	.stabs	"s_INTFLTDSC:T(0,137)=s160i_lock:(0,72),0,32;i_flg:(0,13),32,32;i_stus:(0,13),64,32;i_prity:(0,75),128,64;i_irqnr:(0,75),192,64;i_deep:(0,75),256,64;i_indx:(0,18),320,64;i_serlist:(0,70),384,128;i_sernr:(0,75),512,64;i_serthrdlst:(0,70),576,128;i_serthrdnr:(0,75),704,64;i_onethread:(0,89),768,64;i_rbtreeroot:(0,89),832,64;i_serfisrlst:(0,70),896,128;i_serfisrnr:(0,75),1024,64;i_msgmpool:(0,89),1088,64;i_privp:(0,89),1152,64;i_extp:(0,89),1216,64;;",128,0,0,0
	.text
	.stabs	"",100,0,0,.Letext0
.Letext0:
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
