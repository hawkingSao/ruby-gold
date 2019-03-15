require 'stringio'

sio = StringIO.new
p sio.print('abc', 'def', 'ghi', 'jkl') #=> nil
p sio.string #=> 'abcdefghijkl'(引数に改行を付加しないで書き込まれる)
