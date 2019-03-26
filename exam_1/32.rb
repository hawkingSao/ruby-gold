def bar(&block)
  p block.class
  block.yield
end

bar do
  puts "hello, world"
end

def bar(&block)
  p block.class
  block.call
end

bar do
  puts "hello, world"
end

def bar(n, &block)
  p n
  block.call
end

bar(5) {
  puts "hello, world"
}
