# Exercise 01

def find_match string
  if /lab/.match(string.downcase)
    puts string
  end 
end


array = ["laboratory",
    "experiment",
    "Pans Labyrinth",
    "elaborate",
    "polar bear"]
    
array.each { |s| find_match(s)}