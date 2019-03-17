module Mod
  def foo
    puts 'Mod'
  end
end

class Cls1
  def foo
    puts 'Cls1'
  end
end

class Cls2 < Cls1
  include Mod
end
Cls2.new.foo
