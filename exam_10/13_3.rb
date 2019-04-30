module M
  CONST = "Hello, world"
end

class << M
  p Module.nesting
  def say
    CONST
  end
end

p M::say
