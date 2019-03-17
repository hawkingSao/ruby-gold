class A
  $a = self
  def hoge
    $b = self
  end
end
a = A.new
p '-------------'
p $a
p $b
p '-------------'
p A == $a, a == $b

p '-------------'
a.hoge
p A == $a, a == $b
