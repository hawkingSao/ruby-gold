def hoge(*args, &block)
  p args
  block.call(args)
end

hoge(1,2,3,4) do |*args|
  p args.length < 0 ? "hello" : args
end
