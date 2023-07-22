K = kernel
U = user

TOOLPREFIX = "riscv64-unknown-elf-"
CC = $(TOOLPREFIX)gcc
LD = $(TOOLPREFIX)ld



OBJ = $(K)/entry.o

QEMU = qemu-system-riscv65


build:
	gcc 
qemu: risvc-os.img
	echo "start qemu"

.PHONY: clean
clean: 
	echo "clean crash"
