require_relative 'scheduler'

current_schedule = Schedule.new
file_name = "student_file2.csv" # can be made dynamic
current_schedule.master_student_list(file_name)
class_file = "classes.csv" # can be made dynamic
current_schedule.master_class_list(class_file)
until current_schedule.student_list.length == 0 do 
	current_schedule.randomizer(@student_list) #current_schedule.randomizer(@student_list, @class_list) # 
	puts @student.inspect
	current_schedule.scheduler(@student,@class_list)
end # until loop
# student = ["Clarisa Darling","emt","robotics","fire_fighting","coding"]

# scheduler(student,class_list)