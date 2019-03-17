module Mod
  def foo
    puts 'Mod'
    super
  end
end

class Cls1
  def foo
    puts 'Cls1'
  end
end

class Cls2 < Cls1
  def foo
    puts 'Cls2'
  end
  prepend Mod
end
Cls2.new.foo
