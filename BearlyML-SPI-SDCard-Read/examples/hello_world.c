
// #include "main.h"

// char str[64];

// int hello_world() {

//   uint32_t mhartid;
//   asm volatile("csrr %0, mhartid" : "=r"(mhartid));
//   SET_BITS(I2C0->CTRL, I2C_CTRL_EN_MSK);

//   while (1) {
//     sprintf(str, "%d: %d %d %d %d %d\n", mhartid, CLINT->MSIP0, CLINT->MSIP1, CLINT->MSIP2, CLINT->MSIP3, CLINT->MSIP4);
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     HAL_delay(1000);

    // // I2C Test
    // // 1. generate start command
    // // 2. write slave address + start bit
    // I2C0->DATA = 0xCA;
    // SET_BITS(I2C0->STAT_CMD, I2C_STAT_CMD_RXACK_STA_MSK | I2C_STAT_CMD_RD_MSK);
    // // 3. receive ACK from slave
    // while (READ_BITS(I2C0->STAT_CMD, I2C_STAT_CMD_TIP_MSK)) {}

    // // 4. write data
    // I2C0->DATA = 0xCB;

    // // 5. receive ACK from slave
    // while (READ_BITS(I2C0->STAT_CMD, I2C_STAT_CMD_TIP_MSK)) {}

    // // 6. generate stop command
    // SET_BITS(I2C0->STAT_CMD, I2C_STAT_CMD_BUSY_STO_MSK);
//   }
// }
