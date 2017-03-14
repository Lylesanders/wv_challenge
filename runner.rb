require_relative 'scheduler'


current_schedule = Schedule.new
file_name = "students_file.csv" # can be made dynamic
class_file = "classes.csv" # can be made dynamic

current_schedule.student_list(file_name)
current_schedule.class_list(class_file)
until current_schedule.student_list.length == 0 do 
	current_schedule.student(student_list) 
    current_schedule.student_schedule(student,class_list)

end #until
