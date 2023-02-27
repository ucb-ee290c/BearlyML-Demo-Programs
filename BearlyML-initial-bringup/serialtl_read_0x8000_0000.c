
#include "main.h"

char str[64];

int main() {

  UART_InitTypeDef UART_init_config;
  UART_init_config.baudrate = 115200;
  UART_init_config.mode = UART_MODE_TX_RX;
  UART_init_config.stopbits = UART_STOPBITS_1;

  HAL_UART_init(UART0, &UART_init_config);

  while (1) {
    sprintf(str, "issue TSI read\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);

    volatile uint8_t *ptr = 0x80000000;
    volatile uint8_t data = *ptr;

    sprintf(str, "done\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);

    HAL_delay(1000);
  }
}
