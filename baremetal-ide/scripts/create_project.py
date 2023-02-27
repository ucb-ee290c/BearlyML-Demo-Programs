import os
import shutil
import re

import jinja2

TEMPLATE_PATH = "templates"

PROJECT_ROOT = "user"
CHIP_NAME = "oscibear"


jinja_template_loader = jinja2.FileSystemLoader(searchpath=TEMPLATE_PATH)
jinja_template_env = jinja2.Environment(loader=jinja_template_loader)


def clear():
    try:
        shutil.rmtree(PROJECT_ROOT)
    except FileNotFoundError():
        pass

def createDirectories():
    bsp_folder_path = os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME)
    os.makedirs(os.path.join(bsp_folder_path, "inc"), exist_ok=True)
    os.makedirs(os.path.join(bsp_folder_path, "src"), exist_ok=True)
    os.makedirs(os.path.join(bsp_folder_path, "startup"), exist_ok=True)
    
    lib_folder_path = os.path.join(PROJECT_ROOT, "lib")
    os.makedirs(lib_folder_path, exist_ok=True)
    
    core_folder_path = os.path.join(PROJECT_ROOT, "core")
    os.makedirs(os.path.join(core_folder_path, "inc"), exist_ok=True)
    os.makedirs(os.path.join(core_folder_path, "src"), exist_ok=True)

def createMakeFile():
    makefile_path = os.path.join(PROJECT_ROOT, "Makefile")

    makefile_template = jinja_template_env.get_template("Makefile")
    makefile_content = makefile_template.render(
        target="firmware",
        chipname=CHIP_NAME,
        toolchain_prefix="riscv64-unknown-elf-",
        sourcefile_c_sources="""
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_system.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_core.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_clint.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_plic.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_gpio.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_i2c.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_rcc.c
C_SOURCES += $(BSP_DIR)$(CHIP)/src/$(CHIP)_hal_uart.c
""",
        flag_arch="rv64imac",
        flag_abi="lp64",
        flag_codemodel="medany"
        )

    with open(makefile_path, "w") as f:
        f.write(makefile_content)

def createFromTemplate(generated_path, template_path, **kwargs):
    template = jinja_template_env.get_template(template_path)
    content = template.render(**kwargs)

    with open(generated_path, "w") as f:
        f.write(content)


def createBspFiles():
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, CHIP_NAME+".ld"), 
        "chipname.ld"
        )
    # startup
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "startup", CHIP_NAME+"_bootrom.S"), 
        "bootrom.S"
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "startup", CHIP_NAME+"_startup.S"), 
        "startup.S"
        )
    
    # headers
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", "rv_core.h"), 
        "peripherals/rv_core.h"
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", "xcustom.h"), 
        "peripherals/xcustom.h"
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", "encoding.h"), 
        "peripherals/encoding.h"
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+".h"), 
        "chipname.h"
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal.h"), 
        "peripherals/hal.h", 
        chipname=CHIP_NAME,
        sys_clk_freq=1000000,
        )

        
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_core.h"), 
        "peripherals/hal_core.h", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_clint.h"), 
        "peripherals/hal_clint.h", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_plic.h"), 
        "peripherals/hal_plic.h", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_gpio.h"), 
        "peripherals/hal_gpio.h", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_i2c.h"), 
        "peripherals/hal_i2c.h", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_rcc.h"), 
        "peripherals/hal_rcc.h", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "inc", CHIP_NAME+"_hal_uart.h"), 
        "peripherals/hal_uart.h", 
        chipname=CHIP_NAME
        )
    
    # source
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal.c"), 
        "peripherals/hal.c", 
        chipname=CHIP_NAME,
        )
        
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_core.c"), 
        "peripherals/hal_core.c", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_system.c"), 
        "peripherals/hal_system.c", 
        chipname=CHIP_NAME,
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_clint.c"), 
        "peripherals/hal_clint.c", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_plic.c"), 
        "peripherals/hal_plic.c", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_gpio.c"), 
        "peripherals/hal_gpio.c", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_i2c.c"), 
        "peripherals/hal_i2c.c", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_rcc.c"), 
        "peripherals/hal_rcc.c", 
        chipname=CHIP_NAME
        )
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "bsp", CHIP_NAME, "src", CHIP_NAME+"_hal_uart.c"), 
        "peripherals/hal_uart.c", 
        chipname=CHIP_NAME
        )


def createUserTemplate():
    
    createFromTemplate(
        os.path.join(PROJECT_ROOT, "core", "inc", "main.h"), 
        "main.h", 
        chipname=CHIP_NAME
        )
        
        
    main_c_path = os.path.join(PROJECT_ROOT, "core", "src", "main.c")

    user_code_1 = ""
    user_code_2 = ""
    user_code_while = ""
    user_code_3 = ""

    if os.path.exists(main_c_path):
        with open(main_c_path, "r") as f:
            content = f.read()

        match = re.search(r"\s*\/\* USER CODE BEGIN 1 \*\/(.*)\/\s*\* USER CODE END 1 \*\/", content, re.DOTALL)
        if match:
            user_code_1 = match.group(1)

        match = re.search(r"\s*\/\* USER CODE BEGIN 2 \*\/(.*)\/\s*\* USER CODE END 2 \*\/", content, re.DOTALL)
        if match:
            user_code_2 = match.group(1)
            
        match = re.search(r"\s*\/\* USER CODE BEGIN WHILE \*\/(.*)\/\s*\* USER CODE END WHILE \*\/", content, re.DOTALL)
        if match:
            user_code_while = match.group(1)
            
        match = re.search(r"\s*\/\* USER CODE BEGIN 3 \*\/(.*)\/\s*\* USER CODE END 3 \*\/", content, re.DOTALL)
        if match:
            user_code_3 = match.group(1)
    
    
    createFromTemplate(
        main_c_path,
        "main.c", 
        user_code_1=user_code_1,
        user_code_2=user_code_2,
        user_code_while=user_code_while,
        user_code_3=user_code_3,
        )
        

clear()

createDirectories()

createMakeFile()

createBspFiles()

createUserTemplate()
