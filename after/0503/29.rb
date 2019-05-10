class C
  @@val = 10
  
  def class_val
    p @@val
  end
end

module B
  @@val = 30
end

module M
  include B
  @@val = 20

  class << C
    def singleton_val
      p @@val
    end
  end
end

c = C.new
c.class_val
C.singleton_val
