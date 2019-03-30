module M
  def self.class_m
    "M.class_m"
  end
end

class C
  include M
end

p C.methods.include? :class_m
p M.methods.include? :class_m

module M
  def class_m
    "M.class_m"
  end
end

class C
  include M
end

p C.instance_methods.include? :class_m
p M.instance_methods.include? :class_m
