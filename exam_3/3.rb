module M
  def class_m
    "class_m"
  end
end

class C
  include M
end

p '====================='
p C.methods.include? :class_m
p '---------'
p C.methods

p '====================='
p C.instance_methods.include? :class_m
p '---------'
p C.instance_methods

p '====================='
p C.singleton_methods.include? :class_m
p '---------'
p C.singleton_methods
