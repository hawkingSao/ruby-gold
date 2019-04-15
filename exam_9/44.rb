m = Module.new

_proc = Proc.new do
  CONST = "Constant in Proc"
end

m.instance_eval(<<-EOS)
  CONST = "Constant in Module instance"

  def const
    CONST
  end
EOS

m.instance_eval(<<-EOS)
  CONST = 1111111111111
EOS

p m.const
