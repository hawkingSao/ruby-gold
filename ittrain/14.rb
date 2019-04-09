puts [1, 2, 3].inject(:*)
puts [1, 2, 3].inject(:+)
puts [1, 2, 3].inject(0) { |sum, i| sum * i }
puts [1, 2, 3].inject() { |sum, i| sum * i }
