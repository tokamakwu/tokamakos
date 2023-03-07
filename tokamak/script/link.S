###################################################################
#		krnllink自动化编译配置文件 Makefile               #
###################################################################
MAKEFLAGS =

include krnlbuidcmd.mk
include krnlobjs.mk

.PHONY: all everything build_kernel

all: build_kernel

build_kernel: everything

everything:
[@echo "krnl ld: $(LD) $(LDFLAGS) -o $(KERNL_MK_ELFF_FILE) $(BUILD_MK_LINK_OBJS)"
[$(LD) $(LDFLAGS) -o $(KERNL_MK_ELFF_FILE) $(BUILD_MK_LINK_OBJS)

[@echo "krnl objcopy: $(OBJCOPY) $(OJCYFLAGS) $(KERNL_MK_ELFF_FILE) $(KERNL_MK_BINF_FILE)"
[$(OBJCOPY) $(OJCYFLAGS) $(KERNL_MK_ELFF_FILE) $(KERNL_MK_BINF_FILE)

$(BOOT_EXC_ELF): $(LMOSEM_LINK_OBJS)
[@echo "BOOT_EXC_ELF: $(LD) $(LDFLAGS) -o $(BOOT_EXC_ELF)  $(LMOSEM_LINK_OBJS)"
[$(LD) $(LDFLAGS) -o $(BOOT_EXC_ELF)  $(LMOSEM_LINK_OBJS)