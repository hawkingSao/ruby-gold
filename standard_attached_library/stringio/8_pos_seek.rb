require 'stringio'

sio = StringIO.new
sio.string = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
sio.pos = 10
p sio.read #=> "KLMNOPQRSTUVWXYZ"

sio.seek(-10, IO::SEEK_END)
p sio.read #=> "QRSTUVWXYZ"

begin
  sio.seek(-10, IO::SEEK_SET)
rescue => e
  p e #=> Errno::EINVAL
end
