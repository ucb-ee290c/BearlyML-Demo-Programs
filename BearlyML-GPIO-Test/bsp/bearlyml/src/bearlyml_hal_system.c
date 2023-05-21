/**
 * @file hal_system.c
 * @author -T.K.- / t_k_233@outlook.com
 * @brief 
 * @version 0.1
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#include "bearlyml_hal.h"

#include <errno.h>
#include <stdint.h>

__attribute__((weak)) void HAL_MachineSoftwareInterruptCallback(uint32_t hart_id) {
//   { // debug message
//     char str[32];
//     sprintf(str, "machine software irq\n");
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//   }
}

__attribute__((weak)) void HAL_GPIO_Callback() {}

void InstructionAddressMisalign_Exception_Handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "instruction address misalign exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}
void InstructionAccessFault_Exception_Handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "instruction access fault exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}
void IllegalInstruction_Exception_Handler() {
  // while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "illegal instruction exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}
void Breakpoint_Exception_Handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "breakpoint exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
  // }
}
void LoadAddressMisalign_Exception_handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "load address misaligned exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}
void LoadAccessFault_Exception_handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "load access fault exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}
void StoreAMOAddressMisalign_Exception_handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "store/AMO address misaligned exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}
void StoreAMOAccessFault_Exception_handler() {
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "store/AMO access fault exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
  // }
}
void EnvironmentCallUMode_Exception_handler() {
//   // TODO: implement mode transfer
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "environment call from U-mode exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
  // }
}
void EnvironmentCallMMode_Exception_handler() {
//   // TODO: implement mode transfer
//   while (1) {
//     { // debug message
//       char str[64];
//       sprintf(str, "environment call from M-mode exception\n");
//       HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     }
//   }
}

void UserSoftware_IRQn_Handler() {}
void SupervisorSoftware_IRQn_Handler() {}
void HypervisorSoftware_IRQn_Handler() {}
void MachineSoftware_IRQn_Handler() {
  HAL_MachineSoftwareInterruptCallback(0);
  CLINT->MSIP0 = 0;
  CLINT->MSIP1 = 0;
  CLINT->MSIP2 = 0;
  CLINT->MSIP3 = 0;
  CLINT->MSIP4 = 0;
  HAL_CORE_clearIRQ(MachineSoftware_IRQn);
}

void UserTimer_IRQn_Handler() {}
void SupervisorTimer_IRQn_Handler() {}
void HypervisorTimer_IRQn_Handler() {}
void MachineTimer_IRQn_Handler() {
//   { // debug message
//     char str[32];
//     sprintf(str, "machine timer irq\n");
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//   }
  HAL_CLINT_setTimerInterrupt(0xFFFFFFFFFFFFFFFF);
  HAL_CORE_clearIRQ(MachineTimer_IRQn);
}

void UserExternal_IRQn_Handler() {}
void SupervisorExternal_IRQn_Handler() {}
void HypervisorExternal_IRQn_Handler() {}
void MachineExternal_IRQn_Handler() {
  uint32_t irq_source = HAL_PLIC_claimIRQ(0);

  // { // debug message
//     char str[32];
//     sprintf(str, "machine external irq: %lu\n", irq_source);
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//   }
//   switch (irq_source) {
//     case 2:                 // GPIO interrupt
//       HAL_GPIO_Callback();
//       GPIOA->HIGH_IE = 0b0;
//       break;
//   }
  HAL_PLIC_completeIRQ(0, irq_source);
  
  HAL_CORE_clearIRQ(MachineExternal_IRQn);
}

void system_init(void) {
  // TODO: these should really go into main(), but putting here temporarily for ease of testing
  HAL_init();
  
  return;
}

void trap_handler(void) {
  uint32_t m_cause;
  asm volatile("csrr %0, mcause" : "=r"(m_cause));

  switch (m_cause) {
    case 0x00000000:      // instruction address misaligned
      InstructionAddressMisalign_Exception_Handler();
      break;
    case 0x00000001:      // instruction access fault
      InstructionAccessFault_Exception_Handler();
      break;
    case 0x00000002:      // illegal instruction
      IllegalInstruction_Exception_Handler();
      break;
    case 0x00000003:      // breakpoint
      Breakpoint_Exception_Handler();
      break;
    case 0x00000004:      // load address misaligned
      LoadAddressMisalign_Exception_handler();
      break;
    case 0x00000005:      // load access fault
      LoadAccessFault_Exception_handler();
      break;
    case 0x00000006:      // store/AMO address misaligned
      StoreAMOAddressMisalign_Exception_handler();
      break;
    case 0x00000007:      // store/AMO access fault
      StoreAMOAccessFault_Exception_handler();
      break;
    case 0x00000008:      // environment call from U-mode
      EnvironmentCallUMode_Exception_handler();
      break;
    case 0x00000011:      // environment call from M-mode
      EnvironmentCallMMode_Exception_handler();
      break;
    case 0x80000003:      // machine software interrupt
      MachineSoftware_IRQn_Handler();
      break;
    case 0x80000007:      // machine timer interrupt
      MachineTimer_IRQn_Handler();
      break;
    case 0x8000000B:      // machine external interrupt
      MachineExternal_IRQn_Handler();
      break;
    default:
      break;
      // { // debug message
      //   char str[32];
      //   sprintf(str, "mcause %lu\n", m_cause);
      //   HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
      // }
  }
}


extern uint8_t __heap_start;
extern uint8_t __heap_end;
static uint8_t *__brk = &__heap_start;

#ifdef _PICOLIBC__
#define _brk brk
#define _sbrk sbrk
#endif

int _brk(void *addr) {
  __brk = addr;
  return 0;
}

void *_sbrk(ptrdiff_t incr) {
  uint8_t *old = __brk;

  /* If __heap_size == 0, we can't allocate memory on the heap */
  if (&__heap_start == &__heap_end) {
    return (void *)-1;
  }

  /* Don't move the break past the end of the heap */
  if ((__brk + incr) < &__heap_end) {
    __brk += incr;
  } else {
    __brk = &__heap_end;
    return (void *)-1;
  }
  /* Scrub out allocated memory to avoid spurious ECC errors */
  // metal_mem_scrub(old, incr);

  return old;
}



