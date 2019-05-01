module M
  CONST = 'Hello, world'
  class << self
    CONST = 'Singleton Class'
  end
end

class << M
  p Module.nesting
  def say
    CONST
  end
end

p M.say
