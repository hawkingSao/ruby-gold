class Error1 < StandardError; end
class Error2 < Error1; end
begin
  raise Error2
rescue Error1 => ex
  puts ex.class
end
