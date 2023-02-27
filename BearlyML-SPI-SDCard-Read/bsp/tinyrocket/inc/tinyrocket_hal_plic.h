
#ifndef __TINYROCKET_HAL_PLIC_H
#define __TINYROCKET_HAL_PLIC_H

#ifdef __cplusplus
extern "C" {
#endif

#include "tinyrocket.h"

void HAL_PLIC_disable(uint32_t hart_id, PLIC_IRQn_Type irq_id);

void HAL_PLIC_enable(uint32_t hart_id, PLIC_IRQn_Type irq_id);

void HAL_PLIC_setPriority(PLIC_IRQn_Type irq_id, uint32_t priority);

void HAL_PLIC_setPriorityThreshold(uint32_t hart_id, uint32_t priority);

uint32_t HAL_PLIC_claimIRQ(uint32_t hart_id);

void HAL_PLIC_completeIRQ(uint32_t hart_id, PLIC_IRQn_Type irq_id);


#ifdef __cplusplus
}
#endif

#endif /* __TINYROCKET_HAL_PLIC_H */
