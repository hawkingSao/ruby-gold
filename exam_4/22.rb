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
end

C.new
p '==========='
p C.class_variable_get(:@@val)
C.new
p '==========='
p C.class_variable_get(:@@val)
S.new
S.new

p C.class_variable_get(:@@val)
