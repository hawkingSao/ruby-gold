module M
  CONST = "Hello, world"

  class C
    CONST = "111"

    def awesome_method
      CONST
    end
  end
end

p M::C.new.awesome_method
