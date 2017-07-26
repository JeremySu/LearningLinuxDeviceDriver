obj-m := cdata.o cdata_plat_dev.o
util := test

KDIR := /usr/src/linux-headers-4.4.0-79-generic
PWD := $(shell pwd)

default:
	$(MAKE) -C $(KDIR) SUBDIRS=$(PWD) modules
	gcc $(util).c -o $(util)

clean:
	rm -rf *.o *.ko .*cmd modules.* Module.* .tmp_versions *.mod.c $(util)
