import os
import shutil
import re
import xml
import json

import jinja2
import xmljson


class ProjectBuilder:
    IDE_BUILDER_VERSION = "0.0.1"

    TEMPLATE_PATH = "templates"

    PROJECT_ROOT = "workspace"

    def __init__(self, chipname):
        self.chipname = chipname
        
        self.jinja_template_loader = jinja2.FileSystemLoader(searchpath=self.TEMPLATE_PATH)
        self.jinja_template_env = jinja2.Environment(loader=self.jinja_template_loader)

        self.chip_config = json.load(open(CHIP_NAME+"_description.json"))

        assert " " not in self.chip_config.get("name")
        assert "-" not in self.chip_config.get("name")

        self.chipname_capitalized = self.chip_config.get("name")
        assert self.chipname_capitalized.lower() == self.chipname
    
    @property
    def version(self):
        return self.IDE_BUILDER_VERSION
        
    def clean(self):
        try:
            shutil.rmtree(self.PROJECT_ROOT)
        except FileNotFoundError:
            pass

    def buildDirectories(self):
        bsp_folder_path = os.path.join(self.PROJECT_ROOT, "bsp", self.chipname)
        os.makedirs(os.path.join(bsp_folder_path, "inc"), exist_ok=True)
        os.makedirs(os.path.join(bsp_folder_path, "src"), exist_ok=True)
        os.makedirs(os.path.join(bsp_folder_path, "startup"), exist_ok=True)
        
        lib_folder_path = os.path.join(self.PROJECT_ROOT, "lib")
        os.makedirs(lib_folder_path, exist_ok=True)
        
        core_folder_path = os.path.join(self.PROJECT_ROOT, "core")
        os.makedirs(os.path.join(core_folder_path, "inc"), exist_ok=True)
        os.makedirs(os.path.join(core_folder_path, "src"), exist_ok=True)

    def generateMakeFile(self):
        makefile_path = os.path.join(self.PROJECT_ROOT, "Makefile")

        makefile_template = self.jinja_template_env.get_template("Makefile")
        makefile_content = makefile_template.render(
            ide_version=self.IDE_BUILDER_VERSION,
            target="firmware",
            chipname=self.chipname,
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
            flag_arch=self.chip_config.get("harts")[0].get("arch"),
            flag_abi=self.chip_config.get("harts")[0].get("abi"),
            flag_codemodel=self.chip_config.get("harts")[0].get("codemodel")
            )

        with open(makefile_path, "w") as f:
            f.write(makefile_content)

    def generateFromTemplate(self, generated_path, template_path, **kwargs):
        template = self.jinja_template_env.get_template(template_path)
        content = template.render(**kwargs)

        with open(generated_path, "w") as f:
            f.write(content)


    def generateBspFiles(self):
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, self.chipname+".ld"), 
            "chipname.ld"
            )
        # startup
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "startup", self.chipname+"_bootrom.S"), 
            "bootrom.S"
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "startup", self.chipname+"_startup.S"), 
            "startup.S"
            )
        
        # headers
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", "rv_core.h"), 
            "peripherals/rv_core.h"
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", "xcustom.h"), 
            "peripherals/xcustom.h"
            )

        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", "encoding.h"), 
            "peripherals/encoding.h"
            )


        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+".h"), 
            "chipname.h",
            irq_definition="",
            peripherals=self.chip_config.get("peripherals"),
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal.h"), 
            "peripherals/hal.h", 
            chipname=self.chipname,
            sys_clk_freq=self.chip_config.get("harts")[0].get("freq"),
            )
            
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_core.h"), 
            "peripherals/hal_core.h", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_clint.h"), 
            "peripherals/hal_clint.h", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_plic.h"), 
            "peripherals/hal_plic.h", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_gpio.h"), 
            "peripherals/hal_gpio.h", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_i2c.h"), 
            "peripherals/hal_i2c.h", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_rcc.h"), 
            "peripherals/hal_rcc.h", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "inc", self.chipname+"_hal_uart.h"), 
            "peripherals/hal_uart.h", 
            chipname=self.chipname
            )
        
        # source
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal.c"), 
            "peripherals/hal.c", 
            chipname=self.chipname,
            )
            
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_core.c"), 
            "peripherals/hal_core.c", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_system.c"), 
            "peripherals/hal_system.c", 
            chipname=self.chipname,
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_clint.c"), 
            "peripherals/hal_clint.c", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_plic.c"), 
            "peripherals/hal_plic.c", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_gpio.c"), 
            "peripherals/hal_gpio.c", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_i2c.c"), 
            "peripherals/hal_i2c.c", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_rcc.c"), 
            "peripherals/hal_rcc.c", 
            chipname=self.chipname
            )
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "bsp", self.chipname, "src", self.chipname+"_hal_uart.c"), 
            "peripherals/hal_uart.c", 
            chipname=self.chipname
            )


    def generateUserTemplate(self):
        
        self.generateFromTemplate(
            os.path.join(self.PROJECT_ROOT, "core", "inc", "main.h"), 
            "main.h", 
            chipname=self.chipname
            )
            
        main_c_path = os.path.join(self.PROJECT_ROOT, "core", "src", "main.c")

        user_code_1 = ""
        user_code_2 = ""
        user_code_while = ""
        user_code_3 = ""
        

        if os.path.isfile(main_c_path):
            with open(main_c_path, "r") as f:
                content = f.read()

            match = re.search(r"\s*\/\* USER CODE BEGIN 1 \*\/(.*)\/\s*\* USER CODE END 1 \*\/", content, re.DOTALL)
            if match:
                user_code_1 = match.group(1)
                print("user code 1 detected")

            match = re.search(r"\s*\/\* USER CODE BEGIN 2 \*\/(.*)\/\s*\* USER CODE END 2 \*\/", content, re.DOTALL)
            if match:
                user_code_2 = match.group(1)
                print("user code 2 detected")
                
            match = re.search(r"\s*\/\* USER CODE BEGIN WHILE \*\/(.*)\/\s*\* USER CODE END WHILE \*\/", content, re.DOTALL)
            if match:
                user_code_while = match.group(1)
                print("user code while detected")
                
            match = re.search(r"\s*\/\* USER CODE BEGIN 3 \*\/(.*)\/\s*\* USER CODE END 3 \*\/", content, re.DOTALL)
            if match:
                user_code_3 = match.group(1)
                print("user code 3 detected")
        
        
        self.generateFromTemplate(
            main_c_path,
            "main.c", 
            user_code_1=user_code_1,
            user_code_2=user_code_2,
            user_code_while=user_code_while,
            user_code_3=user_code_3,
            )
            

    def generateDebug(self):
        debug_folder_path = os.path.join(self.PROJECT_ROOT, "debug")
        os.makedirs(debug_folder_path, exist_ok=True)

        jtag_cfg_path = os.path.join(debug_folder_path, self.chipname+".cfg")
        jtag_svd_path = os.path.join(debug_folder_path, self.chipname+".svd")

        self.generateFromTemplate(
            jtag_cfg_path,
            "chipname.cfg"
            )
        
        json_data = {
            "name": {"$t": self.chipname_capitalized},
            "version": {"$t": self.IDE_BUILDER_VERSION},
            "description": {"$t": "description_text"},
            "cpu": {
                "name": {"$t": self.chip_config.get("harts")[0].get("name")},
                "revision": {"$t": self.chip_config.get("harts")[0].get("arch")},
                "endian": {"$t": "little"},
                "mpuPresent": {"$t": "false"},
                "fpuPresent": {"$t": self.chip_config.get("harts")[0].get("arch").find("f") != -1},
                "nvicPrioBits": {"$t": 1},
                "vendorSystickConfig": {"$t": True},
            },
            # Define the number of data bits uniquely selected by each address. 
            "addressUnitBits": {"$t": 8},
            # Define the number of data bit-width of the maximum single data transfer supported by the bus infrastructure.
            "width": {"$t": re.findall("\d+", self.chip_config.get("harts")[0].get("arch"))[0]},
            # Default bit-width of any register contained in the device.
            "size": {"$t": 32},
            # Default access rights for all registers.
            "access": {"$t": "read-write"},
            # Default access protection for all registers.
            #"protection": {"$t": "read-write"},
            # Default value for all registers at RESET.
            "resetValue": {"$t": "0x00000000"},
            # Define which register bits have a defined reset value.
            "resetMask": {"$t": "0xFFFFFFFF"},

            "peripherals": {
                "peripheral": [{
                    "name": {"$t": periph.get("name")},
                    "description": {"$t": periph.get("description")},
                    "groupName": {"$t": periph.get("group")},
                    "baseAddress": {"$t": periph.get("baseAddress")},
                    "addressBlock": {
                        "offset": {"$t": periph.get("addressBlock").get("offset")},
                        "size": {"$t": periph.get("addressBlock").get("size")},
                        "usage": {"$t": periph.get("addressBlock").get("usage")},
                    },
                    "registers": {}
                } for periph in self.chip_config.get("peripherals")]
            },
        }


        
        xml_data = xmljson.gdata.etree(json_data, root=xml.etree.ElementTree.Element("device", attrib={
            "xmlns:xs": "http://www.w3.org/2001/XMLSchema-instance",
            "schemaVersion": "1.1",
            "xs:noNamespaceSchemaLocation": "CMSIS-SVD_Schema_1_1.xsd"
        }))

        xml_data = xml.etree.ElementTree.tostring(xml_data, encoding="unicode")
        # print(xml_data)

        with open(jtag_svd_path, "w") as f:
            f.write(xml_data)
        
        
        vscode_folder_path = os.path.join(self.PROJECT_ROOT, ".vscode")
        os.makedirs(vscode_folder_path, exist_ok=True)

        launchfile_path = os.path.join(vscode_folder_path, "launch.json")
        
        self.generateFromTemplate(
            launchfile_path,
            "launch.json",
            chip_name=self.chipname
            )
        

if __name__ == "__main__":
    CHIP_NAME = "bearlyml23"

    builder = ProjectBuilder(CHIP_NAME)

    # builder.clean()

    builder.buildDirectories()
    builder.generateMakeFile()
    builder.generateBspFiles()
    builder.generateUserTemplate()
    builder.generateDebug()
