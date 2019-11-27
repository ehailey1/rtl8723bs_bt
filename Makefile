rtk_hciattach:hciattach.c hciattach_rtk.o  
	/path/to/buildroot/output/host/bin/arm-gcc-buildroot-linux-gnueabihf-cc -o rtk_hciattach hciattach.c hciattach_rtk.o  

hciattach_rtk.o:hciattach_rtk.c
	/path/to/buildroot/output/host/bin/arm-gcc-buildroot-linux-gnueabihf-cc -c hciattach_rtk.c

clean:
	rm -f *.o  rtk_hciattach

install:
	mkdir -p /lib/firmware/rtl_bt
	cp -p rtlbt_* /lib/firmware/rtl_bt/.
