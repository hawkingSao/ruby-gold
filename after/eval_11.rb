module M
  CONST = 'Hello, world'
end

CONST = 'Top'

M.instance_eval(<<-CODE)
  p Module.nesting
  def say
    CONST
  end
CODE

p M.say