// /**
//  * Pointer to the current high watermark of the heap usage
//  */
// static uint8_t *__sbrk_heap_end = NULL;

// /**
//  * @brief _sbrk() allocates memory to the newlib heap and is used by malloc
//  *        and others from the C library
//  *
//  * @verbatim
//  * ############################################################################
//  * #  .data  #  .bss  #       newlib heap       #          MSP stack          #
//  * #         #        #                         # Reserved by _Min_Stack_Size #
//  * ############################################################################
//  * ^-- RAM start      ^-- _end                             _estack, RAM end --^
//  * @endverbatim
//  *
//  * This implementation starts allocating at the '_end' linker symbol
//  * The '_Min_Stack_Size' linker symbol reserves a memory for the MSP stack
//  * The implementation considers '_estack' linker symbol to be RAM end
//  * NOTE: If the MSP stack, at any point during execution, grows larger than the
//  * reserved size, please increase the '_Min_Stack_Size'.
//  *
//  * @param incr Memory size
//  * @return Pointer to allocated memory
//  */
// void *_sbrk(ptrdiff_t incr) {
//   extern uint8_t __end; /* Symbol defined in the linker script */
//   extern uint8_t _stack_end; /* Symbol defined in the linker script */
//   extern uint32_t __stack_size; /* Symbol defined in the linker script */
//   const uint32_t stack_limit = (uint32_t)&_stack_end - (uint32_t)&__stack_size;
//   const uint8_t *max_heap = (uint8_t *)stack_limit;
//   uint8_t *prev_heap_end;

//   /* Initialize heap end at first call */
//   if (NULL == __sbrk_heap_end)
//   {
//     __sbrk_heap_end = &__end;
//   }

//   /* Protect heap from growing into the reserved MSP stack */
//   if (__sbrk_heap_end + incr > max_heap)
//   {
//     errno = ENOMEM;
//     return (void *)-1;
//   }

//   prev_heap_end = __sbrk_heap_end;
//   __sbrk_heap_end += incr;

//   return (void *)prev_heap_end;
// }
