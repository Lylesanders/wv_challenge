require_relative 'scheduler'

current_schedule = Schedule.new
file_name = "student_file2.csv" # can be made dynamic
class_file = "classes.csv" # can be made dynamic
output_file = "foo.csv"
current_schedule.master_student_list(file_name)
current_schedule.master_class_list(class_file)
until current_schedule.student_list.length == 0 do 
	current_schedule.randomizer(@student_list) #current_schedule.randomizer(@student_list, @class_list) # 
	current_schedule.scheduler(@student,@class_list)
end # until loop
current_schedule.weighted_schedule(@scheduled)


# student = ["Clarisa Darling","emt","robotics","fire_fighting","coding"]

# scheduler(student,class_list)