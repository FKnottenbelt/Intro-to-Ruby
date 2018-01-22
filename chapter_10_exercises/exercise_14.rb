# exercise 14
# since we did that prematuraly in exercise 12, we now study LS solution

contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]
contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
fields = [:email, :address, :phone]

# we assume contacts and contact_data are in the same order, so we kan use
# the index of the one for the other...
contacts.each_with_index do |(name, hash), idx|
  fields.each do |field|
    hash[field] = contact_data[idx].shift # we actually empty contact_data here
  end
end

puts "---"
p contact_data
p contacts