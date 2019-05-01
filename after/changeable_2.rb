def hoge(x:, y: 2, **params)
  puts "#{x}, #{y}, #{params[:z]}"
end

hoge x: 1, z: 3
