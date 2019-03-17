class Hoge
  # def self.method1
  #   puts 'Hello, World.'
  # end

  class << self
    def method1
      puts 'Hello, World.'
    end
  end
end
Hoge.method1 #=> Hello, World.
