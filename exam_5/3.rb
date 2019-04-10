class C
  @val = 3
  attr_accessor :val

  class << self
    @val = 10
  end

  def initialize
    p @val
    @val *= 2 if val
  end
end

c = C.new
p c.instance_variables
p c.val
p c.val = 1
c.val += 10

p c.val
