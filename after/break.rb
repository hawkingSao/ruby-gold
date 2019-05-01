def hoge_1
  Proc.new { return 1 }.call
  return 2
end
p hoge_1

def hoge
  lambda { return 1 }.call
  return 2
end
p hoge
