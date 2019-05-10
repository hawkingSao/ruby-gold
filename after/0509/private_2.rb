class Parent
  private

  def test
    123
  end
end

class Child < Parent
  def test
    super
  end
end

p Child.new.test
