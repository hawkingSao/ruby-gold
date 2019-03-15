require 'stringio'

sio = StringIO.new
sio.string = 'Hello World.'
p sio.read(5) #=> 'Hello'
p sio.read #=> ' World.'

# ポインタが終端に達している場合
# 引数を省略すると空文字列、引数を与えるとnil
p sio.read #=> ''
p sio.read(1) #=> nil

sio.pos = 0
output = ''
sio.read(5, output)
p output #=> 'Hello'
