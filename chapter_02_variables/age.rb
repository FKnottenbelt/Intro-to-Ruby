# age.rb

print "How old are you? "
age = Integer(gets.chomp)

add_years = 10
loop do
  new_age = age + add_years 
  puts "In #{add_years} years you will be: "
  puts new_age
  add_years = add_years + 10
  break if add_years > 40
end
