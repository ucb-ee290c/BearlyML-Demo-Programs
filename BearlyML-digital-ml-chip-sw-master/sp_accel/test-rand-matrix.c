#include <inttypes.h>
#include <stdio.h>
#include <stdlib.h>

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

void rand_dense_matrix(uint8_t* dense_matrix, uint8_t dense_matrix_stride, uint8_t dense_matrix_size, uint8_t num_dense_rows) {
    printf("\n");
    for (uint8_t i = 0; i < num_dense_rows; i++) {
        printf("\n");
        for (uint8_t j = 0; j < dense_matrix_size * dense_matrix_stride; j++) {
            dense_matrix[(i * dense_matrix_stride * dense_matrix_size) + j] = rand() % 15;
            printf("%u", dense_matrix[(i * dense_matrix_stride * dense_matrix_size) + j]);
            printf(" ");
        }
    }
}

void rand_sparse_row(uint8_t* sparse_row, uint8_t sparse_row_size, uint8_t num_dense_rows) {
    printf("\n");
    for (uint8_t i = 0; i <  2 * sparse_row_size; i+=2) {
        sparse_row[i] = rand() % 10;
        sparse_row[i+1] = rand() % num_dense_rows;
        printf("%u", sparse_row[i]);
        printf(" ");
        printf("%u", sparse_row[i+1]);
        printf(", ");
    }
}

int main(void)
{
 // Create random sparse row
 uint8_t sparse_row_size = 8;
 uint8_t sparse_row[sparse_row_size * 2];
 uint8_t num_dense_rows = 5;
 rand_sparse_row(sparse_row, sparse_row_size, num_dense_rows);

 // Create random dense matrix
 uint8_t dense_matrix_size = 1;
 uint8_t dense_matrix_stride = 8;

 uint8_t dense_matrix[dense_matrix_size * num_dense_rows * dense_matrix_stride];
 rand_dense_matrix(dense_matrix, dense_matrix_stride, dense_matrix_size, num_dense_rows);

 uint8_t output_buf_acc[800];
 uint8_t output_buf_model[800];

 ROCC_INSTRUCTION_0_R_R(0, sparse_row,sparse_row_size,0);
 ROCC_INSTRUCTION_0_R_R(0, dense_matrix,dense_matrix_size,1);
 ROCC_INSTRUCTION_0_R_R(0, output_buf_acc,output_buf_acc,2);
 asm volatile("fence");
 accel_model(sparse_row, sparse_row_size, dense_matrix, dense_matrix_stride, dense_matrix_size, output_buf_model);
 asm volatile("fence");
 if (output_buf_acc[0] == output_buf_model[0] && output_buf_acc[1] == output_buf_model[1] && output_buf_acc[9] == output_buf_model[9]) 
  return 0;
 else return 1;
}
