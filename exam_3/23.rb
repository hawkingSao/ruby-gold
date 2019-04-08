# *argで受け取った引数は、argsで配列になる

def hoge(*args, &block)
  p 111111111111111111111111
  p args
  p 111111111111111111111111
  block.call(args)
end

hoge(1,2,3,4) do |*args|
  p *args
  p args
  p "============"
  p args.length < 0 ? "hello" : args
end
