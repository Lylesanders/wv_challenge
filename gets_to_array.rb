#This code Below "Works", puts to console
puts """
Make Entrys, hitting return after each entry.\n
Enter: Student Name, email, and \"in order\" four most prefered classes.
When finished, hit enter in a blank space.
"""
array = []
input = ' '
while input != ''
  input = gets.chomp
  array.push input
  end

array.pop


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

