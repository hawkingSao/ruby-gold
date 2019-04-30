module M
  CONST = "Hello, world"
end

module M
  p Module.nesting
  def self.say
    CONST
  end
end

p M::say
p M.methods(false)
p M.say
