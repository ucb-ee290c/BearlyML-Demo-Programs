
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
  
  // GPIO_InitTypeDef GPIO_init_config;
  // GPIO_init_config.mode = GPIO_MODE_OUTPUT;
  // GPIO_init_config.pull = GPIO_PULL_NONE;
  // GPIO_init_config.drive_strength = GPIO_DS_WEAK;
  // HAL_GPIO_init(GPIOA, &GPIO_init_config, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2);

  // HAL_GPIO_writePin(GPIOA, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2, HIGH);

  sprintf(str, ": setting DEBUG CLK to DCO...\n");
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
  HAL_delay(200);
  RCC->DEBUG_CLK_SEL = 1;

  uint8_t division = 1;

  sprintf(str, ": setting DCO DIV to %d\n", division);
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
  HAL_delay(200);
  RCC->DEBUG_CLK_DIV = division;
  
  while (1) {
    sprintf(str, "DCO SEL: %d\tDCO DIV: %d\n", RCC->DEBUG_CLK_SEL, RCC->DEBUG_CLK_DIV);
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    HAL_delay(1000);
  }
}
