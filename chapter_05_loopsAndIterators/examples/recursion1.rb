# recursion1.rb

def doubler(start)
  puts start
  if start < 10
    doubler(start * 2)
  end
end