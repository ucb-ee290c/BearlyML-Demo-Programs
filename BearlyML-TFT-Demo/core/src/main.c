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
#define ST7735_TFTWIDTH_128 128  // for 1.44 and mini
#define ST7735_TFTWIDTH_80 80    // for mini
#define ST7735_TFTHEIGHT_128 128 // for 1.44" display
#define ST7735_TFTHEIGHT_160 160 // for 1.8" and mini display

#define ST_CMD_DELAY 0x80 // special signifier for command lists

#define ST77XX_NOP 0x00
#define ST77XX_SWRESET 0x01
#define ST77XX_RDDID 0x04
#define ST77XX_RDDST 0x09

#define ST77XX_SLPIN 0x10
#define ST77XX_SLPOUT 0x11
#define ST77XX_PTLON 0x12
#define ST77XX_NORON 0x13

#define ST77XX_INVOFF 0x20
#define ST77XX_INVON 0x21
#define ST77XX_DISPOFF 0x28
#define ST77XX_DISPON 0x29
#define ST77XX_CASET 0x2A
#define ST77XX_RASET 0x2B
#define ST77XX_RAMWR 0x2C
#define ST77XX_RAMRD 0x2E

#define ST77XX_PTLAR 0x30
#define ST77XX_TEOFF 0x34
#define ST77XX_TEON 0x35
#define ST77XX_MADCTL 0x36
#define ST77XX_COLMOD 0x3A

#define ST77XX_MADCTL_MY 0x80
#define ST77XX_MADCTL_MX 0x40
#define ST77XX_MADCTL_MV 0x20
#define ST77XX_MADCTL_ML 0x10
#define ST77XX_MADCTL_RGB 0x00

#define ST77XX_RDID1 0xDA
#define ST77XX_RDID2 0xDB
#define ST77XX_RDID3 0xDC
#define ST77XX_RDID4 0xDD

// Some ready-made 16-bit ('565') color settings:
#define ST77XX_BLACK 0x0000
#define ST77XX_WHITE 0xFFFF
#define ST77XX_RED 0xF800
#define ST77XX_GREEN 0x07E0
#define ST77XX_BLUE 0x001F
#define ST77XX_CYAN 0x07FF
#define ST77XX_MAGENTA 0xF81F
#define ST77XX_YELLOW 0xFFE0
#define ST77XX_ORANGE 0xFC00



#define SPI_TRANSACTION_WAIT_TIME  1

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

#ifndef _swap_int16_t
#define _swap_int16_t(a, b)                                                    \
  {                                                                            \
    int16_t t = a;                                                             \
    a = b;                                                                     \
    b = t;                                                                     \
  }
#endif



#ifndef pgm_read_byte
#define pgm_read_byte(addr) (*(const unsigned char *)(addr))
#endif
#ifndef pgm_read_word
#define pgm_read_word(addr) (*(const unsigned short *)(addr))
#endif
#ifndef pgm_read_dword
#define pgm_read_dword(addr) (*(const unsigned long *)(addr))
#endif
/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/

/* USER CODE BEGIN PV */
static volatile uint8_t
  generic_st7789[] =  {                // Init commands for 7789 screens
    9,                              //  9 commands in list:
    ST77XX_SWRESET,   ST_CMD_DELAY, //  1: Software reset, no args, w/delay
      150,                          //     ~150 ms delay
    ST77XX_SLPOUT ,   ST_CMD_DELAY, //  2: Out of sleep mode, no args, w/delay
      10,                          //      10 ms delay
    ST77XX_COLMOD , 1+ST_CMD_DELAY, //  3: Set color mode, 1 arg + delay:
      0x55,                         //     16-bit color
      10,                           //     10 ms delay
    ST77XX_MADCTL , 1,              //  4: Mem access ctrl (directions), 1 arg:
      0x08,                         //     Row/col addr, bottom-top refresh
    ST77XX_CASET  , 4,              //  5: Column addr set, 4 args, no delay:
      0x00,
      0,        //     XSTART = 0
      0,
      240,  //     XEND = 240
    ST77XX_RASET  , 4,              //  6: Row addr set, 4 args, no delay:
      0x00,
      0,             //     YSTART = 0
      320>>8,
      320&0xFF,  //     YEND = 320
    ST77XX_INVON  ,   ST_CMD_DELAY,  //  7: hack
      10,
    ST77XX_NORON  ,   ST_CMD_DELAY, //  8: Normal display on, no args, w/delay
      10,                           //     10 ms delay
    ST77XX_DISPON ,   ST_CMD_DELAY, //  9: Main screen turn on, no args, delay
      10 };                          //    10 ms delay


uint16_t _width = 240;
uint16_t _height = 320;

uint8_t _colstart2 = 0; ///< Offset from the right
uint8_t _rowstart2 = 0;     ///< Offset from the bottom

// _rowstart = (320 - _height);
uint8_t _rowstart = 0;
// _rowstart2 = 0;

// _colstart = _colstart2 = (240 - _width);
uint8_t _colstart = 0;

uint16_t windowWidth = 240;
uint16_t windowHeight = 320;

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/

