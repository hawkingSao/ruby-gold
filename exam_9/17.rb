module A
  B = 42

  def f
    21
  end
end

A.module_eval do
  p Module.nesting
  def self.f
    p B
  end
end

# A.module_eval(<<-CODE)
#   p Module.nesting
#   def self.f
#     p B
#   end
# CODE

B = 15

A.f
