class Parent
  private
  def private_method; 'private' end

  protected
  def protected_method; 'protected' end
end

class Child < Parent
  def private_call; private_method end
  def protected_call; protected_method end
end

c = Child.new
p c.private_call
p c.protected_call
p c.methods.include? :private_method
p c.methods.include? :protected_method
