require 'yaml'

colors = %w(Red Green Blue)
p YAML.dump(colors)
#=> "---\n- Red\n- Green\n- Blue\n"

File.open('dump.yml', 'w+') do |f|
  YAML.dump(colors, f)
end
