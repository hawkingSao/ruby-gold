class C
  CONST = "Hello, world"
end

$c = C.new

class D
  CONST ='stronger?'
  class << $c
    p Module.nesting
    p self.ancestors
    def say
      CONST
    end
  end
end

p $c.say
