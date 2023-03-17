
TARGET ?= firmware

CHIP ?= eaglex

#################################
# RISCV Toolchain
#################################

# SiFive / RISC-V Collab Toolchain
PREFIX = riscv64-unknown-elf-

# xPack Toolchain
# when using this, MCU arch should be `ARCH = rv32imafc_zicsr`
# PREFIX = riscv-none-elf-


CC = $(PREFIX)gcc
CXX = $(PREFIX)g++
CP = $(PREFIX)objcopy
OD = $(PREFIX)objdump
DG = $(PREFIX)gdb
SIZE = $(PREFIX)size


#################################
# Working directories
#################################
VENDOR_ROOT = bsp/
USR_DIR = core/
SRC_DIR = $(USR_DIR)src/
INC_DIR = $(USR_DIR)inc/
BUILD_DIR = build/


#################################
# Source Files
#################################
A_SOURCES  = $(wildcard $(SRC_DIR)*.S) $(wildcard $(SRC_DIR)*/*.S)

C_SOURCES  = $(wildcard $(SRC_DIR)*.c) $(wildcard $(SRC_DIR)*/*.c)

A_SOURCES += $(VENDOR_ROOT)$(CHIP)/startup/$(CHIP)_bootrom.S
A_SOURCES += $(VENDOR_ROOT)$(CHIP)/startup/$(CHIP)_startup.S

# common drivers for all RV cores
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_system.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_core.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_clint.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_plic.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_gpio.c
# C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_i2c.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_rcc.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_spi.c
C_SOURCES += $(VENDOR_ROOT)$(CHIP)/src/$(CHIP)_hal_uart.c

INCLUDES  = -I$(INC_DIR)
INCLUDES += -I$(INC_DIR)hal/
INCLUDES += -I$(VENDOR_ROOT)$(CHIP)/inc


#################################
# Object List
#################################
A_OBJECTS = $(addsuffix .o,$(addprefix $(BUILD_DIR),$(basename $(A_SOURCES))))
C_OBJECTS = $(addsuffix .o,$(addprefix $(BUILD_DIR),$(basename $(C_SOURCES))))

OBJECTS = $(A_OBJECTS) $(C_OBJECTS)

#################################
# Target Output Files
#################################
TARGET_ELF = $(BUILD_DIR)$(TARGET).elf
TARGET_BIN = $(BUILD_DIR)$(TARGET).bin
TARGET_HEX = $(BUILD_DIR)$(TARGET).hex
TARGET_VERILOG = $(BUILD_DIR)$(TARGET).out


#################################
# Flags
#################################

# MCU Settings
ARCH = rv64imac
ABI = lp64

CODEMODEL = medany
LD_SCRIPT = $(SRC_DIR)$(CHIP).ld
# LD_SCRIPT = $(SRC_DIR)bearlyarty.ld

ARCHFLAGS = -march=$(ARCH) -mabi=$(ABI) -mcmodel=$(CODEMODEL) -fno-pie
SPECFLAGS = --specs="nano.specs"


# compiler Flags
CFLAGS  = -g -std=gnu11 -Os -Wall -Wextra -Warray-bounds -Wno-unused-parameter
CFLAGS += -fno-common -fno-builtin-printf
CFLAGS += $(ARCHFLAGS)
CFLAGS += $(SPECFLAGS)
CFLAGS += $(INCLUDES)

USERFLAGS ?= -lm


# linker Flags
LFLAGS  = -static
# LFLAGS += -nostartfiles -nostdlib
LFLAGS += -nostartfiles
LFLAGS += -ffunction-sections
LFLAGS += -fdata-sections
LFLAGS += -T $(LD_SCRIPT)


#################################
# Build
#################################

# default target
all: $(TARGET_ELF)

$(TARGET_BIN): $(TARGET_ELF)
	$(CP) -O binary $< $@

$(TARGET_HEX): $(TARGET_ELF)
	$(CP) -O ihex $< $@

$(TARGET_VERILOG): $(TARGET_ELF)
	$(CP) -O verilog $< $@

$(TARGET_ELF): $(OBJECTS)
	@echo "[LD] linking $@"
	@$(CC) $(CFLAGS) $(LFLAGS) $^ -o $@ $(USERFLAGS)
	$(SIZE) $(TARGET_ELF)

$(A_OBJECTS): $(BUILD_DIR)%.o: %.S
	@echo "[CC] compiling $@"
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c $< -o $@ $(USERFLAGS)

$(C_OBJECTS): $(BUILD_DIR)%.o: %.c
	@echo "[CC] compiling $@"
	@mkdir -p $(@D)
	@$(CC) $(CFLAGS) -c $< -o $@ $(USERFLAGS)


#################################
# Recipes
#################################

clean:
	@rm -rf $(BUILD_DIR)

bin: $(TARGET_BIN)

hex: $(TARGET_HEX)

verilog: $(TARGET_VERILOG)
