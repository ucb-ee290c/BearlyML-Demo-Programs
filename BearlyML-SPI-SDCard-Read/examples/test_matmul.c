// /* Header Files */
// #include <inttypes.h>
// #include <stdio.h>
// #include <stdlib.h>

// /* Macros used by RoCC Instruction Macros */
// #define STR1(x) #x
// #ifndef STR
// #define STR(x) STR1(x)
// #endif

// #define CAT_(A, B) A##B
// #define CAT(A, B) CAT_(A, B)

// /* RoCC Instruction Macro - rd/rs1/rs2 */
// #define ROCC_INSTRUCTION_R_R_R(x, rd, rs1, rs2, func7)                               \
//   {                                                                                  \
//     asm volatile(                                                                    \
//         ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x7) ", " STR(func7) ", %0, %1, %2" \
//         : "=r"(rd)                                                                   \
//         : "r"(rs1), "r"(rs2));                                                       \
//   }


// /* RoCC Instruction Macro - rs1/rs2 */
// #define ROCC_INSTRUCTION_0_R_R(x, rs1, rs2, func7)                                   \
//   {                                                                                  \
//     asm volatile(                                                                    \
//         ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x3) ", " STR(func7) ", x0, %0, %1" \
//         :                                                                            \
//         : "r"(rs1), "r"(rs2));                                                       \
//   }

// /* Sparse Row Specs */
// uint8_t num_sparse_cols = /* YOUR CODE HERE */;
// uint8_t* sparse_row = /* YOUR CODE HERE - must point to 2*num_sparse_cols bytes*/;
// uint8_t sparse_row_size = num_sparse_cols;

// /* Dense Matrix Specs */
// uint8_t num_dense_rows = /* YOUR CODE HERE */;
// uint8_t dense_matrix_stride = 8;
// uint8_t num_dense_cols = /* YOUR CODE HERE - should be multiple of 8 [to meet dense matrix alignment restriction]*/;
// uint8_t* dense_matrix = /* YOUR CODE HERE - must point to dense matrix where each row is aligned to 8-byte/64-bit boundary */;
// uint8_t dense_matrix_size = num_dense_cols/dense_matrix_stride;

// /* Output Matrix Specs */
// uint8_t* output_row = /* YOUR CODE HERE - must point to 8 * dense_matrix_size bytes */;

// /* YOUR CODE HERE */

// /* Order matters here */
// ROCC_INSTRUCTION_0_R_R(0, output_row, 0, 2);
// ROCC_INSTRUCTION_0_R_R(0, dense_matrix, dense_matrix_size, 1);
// ROCC_INSTRUCTION_0_R_R(0, sparse_row, sparse_row_size, 0);

// asm volatile("fence");

// /* YOUR CODE HERE */
