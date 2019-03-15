require 'stringio'

sio = StringIO.new
p sio.puts('abc') #=> nil
p sio.string #=> 'abc\n'

sio.string = ''
p sio.puts('abc', 'def', 'ghi', 'jkl') #=> nil (nilが返る)
p sio.string #=> 'abc\ndef\nghi\njkl\n' (引数に改行を付加して書き込まれる)

sio.string = ''
p sio.puts(%w[abc def ghi jkl]) #=> nil
p sio.string #=> 'abc\ndef\nghi\njkl\n'

sio.string = ''
p sio.puts(nil) #=> nil
p sio.string #=> '\n' (引数がないと改行だけ書き込まれる)
