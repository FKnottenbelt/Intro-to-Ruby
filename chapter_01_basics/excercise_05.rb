# excercise 4

def factorial num
  fact = 1
  num.downto(1) do |n|
    fact = fact * n
  end 
  return fact
end

for f in 5..8 
 puts factorial f
 f += 1
end