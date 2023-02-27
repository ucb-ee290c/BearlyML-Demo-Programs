// See the License for the specific language governing permissions and
// limitations under the License.

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>

#define MAX_VAL (1 << 8)
#ifndef ROCC_SOFTWARE_SRC_XCUSTOM_H_
#define ROCC_SOFTWARE_SRC_XCUSTOM_H_

#define STR1(x) #x
#ifndef STR
#define STR(x) STR1(x)
#endif

#define CAT_(A, B) A##B
#define CAT(A, B) CAT_(A, B)

/** Assembly macro for creating "raw" Rocket Custom Coproessor (RoCC)
  * assembly language instructions that will return data in rd. These
  * are to be used only in assembly language programs (not C/C++).
  *
  * Example:
  *
  * Consider the following macro consisting of a CUSTOM_0 instruction
  * with func7 "42" that is doing some operation of "a0 = op(a1, a2)":
  *
  *     ROCC_INSTRUCTION_RAW_R_R_R(0, a0, a1, a2, 42)
  *
  * This will produce the following pseudo assembly language
  * instruction:
  *
  *     .insn r CUSTOM_0, 7, 42, a0, a1, a2
  *
  * @param x the custom instruction number: 0, 1, 2, or 3
  * @param rd the destination register, e.g., a0 or x10
  * @param rs1 the first source register, e.g., a0 or x10
  * @param rs2 the second source register, e.g., a0 or x10
  * @param func7 the value of the func7 field
  * @return a raw .insn RoCC instruction
  */
#define ROCC_INSTRUCTION_RAW_R_R_R(x, rd, rs1, rs2, func7) \
  .insn r CAT(CUSTOM_, x), 7, func7, rd, rs1, rs2


/** C/C++ inline assembly macro for creating Rocket Custom Coprocessor
  * (RoCC) instructions that return data in C variable rd. 
  * These are to be used only in C/C++ programs (not bare assembly).
  *
  * Example:
  *
  * Consider the following macro consisting of a CUSTOM_2 instruction
  * with func7 "42" that is doing some operation of "a0 = op(a1, a2)"
  * (where a0, a1, and a2 are variables defined in C):
  *
  *     ROCC_INSTRUCTION(2, a0, a1, a2, 42)
  *
  * This will produce the following inline assembly:
  *
  *     asm volatile(
  *         ".insn r CUSTOM_2, 0x7, 42, %0, %1, %2"
  *         : "=r"(rd)
  *         : "r"(rs1), "r"(rs2));
  *
  * @param x the custom instruction number: 0, 1, 2, or 3
  * @param rd the C variable to capture as destination operand
  * @param rs1 the C variable to capture for first source register
  * @param rs2 the C variable to capture for second source register
  * @param func7 the value of the func7 field
  * @return an inline assembly RoCC instruction
  */
#define ROCC_INSTRUCTION_R_R_R(x, rd, rs1, rs2, func7)                               \
  {                                                                                  \
    asm volatile(                                                                    \
        ".insn r " STR(CAT(CUSTOM_, x)) ", " STR(0x7) ", " STR(func7) ", %0, %1, %2" \
        : "=r"(rd)                                                                   \
        : "r"(rs1), "r"(rs2));                                                       \
  }
#endif  // ROCC_SOFTWARE_SRC_XCUSTOM_H_

uint64_t add (uint8_t op1, uint8_t op2, uint64_t rs2) { return op1 + op2; }
uint64_t sub (uint8_t op1, uint8_t op2, uint64_t rs2) { return op1 - op2; }
uint64_t mul (uint8_t op1, uint8_t op2, uint64_t rs2) { return op1 * op2; }
uint64_t scmul (uint8_t op1, uint8_t op2, uint64_t rs2) { return op1 * (rs2 % MAX_VAL); }

void test(uint64_t (*op)(uint8_t, uint8_t, uint64_t), uint64_t rs1, uint64_t rs2, uint64_t rd) {
  for (int i = 0; i < 64; i += 8) {
    uint8_t data1 = (rs1 >> i) % MAX_VAL;
    uint8_t data2 = (rs2 >> i) % MAX_VAL;
    uint64_t true_rd = op(data1, data2, rs2);
    true_rd = (true_rd > MAX_VAL - 1) ? MAX_VAL - 1 : true_rd;
    true_rd = (data2 > data1 && op == &sub) ? 0 : true_rd;
    if (true_rd != (rd >> i) % MAX_VAL){
      printf("========= FAILED on %d\nModel RD:\t%d\nSim RD:  \t%d\n", i/8, true_rd, (rd >> i)%MAX_VAL);
      printf("Data1: %d, Data2: %d\n", data1, data2);
      return;
    }
  }
  printf("========= PASSED\n");
  return;
}


void test_madd(uint64_t rs1, uint64_t rs2, uint64_t rd) {
  uint64_t true_rd = 0;
  for (int i = 0; i < 64; i += 8) {
    uint8_t data1 = (rs1 >> i) % MAX_VAL;
    uint8_t data2 = (rs2 >> i) % MAX_VAL;
    uint64_t byte = data1*data2;
    true_rd += (byte > 255) ? 255 : byte;
  }
  if (true_rd != rd){
    printf("========= FAILED\nModel RD:\t%d\nSim RD:  \t%d\n", true_rd, rd);
    return;
  }
  printf("========= PASSED\n");
  return;
}
void test_pxmul(uint64_t rs1, uint64_t rs2, uint64_t rd) {
  for (int i = 0; i < 64; i += 8) {
    uint8_t data1 = (rs1 >> i) % MAX_VAL;
    uint8_t data2 = (rs2 >> (i % 32)) % MAX_VAL;
    uint64_t true_rd = data1*data2;
    true_rd = (true_rd > MAX_VAL - 1) ? MAX_VAL - 1 : true_rd;
    if (true_rd != (rd >> i) % MAX_VAL){
      printf("========= FAILED on %d\nModel RD:\t%d\nSim RD:  \t%d\nDATA1: %d\t DATA2: %d\n", i/8, true_rd, (rd >> i)%MAX_VAL, data1, data2);
      return;
    }
  }
  printf("========= PASSED\n");
  return;
}

int main()
{
  // CHANGE SEED FOR DIFFERENT RESULTS
  srand(1);
  uint64_t rs1, rs2;
  uint64_t rd = 0;
  for (int i = 0; i < 10; i++) {
    rs1 = (rand() * rand()) << 32 + (rand() * rand());
    rs2 = (rand() * rand()) << 32 + (rand() * rand());
    printf("RS1:%lx RS2:%lx\n", rs1, rs2);
    ROCC_INSTRUCTION_R_R_R(0, rd, rs1, rs2, 0)
    test(&add, rs1, rs2, rd);
    ROCC_INSTRUCTION_R_R_R(0, rd, rs1, rs2, 1)
    test(&sub, rs1, rs2, rd);
    ROCC_INSTRUCTION_R_R_R(0, rd, rs1, rs2, 2)
    test(&mul, rs1, rs2, rd);
    ROCC_INSTRUCTION_R_R_R(0, rd, rs1, rs2, 3)
    test(&scmul, rs1, rs2, rd);
    ROCC_INSTRUCTION_R_R_R(0, rd, rs1, rs2, 4)
    test_madd(rs1, rs2, rd);
    ROCC_INSTRUCTION_R_R_R(0, rd, rs1, rs2, 5)
    test_pxmul(rs1, rs2, rd);
  }
  return 0;
}
