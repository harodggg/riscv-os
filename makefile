K = kernel
U = user

OBJ = $(K)/entry.o

QEMU = qemu-system-riscv65

build:
	gcc 
qemu: risvc-os.img
	echo "start qemu"

.PHONY: clean
clean: 
	echo "clean crash"
