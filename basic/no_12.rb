class Super
  def greet
    'Hello '
  end
end

class Sub < Super
  def greet
    super + 'World.'
  end
end

puts Sub.new.greet
