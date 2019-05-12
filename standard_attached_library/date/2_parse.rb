require 'date'

p Date.parse('2011-01-01')

p Date.parse('11-01-01', false).to_s #=> "0011-01-01"
p Date.parse('11-01-01', true).to_s #=> "2011-01-01"
p Date.parse('68-01-01').to_s #=> "2068-01-01"
p Date.parse('69-01-01').to_s #=> "1969-01-01"
