require 'stringio'

sio = StringIO.new
p sio.putc('a') #=> 'a'
p sio.string #=> 'a'

sio.string = ''
p sio.putc('bcd') #=> 'bcd' (引数が返る)
p sio.string #=> 'b' (書き込まれるのは一文字だけ)
