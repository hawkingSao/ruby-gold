module M
  CONST = "Hello, world"
end

class M::C
  p self
  p Module.nesting
  def awesome_method
    CONST
  end
end

p M::C.new.awesome_method
