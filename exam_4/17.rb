class C
  CONST = "Hello, world"
end

$c = C.new
p $c.methods(false)

class D
  class << $c
    p self
    p self.ancestors
    def say
      CONST
    end
  end
end

p $c.methods(false)
p $c.say
