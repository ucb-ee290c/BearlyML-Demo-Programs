#include <inttypes.h>
#include <stdio.h>

#ifndef MIN
#define MIN(x, y) (((x) < (y)) ? (x) : (y))
#endif

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

void accel_model(uint8_t* sparse_row, uint8_t sparse_row_size, uint8_t* dense_matrix, uint8_t dense_matrix_stride, uint8_t dense_matrix_size, uint8_t* output_buf) {
    for (uint8_t i = 0; i < dense_matrix_size * dense_matrix_stride; i++) {
        output_buf[i] = MIN(255, sparse_row[0] * dense_matrix[(sparse_row[1] * dense_matrix_stride * dense_matrix_size) + i]);
    }
    for (uint8_t i = 2; i < 2 * sparse_row_size; i+=2) {
        for (uint8_t j = 0; j < dense_matrix_size * dense_matrix_stride; j++) {
            output_buf[j] = MIN(255, output_buf [j] + sparse_row[i] * dense_matrix[ (sparse_row[i + 1] * dense_matrix_stride * dense_matrix_size) + j ]);
        }
    }
}

int main(void)
{

 uint8_t sparse_row[] = {1,1, 2,3, 3,4, 2,6, 1,7, 5,10, 2,11, 1,12};
 uint8_t sparse_row_size = 8;
 uint8_t dense_matrix[] = {1,1,1,1,1,1,1,1,
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
 uint8_t dense_matrix_size = 1;

 uint8_t output_buf_acc[800];
 uint8_t output_buf_model[800];

 ROCC_INSTRUCTION_0_R_R(0, sparse_row,sparse_row_size,0);
 ROCC_INSTRUCTION_0_R_R(0, dense_matrix,dense_matrix_size,1);
 ROCC_INSTRUCTION_0_R_R(0, output_buf_acc,output_buf_acc,2);
 asm volatile("fence");
 uint8_t dense_matrix_stride = 8;
 accel_model(sparse_row, sparse_row_size, dense_matrix, dense_matrix_stride, dense_matrix_size, output_buf_model);
 asm volatile("fence");
 if (output_buf_acc[0] == 139 && output_buf_model[0] == 139) 
  return 0;
 else return 1;
}
