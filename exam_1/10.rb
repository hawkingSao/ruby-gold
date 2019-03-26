module M
  def class_m
    "class_m"
  end
end

class C
  def test

  end
  extend M
end

p C.singleton_methods
p C.methods
p C.methods.include? :class_m

c = C.new
p "=============="
p c.methods
