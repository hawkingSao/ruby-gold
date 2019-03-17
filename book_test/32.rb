class Err1 < StandardError; end
class Err2 < Err1; end
begin
  raise
rescue Err1 => ex
  puts 'Error'
end
