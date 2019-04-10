class C
  protected
  def initialize
  end

  def test
  end
end

p C.new.methods.include? :initialize
p C.instance_methods.include? :initialize
p C.instance_methods(false)
p C.methods.include? :initialize
