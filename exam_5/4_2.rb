module M
  CONST = 123
end

class C
  include M

  def test
    CONST
  end
end

p M::CONST
p C::CONST
p C.new.test
