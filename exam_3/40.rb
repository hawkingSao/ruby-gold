class Company
  include Comparable

  attr_reader :id
  attr_accessor :name

  def initialize id, name
    @id = id
    @name = name
  end

  def to_s
    "#{id}:#{name}"
  end

  def <=> other
    self.id <=> other.id
  end
end

c1 = Company.new(3, 'Liberyfish')
c2 = Company.new(2, 'Freefish')
c3 = Company.new(1, 'Freedomfish')

p c1.object_id
p c2.object_id
p c3.object_id

print c1.between?(c2, c3)
print c2.between?(c3, c1)
