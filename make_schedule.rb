require_relative 'scheduler'

current_schedule = Schedule.new
file_name = "students_file.csv"
current_schedule.master_student_list(file_name)
class_file = "classes.csv"
current_schedule.master_class_list(class_file)
until current_schedule.student_list.length == 0 do 
	current_schedule.randomizer(@student_list)
	print "scheduling #{current_schedule.student} \n"
end # until loop
# student = ["Clarisa Darling","emt","robotics","fire_fighting","coding"]
# current_schedule.scheduler(student,@class_list)
scheduler(student,class_list)