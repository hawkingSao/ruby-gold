def top
  p 'top'
end

class Parent
  top

  def in_class
    top
  end

  def top
    p 'in_class'
  end
end

Parent.new.in_class
