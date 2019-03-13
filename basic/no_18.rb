class Example
  def hoge
    self.piyo
  end

  protected

  def piyo
    puts 'piyo'
  end
end

Example.new.hoge
