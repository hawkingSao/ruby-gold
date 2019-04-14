class C
  def self.m1
    200
  end
end

module R
  refine C do
    p self
    def self.m1
      100
    end
  end
end

using R

puts C.m1
