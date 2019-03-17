class A
  private
  def hoge
    puts 'A'
  end
end

class B < A
  public :hoge
end

p A.instance_methods(false) #=> []
p B.instance_methods(false) #=> [:hoge]
B.new.hoge #=> A
