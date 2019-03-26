class S
  @@val = 0
  def initialize
    @@val += 1
  end
end

class C < S
  class << C
    @@val += 1
  end

  def initialize
  end
end

p C.class_variable_get(:@@val)

C.new
C.new
S.new
S.new

p C.class_variable_get(:@@val)
