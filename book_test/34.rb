module M1; end
module M2; end

class Cls1
  include M1
end

class Cls2 < Cls1
  def foo
    p self.ancestors
  end
  include M2
end
p Cls2.ancestors
Cls2.new.foo
