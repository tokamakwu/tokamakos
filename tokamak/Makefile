# -s make 的静默模式, -R 不使用make的自定义变量
MAKEFLAGS = -sR
MAKE = make

CP = cp
CD = cd
RM = rm

LKIMG = ./lmoskrlimg -m k
X86BARD = -f ./Makefile.x86

LOGOFILE = logo.bmp background.bmp
FONTFILE = font.fnt
KRNLEXCIMG = Cosmos.bin

BUILD_PATH = ./build
EXKNL_PATH = ./exckrnl
DSTPATH = ../exckrnl

CPLILDR_PATH =./release/
RELEDSTPATH = ../release

INITLDR_PATH =./initldr/
INITLDR_BUILD_PATH =./initldr/build/

SRCFILE = $(KRNLEXCIMG)
RSRCFILE = $(KRNLEXCIMG)

INITLDRIMH = initldrimh.bin
INITLDRKRL = initldrkrl.bin
INITLDRSVE = initldrsve.bin

# initldr 目录中生成的三个 bin 文件
CPLILDRSRC= $(INITLDR_BUILD_PATH)$(INITLDRSVE) $(INITLDR_BUILD_PATH)$(INITLDRKRL) $(INITLDR_BUILD_PATH)$(INITLDRIMH)

# 将文件合并成最终的一个映像文件
LKIMG_INFILE = $(INITLDRSVE) $(INITLDRKRL) $(KRNLEXCIMG) $(FONTFILE) $(LOGOFILE)

.PHONY: build clean all cpldr cpkrnl cprelease release KIMG

build: clean all

all:
	$(MAKE) $(X86BARD)

clean:
	$(CD) $(INITLDR_PATH); $(MAKE) clean
	$(CD) $(BUILD_PATH); $(RM) -f *.o *.mkf *.bin *.i *.krnl *.s *.map *.lib *.btoj *.vdi *.elf *vmdk *.lds *.mk *.mki krnlobjs.mh
	$(CD) $(EXKNL_PATH); $(RM) -f *.o *.bin *.i *.krnl *.s *.map *.lib *.btoj *.vdi *.elf *vmdk *.lds *.mk *.mki krnlobjs.mh
	$(CD) $(CPLILDR_PATH); $(RM) -f *.o *.bin *.i *.krnl *.s *.eki *.map *.lib *.btoj *.elf *.vdi *vmdk *.lds *.mk *.mki krnlobjs.mh
	@echo 'clean build file done'

cpldr:
	@echo "cpldr: $(CP) $(CPLILDRSRC) $(CPLILDR_PATH)"
	$(CP) $(CPLILDRSRC) $(CPLILDR_PATH)

cpkrnl:
	@echo "cpkrnl: $(CD) $(BUILD_PATH) && $(CP) $(SRCFILE) $(DSTPATH)"
	$(CD) $(BUILD_PATH) && $(CP) $(SRCFILE) $(DSTPATH)

cprelease:
	@echo 'cprelease: $(CD) $(EXKNL_PATH) && $(CP) $(RSRCFILE) $(RELEDSTPATH)'
	$(CD) $(EXKNL_PATH) && $(CP) $(RSRCFILE) $(RELEDSTPATH)

KIMG:
	@echo 'gen imgfile CMD: $(CD) $(CPLILDR_PATH) && $(LKIMG) -lhf $(INITLDRIMH) -o Cosmos.eki -f $(LKIMG_INFILE)'
	$(CD) $(CPLILDR_PATH) && $(LKIMG) -lhf $(INITLDRIMH) -o Cosmos.eki -f $(LKIMG_INFILE)

release: clean all cpldr cpkrnl cprelease KIMG 
	@echo "gen release file done"