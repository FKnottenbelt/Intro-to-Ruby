# exercise 02

d = Dir.new(".")
while file = d.read do
  puts "#{file} has extension .txt" if File.extname(file) == ".txt"
end

puts "--------------------"

# version 2 with Pathname
require 'pathname'
pn = Pathname.new(".")
pn.entries.each do |f|
  puts "Version 2: #{f} has extention .txt" if f.extname == ".txt"
end