/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */
void writeCSPin(uint8_t level) {
  // HAL_GPIO_writePin(GPIOA, GPIO_PIN_0, ~level);
  if (level) {
    SPI1->CSDEF = 1;
  }
  else {
    SPI1->CSDEF = 0;
  }
}

void writeDCPin(uint8_t level) {
  HAL_GPIO_writePin(GPIOA, GPIO_PIN_0, !level);
}

void reset() {
  HAL_GPIO_writePin(GPIOA, GPIO_PIN_2, !HIGH);
  HAL_delay(500);
  HAL_GPIO_writePin(GPIOA, GPIO_PIN_2, !LOW);
  HAL_delay(1000);
  HAL_GPIO_writePin(GPIOA, GPIO_PIN_2, !HIGH);
  HAL_delay(1000);
}


void start_write() {
  writeCSPin(0);
}

void end_write() {
  writeCSPin(1);
  HAL_delayMicros(SPI_TRANSACTION_WAIT_TIME);
}


void write_command(uint8_t cmd) {
  writeDCPin(0);
  HAL_SPI_transmit(SPI1, &cmd, 1, 100);
  HAL_delayMicros(SPI_TRANSACTION_WAIT_TIME);
  writeDCPin(1);
}


void write32(uint32_t buffer) {
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer)+3, 1, 100);
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer)+2, 1, 100);
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer)+1, 1, 100);
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer), 1, 100);
  HAL_delayMicros(SPI_TRANSACTION_WAIT_TIME);
  // HAL_delay(1);
}

void write16(uint16_t buffer) {
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer)+1, 1, 100);
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer), 1, 100);
  HAL_delayMicros(SPI_TRANSACTION_WAIT_TIME);
  // HAL_delay(1);
}

void write8(uint8_t buffer) {
  HAL_SPI_transmit(SPI1, ((uint8_t *)&buffer), 1, 100);
  HAL_delayMicros(SPI_TRANSACTION_WAIT_TIME);
  // HAL_delay(1);
}


void send_command(uint8_t commandByte, uint8_t *dataBytes, uint8_t numDataBytes) {
  start_write();

  writeDCPin(0);
  HAL_delayMicros(200);
  write8(commandByte); // Send the command byte
  HAL_delayMicros(200);
  writeDCPin(1);
  HAL_delayMicros(200);

  for (int i = 0; i < numDataBytes; i++) {
      write8(*dataBytes); // Send the data bytes
      dataBytes++;
  }
  HAL_delayMicros(200);
  end_write();
}

void setRotation(uint8_t m) {
  uint8_t madctl = 0;

  m = m & 3; // can't be higher than 3

  switch (m) {
  case 0:
    madctl = ST77XX_MADCTL_MX | ST77XX_MADCTL_MY | ST77XX_MADCTL_RGB;
    // _xstart = _colstart;
    // _ystart = _rowstart;
    // _width = windowWidth;
    // _height = windowHeight;
    break;
  case 1:
    madctl = ST77XX_MADCTL_MY | ST77XX_MADCTL_MV | ST77XX_MADCTL_RGB;
    // _xstart = _rowstart;
    // _ystart = _colstart2;
    // _height = windowWidth;
    // _width = windowHeight;
    break;
  case 2:
    madctl = ST77XX_MADCTL_RGB;
    // _xstart = _colstart2;
    // _ystart = _rowstart2;
    // _width = windowWidth;
    // _height = windowHeight;
    break;
  case 3:
    madctl = ST77XX_MADCTL_MX | ST77XX_MADCTL_MV | ST77XX_MADCTL_RGB;
    // _xstart = _rowstart2;
    // _ystart = _colstart;
    // _height = windowWidth;
    // _width = windowHeight;
    break;
  }

  send_command(ST77XX_MADCTL, &madctl, 1);
}
void displayInit(uint8_t *addr) {
  uint8_t numCommands, cmd, numArgs;
  uint16_t ms;

  numCommands = pgm_read_byte(addr++); // Number of commands to follow
  while (numCommands--) {              // For each command...
    cmd = pgm_read_byte(addr++);       // Read command
    numArgs = pgm_read_byte(addr++);   // Number of args to follow
    ms = numArgs & ST_CMD_DELAY;       // If hibit set, delay follows args
    numArgs &= ~ST_CMD_DELAY;          // Mask out delay bit
    send_command(cmd, addr, numArgs);
    addr += numArgs;

    if (ms) {
      ms = pgm_read_byte(addr++); // Read post-command delay time (ms)
      if (ms == 255)
        ms = 500; // If 255, delay for 500 ms
      HAL_delay(ms);
    }
  }
  setRotation(0);
}


int16_t _xstart = 0;
int16_t _ystart = 0;

void set_addr_window(uint16_t x, uint16_t y, uint16_t w, uint16_t h) {
  // x += _xstart;
  // y += _ystart;
  uint32_t xa = ((uint32_t)x << 16) | (x + w - 1);
  uint32_t ya = ((uint32_t)y << 16) | (y + h - 1);

  write_command(ST77XX_CASET); // Column addr set
  write32(xa);

  write_command(ST77XX_RASET); // Row addr set
  write32(ya);

  write_command(ST77XX_RAMWR); // write to RAM
}
void draw_pixel(int16_t x, int16_t y, uint16_t color) {
  // Clip first...
  if ((x >= 0) && (x < _width) && (y >= 0) && (y < _height)) {
    start_write();
    set_addr_window(x, y, 1, 1);
    write16(color);
    end_write();
  }
}


