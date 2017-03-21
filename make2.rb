require_relative 'scheduler'

student_list=[]
#currently this program is set up to make 1 schedule in an array that can be written to a CSV file
# the section of code that follows will be in another loop that will generate the schedule 1000 times
#the schedule that is generated will be compared by a scoring system that will keep only 5 of the 1000 schedules
# If the current_schedule is one of the top 5 values then a filename will be generated and the array will be 
#read into a cswv file.
#if it isn't one of the top 5 schedules then the program will generate another current_schedule
#If after being writen, another schedule pushes it out of the top 5 then it will be deleted and
#the new schedule will be save as part of the top 5


current_schedule = Schedule.new

file_name = "new_student_file.csv"
#this is the test file with 106 entries for "students" and sill need to be changed for the final program
class_file = "classes.csv"
# this file will need to have an editor somewhere else. This is the perminant filename 
#@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ this section will be inside another loop
current_schedule.student_list(file_name) #opens the students file and reads it into memory as student_list
current_schedule.class_list(class_file) # reads the class list and enrollment numbers into memory as class_list

until current_schedule.students_list ==0
	current_schedule.student(student_list)
	current_schedule.students_schedule(student,class_list)
 end
 