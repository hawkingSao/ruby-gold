module M
  def self.class_m; 'M.class_m' end
end

module M2
  def class_m2; 'M2.class_m2' end
end

class C
  include M

  class << self
    include M2
  end
end

p C.methods.include? :class_m
p C.instance_methods.include? :class_m
p C.methods.include? :class_m2
p C.instance_methods.include? :class_m2
