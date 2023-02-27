import xml
import json

import xmljson


content = ""
with open("bearlyarty.svd", "r") as f:
    content = f.read()

result = xmljson.gdata.data(xml.etree.ElementTree.fromstring(content))

# print(result)
print(json.dump(result, open("dump.json", "w")))

result = xmljson.gdata.etree(result, root=xml.etree.ElementTree.Element("root"))

output = xml.etree.ElementTree.tostring(result, encoding="utf8")

# print(output)