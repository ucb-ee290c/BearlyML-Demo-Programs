
// #include "main.h"

// #include <inttypes.h>
// #include <stdio.h>
// #define STR1(x) #x
// #ifndef STR
// #define STR(x) STR1(x)
// #endif

// #define CAT_(A, B) A##B
// #define CAT(A, B) CAT_(A, B)

// #define ROCC_INSTRUCTION_R_R_R(x, rd, rs1, rs2, func7)                               \
//   {                                                                                  \
//     asm volatile(                                                                    \
//         ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x7) ", " STR(func7) ", %0, %1, %2" \
//         : "=r"(rd)                                                                   \
//         : "r"(rs1), "r"(rs2));                                                       \
//   }


// #define ROCC_INSTRUCTION_0_R_R(x, rs1, rs2, func7)                                   \
//   {                                                                                  \
//     asm volatile(                                                                    \
//         ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x3) ", " STR(func7) ", x0, %0, %1" \
//         :                                                                            \
//         : "r"(rs1), "r"(rs2));                                                       \
//   }


//     uint8_t dense_matrix[] = {1,1,1,1,1,1,1,1,
//                           2,2,2,2,2,2,2,2,
//                           3,3,3,3,3,3,3,3,
//                           4,4,4,4,4,4,4,4,
//                           5,5,5,5,5,5,5,5,
//                           6,6,6,6,6,6,6,6,
//                           7,7,7,7,7,7,7,7,
//                           8,8,8,8,8,8,8,8,
//                           9,9,9,9,9,9,9,9,
//                           10,10,10,10,10,10,10,10,
//                           11,11,11,11,11,11,11,11,
//                           12,12,12,12,12,12,12,12,
//                           13,13,13,13,13,13,13,13};
//     uint8_t sparse_row[] = {1,1, 2,3, 3,4, 2,6, 1,7, 5,10, 2,11, 1,12};
//     uint8_t output_buf[1024];
//     uint8_t sparse_row_size = 8;
//     uint8_t dense_matrix_size = 1;


// char str[64];

// int test_SpAccel() {

//   while (1) {
//     sprintf(str, "load output buf\n");
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);

//     ROCC_INSTRUCTION_0_R_R(0, output_buf, 0, 2);

//     sprintf(str, "load dense mat\n");
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    
//     ROCC_INSTRUCTION_0_R_R(0, dense_matrix, dense_matrix_size, 1);

//     sprintf(str, "load sparse row\n");
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
    
//     ROCC_INSTRUCTION_0_R_R(0, sparse_row, sparse_row_size, 0);

    
    
//     sprintf(str, "fence\n");
//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);

//     asm volatile("fence");

//     if (output_buf[0] == 139) 
//       sprintf(str, "test pass\n");
//     else 
//       sprintf(str, "test fail\n");

//     HAL_UART_transmit(UART0, (uint8_t *)str, strlen(str), 0);
//     HAL_delay(100);
//   }
// }
