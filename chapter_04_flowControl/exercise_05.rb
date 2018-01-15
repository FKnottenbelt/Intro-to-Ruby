# exercise 5

puts "Give me a number between 0 and 100"
num = Integer(gets.chomp)

def give_size num
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
end  

def if_give_size number
  if number < 0
    puts "You can't enter a negative number!"
  elsif number <= 50
    puts "#{number} is between 0 and 50"
  elsif number <= 100
    puts "#{number} is between 51 and 100"
  else
    puts "#{number} is above 100"
  end
end 

puts give_size num
puts if_give_size num
