class C
  def self.m1
    200
  end
end

module R
  refine C do
    class << C
      def m1
        100
      end
    end
  end
end

using R

puts C.m1
