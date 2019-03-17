require 'yaml'

dir = <<EOY
file1:
  name: app.rb
  data: ruby
EOY

p YAML.load(dir)
