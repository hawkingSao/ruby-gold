module M
  CONST = 'Hello, world'
end

CONST = 'Top'

M.module_eval(<<-CODE)
  p Module.nesting
  def self.say
    CONST
  end
CODE

p M.say
