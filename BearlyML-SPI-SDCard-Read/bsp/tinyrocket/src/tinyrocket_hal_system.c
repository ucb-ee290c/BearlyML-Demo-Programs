
#include "tinyrocket_hal.h"

#include "main.h"


__attribute__((weak)) void HAL_MachineSoftwareInterruptCallback(uint32_t hart_id) {}

__attribute__((weak)) void HAL_MachineTimerInterruptCallback(uint32_t hart_id) {}

__attribute__((weak)) void HAL_UART_TXRXCallback(UART_TypeDef *UARTx) {}

void InstructionAddressMisalign_Exception_Handler() {
  while (1) {}
}
void InstructionAccessFault_Exception_Handler() {
  while (1) {}
}
void IllegalInstruction_Exception_Handler() {
  while (1) {}
}
void Breakpoint_Exception_Handler() {
  while (1) {}
}
void LoadAddressMisaligne_Exception_Handler() {
  while (1) {}
}
void LoadAccessFault_Exception_Handler() {
  while (1) {}
}
void StoreAMOAddressMisalign_Exception_Handler() {
  while (1) {}
}
void StoreAMOAccessFault_Exception_Handler() {
  while (1) {}
}
void EnvironmentCallUMode_Exception_Handler() {
  // TODO: implement mode transfer
  while (1) {}
}
void EnvironmentCallMMode_Exception_Handler() {
  // TODO: implement mode transfer
  while (1) {}
}

void UserSoftware_IRQn_Handler() {}
void SupervisorSoftware_IRQn_Handler() {}
void HypervisorSoftware_IRQn_Handler() {}
void MachineSoftware_IRQn_Handler() {
  HAL_MachineSoftwareInterruptCallback(0);
  CLINT->MSIP0 = 0;
  HAL_CORE_clearIRQ(MachineSoftware_IRQn);
}

void UserTimer_IRQn_Handler() {}
void SupervisorTimer_IRQn_Handler() {}
void HypervisorTimer_IRQn_Handler() {}
void MachineTimer_IRQn_Handler() {
  HAL_MachineTimerInterruptCallback(0);
  HAL_CLINT_setTimerInterrupt(0xFFFFFFFFFFFFFFFF);
  HAL_CORE_clearIRQ(MachineTimer_IRQn);
}

void UserExternal_IRQn_Handler() {}
void SupervisorExternal_IRQn_Handler() {}
void HypervisorExternal_IRQn_Handler() {}
void MachineExternal_IRQn_Handler() {
  uint32_t irq_source = HAL_PLIC_claimIRQ(0);
  switch (irq_source) {
    case UART0_IRQn:
      HAL_UART_TXRXCallback(UART0);
    default:
      break;
  }
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
      LoadAddressMisaligne_Exception_Handler();
      break;
    case 0x00000005:      // load access fault
      LoadAccessFault_Exception_Handler();
      break;
    case 0x00000006:      // store/AMO address misaligned
      StoreAMOAddressMisalign_Exception_Handler();
      break;
    case 0x00000007:      // store/AMO access fault
      StoreAMOAccessFault_Exception_Handler();
      break;
    case 0x00000008:      // environment call from U-mode
      EnvironmentCallUMode_Exception_Handler();
      break;
    case 0x00000011:      // environment call from M-mode
      EnvironmentCallMMode_Exception_Handler();
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
      { // debug message
        char str[32];
        sprintf(str, "mcause %lu\n", m_cause);
        HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
      }
  }
}