void write_line(int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color) {
  int16_t steep = abs(y1 - y0) > abs(x1 - x0);
  if (steep) {
    _swap_int16_t(x0, y0);
    _swap_int16_t(x1, y1);
  }

  if (x0 > x1) {
    _swap_int16_t(x0, x1);
    _swap_int16_t(y0, y1);
  }

  int16_t dx, dy;
  dx = x1 - x0;
  dy = abs(y1 - y0);

  int16_t err = dx / 2;
  int16_t ystep;

  if (y0 < y1) {
    ystep = 1;
  } else {
    ystep = -1;
  }

  for (; x0 <= x1; x0++) {
    if (steep) {
      draw_pixel(y0, x0, color);
    } else {
      draw_pixel(x0, y0, color);
    }
    err -= dy;
    if (err < 0) {
      y0 += ystep;
      err += dx;
    }
  }
}

void drawFastVLine(int16_t x, int16_t y, int16_t h,
                                 uint16_t color) {
  start_write();
  write_line(x, y, x, y + h - 1, color);
  end_write();
}

void fillRect(int16_t x, int16_t y, int16_t w, int16_t h,
                            uint16_t color) {

  for (int16_t i = x; i < x + w; i++) {
    drawFastVLine(i, y, h, color);
  }

}

void fill_screen(uint16_t color) {
  fillRect(0, 0, _width, _height, color);
//  for (uint16_t x=0; x<_width; x+=1) {
//    for (uint16_t y=0; y<_height; y+=1) {
//      draw_pixel(x, y, color);
//    }
//  }
}


void testlines(uint16_t color) {
  // fill_screen(ST77XX_BLACK);
  for (int16_t x=0; x < _width; x+=6) {
    write_line(0, 0, x, _height-1, color);
    // HAL_delay(0);
  }
  for (int16_t y=0; y < _height; y+=6) {
    write_line(0, 0, _width-1, y, color);
    // HAL_delay(0);
  }

//  fill_screen(ST77XX_BLACK);
  for (int16_t x=0; x < _width; x+=6) {
    write_line(_width-1, 0, x, _height-1, color);
    // HAL_delay(0);
  }
  for (int16_t y=0; y < _height; y+=6) {
    write_line(_width-1, 0, 0, y, color);
    // HAL_delay(0);
  }

//  tft.fillScreen(ST77XX_BLACK);
  for (int16_t x=0; x < _width; x+=6) {
    write_line(0, _height-1, x, 0, color);
    // HAL_delay(0);
  }
  for (int16_t y=0; y < _height; y+=6) {
    write_line(0, _height-1, _width-1, y, color);
    // HAL_delay(0);
  }

//  tft.fillScreen(ST77XX_BLACK);
  for (int16_t x=0; x < _width; x+=6) {
    write_line(_width-1, _height-1, x, 0, color);
    // HAL_delay(0);
  }
  for (int16_t y=0; y < _height; y+=6) {
    write_line(_width-1, _height-1, 0, y, color);
    // HAL_delay(0);
  }
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
  
  GPIO_InitTypeDef GPIO_init_config;
  GPIO_init_config.mode = GPIO_MODE_OUTPUT;
  GPIO_init_config.pull = GPIO_PULL_NONE;
  GPIO_init_config.drive_strength = GPIO_DS_STRONG;
  HAL_GPIO_init(GPIOA, &GPIO_init_config, GPIO_PIN_0 | GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);
  

  SPI_InitTypeDef SPI_init_config;
  SPI_init_config.clock = 25000000U;
  SPI_init_config.mode = SPI_MODE0;
  SPI_init_config.csmode = SPI_CSMODE_SOFTWARE;
  HAL_SPI_init(SPI1, &SPI_init_config);
  



  char str[128];

  sprintf(str, "Hello! ST77xx TFT Test\n");
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);


  writeCSPin(1);
  writeDCPin(1);
  reset();

  displayInit(generic_st7789);

  sprintf(str, "Initialized\n");
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

  fill_screen(ST77XX_BLACK);

  HAL_delay(1000);

  sprintf(str, "Reseteed\n");
  HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

  HAL_delay(1000);
	/* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

	while (1) {

    // line draw test
    sprintf(str, "testlines\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

    testlines(ST77XX_YELLOW);

    HAL_delay(10);

    sprintf(str, "fill screen\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

    fill_screen(ST77XX_RED);

    HAL_delay(10);

    sprintf(str, "draw pixel\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

    draw_pixel(_width/2, _height/2, ST77XX_GREEN);


    sprintf(str, "loop\n");
    HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 100);

    fill_screen(ST77XX_BLACK);

    HAL_delay(500);
		/* USER CODE END WHILE */
	}
	
	/* USER CODE BEGIN 3 */

	/* USER CODE END 3 */
}
