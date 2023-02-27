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
    printf("\nDense Matrix\n");
    for (uint8_t i = 0; i < num_dense_rows; i++) {
        printf("\n");
        for (uint8_t j = 0; j < dense_matrix_size * dense_matrix_stride; j++) {
            dense_matrix[(i * dense_matrix_stride * dense_matrix_size) + j] = rand() % 5;
            printf("%u", dense_matrix[(i * dense_matrix_stride * dense_matrix_size) + j]);
            printf(" ");
        }
    }
}

void rand_sparse_row(uint8_t* sparse_row, uint8_t sparse_row_size, uint8_t num_dense_rows) {
    printf("\nSparse Row\n");
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
    /* Sparse Matrix Specs - 16 x 96 elems */
    uint8_t num_sparse_rows = 16;
    uint8_t* sparse_rows[num_sparse_rows];
    uint8_t num_sparse_cols = 96;
    uint8_t sparse_row_size = num_sparse_cols;

    /* Dense Matrix Specs - 96 x 16 elems */
    uint8_t num_dense_rows = 96;
    uint8_t num_dense_cols = 16;
    uint8_t dense_matrix_stride = 8;
    uint8_t dense_matrix_size = num_dense_cols/dense_matrix_stride;

    uint8_t dense_matrix[dense_matrix_size * num_dense_rows * dense_matrix_stride];
    rand_dense_matrix(dense_matrix, dense_matrix_stride, dense_matrix_size, num_dense_rows);

    uint8_t* output_buf_acc_rows[num_sparse_rows];
    uint8_t* output_buf_model_rows[num_sparse_rows];

    for (int i = 0; i < num_sparse_rows; i += 1) {

        sparse_rows[i] = malloc(sizeof(uint8_t) * num_sparse_cols * 2);
        output_buf_acc_rows[i] = malloc(sizeof(uint8_t) * num_dense_cols);
        output_buf_model_rows[i] = malloc(sizeof(uint8_t) * num_dense_cols);

        rand_sparse_row(sparse_rows[i], sparse_row_size, num_dense_rows);

        ROCC_INSTRUCTION_0_R_R(0, sparse_rows[i], sparse_row_size, 0);
        ROCC_INSTRUCTION_0_R_R(0, dense_matrix, dense_matrix_size, 1);
        ROCC_INSTRUCTION_0_R_R(0, output_buf_acc_rows[i], output_buf_acc_rows[i], 2);
        asm volatile("fence");

        accel_model(sparse_rows[i], sparse_row_size, dense_matrix, dense_matrix_stride, dense_matrix_size, output_buf_model_rows[i]);
        asm volatile("fence");

        printf("\nModel Output\n");
        for (int j = 0; j < num_dense_cols; j += 1) {
            printf("%u", output_buf_model_rows[i][j]);
            printf(" ");
        }

        printf("\nAccel Output\n");
        for (int j = 0; j < num_dense_cols; j += 1) {
            printf("%u", output_buf_acc_rows[i][j]);
            printf(" ");
        }

        for (int j = 0; j < num_dense_cols; j += 1) {
            if (output_buf_acc_rows[i][j] != output_buf_model_rows[i][j]) {
                printf("\nFAILED at output[%u][%u]. Expected %u. Got %u.\n", i, j, output_buf_model_rows[i][j], output_buf_acc_rows[i][j]);
                return -1;
            }
        }

    }
    return 0;
}
