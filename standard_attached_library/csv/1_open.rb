require 'csv'

CSV.open('sample.csv') do |csv|
  csv.each do |row|
    p row
  end
end
#=> ["abc", "def", "efg", "hijk"]
# ["123", "456", "789", "10"]
# ["ABCDEFG", nil, "HIJKLM", nil, nil]
