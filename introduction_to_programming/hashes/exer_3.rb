# Using some of Ruby's built-in Hash methods, write a program that loops through
# a hash and prints all of the keys. Then write a program that does the same
# thing except printing the values. Finally, write a program that prints both.

box = {width: 20, height: 30, color: "red"}
box.each do |k,v|
  puts k
end

box.each_value do |v|
  puts v
end

box.each do |k,v|
  puts "#{k}: #{v}"
end
