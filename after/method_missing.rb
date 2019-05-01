module M
  def method_missing(id, *args)
    puts "M#method_missing()"
  end
end

class A
  include M
  def method_missing(id, *args)
    puts "A#method_missing()"
  end
end

class B < A
  def method_x
    puts "#{self.class.name}:method_x"
  end
  class << self
    def method_missing(id, *args)
      puts "B#method_missing()"
    end
  end
end

obj = B.new
obj.method_x
obj.method_y
B.method_z
