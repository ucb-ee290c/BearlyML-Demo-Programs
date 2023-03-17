/*
 * sdcard_spi.h
 *
 *  Created on: Jan 30, 2023
 *      Author: TK
 */

#ifndef INC_SDCARD_SPI_H_
#define INC_SDCARD_SPI_H_

#include "bearlyml_hal.h"


#define SDCARD_SECTOR_SIZE                512U
#define SDCARD_N_RETIRES                  256U


typedef enum {
  SDCARD_TYPE_UNKNOWN = 0U,
  SDCARD_TYPE_MMC,      /** Multimedia card (no CMD8, no ACMD41, but CMD1, uses byte-addressing) */
  SDCARD_TYPE_SDSC_V1,  /** Standard Capacity card v1 (no CMD8, but ACMD41, uses byte-addressing) */
  SDCARD_TYPE_SDSC_V2,  /** Standard Capacity card v2 (has CMD8+ACMD41, uses byte-addressing) */
  SDCARD_TYPE_SDHC      /** High Capacity card (has CMD8+ACMD41, uses sector-addressing) */
} SDCard_Type;

typedef enum {
  SDCARD_RESPONSE_MASK          = 0x0E,   /** any response value bits have to be masked by this */
  SDCARD_RESPONSE_ACCEPTED      = 0x04,   /** data accepted */
  SDCARD_RESPONSE_REJECTED_CRC  = 0x0A,   /** data rejected due to CRC error */
  SDCARD_RESPONSE_REJECTED_ERR  = 0x0C    /** data rejected due to write error */
} SDCard_Response;

typedef enum {
  SDCARD_DATA_TOKEN_OK          = 0x00,
  SDCARD_DATA_TOKEN_ERROR       = 0x01,
  SDCARD_DATA_TOKEN_CC_ERROR    = 0x02,
  SDCARD_DATA_TOKEN_ECC_FAILURE = 0x04,
  SDCARD_DATA_TOKEN_OUT_OF_RANGE= 0x08,
  SDCARD_DATA_TOKEN_CARD_LOCKED = 0x10,
} SDCard_DataError;

typedef struct {
  SPI_TypeDef *SPIx;
} SDCard;

/**
 * Command set definition
 */
#define SDCARD_CMD0                       0x00U
#define SDCARD_GO_IDLE_STATE              SDCARD_CMD0
#define SDCARD_CMD1                       0x01U
#define SDCARD_SEND_OP_COND               SDCARD_CMD1
#define SDCARD_ACMD41                     0x29U
#define SDCARD_APP_SEND_OP_COND           SDCARD_ACMD41
#define SDCARD_CMD8                       0x08U
#define SDCARD_SEND_IF_COND               SDCARD_CMD8
#define SDCARD_CMD9                       0x09U
#define SDCARD_SEND_CSD                   SDCARD_CMD9
#define SDCARD_CMD10                      0x0AU
#define SDCARD_SEND_CID                   SDCARD_CMD10
#define SDCARD_CMD12                      0x0CU
#define SDCARD_STOP_TRANSMISSION          SDCARD_CMD12
#define SDCARD_CMD16                      0x10U
#define SDCARD_SET_BLOCKLEN               SDCARD_CMD16
#define SDCARD_CMD17                      0x11U
#define SDCARD_READ_SINGLE_BLOCK          SDCARD_CMD17
#define SDCARD_CMD18                      0x12U
#define SDCARD_READ_MULTIPLE_BLOCK        SDCARD_CMD18
#define SDCARD_CMD23                      0x17U
#define SDCARD_SET_BLOCK_COUNT            SDCARD_CMD23
#define SDCARD_ACMD23                     0x17U
#define SDCARD_SET_WR_BLOCK_ERASE_COUNT   SDCARD_ACMD23
#define SDCARD_CMD24                      0x18U
#define SDCARD_WRITE_BLOCK                SDCARD_CMD24
#define SDCARD_CMD25                      0x19U
#define SDCARD_WRITE_MULTIPLE_BLOCK       SDCARD_CMD25
#define SDCARD_CMD55                      0x37U
#define SDCARD_APP_CMD                    SDCARD_CMD55
#define SDCARD_CMD58                      0x3AU
#define SDCARD_READ_OCR                   SDCARD_CMD58
#define SDCARD_DUMMY                      0xFFU


#define SDCARD_FLAG_IN_IDLE_STATE           0x01U
#define SDCARD_FLAG_ERASE_RESET             0x02U
#define SDCARD_FLAG_ILLEGAL_COMMAND         0x04U
#define SDCARD_FLAG_COMMAND_CRC_ERROR       0x08U
#define SDCARD_FLAG_ERASE_SEQUENCE_ERROR    0x10U
#define SDCARD_FLAG_ADDRESS_ERROR           0x20U
#define SDCARD_FLAG_PARAMETER_ERROR         0x40U
#define SDCARD_FLAG_PENDING                 0x80U

static inline void SDCARD_setCSHigh(SDCard *card) {
  card->SPIx->CSDEF = 1;
}

static inline void SDCARD_setCSLow(SDCard *card) {
  card->SPIx->CSDEF = 0;
}

void SDCARD_init(SDCard *card, SPI_TypeDef *SPIx);

uint8_t SDCARD_transmitCommand(SDCard *card, uint8_t command, uint32_t data, uint8_t crc);

uint32_t SDCARD_receiveData(SDCard *card);

SDCard_Type SDCARD_initializeCard(SDCard *card, uint32_t timeout);

void SDCARD_readSector(SDCard *card, uint32_t sector_address, uint8_t *buffer);


#endif /* INC_SDCARD_SPI_H_ */
