require 'csv'

CSV.open('sample_write.csv', 'w+') do |row|
  row << ['abc', 'def', 'efg', 'hijk']
  row << ['123', '456', '789', '10']
end
