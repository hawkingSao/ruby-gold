require 'yaml'

yaml_stream = YAML.load_stream(File.open('sample.yml'))
p yaml_stream
#=> [["Red", "Green", "Blue"], ["Yellow", "Pink", "White"]]
# 複数のYAMLを生成
