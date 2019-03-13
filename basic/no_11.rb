a, b = catch :exit do
  for x in 1..10
    for y in 1..10
      throw :exit, [x, y] if x + y == 10
    end
  end
end

puts a, b
