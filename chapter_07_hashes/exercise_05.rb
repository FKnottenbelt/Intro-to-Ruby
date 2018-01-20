# exercise 05

animals = { cat: ["Nino","Nora"],
          dog: "Fido",
          fish: "Nemo",
          bug: "Creepy",
          bird: "Tweety"}
          
p animals.has_value?("Nemo")  # will not find "Nora", only ["Nino","Nora"]

p animals.select {|k,v| v.include?("Nora") } 