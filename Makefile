QEMU = qemu-system-riscv65

build:
	riscv64-unknown-elf-gcc -c kernel/entry.S -o ./kernel/kernel.o

build-kernel: build
	riscv64-unknown-elf-ld ./kernel/kernel.o -T ./kernel/kernel.ld -o ./kernel/kernel

qemu: 
	qemu-system-riscv64 -machine virt -smp 1 -m 128M -bios none -nographic -kernel ./kernel/kernel

.PHONY: clean
clean: 
	echo "clean crash"
	rm ./kernel/*.o ./kernel/a.out ./kernel/kernel

gdb: build-kernel
	qemu-system-riscv64 -machine virt -smp 1 -m 128M -bios none -nographic -kernel ./kernel/kernel -s -S

gdb-remote:
	riscv64-unknown-elf-gdb -ex 'target remote localhost:1234'

	

