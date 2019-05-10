class Parent
  private

  def test
    123
  end
end

class Child < Parent
  public :test
end

p Child.new.test
