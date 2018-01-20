# exercise 2: merge and merge!

hash1 = { cat: "Nino",
          dog: "Fido",
          bird: "Tweety"}
          
hash2 = { cat: "Nora",
          fish: "Nemo",
          bug: "Creepy"}

                                # duplicate keys: add block with:
                                # key, hash1 value, hash2 value
                                # do something, in this case make
                                # an array with both values
p nice_merge = hash1.merge(hash2) {|k,ov,nv| [ov,nv]}
p hash1
p hash2
puts
puts

p destructive_merge = hash1.merge!(hash2) {|k,ov,nv| [ov,nv]}
p hash1
p hash2
puts
puts