class Module
  def const_missing(id)
    puts "Module#const_missing()"
    id = 1
  end
end

class Class
  def const_missing(id)
    puts "Class#const_missing()"
    id = 2
  end
end

class Object
  def const_missing(id)
    puts "Object#const_missing()"
    id = 3
  end
end

class A
  def self.const_missing(id)
    puts "A#const_missing()"
    id = 4
  end
end

class B < A
  CNST_X = "123"

  def method01
    puts "CNST_X=#{CNST_X}"
    puts "CNST_Y=#{CNST_Y}"
  end

  def const_missing(id)
    puts "B#const_missing()"
    id = 5
  end
end

obj = B.new
obj.method01
