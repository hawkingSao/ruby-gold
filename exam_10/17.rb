module A
  B = 42

  def f
    21
  end
end

A.module_eval(<<-EOS)
  p self
  p Module.nesting
  def f
    p B
  end

  module_function :f
EOS

B = 15

A.f
