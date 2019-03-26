class String
  alias_method :hoge, :reverse
end
p "12345".hoge

class String
  alias_method 'hoge', 'reverse'
end
p "12345".hoge

class String
  alias :hoge :reverse
end
p "12345".hoge
