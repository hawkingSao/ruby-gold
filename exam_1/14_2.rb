class C
end

module M
  refine C do
    def m1
      100
    end
  end
end

class C
  def m1
    400
  end
  using M
end

puts C.new.m1

using M

puts C.new.m1
