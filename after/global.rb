module M
  def hoge
    self
  end
end

class A
  include M

  $a = self
  def hoge
    $b = self
  end

  class << self
    $c = self
  end
end

a = A.new
p $a
p $b
p $c
p a.hoge
