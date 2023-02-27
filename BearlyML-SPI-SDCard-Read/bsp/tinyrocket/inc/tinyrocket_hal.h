
#ifndef __TINYROCKET_HAL_H
#define __TINYROCKET_HAL_H


#ifdef __cplusplus
extern "C" {
#endif

#include "tinyrocket.h"
#include "tinyrocket_hal_core.h"
#include "tinyrocket_hal_clint.h"
#include "tinyrocket_hal_plic.h"
#include "tinyrocket_hal_uart.h"


// #define SYS_CLK_FREQ  200000                    // Hz
#define SYS_CLK_FREQ  32000000                  // Hz
#define MTIME_FREQ    (SYS_CLK_FREQ / 2500000)    // tick per milliseconds

void HAL_init();

uint64_t HAL_getTick();

void HAL_delay(uint64_t time);

#ifdef __cplusplus
}
#endif

#endif /* __TINYROCKET_HAL_H */
