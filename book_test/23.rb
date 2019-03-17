begin
  exit
rescue StandardError
  puts 'StandardError'
rescue SystemExit
  puts 'SystemExit'
end
puts 'End'
