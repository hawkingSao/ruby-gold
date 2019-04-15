class C
  protected
  def initialize
  end
end

p C.new.methods.include? :initialize
p C.new.public_methods.include? :initialize
p C.new.private_methods.include? :initialize
p C.protected_methods.include? :initialize
p C.instance_methods.include? :initialize

