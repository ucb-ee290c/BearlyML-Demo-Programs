/* Copyright (c) 2022 UC Berkeley */

OUTPUT_ARCH("riscv")

ENTRY(_start)

MEMORY {
  LIBIFROM (rwx): ORIGIN = 0x00020000, LENGTH = 64K
  LIBIFRAM (rwx): ORIGIN = 0x00030000, LENGTH = 64K
  SRAM (rwx):     ORIGIN = 0x08000000, LENGTH = 16K
  FLASH (rwx):    ORIGIN = 0x20000000, LENGTH = 128M
  DRAM (rwx):     ORIGIN = 0x80000000, LENGTH = 16384M
}

SECTIONS {
  __stack_size = DEFINED(__stack_size) ? __stack_size : 0x400;
  PROVIDE(__stack_size = __stack_size);

  __heap_size = DEFINED(__heap_size) ? __heap_size : 0x800;
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
  }> FLASH

  PROVIDE(_data_source_start = LOADADDR(.text));
  PROVIDE(_text_target_start = ADDR(.text));
  PROVIDE(_text_target_end = ADDR(.text) + SIZEOF(.text));
  
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
    *(.data .data*)
  }> SRAM AT> FLASH

  .sdata : {
    __global_pointer$ = . + 0x800;
    *(.sdata .sdata.*)
    *(.gnu.linkonce.s.*)
  }> SRAM AT> FLASH

  /* thread-local data segment */
  .tdata : {
    *(.tdata)
  }> SRAM AT> FLASH

  PROVIDE(_data_source_start = LOADADDR(.data));
  PROVIDE(_data_target_start = ADDR(.data));
  PROVIDE(_data_target_end = ADDR(.tdata) + SIZEOF(.tdata));
  
  /* bss segment */
  .bss (NOLOAD) : {
    *(.bss)
    *(COMMON)
  }> SRAM

  .sbss (NOLOAD) : {
    *(.sbss .sbss.* .gnu.linkonce.sb.*)
    *(.scommon)
  }> SRAM
  
  .tbss (NOLOAD): {
    *(.tbss)
  }> SRAM
  
  PROVIDE(_bss_start = ADDR(.bss));
  PROVIDE(_bss_end = ADDR(.tbss) + SIZEOF(.tbss));

  .heap (NOLOAD) : ALIGN(8) {
    PROVIDE(__end = .);
    . += __heap_size;
  }> SRAM

  PROVIDE(_heap_start = ADDR(.heap));
  PROVIDE(_heap_end = ADDR(.heap) + SIZEOF(.heap));
  
  .stack (NOLOAD) : ALIGN(16) {
    . += __stack_size; /* Hart 0 */
    PROVIDE(_sp = .);
  }> SRAM

  PROVIDE(_stack_start = ADDR(.stack));
  PROVIDE(_stack_end = ADDR(.stack) + SIZEOF(.stack));
}
