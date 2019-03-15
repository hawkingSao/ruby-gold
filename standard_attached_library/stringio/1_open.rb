require 'stringio'

sio = StringIO.open('Hello StringIO')
p sio #=> #<StringIO:0x007fd6518a3318>
p sio.read #=> "Hello StringIO"

# ブロックの場合はその評価結果が返る
sio = StringIO.open('Hello StringIO') do |io|
  p io #=> #<StringIO:0x007fd6518a2fa8>
  p io.read #=> "Hello StringIO"
  nil
end
p sio #=> nil
