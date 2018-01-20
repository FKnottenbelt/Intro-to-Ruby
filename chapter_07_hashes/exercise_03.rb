# exercise 03

animals = { cat: ["Nino","Nora"],
          dog: "Fido",
          fish: "Nemo",
          bug: "Creepy",
          bird: "Tweety"}
          
def print_keys a_hash
   a_hash.each_key { |k| puts k}
end

def print_values a_hash
   a_hash.each_value { |v| puts v}
end

def print_both a_hash
   a_hash.each { |k,v| puts k.to_s + ": " + v.to_s}
end

print_keys(animals)
puts
print_values(animals)
puts
print_both(animals)
  