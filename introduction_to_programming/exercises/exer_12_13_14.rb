#Write a program that moves the information from the array into the empty hash that applies to the correct person

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

hash_keys = contacts.keys
headers = [:email, :address, :phone]

contact_data.each_with_index do |value, i|
  headers.each_with_index do |header, h_i|
    contacts[hash_keys[i]][header] = value[h_i]
  end
end

p contacts
p contacts["Joe Smith"][:email]
p contacts["Sally Johnson"][:phone]