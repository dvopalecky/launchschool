# (ex. ["white snow", etc...] → ["white", "snow", etc...].
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
     
new_a = a.map do |value|
  value.split(" ")
end
new_a.flatten!
p new_a