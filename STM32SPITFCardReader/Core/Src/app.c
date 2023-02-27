/*
 * app.c
 *
 *  Created on: Jan 21, 2023
 *      Author: TK
 */

#include "app.h"

extern SPI_HandleTypeDef hspi1;
extern UART_HandleTypeDef huart2;

SDCard card;

void APP_init() {
  SDCARD_init(&card, &hspi1, GPIOB, GPIO_PIN_6);
}

void APP_main() {
  char str[128];
  uint8_t buffer[1024];


  SDCard_Type card_type = SDCARD_initializeCard(&card, 2000);
  if (card_type == SDCARD_TYPE_UNKNOWN) {
    sprintf(str, "error initializing card!\n");
    HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);
    return;
  }

  uint32_t sector_addr = 34;
//  uint32_t sector_addr = 67584;

  sprintf(str, "reading sector %u....\n", sector_addr);
  HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);

  SDCARD_readSector(&card, sector_addr, buffer);

  // print data
  for (uint16_t i=0; i<16; i+=1) {
    for (uint16_t w=0; w<8; w+=1) {
      {
        sprintf(str, "0x%.8x\t",
            *(uint32_t *)(buffer + i*16+w*8));
        HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);
      }
    }
    sprintf(str, "\n");
    HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);
  }


  sector_addr = 35;

  sprintf(str, "reading sector %u....\n", sector_addr);
  HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);

  SDCARD_readSector(&card, sector_addr, buffer);

  // print data
  for (uint16_t i=0; i<16; i+=1) {
    for (uint16_t w=0; w<8; w+=1) {
      {
        sprintf(str, "0x%.8x\t",
            *(uint32_t *)(buffer + i*16+w*8));
        HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);
      }
    }
    sprintf(str, "\n");
    HAL_UART_Transmit(&huart2, (uint8_t *)str, strlen(str), 100);
  }

  HAL_Delay(1000);
}
