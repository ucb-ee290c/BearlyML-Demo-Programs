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
  /* USER CODE BEGIN 1 */{% if user_code_1 %}{{ user_code_1 }}{% else %}
  
	{% endif %}/* USER CODE END 1 */

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

  /* USER CODE BEGIN 2 */{% if user_code_2 %}{{ user_code_2 }}{% else %}

	{% endif %}/* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */{% if user_code_while %}{{ user_code_while }}{% else %}

	while (1) {% raw %}{
		
		{% endraw %}{% endif %}/* USER CODE END WHILE */
	}
	
	/* USER CODE BEGIN 3 */{% if user_code_3 %}{{ user_code_3 }}{% else %}

	{% endif %}/* USER CODE END 3 */
}
