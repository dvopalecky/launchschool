# merge vs merge!

hsh1 = {species: "cat", sex: "female"}
hsh2 = {age: 2, color: "silver"}

hsh1.merge(hsh2)
"example of merge. original did NOT change"
p hsh1
p hsh2

hsh1.merge!(hsh2)
"example of merge. original did change"
p hsh1
p hsh2