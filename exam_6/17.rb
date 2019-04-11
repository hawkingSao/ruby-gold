class C
  CONST = 'Hello, world'
end

$c = C.new

class D
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
