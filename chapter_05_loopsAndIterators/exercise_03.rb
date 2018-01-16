# ls_ruby temp.rb
##############################
# exercise 3

arr = ["pear",'apple','banana','orange']

arr.each_with_index {|item, index| puts "#{item} has index #{index}"}