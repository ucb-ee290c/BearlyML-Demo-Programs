
#ifndef __BEARLYML_H
#define __BEARLYML_H

#ifdef __cplusplus
extern "C" {
#endif

#include "rv_core.h"

/* IRQ Definition */
typedef enum {
  UserSoftware_IRQn         = 0,
  SupervisorSoftware_IRQn   = 1,
  HypervisorSoftware_IRQn   = 2,
  MachineSoftware_IRQn      = 3,
  UserTimer_IRQn            = 4,
  SupervisorTimer_IRQn      = 5,
  HypervisorTimer_IRQn      = 6,
  MachineTimer_IRQn         = 7,
  UserExternal_IRQn         = 8,
  SupervisorExternal_IRQn   = 9,
  HypervisorExternal_IRQn   = 10,
  MachineExternal_IRQn      = 11,
} IRQn_Type;

typedef enum {
  UART0_IRQn                ,
} PLIC_IRQn_Type;

/* Core CSR Bit Field Definition */
#define MIE_USIE_POS                  0x00U
#define MIE_USIE_MSK                  (1U << MIE_USIE_POS)
#define MIE_SSIE_POS                  0x01U
#define MIE_SSIE_MSK                  (1U << MIE_SSIE_POS)
#define MIE_VSSIE_POS                 0x02U
#define MIE_VSSIE_MSK                 (1U << MIE_VSSIE_POS)
#define MIE_MSIE_POS                  0x03U
#define MIE_MSIE_MSK                  (1U << MIE_MSIE_POS)
#define MIE_UTIE_POS                  0x04U
#define MIE_UTIE_MSK                  (1U << MIE_UTIE_POS)
#define MIE_STIE_POS                  0x05U
#define MIE_STIE_MSK                  (1U << MIE_STIE_POS)
#define MIE_VSTIE_POS                 0x06U
#define MIE_VSTIE_MSK                 (1U << MIE_VSTIE_POS)
#define MIE_MTIE_POS                  0x07U
#define MIE_MTIE_MSK                  (1U << MIE_MTIE_POS)
#define MIE_UEIE_POS                  0x08U
#define MIE_UEIE_MSK                  (1U << MIE_UEIE_POS)
#define MIE_SEIE_POS                  0x09U
#define MIE_SEIE_MSK                  (1U << MIE_SEIE_POS)
#define MIE_VSEIE_POS                 0x0AU
#define MIE_VSEIE_MSK                 (1U << MIE_VSEIE_POS)
#define MIE_MEIE_POS                  0x0BU
#define MIE_MEIE_MSK                  (1U << MIE_MEIE_POS)
#define MIE_SGEIE_POS                 0x0CU
#define MIE_SGEIE_MSK                 (1U << MIE_SGEIE_POS)

#define MIE_USIP_POS                  0x00U
#define MIE_USIP_MSK                  (1U << MIE_USIP_POS)
#define MIP_SSIP_POS                  0x01U
#define MIP_SSIP_MSK                  (1U << MIP_SSIP_POS)
#define MIP_VSSIP_POS                 0x02U
#define MIP_VSSIP_MSK                 (1U << MIP_VSSIP_POS)
#define MIP_MSIP_POS                  0x03U
#define MIP_MSIP_MSK                  (1U << MIP_MSIP_POS)
#define MIE_UTIP_POS                  0x04U
#define MIE_UTIP_MSK                  (1U << MIE_UTIP_POS)
#define MIP_STIP_POS                  0x05U
#define MIP_STIP_MSK                  (1U << MIP_STIP_POS)
#define MIP_VSTIP_POS                 0x06U
#define MIP_VSTIP_MSK                 (1U << MIP_VSTIP_POS)
#define MIP_MTIP_POS                  0x07U
#define MIP_MTIP_MSK                  (1U << MIP_MTIP_POS)
#define MIP_SEIP_POS                  0x09U
#define MIP_SEIP_MSK                  (1U << MIP_SEIP_POS)
#define MIP_VSEIP_POS                 0x0AU
#define MIP_VSEIP_MSK                 (1U << MIP_VSEIP_POS)
#define MIP_MEIP_POS                  0x0BU
#define MIP_MEIP_MSK                  (1U << MIP_MEIP_POS)
#define MIP_SGEIP_POS                 0x0CU
#define MIP_SGEIP_MSK                 (1U << MIP_SGEIP_POS)


/* ================================ Peripheral Definitions ================================ */

/* Peripheral Struct Definition */
typedef struct {
  __IO uint32_t MSIP0;                          /** MSIP Registers (1 bit wide) */
  __IO uint32_t MSIP1;                          /** MSIP Registers (1 bit wide) */
  __IO uint32_t MSIP2;                          /** MSIP Registers (1 bit wide) */
  __IO uint32_t MSIP3;                          /** MSIP Registers (1 bit wide) */
  __IO uint32_t MSIP4;                          /** MSIP Registers (1 bit wide) */
  uint32_t RESERVED0[4091];
  __IO uint64_t MTIMECMP0;                      /** MTIMECMP Registers */
  uint32_t RESERVED1[8188];
  __IO uint64_t MTIME;                          /** Timer Register */
} CLINT_TypeDef;


typedef struct {
  __IO uint32_t priority_threshold;
  __IO uint32_t claim_complete;
} PLIC_ContextControl_TypeDef;

typedef struct {
  __IO uint32_t priorities[1024];
  __I  uint32_t pendings[1024];
  __IO uint32_t enables[1024];
} PLIC_TypeDef;

// because the maximum struct size is 65535, we need to split PLIC content
typedef struct {
  PLIC_ContextControl_TypeDef context_controls[1024];
} PLIC_Extra_TypeDef;

// NClusters = 10
// HbwifNumLanes = 


// PeripheryEagleKey
typedef struct {
  __IO uint64_t CLUSTER_RESETS;       // 0x00110000  on reset: 0x00000000_000003FF
  __IO uint64_t CLUSTER_CLKSEL;       // 0x00110008  on reset: 0x00000000_24924924
  __I  uint32_t BOOT;                 // 0x00110010  on reset: 0x00000000
  uint32_t RESERVED0[0];
  __IO uint64_t SWITCHER_SEL;         // 0x00110018  on reset: 0x00000000_00000001
  __IO uint64_t HBWIF_RESETS;         // 0x00110020  on reset: 0x00000000_000000FF
  __IO uint64_t UNCLUSTER_CLKSEL;     // 0x00110028  on reset: 0x00000000_00000000
  __IO uint64_t UNCLUSTER_CLKDIV;     // 0x00110030  on reset: 0x00000000_00000004
  __IO uint64_t LBWIF_CLKDIV;         // 0x00110038  on reset: 0x00000000_00000008
} RCC_TypeDef;

#define RCC_CLUSTER_RESETS_CLUSTER0_POS         (0U)
#define RCC_CLUSTER_RESETS_CLUSTER0_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER0_POS)
#define RCC_CLUSTER_RESETS_CLUSTER1_POS         (1U)
#define RCC_CLUSTER_RESETS_CLUSTER1_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER1_POS)
#define RCC_CLUSTER_RESETS_CLUSTER2_POS         (2U)
#define RCC_CLUSTER_RESETS_CLUSTER2_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER2_POS)
#define RCC_CLUSTER_RESETS_CLUSTER3_POS         (3U)
#define RCC_CLUSTER_RESETS_CLUSTER3_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER3_POS)
#define RCC_CLUSTER_RESETS_CLUSTER4_POS         (4U)
#define RCC_CLUSTER_RESETS_CLUSTER4_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER4_POS)
#define RCC_CLUSTER_RESETS_CLUSTER5_POS         (5U)
#define RCC_CLUSTER_RESETS_CLUSTER5_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER5_POS)
#define RCC_CLUSTER_RESETS_CLUSTER6_POS         (6U)
#define RCC_CLUSTER_RESETS_CLUSTER6_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER6_POS)
#define RCC_CLUSTER_RESETS_CLUSTER7_POS         (7U)
#define RCC_CLUSTER_RESETS_CLUSTER7_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER7_POS)
#define RCC_CLUSTER_RESETS_CLUSTER8_POS         (8U)
#define RCC_CLUSTER_RESETS_CLUSTER8_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER8_POS)
#define RCC_CLUSTER_RESETS_CLUSTER9_POS         (9U)
#define RCC_CLUSTER_RESETS_CLUSTER9_MSK         (0x1U << RCC_CLUSTER_RESETS_CLUSTER9_POS)
#define RCC_CLUSTER_RESETS_CLUSTER10_POS        (10U)
#define RCC_CLUSTER_RESETS_CLUSTER10_MSK        (0x1U << RCC_CLUSTER_RESETS_CLUSTER10_POS)

#define RCC_CLUSTER_CLKSEL_CLUSTER0_POS         (0U)
#define RCC_CLUSTER_CLKSEL_CLUSTER0_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER0_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER1_POS         (3U)
#define RCC_CLUSTER_CLKSEL_CLUSTER1_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER1_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER2_POS         (6U)
#define RCC_CLUSTER_CLKSEL_CLUSTER2_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER2_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER3_POS         (9U)
#define RCC_CLUSTER_CLKSEL_CLUSTER3_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER3_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER4_POS         (12U)
#define RCC_CLUSTER_CLKSEL_CLUSTER4_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER4_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER5_POS         (15U)
#define RCC_CLUSTER_CLKSEL_CLUSTER5_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER5_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER6_POS         (18U)
#define RCC_CLUSTER_CLKSEL_CLUSTER6_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER6_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER7_POS         (21U)
#define RCC_CLUSTER_CLKSEL_CLUSTER7_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER7_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER8_POS         (24U)
#define RCC_CLUSTER_CLKSEL_CLUSTER8_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER8_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER9_POS         (27U)
#define RCC_CLUSTER_CLKSEL_CLUSTER9_MSK         (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER9_POS)
#define RCC_CLUSTER_CLKSEL_CLUSTER10_POS        (30U)
#define RCC_CLUSTER_CLKSEL_CLUSTER10_MSK        (0x7U << RCC_CLUSTER_CLKSEL_CLUSTER10_POS)


// PeripheryEaglePLLKey 
typedef struct {
  __IO uint32_t TILE0_RESET;      /** RocketTile 0 */   // 0x00

} PLL_TypeDef;


typedef struct {
  __I  uint32_t INPUT_VAL;                      /** pin value */
  __IO uint32_t INPUT_EN;                       /** pin input enable */
  __IO uint32_t OUTPUT_EN;                      /** Pin output enable */
  __IO uint32_t OUTPUT_VAL;                     /** Output value */
  __IO uint32_t PUE;                            /** Internal pull-up enable */
  __IO uint32_t DS;                             /** Pin drive strength */
  __IO uint32_t RISE_IE;                        /** Rise interrupt enable */
  __IO uint32_t RISE_IP;                        /** Rise interrupt pending */
  __IO uint32_t FALL_IE;                        /** Fall interrupt enable */
  __IO uint32_t FALL_IP;                        /** Fall interrupt pending */
  __IO uint32_t HIGH_IE;                        /** High interrupt pending */
  __IO uint32_t HIGH_IP;                        /** High interrupt pending */
  __IO uint32_t LOW_IE;                         /** Low interrupt pending */
  __IO uint32_t LOW_IP;                         /** Low interrupt pending */
  __IO uint32_t OUT_XOR;                        /** Output XOR (invert) */
} GPIO_TypeDef;


typedef struct {
  __IO uint32_t SCKDIV;
  __IO uint32_t SCKMODE;
  uint32_t RESERVED0[2];
  __IO uint32_t CSID;
  __IO uint32_t CSDEF;
  __IO uint32_t CSMODE;
  uint32_t RESERVED1[3];
  __IO uint32_t DELAY0;
  __IO uint32_t DELAY1;
  uint32_t RESERVED2[4];
  __IO uint32_t FMT;
  uint32_t RESERVED3[1];
  __IO uint32_t TXDATA;
  __IO uint32_t RXDATA;
  __IO uint32_t TXMARK;
  __IO uint32_t RXMARK;
  uint32_t RESERVED4[2];
  __IO uint32_t FCTRL;
  __IO uint32_t FFMT;
  uint32_t RESERVED5[2];
  __IO uint32_t IE;
  __IO uint32_t IP;
} QSPI_TypeDef;

typedef struct {
  __IO uint32_t SCKDIV;
  __IO uint32_t SCKMODE;
  uint32_t RESERVED0[2];
  __IO uint32_t CSID;
  __IO uint32_t CSDEF;
  __IO uint32_t CSMODE;
  uint32_t RESERVED1[3];
  __IO uint32_t DELAY0;
  __IO uint32_t DELAY1;
  uint32_t RESERVED2[4];
  __IO uint32_t FMT;
  uint32_t RESERVED3[1];
  __IO uint32_t TXDATA;
  __IO uint32_t RXDATA;
  __IO uint32_t TXMARK;
  __IO uint32_t RXMARK;
  uint32_t RESERVED4[6];
  __IO uint32_t IE;
  __IO uint32_t IP;  
} SPI_TypeDef;


typedef struct {
  __IO uint32_t PRESCAL_LO;                     /** Upper part of the prescaler value */
  __IO uint32_t PRESCAL_HI;                     /** Lower part of the prescaler value */
  __IO uint32_t CTRL;                           /** Control */
  __IO uint32_t DATA;                           /** Data */
  __IO uint32_t STAT_CMD;                       /** Status & command */
} I2C_TypeDef;


typedef struct {
  __IO uint32_t TXDATA;                         /** Transmit data register */
  __I  uint32_t RXDATA;                         /** Receive data register */
  __IO uint32_t TXCTRL;                         /** Transmit control register */
  __IO uint32_t RXCTRL;                         /** Receive control register */
  __IO uint32_t IE;                             /** UART interrupt enable */
  __I  uint32_t IP;                             /** UART interrupt pending */
  __IO uint32_t DIV;                            /** Baud rate divisor */
} UART_TypeDef;


 case PeripheryGPIOKey => Seq(GPIOParams(address = 0x9000, width = 5))
    case PeripherySPIKey => Seq(SPIParams(rAddress = 0xa000))
    case PeripheryI2CKey => Seq(I2CParams(address = 0xb000))
    case PeripheryUARTKey => Seq(UARTParams(address = 0xc000))
    case PeripheryEaglePLLKey => Seq(EaglePLLParams(0x100000)) ++ (0 until 2).map(i => EaglePLLParams(0x101000 + 0x1000*i))
    case PeripheryEagleKey => EagleParams(scrAddress = 0x110000)



/* Memory Map Definition */
#define GPIO_BASE               0x00009000U
#define SPI_BASE                0x0000A000U
#define I2C_BASE                0x0000B000U
#define UART_BASE               0x0000C000U
#define PLL_BASE                0x00100000U
#define RCC_BASE                0x00110000U
#define CLINT_BASE              0x02000000U


/* Peripheral Pointer Definition */
#define GPIOA_BASE              (GPIO_BASE)
#define UART0_BASE              (UART_BASE)
#define QSPI0_BASE              (QSPI_BASE)
#define SPI1_BASE               (QSPI_BASE + 0x1000U)
#define I2C0_BASE               (I2C_BASE)
#define I2C1_BASE               (I2C_BASE + 0x1000U)

#define RCC                     ((RCC_TypeDef *)RCC_BASE)
#define CLINT                   ((CLINT_TypeDef *)CLINT_BASE)
// #define CACHE_CONTROLLER        ((CACHE_TypeDef *)CACHE_CONTROLLER_BASE)
#define PLIC                    ((PLIC_TypeDef *)PLIC_BASE)
#define PLIC_EXTRA              ((PLIC_Extra_TypeDef *)(PLIC_BASE + 0x00200000U))
#define GPIOA                   ((GPIO_TypeDef *)GPIOA_BASE)
#define UART0                   ((UART_TypeDef *)UART0_BASE)
#define QSPI0                   ((QSPI_TypeDef *)QSPI0_BASE)
#define SPI1                    ((SPI_TypeDef *)SPI1_BASE)
#define I2C0                    ((I2C_TypeDef *)I2C0_BASE)
#define I2C1                    ((I2C_TypeDef *)I2C1_BASE)


/* Peripheral Bit Field Definition */
#define CLINT_MSIPx_MSIPx_POS                   (0U)
#define CLINT_MSIPx_MSIPx_MSK                   (0x1U << CLINT_MSIPx_MSIPx_POS)
#define CLINT_MTIMECMPx_MTIMECMPx_POS           (0U)
#define CLINT_MTIMECMPx_MTIMECMPx_MSK           (0xFFFFFFFFFFFFFFFFUL << CLINT_MTIMECMPx_MTIMECMPx_POS)
#define CLINT_MTIME_MTIME_POS                   (0U)
#define CLINT_MTIME_MTIME_MSK                   (0xFFFFFFFFFFFFFFFFUL << CLINT_MTIME_MTIME_POS)

#define RCC_TILE0_RESET_TILE0_RESET_POS         (0U)
#define RCC_TILE0_RESET_TILE0_RESET_MSK         (0x1U << RCC_TILE0_RESET_TILE0_RESET_POS)

#define UART_TXDATA_DATA_POS                    (0U)
#define UART_TXDATA_DATA_MSK                    (0xFFU << UART_TXDATA_DATA_POS)
#define UART_TXDATA_FULL_POS                    (31U)
#define UART_TXDATA_FULL_MSK                    (0x1U << UART_TXDATA_FULL_POS)
#define UART_RXDATA_DATA_POS                    (0U)
#define UART_RXDATA_DATA_MSK                    (0xFFU << UART_RXDATA_DATA_POS)
#define UART_RXDATA_EMPTY_POS                   (31U)
#define UART_RXDATA_EMPTY_MSK                   (0x1U << UART_RXDATA_EMPTY_POS)
#define UART_TXCTRL_TXEN_POS                    (0U)
#define UART_TXCTRL_TXEN_MSK                    (0x1U << UART_TXCTRL_TXEN_POS)
#define UART_TXCTRL_NSTOP_POS                   (1U)
#define UART_TXCTRL_NSTOP_MSK                   (0x1U << UART_TXCTRL_NSTOP_POS)
#define UART_TXCTRL_TXCNT_POS                   (16U)
#define UART_TXCTRL_TXCNT_MSK                   (0x7U << UART_RXCTRL_RXCNT_POS)
#define UART_RXCTRL_RXEN_POS                    (0U)
#define UART_RXCTRL_RXEN_MSK                    (0x1U << UART_RXCTRL_RXEN_POS)
#define UART_RXCTRL_RXCNT_POS                   (16U)
#define UART_RXCTRL_RXCNT_MSK                   (0x7U << UART_RXCTRL_RXCNT_POS)
#define UART_IE_TXWM_POS                        (0U)
#define UART_IE_TXWM_MSK                        (0x1U << UART_IE_TXWM_POS)
#define UART_IE_RXWM_POS                        (1U)
#define UART_IE_RXWM_MSK                        (0x1U << UART_IE_RXWM_POS)
#define UART_IP_TXWM_POS                        (0U)
#define UART_IP_TXWM_MSK                        (0x1U << UART_IP_TXWM_POS)
#define UART_IP_RXWM_POS                        (1U)
#define UART_IP_RXWM_MSK                        (0x1U << UART_IP_RXWM_POS)
#define UART_DIV_DIV_POS                        (0U)
#define UART_DIV_DIV_MSK                        (0xFFU << UART_DIV_DIV_POS)

#define I2C_CTRL_IEN_POS                        (6U)
#define I2C_CTRL_IEN_MSK                        (0x1U << I2C_CTRL_IEN_POS)
#define I2C_CTRL_EN_POS                         (7U)
#define I2C_CTRL_EN_MSK                         (0x1U << I2C_CTRL_EN_POS)
#define I2C_STAT_CMD_IF_POS                     (0U)
#define I2C_STAT_CMD_IF_MSK                     (0x1U << I2C_STAT_CMD_IF_POS)
#define I2C_STAT_CMD_TIP_POS                    (1U)
#define I2C_STAT_CMD_TIP_MSK                    (0x1U << I2C_STAT_CMD_TIP_POS)
#define I2C_STAT_CMD_ACK_POS                    (3U)
#define I2C_STAT_CMD_ACK_MSK                    (0x1U << I2C_STAT_CMD_ACK_POS)
#define I2C_STAT_CMD_WR_POS                     (4U)
#define I2C_STAT_CMD_WR_MSK                     (0x1U << I2C_STAT_CMD_WR_POS)
#define I2C_STAT_CMD_RD_POS                     (5U)
#define I2C_STAT_CMD_RD_MSK                     (0x1U << I2C_STAT_CMD_RD_POS)
#define I2C_STAT_CMD_BUSY_STO_POS               (6U)
#define I2C_STAT_CMD_BUSY_STO_MSK               (0x1U << I2C_STAT_CMD_BUSY_STO_POS)
#define I2C_STAT_CMD_RXACK_STA_POS              (7U)
#define I2C_STAT_CMD_RXACK_STA_MSK              (0x1U << I2C_STAT_CMD_RXACK_STA_POS)


#define SPI_SCKDIV_DIV_POS                      (0U)
#define SPI_SCKDIV_DIV_MSK                      (0x7FFU << SPI_SCKDIV_DIV_POS)
#define SPI_SCKMODE_PHA_POS                     (0U)
#define SPI_SCKMODE_PHA_MSK                     (0x1U << SPI_SCKMODE_PHA_POS)
#define SPI_SCKMODE_POL_POS                     (1U)
#define SPI_SCKMODE_POL_MSK                     (0x1U << SPI_SCKMODE_POL_POS)
#define SPI_CSID_CSID_POS                       (0U)
#define SPI_CSID_CSID_MSK                       (0xFFFFFFFFU << SPI_CSID_CSID_POS)
#define SPI_CSDEF_CSDEF_POS                     (0U)
#define SPI_CSDEF_CSDEF_MSK                     (0xFFFFFFFFU << SPI_CSDEF_CSDEF_POS)
#define SPI_CSMODE_MODE_POS                     (0U)
#define SPI_CSMODE_MODE_MSK                     (0x3U << SPI_CSMODE_MODE_POS)
#define SPI_TXDATA_DATA_POS                     (0U)
#define SPI_TXDATA_DATA_MSK                     (0xFFU << SPI_TXDATA_DATA_POS)
#define SPI_TXDATA_FULL_POS                     (31U)
#define SPI_TXDATA_FULL_MSK                     (0x1U << SPI_TXDATA_FULL_POS)
#define SPI_RXDATA_DATA_POS                     (0U)
#define SPI_RXDATA_DATA_MSK                     (0xFFU << SPI_RXDATA_DATA_POS)
#define SPI_RXDATA_EMPTY_POS                    (31U)
#define SPI_RXDATA_EMPTY_MSK                    (0x1U << SPI_RXDATA_EMPTY_POS)

#ifdef __cplusplus
}
#endif

#endif /* __BEARLYML_H */