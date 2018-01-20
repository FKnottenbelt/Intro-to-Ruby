# exercise 06: anagrams

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

output={}    

words.each do |word|
  letters = word.split("")
  origin = ":" + letters.sort.join  # could have done:
                                    # origin = ":" + word.split("").sort.join
  if output.has_key?(origin)
    if output.has_value?(word)
      # wonderfull, next
    else
      output[origin].push(word)
    end 
  else
    output[origin] = [word] # put it straight into an array!
  end
end

output.each {|k,v| p v}
