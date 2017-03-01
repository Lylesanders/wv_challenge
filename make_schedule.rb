require_relative 'scheduler'
#(1..1000).each do |count_loop|
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

#finishing parts of schedule include comparing weighted schedule and create csv files
current_schedule.compair_schedule?(@top_five,@weight)
#if current_schedule.compair_schedule == true
	# delete bottom schedule.csv file
	# replace bottom schedul with current scuedule(loop_count_schedule.csv)
	# write scheduled to csv file
	# sort top_five on top_five[x][1]
	#end #if
#end count_loop