class C; end
module M
  CONST = 'Hello, world'

  C.class_eval do
    p self
    p self.class
    p Module.nesting
    def awesome_method
      CONST
    end
  end
end
p C.new.awesome_method rescue p $@
