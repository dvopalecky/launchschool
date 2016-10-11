# What method could you use to find out if a Hash contains a specific 
# value in it? Write a program to demonstrate this use.

hash = {name: "Jeff", position: "boss", salary: 100000}

def contains?(hash, value)
  puts "contains #{value} ? #{hash.value?(value)}"
end

contains?(hash, "Jeff")
contains?(hash, "Jim")
contains?(hash, 123)