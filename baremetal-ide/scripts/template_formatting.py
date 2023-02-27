import os
import json

import jinja2

TEMPLATE_PATH = "../templates/"

CHIP_NAME = "bearlyml"
OUTPUT_PATH = "../bsp/" + CHIP_NAME

jinja_template_loader = jinja2.FileSystemLoader(searchpath=TEMPLATE_PATH)
jinja_template_env = jinja2.Environment(loader=jinja_template_loader)

periph_info = json.load(open(os.path.join(TEMPLATE_PATH, "peripherals/uart.json"), "r"))
print(periph_info)

template = jinja_template_env.get_template("peripherals/hal_uart.h")
outputText = template.render()


with open(os.path.join(OUTPUT_PATH, "{0}.h".format(CHIP_NAME)), "w") as f:
    f.write("test")

#print(outputText)