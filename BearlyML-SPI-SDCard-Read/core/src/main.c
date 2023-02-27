
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

  // I2C_InitTypeDef I2C_init_config;
  // HAL_I2C_init(I2C0, &I2C_init_config);
  // HAL_I2C_init(I2C1, &I2C_init_config);

  SPI_InitTypeDef SPI_init_config;
  SPI_init_config.mode = SPI_MODE0;
  SPI_init_config.csmode = SPI_CSMODE_SOFTWARE;
  HAL_SPI_init(SPI1, &SPI_init_config);

  SDCARD_init(&card, SPI1);
  
  while (1) {
    char str[128];
    uint8_t buffer[1024];
    
    sprintf(str, "start\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);

    HAL_GPIO_writePin(GPIOA, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3, HIGH);
    // HAL_delay(100);

    SDCard_Type card_type = SDCARD_initializeCard(&card, 0);
    if (card_type == SDCARD_TYPE_UNKNOWN) {
      sprintf(str, "error initializing card!\n");
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);
      return;
    }

    
  uint32_t sector_addr = 34;
//  uint32_t sector_addr = 67584;

  sprintf(str, "reading sector %u....\n", sector_addr);
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);

  SDCARD_readSector(&card, sector_addr, buffer);

  // print data
  for (uint16_t i=0; i<16; i+=1) {
    for (uint16_t w=0; w<8; w+=1) {
      {
        sprintf(str, "0x%.8x\t",
            *(uint32_t *)(buffer + i*16+w*8));
        HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);
      }
    }
    sprintf(str, "\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);
  }


  sector_addr = 35;

  sprintf(str, "reading sector %u....\n", sector_addr);
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);

  SDCARD_readSector(&card, sector_addr, buffer);

  // print data
  for (uint16_t i=0; i<16; i+=1) {
    for (uint16_t w=0; w<8; w+=1) {
      {
        sprintf(str, "0x%.8x\t",
            *(uint32_t *)(buffer + i*16+w*8));
        HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);
      }
    }
    sprintf(str, "\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);
  }

  HAL_delay(1000);



    // uint16_t device_addr = 0b10101;
    // uint8_t buffer[2];
    // buffer[0] = 0b11110000;
    // HAL_I2C_masterTransmit(I2C0, device_addr, buffer, 1, 10000);
    // HAL_I2C_masterTransmit(I2C1, device_addr, buffer, 1, 10000);
    
    HAL_GPIO_writePin(GPIOA, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3, LOW);
    HAL_delay(100);
    

    sprintf(str, "hello world\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);
  }
}
