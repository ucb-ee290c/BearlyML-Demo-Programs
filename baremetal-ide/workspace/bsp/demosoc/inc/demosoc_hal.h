/**
 * @file hal.h
 * @author -T.K.- / t_k_233@outlook.com
 * @brief 
 * @version 0.1
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#ifndef __DEMOSOC_HAL_H
#define __DEMOSOC_HAL_H


#ifdef __cplusplus
extern "C" {
#endif

#include "DemoSoC.h"
#include "DemoSoC_hal_core.h"
#include "DemoSoC_hal_clint.h"
#include "DemoSoC_hal_gpio.h"
#include "DemoSoC_hal_i2c.h"
#include "DemoSoC_hal_plic.h"
#include "DemoSoC_hal_rcc.h"
#include "DemoSoC_hal_uart.h"


#define SYS_CLK_FREQ  100000000                    // Hz
#define MTIME_FREQ    (SYS_CLK_FREQ / 100000)    // tick per milliseconds

void HAL_init();

uint64_t HAL_getTick();

void HAL_delay(uint64_t time);

#ifdef __cplusplus
}
#endif

#endif /* __DEMOSOC_HAL_H */