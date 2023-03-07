# -s make的安静模式, -R Don't define any built-in variables
MAKEFLAGS = -s
ASM = nasm
CC = gcc

HEADFILE_PATH = ../include/
KRNLBOOT_PATH = ../ldrkrl/
CCBUILDPATH	= $(KRNLBOOT_PATH)

ASMBFLAGS = -I $(HEADFILE_PATH) -f elf
# 为了方便调试 将 -Os 改为 -O0, 并增加 -g
BTCFLAGS = -I $(HEADFILE_PATH) -c -O2 -g -std=c99 -m32 -Wall -Wshadow -W -Wconversion -Wno-sign-conversion -fno-stack-protector -fomit-frame-pointer -fno-builtin -fno-common  -fno-ident -ffreestanding  -fno-stack-protector -fomit-frame-pointer -Wno-unused-parameter -Wunused-variable

include ldrobjs.mh

.PHONY: all everything

all: everything 

# 这三个变量是在 ldrobjs.mh 中定义的
everything: $(INITLDRIMH_OBJS) $(INITLDRKRL_OBJS) $(INITLDRSVE_OBJS)

#include krnlbuidrule.mh
%.o: $(CCBUILDPATH)%.asm
	@echo "initldr gen object by asm CMD: $(ASM) $(ASMBFLAGS) -o $@ $<"
	$(ASM) $(ASMBFLAGS) -o $@ $<
	
%.o: $(CCBUILDPATH)%.c
	@echo "initldr gen object by c CMD: $(CC) $(BTCFLAGS) -o $@ $<"
	$(CC) $(BTCFLAGS) -o $@ $<