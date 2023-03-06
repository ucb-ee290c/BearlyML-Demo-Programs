/* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <stdio.h>
#include <string.h>

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
#define STR1(x) #x
#ifndef STR
#define STR(x) STR1(x)
#endif

#define CAT_(A, B) A##B
#define CAT(A, B) CAT_(A, B)

#define ROCC_INSTRUCTION_R_R_R(x, rd, rs1, rs2, func7)                               \
  {                                                                                  \
    asm volatile(                                                                    \
        ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x7) ", " STR(func7) ", %0, %1, %2" \
        : "=r"(rd)                                                                   \
        : "r"(rs1), "r"(rs2));                                                       \
  }


#define ROCC_INSTRUCTION_0_R_R(x, rs1, rs2, func7)                                   \
  {                                                                                  \
    asm volatile(                                                                    \
        ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x3) ", " STR(func7) ", x0, %0, %1" \
        :                                                                            \
        : "r"(rs1), "r"(rs2));                                                       \
  }
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

// "volatile" is necessary here
volatile uint32_t mp_signal = 0;
/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

void matmul(uint8_t *out, uint8_t *A, uint8_t A_cols, uint8_t *B, uint8_t B_cols) {
  for (size_t out_col_idx=0; out_col_idx<B_cols; out_col_idx+=1) {
    out[out_col_idx] = 0;
    for (size_t a_col_idx=0; a_col_idx<A_cols; a_col_idx+=1) {
      out[out_col_idx] += A[a_col_idx] * B[a_col_idx * B_cols + out_col_idx];
    }
  }
}

void SPMAT_matmul(uint8_t *out, uint8_t *sparse_A, uint8_t n_sparse_elems, uint8_t *dense_B, uint8_t n_dense_mats) {
  ROCC_INSTRUCTION_0_R_R(0, out, 0, 2);
  ROCC_INSTRUCTION_0_R_R(0, dense_B, n_dense_mats, 1);
  ROCC_INSTRUCTION_0_R_R(0, sparse_A, n_sparse_elems, 0);
  asm volatile("fence");
}

void printVector(uint8_t *vec, uint8_t size) {
  char str[64];
  for (size_t i=0; i<size; i+=1) {
    sprintf(str, "%d  ", vec[i]);
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);
  }
  sprintf(str, "\n");  
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);
}

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  
	/* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/
  

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  HAL_RCC_InitSystemClock();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  UART_InitTypeDef UART_init_config;
  UART_init_config.baudrate = 115200;
  UART_init_config.mode = UART_MODE_TX_RX;
  UART_init_config.stopbits = UART_STOPBITS_1;
  HAL_UART_init(UART0, &UART_init_config);

  /* USER CODE BEGIN 2 */
  mp_signal = 0;

  uint8_t A[] = {0,  2,  0,  0,  1,  0,  2,  0,  4,  0,  2,  3,  3};

  uint8_t n_sparse_elems = 8;
  uint8_t sparse_A[] = {
    0,  0, 
    2,  1, 
    1,  4, 
    2,  6, 
    4,  8, 
    2,  10, 
    3,  11, 
    3,  12
  };

  uint8_t n_dense_mats = 1;

  uint8_t dense_B_cols = 8;
  uint8_t dense_B_rows = 13;
  uint8_t dense_B[] = {
    12, 15, 5,  0,  3,  11, 3,  7,  
    9,  3,  5,  2,  4,  7,  6,  8,  
    8,  12, 10, 1,  6,  7,  7,  14, 
    8,  1,  5,  9,  13, 8,  9,  4,  
    3,  0,  3,  5,  14, 15, 15, 0,  
    2,  3,  8,  1,  3,  13, 3,  3,  
    14, 7,  0,  1,  9,  9,  15, 0,  
    15, 10, 4,  7,  3,  14, 11, 2,  
    7,  12, 2,  0,  0,  4,  5,  5,  
    6,  8,  4,  1,  15, 4,  9,  10, 
    10, 15, 8,  1,  1,  7,  9,  9,  
    3,  6,  7,  11, 14, 2,  11, 0,  
    14, 3,  5,  12, 9,  10, 4,  11, 
  };
  
  uint8_t result[64];

  if (READ_CSR(mhartid) == 0) {
    char str[64];
    sprintf(str, "hart %d: wake up!\n", READ_CSR(mhartid));
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    RCC->TILE1_RESET = 0;
    RCC->TILE2_RESET = 0;
    RCC->TILE3_RESET = 0;
    // RCC->TILE4_RESET = 0;
  }

  HAL_delay(READ_CSR(mhartid)*100);
  char str[64];
  sprintf(str, "hart %d: up!\n", READ_CSR(mhartid));
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);

  HAL_delay((4-READ_CSR(mhartid))*100);

	/* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1) {
    if (READ_CSR(mhartid) == 0) {
      char str[128];
      uint64_t tick;
      uint64_t time_taken;

      sprintf(str, "================================\n");
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

      sprintf(str, ">>> running matmul with 1 rocket core...\n");
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

      tick = HAL_getTick();
      for (size_t i=0; i<1000; i+=1) {
        matmul(result, A, dense_B_rows, dense_B, dense_B_cols);
      }
      time_taken = HAL_getTick() - tick;

      sprintf(str, "time taken: %u, \tresult: \n", time_taken);
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

      printVector(result, dense_B_cols);

      HAL_delay(1000);




      sprintf(str, "\n>>> running matmul with 1 spmat accelerator...\n");
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

      tick = HAL_getTick();
      for (size_t i=0; i<1000; i+=1) {
        SPMAT_matmul(result, sparse_A, n_sparse_elems, dense_B, n_dense_mats);
      }
      time_taken = HAL_getTick() - tick;

      sprintf(str, "time taken: %u, \tresult: \n", time_taken);
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

      printVector(result, dense_B_cols);
      
      HAL_delay(1000);



      
      sprintf(str, "\n>>> running matmul with 4 rocket cores...\n");
      HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

      mp_signal = 1;
    }


    while (mp_signal == 0) {}

    {
      uint64_t tick;
      uint64_t time_taken;
      tick = HAL_getTick();
      for (size_t i=0; i<250; i+=1) {
        matmul(result, A, dense_B_rows, dense_B, dense_B_cols);
      }
      time_taken = HAL_getTick() - tick;

      
      {
        char str[64];
        HAL_delay(READ_CSR(mhartid)*100);
        sprintf(str, "hart %d: done.\n", READ_CSR(mhartid));
        HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
        HAL_delay((4-READ_CSR(mhartid))*100);
      }

    
      if (READ_CSR(mhartid) == 0) {
        mp_signal = 0;
        
        char str[128];
        sprintf(str, "time taken: %u, \tresult: \n", time_taken);
        HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);
        printVector(result, dense_B_cols);
      }
      
      HAL_delay(1000);
    }

    HAL_delay(1000);
		/* USER CODE END WHILE */
	}
	
	/* USER CODE BEGIN 3 */

	/* USER CODE END 3 */
}