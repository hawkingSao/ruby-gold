require 'stringio'

sio = StringIO.new
sio.string = 'Hello World.'
p sio.getc #=> 'H'

sio.pos = sio.string.length
p sio.getc #=> nil
begin
  sio.readchar
rescue => e
  p e #=> EOFError
end
