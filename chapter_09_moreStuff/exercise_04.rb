# exercise 02 and 04

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }