m = Module.new

m.module_eval(<<-EOS)
  p Module.nesting
  CONST = "Constant in Module instance"

  def self.const
    CONST
  end
EOS

p m.const
