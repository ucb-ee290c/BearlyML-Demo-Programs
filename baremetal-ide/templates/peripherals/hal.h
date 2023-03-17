/**
 * @file hal.h
 * @author -T.K.- / t_k_233@outlook.com
 * @brief 
 * @version 0.1
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#ifndef __{{ chipname | upper }}_HAL_H
#define __{{ chipname | upper }}_HAL_H


#ifdef __cplusplus
extern "C" {
#endif

#include "{{ chipname }}.h"
#include "{{ chipname }}_hal_core.h"
#include "{{ chipname }}_hal_clint.h"
#include "{{ chipname }}_hal_gpio.h"
#include "{{ chipname }}_hal_i2c.h"
#include "{{ chipname }}_hal_plic.h"
#include "{{ chipname }}_hal_rcc.h"
#include "{{ chipname }}_hal_uart.h"

#define HXTAL_FREQ    {{ sys_clk_freq }}                   // Hz
#define SYS_CLK_FREQ  HXTAL_FREQ / 2              // Hz
#define MTIME_FREQ    (SYS_CLK_FREQ / 200000)     // tick per milliseconds

void HAL_init();

uint64_t HAL_getTick();

void HAL_delay(uint64_t time);

#ifdef __cplusplus
}
#endif

#endif /* __{{ chipname | upper }}_HAL_H */
