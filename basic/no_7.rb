def tag(name)
  puts "<#{name}>#{yield}</#{name}>"
end

tag(:p) { 'Hello, World.' }

def tag(name, &block)
  puts "<#{name}>#{block.call}</#{name}>"
end

tag(:p) { 'Hello, World.' }
