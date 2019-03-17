array = Array.new(3, 'a')
array[0].next!
p array #=> ['b', 'b', 'b']

array_uniq = Array.new(3){'a'}
array_uniq[0].next!
p array_uniq #=> ['b', 'a', 'a']
