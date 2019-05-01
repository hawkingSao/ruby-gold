module M
  CONST = 'Hello, world'
end

class M::C
  def awesome_method
    p self
    p self.class
    p Module.nesting
    CONST
  end
end
p M::C.new.awesome_method rescue p $@
