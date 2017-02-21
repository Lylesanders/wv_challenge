#This code Below "Works", puts to console
puts 'Type in as many words as you\'d like. When you\'re finished, press enter on an empty line'
array = []
input = ' '
while input != ''
  input = gets.chomp
  array.push input
end

puts
print array


require 'csv'
CSV.open("students1.csv", "a") do |csv|
csv << array
end




# require 'csv'
# CSV.open("students1.csv", "w") do |csv|
#   csv << ["David", "Jones", "Jones@email.com", "robotics", "emt", "firefighting", "coding"]
#   csv << ["Smith", "Jenny", "Smith@email.com","emt", "firefighting", "coding", "robotics" ]
# end

