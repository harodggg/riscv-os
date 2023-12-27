## Linker Script

### 1, what is the linker script ?
    Merge multiple files into one

### 2, simple linker script
    The most simply linker script is only Sections
```ld
    SECTIONS {
        . = 0x1000000;
        .text: { *(.text) }
        . = 0x8000000;
        .data: { *(.data) }
        .bss: { *(.bss) }

    }
```