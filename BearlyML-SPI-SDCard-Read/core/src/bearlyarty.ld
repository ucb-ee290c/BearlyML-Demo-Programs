/* Copyright (c) 2022 UC Berkeley */

OUTPUT_ARCH("riscv")

ENTRY(_start)

MEMORY {
  LIBIFROM (rwx): ORIGIN = 0x00020000, LENGTH = 64K
  LIBIFRAM (rwx): ORIGIN = 0x00030000, LENGTH = 64K
  SRAM (rwx):     ORIGIN = 0x08000000, LENGTH = 8K
  FLASH (rwx):    ORIGIN = 0x20000000, LENGTH = 128M
  DRAM (rwx):     ORIGIN = 0x80000000, LENGTH = 16384M
}

SECTIONS {
  __stack_size = DEFINED(__stack_size) ? __stack_size : 0x200;
  PROVIDE(__stack_size = __stack_size);

  __heap_size = DEFINED(__heap_size) ? __heap_size : 0x100;
  PROVIDE(__heap_size = __heap_size);
  
  PROVIDE(__boot_hart = 0);

  .text : {
    . = ALIGN(4);
    KEEP(*(.text.reset))          /* Reset routine */
    
    . = ALIGN(4);
    KEEP(*(.text.isr_routine))    /* ISR routine */
    *(.text.init)                 /* Startup code */

    *(.text .text*)               /* .text sections (code) */

    KEEP (*(.init))
    KEEP (*(.fini))
    
    *(.gnu.linkonce.t.*)
    _etext = .;                   /* define a global symbols at end of code */
  }> FLASH
  
  .rodata : {
    . = ALIGN(4);
    *(.rodata .rodata*)           /* .rodata sections (constants, strings, etc.) */
    *(.gnu.linkonce.r.*)
    . = ALIGN(8);
    *(.srodata.cst16)
    *(.srodata.cst8)
    *(.srodata.cst4)
    *(.srodata.cst2)
    *(.srodata .srodata.*)
  }> FLASH

  /* data segment */
  .data : {
    . = ALIGN(8);
    _sdata = .;        /* create a global symbol at data start */
    *(.data .data*)
    _edata = .;        /* define a global symbol at data end */
  }> SRAM

  .sdata : {
    __global_pointer$ = . + 0x800;
    *(.sdata .sdata.*)
    *(.gnu.linkonce.s.*)
  }> SRAM

  /* thread-local data segment */
  .tdata : {
    _tdata_begin = .;
    *(.tdata)
    _tdata_end = .;
  }> SRAM
  
  /* bss segment */
  .sbss (NOLOAD) : {
    . = ALIGN(8);
    _sbss = .;
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)
  }> SRAM

  .bss (NOLOAD) : {
    *(.bss)
    *(COMMON)
  }> SRAM
  
  .tbss : {
    *(.tbss)
    _ebss = .;
  }> SRAM

  .heap (NOLOAD) : ALIGN(8) {
    PROVIDE(__end = .);
    PROVIDE(__heap_start = .);
    . += __heap_size;
    PROVIDE(__heap_end = .);
  }> SRAM

  .stack (NOLOAD) : ALIGN(16) {
    PROVIDE(__stack_start = .);
    . += __stack_size; /* Hart 0 */
    PROVIDE(__stack_end = .);
    PROVIDE(_sp = __stack_end);
  }> SRAM

}
