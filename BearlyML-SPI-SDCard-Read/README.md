
# Firmware

## Installation

### 1. Install RISC-V Toolchain

#### 1.1 Toolchain Options

Either the riscv-collab or the SiFive toolchain works.

_Note: the SiFive toolchain only works on WSL (Windows Subsystem Linux), Linux and Mac OS (Mac to be confirmed)_

#### 1.1.a Install riscv-collab/riscv-gnu-toolchain Toolchain

Follow the RISC-V GNU Compiler Toolchain [README](https://github.com/riscv-collab/riscv-gnu-toolchain#risc-v-gnu-compiler-toolchain).

#### 1.1.b Install SiFive Toolchain

Download **GNU Embedded Toolchain — v2020.12.8** from SiFive's [website](https://www.sifive.com/software)

Extract the downloaded file to a known location, e.g.:

```bash
/home/tk/Documents/RISCV/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/
```

#### 1.2 Configure PATH setting

Add the `bin` folder inside the file location to PATH:

```bash
$ export PATH="/home/tk/Documents/RISCV/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-ubuntu14/bin:$PATH" 
```

Now we should able to invoke gcc by the following command

```bash
$ riscv64-unknown-elf-gcc
riscv64-unknown-elf-gcc: fatal error: no input files
compilation terminated.   
```

### 2. Install Chipyard

Follow [Setting up the Chipyard](https://chipyard.readthedocs.io/en/stable/Chipyard-Basics/Initial-Repo-Setup.html#setting-up-the-chipyard-repo) tutorial from Chipyard documentation.

### 3 Clone this repo

Clone this repo by running

```bash
$ git clone git@github.com:ucberkeley-ee290c/HAL.git
$ cd HAL
```

## Usage

### 1. Configure toolchain and chip setting

Open `firmware/Makefile`, under the "RISCV Toolchain" section, uncomment the prefix of the toolchain you are using.

```Makefile
#################################
# RISCV Toolchain
#################################

# SiFive / RISC-V Collab Toolchain
PREFIX = riscv64-unknown-elf-

# xPack Toolchain
# when using this, MCU arch should be `ARCH = rv32imafc_zicsr`
# PREFIX = riscv-none-elf-
```

Set the target chip by uncommenting the corresponding chip name.

```Makefile
# CHIP ?= oscibear
CHIP ?= bearlyml
# CHIP ?= tinyrocket
```

### 2. Compile

```bash
$ cd firmware
$ make
...
[CC] compiling build/bsp/oscibear/src/oscibear_hal_baseband.o
[CC] compiling build/bsp/oscibear/src/oscibear_hal_clint.o
[CC] compiling build/bsp/oscibear/src/oscibear_hal_gpio.o
[CC] compiling build/bsp/oscibear/src/oscibear_hal_plic.o
[CC] compiling build/bsp/oscibear/src/oscibear_hal_rcc.o
[CC] compiling build/bsp/oscibear/src/oscibear_hal_uart.o
[LD] linking build/firmware.elf
riscv64-unknown-elf-size build/firmware.elf
text    data     bss     dec     hex filename
10338     348    3676   14362    381a build/firmware.elf
```

## 3. Flash

TODO: waiting for PCB board

### 3.a JTAG setup

### 3.b STM32 adapter TSI setup

### 3.c Arty adapter TSI setup


