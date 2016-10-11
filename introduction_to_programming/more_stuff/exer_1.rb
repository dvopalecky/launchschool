arr = ["laboratory",
"experiment",
"Pans Labyrinth",
"elaborate",
"polar bear"]

arr.each do |v|
  if /lab/ =~ v
    puts v
  else
    puts "-----"
  end
end