# Can hash values be arrays? Can you have an array of hashes? (give examples)
# yes and yes
p example1 = {[1,2,3] => "ahoj", [0] => [0]}
p example2 = [example1, {}, {:id => 3}]
