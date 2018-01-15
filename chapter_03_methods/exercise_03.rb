# exercise 3 (and experimenting with tests)

def multiply num1, num2
  answer = num1 * num2
end

puts multiply 3,4

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'multiply(2,4) == 8: ' + (multiply(2,4) == 8).to_s
)
puts(
  'multiply(0,4) == 0: ' + (multiply(0,4) == 0).to_s
)