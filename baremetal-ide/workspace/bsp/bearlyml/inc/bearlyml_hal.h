/**
 * @file hal.h
 * @author -T.K.- / t_k_233@outlook.com
 * @brief 
 * @version 0.1
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#ifndef __BEARLYML_HAL_H
#define __BEARLYML_HAL_H


#ifdef __cplusplus
extern "C" {
#endif

#include "BearlyML.h"
#include "BearlyML_hal_core.h"
#include "BearlyML_hal_clint.h"
#include "BearlyML_hal_gpio.h"
#include "BearlyML_hal_i2c.h"
#include "BearlyML_hal_plic.h"
#include "BearlyML_hal_rcc.h"
#include "BearlyML_hal_uart.h"


#define SYS_CLK_FREQ  100000000                    // Hz
#define MTIME_FREQ    (SYS_CLK_FREQ / 100000)    // tick per milliseconds

void HAL_init();

uint64_t HAL_getTick();

void HAL_delay(uint64_t time);

#ifdef __cplusplus
}
#endif

#endif /* __BEARLYML_HAL_H */