class C
  CONST = 'Hello, Class'
end

$c = C.new

class D
  CONST = 'Hello, Module'
  class << $c
    p self
    p self.ancestors
    p Module.nesting
    def say
      CONST
    end
  end
end

p $c.say
