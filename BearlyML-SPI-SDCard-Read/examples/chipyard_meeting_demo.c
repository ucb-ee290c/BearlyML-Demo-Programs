
#include "chipyard_meeting_demo.h"

char str[128];

void HAL_MachineSoftwareInterruptCallback(uint32_t hartid) {
  sprintf(str, "software interrupt!\n");
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
}

void HAL_UART_TXRXCallback(UART_TypeDef* UARTx) {
  uint32_t c = UARTx->RXDATA;
  sprintf(str, "UART RX interrupt: \"%c\"!\n", c);
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
}

int main() {
  UART_InitTypeDef UART_init_config;
  UART_init_config.baudrate = 115200;
  UART_init_config.mode = UART_MODE_TX_RX;
  UART_init_config.stopbits = UART_STOPBITS_1;

  HAL_UART_init(UART0, &UART_init_config);

  HAL_UART_enableRXInterrupt(UART0, 0);
  
  HAL_PLIC_enable(0, UART0_IRQn);
  HAL_PLIC_setPriority(UART0_IRQn, 5);
  
  HAL_CORE_enableIRQ(MachineSoftware_IRQn);
  HAL_CORE_enableIRQ(MachineExternal_IRQn);
  
  while (1) {
    sprintf(str, "hello world\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    HAL_delay(1000);
  }
}
