require_relative 'scheduler'

require_relative 'scheduler'
#(1..1000).each do |count_loop|
current_schedule = Schedule.new
file_name = "students_file.csv" # can be made dynamic
class_file = "classes.csv" # can be made dynamic
output_file = "foo.csv"
current_schedule.master_student_list(file_name)
current_schedule.master_class_list(class_file)
until current_schedule.student_list.length == 0 do 
	current_schedule.randomizer(@student_list) 
    current_schedule.scheduler(@student,@class_list)


end #until
