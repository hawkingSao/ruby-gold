class Hoge
  def self.const_missing a
    p "#{a}"
  end
end

class Huga < Hoge; end
Huga::B
