require_relative 'scheduler'
#(1..1000).each do |count_loop|
current_schedule = Schedule.new
file_name = "new_student_file.csv" # can be made dynamic
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
#current_schedule.compair_schedules?(@top_five,@weight)
if current_schedule.compair_schedules?(@top_five, @weight) == true
	# puts "Halalughia"

	current_schedule.delete_bottom_schedule(@top_five)	
	current_schedule.make_current_schedule(1, @scheduled)
	# write scheduled to csv file
	# sort top_five on top_five[x][1]
	current_schedule.update_top_five(1,@top_five,@weight)
	current_schedule.sort_top_five(@top_five)
	# else 
	# 	puts "Lord"
	end #if
#end count_loop