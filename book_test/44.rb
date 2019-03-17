module Mod
  def Mod.foo
    puts 'Mod'
  end
end

class Cls1
  include Mod
  def Cls1.foo
    puts 'cls1'
  end
end

class Cls2 < Cls1
  def Cls2.foo
    puts 'Cls2'
  end
end
puts Cls2.foo
Cls2.new.foo
