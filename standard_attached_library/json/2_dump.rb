require 'json'

array = %w(Red Green Blue)
p JSON.dump(array) #=> "[\"Red\",\"Green\",\"Blue\"]"

File.open('dump.json', 'w+') do |f|
  JSON.dump(array, f)
end
