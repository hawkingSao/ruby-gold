class C
  CONST = 'Hello, world'
  def test
    CONST
  end
end

module M
  C.class_eval do
    p self
    p self.constants
    p Module.nesting
    def awesome_method
      CONST
    end
  end
end
p C.new.awesome_method rescue p $@
p C.new.test
