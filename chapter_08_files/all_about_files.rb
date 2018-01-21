##############################
# Files

# New file
my_file = File.new("simple_file.txt", "w+")
my_file.close

# Open, write (close) and read no 1
File.open("simple_file.txt", "w") { |file| file.write("adding first line of text") }
File.read("simple_file.txt")

# Open, write close and read no 2
sample = File.open("simple_file.txt",  "w+")
sample.puts("another example of writing to a file.")
sample.close
File.read("simple_file.txt")
# => "another example of writing to a file.\n"

# Open, write (close) and read no 2 
File.open("simple_file.txt", "a+") do |file|
  file << "Here we are with a new line of text"
end
File.readlines("simple_file.txt").each do |line|
  puts line
end
#=> another example of writing to a file.
#=> Here we are with a new line of text

# Open, write (close) and read no 3
File.open("simple_file.txt",  "a+") do |file|
  file.write "Writing to files in Ruby is simple."
end

File.readlines("simple_file.txt").each_with_index do |line, line_num|
 puts "#{line_num}: #{line}"
end
#=> 0: another example of writing to a file.
#=> 1: Here we are with a new line of textWriting to files in Ruby is simple.

# Deleting a file
File.new("dummy_file.txt", "w+")
File.delete("dummy_file.txt")