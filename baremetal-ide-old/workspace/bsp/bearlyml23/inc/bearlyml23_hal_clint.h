/**
 * @file hal_clint.h
 * @author -T.K.- / t_k_233@outlook.com
 * @brief 
 * @version 0.1
 * 
 * @copyright Copyright (c) 2023
 * 
 */

#ifndef __BEARLYML23_HAL_CLINT_H
#define __BEARLYML23_HAL_CLINT_H

#ifdef __cplusplus
extern "C" {
#endif

#include "bearlyml23_hal.h"

void HAL_CLINT_triggerSoftwareInterrupt(uint32_t hartid);

uint64_t HAL_CLINT_getTime();

void HAL_CLINT_setTimerInterrupt(uint64_t time);

#ifdef __cplusplus
}
#endif

#endif /* __BEARLYML23_HAL_CLINT_H */