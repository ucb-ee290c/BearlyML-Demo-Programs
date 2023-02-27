
#include "main.h"

char str[64];
uint8_t hartid;
uint8_t hartid_char;

// void HAL_MachineSoftwareInterruptCallback(uint32_t hartid) {
//   sprintf(str, "software interrupt!\n");
//   HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
// }

int main() {
  UART_InitTypeDef UART_init_config;
  UART_init_config.baudrate = 115200;
  UART_init_config.mode = UART_MODE_TX_RX;
  UART_init_config.stopbits = UART_STOPBITS_1;
  HAL_UART_init(UART0, &UART_init_config);

  hartid = READ_CSR(mhartid);
  
  // if we are not hart 1 (only hart 0 will execute into this)
  if (hartid == 0) {
    // infinite loop
    hartid = READ_CSR(mhartid);
    hartid_char = hartid + 48;
    sprintf(str, ": wake up!\n");  // should be "0: hello world"
    HAL_UART_transmit(UART0, &hartid_char, 1, 0);
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    HAL_delay(1000);
    // wake up hart 1
    RCC->TILE1_RESET = 0;
    RCC->TILE2_RESET = 0;
    RCC->TILE3_RESET = 0;
    RCC->TILE4_RESET = 0;
  }

  hartid = READ_CSR(mhartid);
  HAL_delay(200 * hartid);
  
  while (1) {
    hartid = READ_CSR(mhartid);
    hartid_char = hartid + 48;
    sprintf(str, ": hello world\n");  // should be "1: hello world"
    HAL_UART_transmit(UART0, &hartid_char, 1, 0);
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    HAL_delay(2000);
  }
}
