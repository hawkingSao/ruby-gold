m = Module.new

m.instance_eval(<<-EOS)
  p Module.nesting
  CONST = "Constant in Module instance"

  def const
    CONST
  end
EOS

p m.const
