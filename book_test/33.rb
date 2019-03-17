class Root
  def m
    puts 'Root'
  end
end

class A < Root
  def m
    puts 'A'
  end
end

class B < A
  def m
    puts 'B'
  end
  undef m
end
B.new.m
