require 'yaml'

colors1 = %w(Red Green Blue)
colors2 = %w(Yellow Pink White)

p YAML.dump_stream(colors1, colors2)
#=> "---\n- Red\n- Green\n- Blue\n---\n- Yellow\n- Pink\n- White\n"
