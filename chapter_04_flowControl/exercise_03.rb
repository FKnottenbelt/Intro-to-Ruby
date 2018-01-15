# exercise 3

puts "Give me a number between 0 and 100"
num = Integer(gets.chomp)

answer = case
  when num < 0 
    "please give me a positive number"
  when num <= 50 
    "between 0 and 50"
  when num <= 100
    "between 51 and 100"
  else
    "bigger than 100"
  end
  
puts answer