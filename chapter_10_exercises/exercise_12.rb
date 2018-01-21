# exercise 12

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

contacts.each do |name,v|
 p first_name = name.split(" ")[0].downcase
   contact_data.each do |a|

     if /#{first_name}/.match(a[0])
       contacts[name][:email]= a[0]      
       contacts[name][:adress]= a[1]
       contacts[name][:phone]= a[2]
     end
   end
end

puts contacts