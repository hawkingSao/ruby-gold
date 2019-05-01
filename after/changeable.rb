class S
  def initialize
    puts "S#initialize"
  end
end

class C < S
  def initialize(*args) # 配列にする
    p args #配列にした引数をそのまま
    p *args # 1段階ほどく
    super()
    puts "C#initialize"
  end
end

C.new([1,2,3,4,5])
