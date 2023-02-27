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

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */
/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

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

  GPIO_InitTypeDef GPIO_init_config;
  GPIO_init_config.mode = GPIO_MODE_OUTPUT;
  GPIO_init_config.pull = GPIO_PULL_NONE;
  GPIO_init_config.drive_strength = GPIO_DS_WEAK;
  HAL_GPIO_init(GPIOA, &GPIO_init_config, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);

	/* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */
  while (1) {
    char str[128];
    sprintf(str, "start\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 1000);

    // LOOP_PHASEACQENABLE
    PLL->LOOP_PHASEACQENABLE = 0;

    // LOOP_ALG_IC 
    PLL->LOOP_ALG_IC = 200;

    // LOOP_ALG_EN
    PLL->LOOP_ALG_EN = 1;

    // LOOP_DLF_KP 
    PLL->LOOP_DLF_KP = 8;
    // LOOP_DLF_KI
    PLL->LOOP_DLF_KI = 4;


    // LOOP_PHASEACQENABLE
    PLL->LOOP_PHASEACQENABLE = 1;


    uint8_t division = 1000;
    RCC->DEBUG_CLK_DIV = division;

    // HAL_delay(2000);


    // sprintf(str, "setting DEBUG CLK to DCO...\n");
    // HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, 1);
    // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    // RCC->DEBUG_CLK_SEL = 1;
    *((volatile uint32_t *)0x00102008U) = 1;
    // HAL_delay(2000);

    // sprintf(str, "setting LOOP_DCOCTRL_CODE_OVERRIDE to 1...\n");
    // HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, 0);
    // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    PLL->LOOP_DCOCTRLCODEOVERRIDE = 1;
    HAL_delay(2000);


    // sprintf(str, ": setting LOOP_DCOCTRL_CODE_OVERRIDE to 0...\n");
    // HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, 1);
    // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    
    PLL->LOOP_DCOCTRLCODEOVERRIDE = 0;
    // HAL_delay(2000);

    uint8_t data;
    uint8_t counter = 0;

    while (1) {
      counter += 1;
      sprintf(str, "DCO SEL: %d\tDCO DIV: %d\n", RCC->DEBUG_CLK_SEL, RCC->DEBUG_CLK_DIV);
      HAL_GPIO_writePin(GPIOA, GPIO_PIN_1, counter % 2);
      // HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
      HAL_delay(1000);
    }
		/* USER CODE END WHILE */
	}
	
	/* USER CODE BEGIN 3 */

	/* USER CODE END 3 */
}