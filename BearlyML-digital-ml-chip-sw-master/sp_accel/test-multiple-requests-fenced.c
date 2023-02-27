#include <inttypes.h>
#include <stdio.h>
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


int multiple_requests (void) {
 // First Matrix Multiply
 uint8_t sparse_row_1[] = {1,1, 2,3, 3,4, 2,6, 1,7, 5,10, 2,11, 1,12};
 uint8_t sparse_row_size_1 = 8;
 uint8_t dense_matrix_1[] = {1,1,1,1,1,1,1,1,
                       2,2,2,2,2,2,2,2,
                       3,3,3,3,3,3,3,3,
                       4,4,4,4,4,4,4,4,
                       5,5,5,5,5,5,5,5,
                       6,6,6,6,6,6,6,6,
                       7,7,7,7,7,7,7,7,
                       8,8,8,8,8,8,8,8,
                       9,9,9,9,9,9,9,9,
                       10,10,10,10,10,10,10,10,
                       11,11,11,11,11,11,11,11,
                       12,12,12,12,12,12,12,12,
                       13,13,13,13,13,13,13,13};
 uint8_t dense_matrix_size_1 = 1;

 uint8_t output_buf_1[800];

 // Second Matrix Multiply
 uint8_t sparse_row_2[] = {1,1, 2,3, 3,4, 2,6, 1,7, 5,10, 2,11, 1,12};
 uint8_t sparse_row_size_2 = 8;
 uint8_t dense_matrix_2[] = {1,1,1,1,1,1,1,1, 1,1,1,1,1,1,1,1, 1,1,1,1,1,1,1,1,
                       2,2,2,2,2,2,2,2, 2,2,2,2,2,2,2,2, 2,2,2,2,2,2,2,2,
                       3,3,3,3,3,3,3,3, 3,3,3,3,3,3,3,3, 3,3,3,3,3,3,3,3,
                       4,4,4,4,4,4,4,4, 4,4,4,4,4,4,4,4, 4,4,4,4,4,4,4,4,
                       5,5,5,5,5,5,5,5, 5,5,5,5,5,5,5,5, 5,5,5,5,5,5,5,5,
                       6,6,6,6,6,6,6,6, 6,6,6,6,6,6,6,6, 6,6,6,6,6,6,6,6,
                       7,7,7,7,7,7,7,7, 7,7,7,7,7,7,7,7, 7,7,7,7,7,7,7,7,
                       8,8,8,8,8,8,8,8, 8,8,8,8,8,8,8,8, 8,8,8,8,8,8,8,8,
                       9,9,9,9,9,9,9,9, 9,9,9,9,9,9,9,9, 9,9,9,9,9,9,9,9,
                       10,10,10,10,10,10,10,10, 10,10,10,10,10,10,10,10, 10,10,10,10,10,10,10,10,
                       11,11,11,11,11,11,11,11, 11,11,11,11,11,11,11,11, 11,11,11,11,11,11,11,11,
                       12,12,12,12,12,12,12,12, 12,12,12,12,12,12,12,12, 12,12,12,12,12,12,12,12,
                       13,13,13,13,13,13,13,13, 13,13,13,13,13,13,13,13, 13,13,13,13,13,13,13,13};
 uint8_t dense_matrix_size_2 = 3;

 uint8_t output_buf_2[800];

 ROCC_INSTRUCTION_0_R_R(0, sparse_row_1,sparse_row_size_1,0);
 ROCC_INSTRUCTION_0_R_R(0, dense_matrix_1,dense_matrix_size_1,1);
 ROCC_INSTRUCTION_0_R_R(0, output_buf_1,output_buf_1,2);
 asm volatile("fence");
 ROCC_INSTRUCTION_0_R_R(0, sparse_row_2,sparse_row_size_2,0);
 ROCC_INSTRUCTION_0_R_R(0, dense_matrix_2,dense_matrix_size_2,1);
 ROCC_INSTRUCTION_0_R_R(0, output_buf_2,output_buf_2,2);
 asm volatile("fence");
 if (output_buf_1[0] == 139 && output_buf_2[0] == 139 && output_buf_2[1] == 139 && output_buf_2[9] == 139) 
  return 0;
 else return 1;
}

int main(void)
{
  int result = multiple_requests();
  if (result)
    return 1;
  return 0;

}
