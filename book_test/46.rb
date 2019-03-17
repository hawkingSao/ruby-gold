class A
  @@a = 0
  def initialize
    @@a = @@a + 1
  end

  def A.a
    @@a
  end
end

class B < A; end

A.new
A.new
B.new
B.new
p A.a
