MAKEFLAGS = -sR
RM = rm
CD = cd
MAKE = make

BUILD_PATH = ./build
INITLDRMFLGS = -C $(BUILD_PATH) -f initldr.mk
INITLDRLINKMFLGS = -C $(BUILD_PATH) -f ldrlink.mk

.PHONY: build clean all

build: clean all

all:
	$(MAKE) $(INITLDRMFLGS)
	$(MAKE) $(INITLDRLINKMFLGS)

clean:
	$(CD) $(BUILD_PATH); $(RM) -f *.o *.bin *.i *.krnl *.s *.map *.lib *.btoj *.vdi *vmdk *.eki *.elf
