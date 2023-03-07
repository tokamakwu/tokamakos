LD		= ld
OBJCOPY = objcopy
OJCYFLAGS = -S -O binary

LDRIMHLDFLAGS = -s -T initldrimh.lds -n -Map initldrimh.map
LDRKRLLDFLAGS = -s -T initldrkrl.lds -n -Map initldrkrl.map
LDRSVELDFLAGS = -s -T initldrsve.lds -n -Map initldrsve.map

include ldrobjs.mh

.PHONY: all everything build_kernel

all: build_kernel 

build_kernel: everything build_bin

everything : $(INITLDRIMH_ELF) $(INITLDRKRL_ELF) $(INITLDRSVE_ELF)

build_bin:$(INITLDRIMH) $(INITLDRKRL) $(INITLDRSVE)

$(INITLDRIMH_ELF): $(INITLDRIMH_LINK)
	@echo "gen $(INITLDRIMH_ELF) by $(INITLDRIMH_LINK) CMD: $(LD) $(LDRIMHLDFLAGS) -o $@ $(INITLDRIMH_LINK)"
	$(LD) $(LDRIMHLDFLAGS) -o $@ $(INITLDRIMH_LINK)

$(INITLDRKRL_ELF): $(INITLDRKRL_LINK)
	@echo "gen $(INITLDRKRL_ELF) by $(INITLDRKRL_LINK) CMD: $(LD) $(LDRKRLLDFLAGS) -o $@ $(INITLDRKRL_LINK)"
	$(LD) $(LDRKRLLDFLAGS) -o $@ $(INITLDRKRL_LINK)

$(INITLDRSVE_ELF): $(INITLDRSVE_LINK)
	@echo "gen $(INITLDRSVE_ELF) by $(INITLDRSVE_LINK) CMD: $(LD) $(LDRSVELDFLAGS) -o $@ $(INITLDRSVE_LINK)"
	$(LD) $(LDRSVELDFLAGS) -o $@ $(INITLDRSVE_LINK)

$(INITLDRIMH): $(INITLDRIMH_ELF)
	@echo "gen $(INITLDRIMH) by $(INITLDRIMH_ELF) CMD: $(OBJCOPY) $(OJCYFLAGS) $< $@"
	$(OBJCOPY) $(OJCYFLAGS) $< $@

$(INITLDRKRL): $(INITLDRKRL_ELF)
	@echo "gen $(INITLDRKRL) by $(INITLDRKRL_ELF) CMD: $(OBJCOPY) $(OJCYFLAGS) $< $@"
	$(OBJCOPY) $(OJCYFLAGS) $< $@

$(INITLDRSVE):$(INITLDRSVE_ELF)
	@echo "gen $(INITLDRSVE) by $(INITLDRSVE_ELF) CMD: $(OBJCOPY) $(OJCYFLAGS) $< $@"
	$(OBJCOPY) $(OJCYFLAGS) $< $@