m = Module.new
m.module_eval(<<-EOS)
  CONST = 'Constant in Module instance'

  def self.const
    CONST
  end
EOS
p m.singleton_methods(false)
p m.const

m2 = Module.new
m2.instance_eval(<<-EOS)
  CONST = 'Constant in Module instance'

  def const
    CONST
  end
EOS
p m2.singleton_methods(false)
p m.const
