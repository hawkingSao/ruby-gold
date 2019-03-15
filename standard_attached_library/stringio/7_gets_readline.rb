require 'stringio'

sio = StringIO.new
sio.string = "Hello World.\nHello IOString World"
p sio.gets #=> 'Hello World.\n'
p sio.readline #=> 'Hello IOString World'

p sio.gets #=> nil
begin
  sio.readline
rescue => e
  p e #=> EOFError
end
