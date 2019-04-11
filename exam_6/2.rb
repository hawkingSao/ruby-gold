module M
  def class_m
    'class_m'
  end
end

class C
  include M
end

p C.methods.include? :class_m
p C.instance_methods.include? :class_m
