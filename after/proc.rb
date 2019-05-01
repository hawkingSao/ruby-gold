def tag(name)
  puts "<#{name}>#{yield.call}</#{name}>"
end

tag(:p) { 'Hello, World.' }
