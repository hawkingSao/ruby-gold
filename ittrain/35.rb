module M
  CONST = 123
  def module
    return 'module'
  end
end

class C
  include M
  def const
    CONST
  end
end

c = C.new
p c.module
p c.const
