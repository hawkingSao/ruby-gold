class C
  CONST = 'Hello, world'
end
module M
  C.class_eval(<<-CODE)
    p self
    p self.constants
    p Module.nesting
    def awesome_method
      CONST
    end
  CODE
end
p C.new.awesome_method rescue p $@
