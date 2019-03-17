class Object
  def self.const_missing a
    p "#{a}"
  end
end
B

class Hoge
  def self.const_missing a
    p "#{a}"
  end
end
Hoge::B

class Module
  def self.const_missing a
    p "#{a}"
  end
end
B
