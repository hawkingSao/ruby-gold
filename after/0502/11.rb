module M
  def refer_const
    CONST
  end
end

class D
  CONST = "001"
end

class C < D
  include M
end

c = C.new
p c.refer_const rescue p [$@, $!]
p C::CONST
