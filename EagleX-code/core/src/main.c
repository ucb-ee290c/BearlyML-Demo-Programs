
#include "main.h"


SDCard card;

int main() {
  UART_InitTypeDef UART_init_config;
  UART_init_config.baudrate = 115200;
  UART_init_config.mode = UART_MODE_TX_RX;
  UART_init_config.stopbits = UART_STOPBITS_1;
  HAL_UART_init(UART0, &UART_init_config);

  GPIO_InitTypeDef GPIO_init_config;
  GPIO_init_config.mode = GPIO_MODE_OUTPUT;
  GPIO_init_config.pull = GPIO_PULL_NONE;
  GPIO_init_config.drive_strength = GPIO_DS_WEAK;
  HAL_GPIO_init(GPIOA, &GPIO_init_config, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);

  
  while (1) {
    char str[128];
    sprintf(str, "start\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);

    // LOOP_PHASEACQENABLE
    *((volatile uint8_t *)0x2000U) = 0;

    // LOOP_ALG_IC 
    *((volatile uint64_t *)0x2018U) = 200;

    // LOOP_ALG_EN
    *((volatile uint8_t *)0x2008U) = 1;

    // LOOP_DLF_KP 
    *((volatile uint32_t *)0x2024U) = 8;
    // LOOP_DLF_KI
    *((volatile uint32_t *)0x2028U) = 4;


    // LOOP_PHASEACQENABLE
    *((volatile uint8_t *)0x2000U) = 1;



    uint8_t division = 2000;
    RCC->DEBUG_CLK_DIV = division;

    HAL_delay(2000);


    sprintf(str, "setting DEBUG CLK to DCO...\n");
    HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, 1);
    // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    // RCC->DEBUG_CLK_SEL = 1;
    HAL_delay(2000);

    sprintf(str, "setting LOOP_DCOCTRL_CODE_OVERRIDE to 1...\n");
    HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, 0);
    // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    *((volatile uint8_t *)0x2010U) = 1;
    HAL_delay(2000);


    sprintf(str, ": setting LOOP_DCOCTRL_CODE_OVERRIDE to 0...\n");
    HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, 1);
    // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    
    *((volatile uint8_t *)0x2010U) = 0;
    HAL_delay(2000);

    uint8_t data;
    uint8_t counter = 0;
    while (1) {
      counter += 1;
      sprintf(str, "DCO SEL: %d\tDCO DIV: %d\n", RCC->DEBUG_CLK_SEL, RCC->DEBUG_CLK_DIV);
      HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, counter % 2);
      // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
      HAL_delay(1000);
    }
  }
}