
#include "main.h"

char str[64];
uint8_t hartid;
uint8_t hartid_char;

int main() {
  UART_InitTypeDef UART_init_config;
  UART_init_config.baudrate = 115200;
  UART_init_config.mode = UART_MODE_TX_RX;
  UART_init_config.stopbits = UART_STOPBITS_1;
  HAL_UART_init(UART0, &UART_init_config);
  
  hartid = READ_CSR(mhartid);
  hartid_char = hartid + 48;
  
  // if we are not hart 1 (only hart 0 will execute into this)
  while (hartid != 1) {
    // wake up hart 1
    CLINT->MSIP1 = 1;
    // infinite loop
    sprintf(str, ": waiting\n");  // should be "0: hello world"
    HAL_UART_transmit(UART0, &hartid_char, 1, 0);
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    HAL_delay(1000);
  }
  
  // else if we are hart 1
  while (1) {
    sprintf(str, ": hello world\n");  // should be "1: hello world"
    HAL_UART_transmit(UART0, &hartid_char, 1, 0);
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    HAL_delay(1000);
  }
}
