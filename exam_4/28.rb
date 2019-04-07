def foo(n)
  p 'method'
  p n
  n ** n
end

foo = Proc.new { |n|
  p 'proc'
  p n
  n * 3
}

puts foo[2] * 2
