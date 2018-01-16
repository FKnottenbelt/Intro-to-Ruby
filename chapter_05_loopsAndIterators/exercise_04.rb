# ls_ruby temp.rb
##############################
# exercise 4

def countdown num
  if num < 0
    return
  end 
  puts num
  countdown (num-1)
end 

countdown 10
  