# exercise 15

p arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr2 = [].replace(arr)


arr.delete_if{|word| word.start_with?("s")}
arr2.delete_if{ |word| word.start_with?("s","w")}

p arr
p arr2