x = %w(abc defgk lopq)
p x.sort { |a, b| a.size <=> b.size }

p x.map {|x| x.size }
p x.sort { |a, b| a.size - b.size }
