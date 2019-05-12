require 'date'

p DateTime.new(2011, 7, 19) - DateTime.new(2010, 8, 27)
#=> (326/1)

date = Date.new(2010, 10, 1)
p date << 3 #=> #<Date: 2010-07-01 ((2455379j,0s,0n),+0s,2299161j)>
