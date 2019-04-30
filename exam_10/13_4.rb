module M
  CONST = "Hello, world"
end

CONST = "Top"

M.instance_eval(<<-CODE)
  def say
    CONST
  end
CODE

p M.say
