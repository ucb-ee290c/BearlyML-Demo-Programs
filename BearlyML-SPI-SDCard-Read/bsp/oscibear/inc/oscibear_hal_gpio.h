
#ifndef __OSCIBEAR_HAL_GPIO_H
#define __OSCIBEAR_HAL_GPIO_H

#ifdef __cplusplus
extern "C" {
#endif

#include "oscibear.h"

/**
  * @brief GPIO pin enumeration
  */
typedef enum {
  GPIO_PIN_0 = 0b0001U,
  GPIO_PIN_1 = 0b0010U,
  GPIO_PIN_2 = 0b0100U
} GPIO_PIN;

/**
 * @brief GPIO mode enumeration
 * 
 */
typedef enum {
  GPIO_MODE_INPUT,
  GPIO_MODE_OUTPUT,
  GPIO_MODE_INOUT,
  GPIO_MODE_ALTERNATE_FUNCTION
} GPIO_Mode;

/**
 * @brief GPIO pull enumeration
 * 
 */
typedef enum {
  GPIO_PULL_NONE,
  GPIO_PULL_UP
} GPIO_Pull;

/**
 * @brief GPIO drive strength enumeration
 * 
 */
typedef enum {
  GPIO_DS_WEAK,
  GPIO_DS_STRONG
} GPIO_DriveStrength;

/**
 * @brief GPIO Init structure definition
 * 
 */
typedef struct {
  GPIO_Mode mode;
  GPIO_Pull pull;
  GPIO_DriveStrength drive_strength;
} GPIO_InitTypeDef;

/**
 * @brief Initialize the GPIOx peripheral according to the specified parameters in the GPIO_Init.
 * 
 * @param GPIOx     GPIO instance
 * @param GPIO_init pointer to a GPIO_InitTypeDef structure that contains
 *                  the configuration information for the specified GPIO peripheral.
 * @param pin       the pin to configure.
 *                  This parameter can be any combination of GPIO_PIN_x where x can be (0..31).
 */
void HAL_GPIO_init(GPIO_TypeDef *GPIOx, GPIO_InitTypeDef *GPIO_init, GPIO_PIN pin);

/**
 * @brief Read the specified input port pin.
 * 
 * @param GPIOx     GPIO instance
 * @param pin       the pin to read.
 *                  This parameter can be any combination of GPIO_PIN_x where x can be (0..31).
 * @return State    The input port pin value.
 */
State HAL_GPIO_readPin(GPIO_TypeDef *GPIOx, GPIO_PIN pin);

/**
 * @brief Set or clear the selected data port bit.
 * 
 * @param GPIOx     GPIO instance
 * @param pin       the pin to read.
 *                  This parameter can be any combination of GPIO_PIN_x where x can be (0..31).
 * @param value     specifies the value to be written to the selected bit.
 */
void HAL_GPIO_writePin(GPIO_TypeDef *GPIOx, GPIO_PIN pin, uint8_t value);

#ifdef __cplusplus
}
#endif

#endif /* __OSCIBEAR_HAL_GPIO_H */
