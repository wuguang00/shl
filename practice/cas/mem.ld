
GROUP(libgcc.a libc.a libm.a libnosys.a)

MEMORY
{
    FLASH (rx) : ORIGIN = 0x0,        LENGTH = 0x8000     /* 32KB */
    RAM  (rxx) : ORIGIN = 0x20000000, LENGTH = 0x8000     /* 32KB */
}

INCLUDE "sections.ld"

