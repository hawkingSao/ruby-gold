module M
  def self.class_m
    "M.class_m"
  end

  def test
    123
  end
end

module M2
  def test2
    123
  end
end

class C
  include M
  extend M2
end

p C.methods.include? :class_m
p C.instance_methods.include? :test
p C.methods.include? :test2
