#here we need input from user interface

#then we shove it into our array

#then we send array info to csv

require 'csv'
CSV.open("students1.csv", "w") do |csv|
  csv << ["David", "Jones", "Jones@email.com", "robotics", "emt", "firefighting", "coding"]
  csv << ["Smith", "Jenny", "Smith@email.com","emt", "firefighting", "coding", "robotics" ]
end