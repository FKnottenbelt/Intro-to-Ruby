# boolean_regex.rb

def has_a_b?(string)
  if string =~ /b/
    puts "We have a match!"
  else
    puts "No match here."
  end
end

def has_a_a?(string)
  if /a/.match(string)
    puts "We have a match"
  else
    puts "No match here."
  end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("hockey")
has_a_b?("golf")
has_a_a?("basketball")
has_a_a?("football")
has_a_a?("hockey")
has_a_a?("golf")