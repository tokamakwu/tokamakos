###################################################################
#		krnlbuidrule自动化编译配置文件 Makefile		  #
###################################################################

%.krnl : $(CCBUILDPATH)%.c
[@echo "gen .krnl by .c CMD: $(CC) $(CFLAGS) -o $@ $<"
[$(CC) $(CFLAGS) -o $@ $<

%.krnl : $(CCBUILDPATH)%.S
[@echo "gen .krnl by .S CMD: [$(CC) $(CFLAGS) -o $@ $<"
[$(CC) $(CFLAGS) -o $@ $<

%.o : $(CCBUILDPATH)%.asm
[@echo "gen .o by .asm CMD: [$(ASM) $(ASMFLGS) -o $@ $<"
[$(ASM) $(ASMFLGS) -o $@ $<

%.o : $(CCBUILDPATH)%.c
[@echo "gen .o by .c CMD: $(CC) $(CFLAGS) -o $@ $<"
[$(CC) $(CFLAGS) -o $@ $<

%.o : $(CCBUILDPATH)%.S
[@echo "gen .o by .S CMD: $(CC) $(CFLAGS) -o $@ $<"
[$(CC) $(CFLAGS) -o $@ $<

%.lds : $(CCBUILDPATH)%.S
[@echo "gen .lds by .S CMD: $(CC) $(CPPFLGSLDS) -o $@ $<"
[$(CC) $(CPPFLGSLDS) -o $@ $<

%.mkh : $(CCBUILDPATH)%.S
[@echo "gen .mkh by .S CMD: $(CC) $(CPPFLGSLDS) -o $@ $<"
[$(CC) $(CPPFLGSLDS) -o $@ $<

%.mk : $(CCBUILDPATH)%.S
[@echo "gen .mk by .S CMD: $(CC) $(CPPFLGSLDS) -o $@ $<"
[$(CC) $(CPPFLGSLDS) -o $@ $<
