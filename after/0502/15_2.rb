module M
  CONST = "Hello, world"
end

#特異クラス？モジュール？
M.module_eval(<<-CODE)
  p Module.nesting
  def self.say
    CONST
  end
CODE

p M::say
