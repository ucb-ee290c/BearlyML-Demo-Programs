
#ifndef __OSCIBEAR_HAL_UART_H
#define __OSCIBEAR_HAL_UART_H

#ifdef __cplusplus
extern "C" {
#endif

#include "oscibear.h"
#include "oscibear_hal.h"

#define UART_FIFO_DEPTH   8

#define UART_MODE_RX                    0x01U
#define UART_MODE_TX                    0x02U
#define UART_MODE_TX_RX                 0x03U

#define UART_STOPBITS_1                 0
#define UART_STOPBITS_2                 UART_TXCTRL_NSTOP_MSK

typedef struct {
  uint32_t baudrate;  // the default baudrate divisor is 0xAD, 173
  uint32_t mode;
  uint32_t stopbits;
} UART_InitTypeDef;

// the default baudrate divisor is 0xAD, 173

/**
 * @brief Initialize the UART mode according to the specified
 *        parameters in the UART_InitTypeDef and initialize the associated handle.
 * 
 * @param UARTx     UART instance.
 * @param UART_init UART configurations.
 */
void HAL_UART_init(UART_TypeDef *UARTx, UART_InitTypeDef *UART_init);

uint8_t HAL_UART_getRXFIFODepth(UART_TypeDef *UARTx);

uint8_t HAL_UART_getTXFIFODepth(UART_TypeDef *UARTx);

/**
 * @brief Receive an amount of data in blocking mode.
 * 
 * @param UARTx     UART instance.
 * @param data      Pointer to data buffer (u8 or u16 data elements).
 * @param size      Amount of data elements (u8 or u16) to be received.
 * @param timeout   Timeout duration.
 * @return Status 
 */
Status HAL_UART_receive(UART_TypeDef *UARTx, uint8_t *data, uint16_t size, uint32_t timeout);

/**
 * @brief Send an amount of data in blocking mode.
 * 
 * @param UARTx     UART instance.
 * @param data      Pointer to data buffer (u8 or u16 data elements).
 * @param size      Amount of data elements (u8 or u16) to be sent.
 * @param timeout   Timeout duration.
 * @return Status 
 */
Status HAL_UART_transmit(UART_TypeDef *UARTx, uint8_t *data, uint16_t size, uint32_t timeout);

Status HAL_UART_receive_IT(UART_TypeDef *UARTx, uint8_t *data, uint16_t size, uint32_t timeout);

Status HAL_UART_transmit_IT(UART_TypeDef *UARTx, uint8_t *data, uint16_t size, uint32_t timeout);

#ifdef __cplusplus
}
#endif

#endif /* __OSCIBEAR_HAL_UART_H */