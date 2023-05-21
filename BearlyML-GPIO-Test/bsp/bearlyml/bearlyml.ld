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
  /* Each hart is allocated its own stack of size __stack_size. This value
   * can be overriden at build-time by adding the following to CFLAGS:
   *
   *     -Xlinker --defsym=__stack_size=0xf00
   *
   * where 0xf00 can be replaced with a multiple of 16 of your choice.
   *
   * __stack_size is PROVIDE-ed as a symbol so that initialization code
   * initializes the stack pointers for each hart at the right offset from
   * the _sp symbol.
   */
  __stack_size = DEFINED(__stack_size) ? __stack_size : 0x400;
  PROVIDE(__stack_size = __stack_size);

  /* The size of the heap can be overriden at build-time by adding the
   * following to CFLAGS:
   *
   *     -Xlinker --defsym=__heap_size=0xf00
   *
   * where 0xf00 can be replaced with the value of your choice.
   *
   * Altertatively, the heap can be grown to fill the entire remaining region
   * of RAM by adding the following to CFLAGS:
   *
   *     -Xlinker --defsym=__heap_max=1
   *
   * Note that depending on the memory layout, the bitness (32/64bit) of the
   * target, and the code model in use, this might cause a relocation error.
   */
  __heap_size = DEFINED(__heap_size) ? __heap_size : 0x800;
  PROVIDE(__heap_size = __heap_size);
  
  /* The boot hart sets which hart runs the pre-main initialization routines,
   * including copying .data into RAM, zeroing the BSS region, running
   * constructors, etc. After initialization, the boot hart is also the only
   * hart which runs application code unless the application overrides the
   * secondary_main() function to start execution on secondary harts.
   */
  PROVIDE(__boot_hart = 0);

  .text : ALIGN(4) {
    /* The _start symbol is placed in the .text.metal.init.enter section
     * and must be placed at the beginning of the program */
    KEEP(*(.text.reset))          /* Reset routine */
    
    KEEP(*(.text.isr_routine))    /* ISR routine */
    KEEP(*(.text.init))           /* Startup code */
    KEEP(*(.text.libgloss.start))

    KEEP (*(.init))
    KEEP (*(SORT_NONE(.fini)))
    . = ALIGN(8);
    KEEP (*(.preinit_array))
    KEEP (*(SORT_BY_INIT_PRIORITY(.init_array.*) SORT_BY_INIT_PRIORITY(.ctors.*)))
    KEEP (*(.init_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .ctors))
    KEEP (*(SORT_BY_INIT_PRIORITY(.fini_array.*) SORT_BY_INIT_PRIORITY(.dtors.*)))
    KEEP (*(.fini_array EXCLUDE_FILE (*crtbegin.o *crtbegin?.o *crtend.o *crtend?.o ) .dtors))

    *(.text .text*)               /* .text sections (code) */
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
    *(.gnu.linkonce.d.*)
  }> SRAM AT> FLASH

  .sdata : {
    __global_pointer$ = . + 0x800;
    *(.sdata .sdata.*)
    *(.gnu.linkonce.s.*)
  }> SRAM AT> FLASH

  /* thread-local data segment */
  .tdata : {
    *(.tdata)
    *(.gnu.linkonce.td.*)
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
    *(.sbss .sbss.*)
    *(.gnu.linkonce.sb.*)
    *(.scommon)
  }> SRAM
  
  .tbss (NOLOAD): {
    *(.tbss)
    *(.gnu.linkonce.tb.*)
    *(.tcommon)
  }> SRAM
  
  PROVIDE(_bss_start = ADDR(.bss));
  PROVIDE(_bss_end = ADDR(.tbss) + SIZEOF(.tbss));

  .heap (NOLOAD) : ALIGN(8) {
    PROVIDE(__end = .);
    PROVIDE(__heap_start = .);
    . += __heap_size;
    PROVIDE(__heap_end = .);
  }> SRAM
  
  .stack (NOLOAD) : ALIGN(16) {
    . += __stack_size;  /* Hart 4 */
    . += __stack_size;  /* Hart 3 */
    . += __stack_size;  /* Hart 2 */
    . += __stack_size;  /* Hart 1 */
    . += __stack_size;  /* Hart 0 */
    PROVIDE(_sp = .);
  }> SRAM

  PROVIDE(_stack_start = ADDR(.stack));
  PROVIDE(_stack_end = ADDR(.stack) + SIZEOF(.stack));
  
  /* C++ exception handling information is
   * not useful with our current runtime environment,
   * and it consumes flash space. Discard it until
   * we have something that can use it
   */
  /DISCARD/ : {
    *(.eh_frame .eh_frame.*)
  }
}
