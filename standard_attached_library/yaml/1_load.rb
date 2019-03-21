require 'yaml'

yaml_data = <<-DATA
- Red
- Green
- Blue
---
- Yellow
- Pink
- White
DATA

p YAML.load(yaml_data)
#=> ["Red", "Green", "Blue"]
# 最初のYAMLのみが生成
