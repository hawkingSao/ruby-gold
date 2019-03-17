class Hoge
  def fuga(o =nil)
    hoge
  end

  private

  def hoge
    puts 'Hoge'
  end
end

Hoge.new.fuga(Hoge.new)
