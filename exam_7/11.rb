class Human
  NAME = 'Unknown'

  def self.name
    p self
    p self.constants
    const_get(:NAME)
  end
end

class Fukuzawa < Human
  NAME = 'Yukichi'
end

puts Fukuzawa.name
