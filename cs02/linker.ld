ENTRY(_start)

SECTIONS
{
    . = 0x81e08000;

    .entry ALIGN(4K) : AT (ADDR(.entry))
    {
        *(.entry*)
    }

    .text ALIGN(4K) : AT (ADDR(.text))
    {
        *(.text*)
    }

    .rodata ALIGN(4K) : AT (ADDR(.rodata))
    {
        *(.rodata*)
    }

    .data ALIGN(4K) : AT (ADDR(.data))
    {
        *(.data*)
    }

    .bss ALIGN(4K) : AT (ADDR(.bss))
    {
        *(.bss*)
    }

    __start_boot = .;
    . = . + 4 * 1024 * 1024;
    __end_boot = .;

    /DISCARD/ : { *(*) }
}
