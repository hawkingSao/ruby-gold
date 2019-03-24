require 'json'

json = <<-DATA
["Red", "Green", "Blue"]
DATA

p JSON.load(json) #=> ["Red", "Green", "Blue"]
p JSON.parse(json) #=> ["Red", "Green", "Blue"]

p JSON.load(File.open('data.json')) #=> ["Red", "Green", "Blue"]
