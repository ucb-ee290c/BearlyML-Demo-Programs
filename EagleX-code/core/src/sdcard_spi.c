/*
 * sdcard_spi.c
 *
 *  Created on: Jan 30, 2023
 *      Author: TK
 */

#include "sdcard_spi.h"

void SDCARD_init(SDCard *card, SPI_TypeDef *SPIx) {
  card->SPIx = SPIx;
}

uint8_t SDCARD_transmitCommand(SDCard *card, uint8_t command, uint32_t data, uint8_t crc) {
  uint8_t tx_buffer[6];
  uint8_t rx_buffer[6];
  uint16_t n_retries = SDCARD_N_RETIRES;

  tx_buffer[0] = 0x40U | READ_BITS(command, 0x3FU);
  tx_buffer[1] = READ_BITS(data >> 24U, 0xFFU);
  tx_buffer[2] = READ_BITS(data >> 16U, 0xFFU);
  tx_buffer[3] = READ_BITS(data >> 8U, 0xFFU);
  tx_buffer[4] = READ_BITS(data, 0xFFU);
  tx_buffer[5] = crc | 0x01U;

  HAL_SPI_transmitReceive(card->SPIx, tx_buffer, rx_buffer, 6, 100);

  tx_buffer[0] = SDCARD_DUMMY;  // set TX content to safe dummy byte 0xFF

  // a byte received immediately after CMD12 should be discarded
  if (command == SDCARD_STOP_TRANSMISSION) {
    HAL_SPI_transmit(card->SPIx, tx_buffer, 1, 100);
  }

  while (n_retries > 0) {
    // wait for a valid response, transmitting 0xFF to clock the slave
    HAL_SPI_transmitReceive(card->SPIx, tx_buffer, rx_buffer, 1, 100);
    n_retries -= 1;
    if (!READ_BITS(rx_buffer[0], SDCARD_FLAG_PENDING)) {
      // if response if a valid R1 response, return it
      return rx_buffer[0];
    }
  }
  // exceed maximum number of retires, returns 0xFF (equivalent to busy state)
  return SDCARD_DUMMY;
}

uint32_t SDCARD_receiveData(SDCard *card) {
  uint8_t tx_buffer[4];
  uint8_t rx_buffer[4];

  tx_buffer[0] = 0xFF;
  tx_buffer[1] = 0xFF;
  tx_buffer[2] = 0xFF;
  tx_buffer[3] = 0xFF;

  HAL_SPI_transmitReceive(card->SPIx, tx_buffer, rx_buffer, 4, 100);

  // transfer is MSByte first, we need to do a flip here.
  return ((rx_buffer[0] << 24U)
      | (rx_buffer[1] << 16U)
      | (rx_buffer[2] << 8U)
      | (rx_buffer[3]));
}

SDCard_Type SDCARD_initializeCard(SDCard *card, uint32_t timeout) {
  uint8_t response;
  uint32_t response_data;
  uint32_t tickstart = HAL_getTick();

  // 1. wait for >= 1ms, we also set CS pin state here in advance
  SDCARD_setCSHigh(card);
  HAL_delay(2);

  // 2. send >=74 dummy cycles (bits) with CS pulled HIGH
  uint8_t buf = 0xFF;
  for (uint16_t i=0; i<20; i+=1) {
    HAL_SPI_transmit(card->SPIx, &buf, 1, 100);
  }

  // 3. send CMD0 to go to idle state
  while (response != SDCARD_FLAG_IN_IDLE_STATE) {
    SDCARD_setCSLow(card);
    response = SDCARD_transmitCommand(card, SDCARD_GO_IDLE_STATE, 0x00000000U, 0x95U);
    SDCARD_setCSHigh(card);

    if (timeout && (HAL_getTick() - tickstart) > timeout) {
      return SDCARD_TYPE_UNKNOWN;
    }
  }

  // 4. send CMD8 to enter interface condition
  SDCARD_setCSLow(card);
  response = SDCARD_transmitCommand(card, SDCARD_SEND_IF_COND, 0x000001AAU, 0x87U);
  response_data = SDCARD_receiveData(card);
  SDCARD_setCSHigh(card);

  if (!READ_BITS(response, SDCARD_FLAG_PENDING)) {
    if (READ_BITS(response_data, 0xFFFFU) != 0x01AAU) {
      // 0x1AA mismatch
      return SDCARD_TYPE_UNKNOWN;
    }

    response = SDCARD_DUMMY;
    uint16_t n_retries = SDCARD_N_RETIRES;
    while (1) {
      // 6. send CMD55
      SDCARD_setCSLow(card);
      SDCARD_transmitCommand(card, SDCARD_APP_CMD, 0x00000000U, 0x65);
      SDCARD_setCSHigh(card);
      

      // 7. send ACMD41
      SDCARD_setCSLow(card);
      response = SDCARD_transmitCommand(card, SDCARD_APP_SEND_OP_COND, 0x40000000U, 0x77);
      SDCARD_setCSHigh(card);

      if (response == 0x00U) {
        break;
      }
      if (response != 0x01U || n_retries == 0) {
        return SDCARD_TYPE_UNKNOWN;
      }
      n_retries -= 1;
    }

    // 7. send CMD58 to get SD card info
    SDCARD_setCSLow(card);
    SDCARD_transmitCommand(card, SDCARD_READ_OCR, 0x00000000U, 0xFD);
    response_data = SDCARD_receiveData(card);
    SDCARD_setCSHigh(card);

    if (READ_BITS(response_data, 1 << 30U)) {
      return SDCARD_TYPE_SDHC;
    }
    return SDCARD_TYPE_SDSC_V2;
  }
  else {
    // TODO: add rest of the flow chart
//    return SDCARD_TYPE_SDSC_V1;
    return SDCARD_TYPE_UNKNOWN;
  }
}

void SDCARD_readSector(SDCard *card, uint32_t sector_address, uint8_t *buffer) {
  uint8_t resp = SDCARD_DUMMY;
  uint8_t tx_buffer = SDCARD_DUMMY;

  SDCARD_setCSLow(card);
  SDCARD_transmitCommand(card, SDCARD_READ_SINGLE_BLOCK, sector_address, 0xFF);

  while (resp != 0xFEU) {
    HAL_SPI_transmitReceive(card->SPIx, &tx_buffer, &resp, 1, 100);
  }

  for (uint16_t i=0; i<SDCARD_SECTOR_SIZE; i+=4) {
    *((uint32_t *)(buffer+i)) = SDCARD_receiveData(card);
  }
  SDCARD_setCSHigh(card);
}
