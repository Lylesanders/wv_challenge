require 'csv'

class Schedule #oh the irony
	# #class needs to pass three arrays
	# #first array is student_list
	# #second array is class_list
	# #third array is scheduled
	# # 3 variables will need to be passed into this program
	# # file_name which is the name of the file that stores the students choice file
	# # class_file which holds the class names and capacity

	attr_accessor :student_list, :class_list, :student, :scheduled, :top_five,:weight, :accum

	def initialize
	    @student_list = Array.new # handed off to randomizer to generate the student variable 
	    @class_list = Array.new # handed off to scheduler used to generate output in scheduled
		@top_five = Array.new(5,["a",0]) 
	    @student = student
	    @scheduled =Array.new
	    @weight = weight
	    @accum =accum
	end #initialize

	def master_student_list(file_name)
	@student_list = CSV.read(file_name) # this line moves csv file into customer array	
	#values are sent to randomizer

	end

	def master_class_list(class_file)
		@class_list = CSV.read(class_file)
	# https://www.sitepoint.com/guide-ruby-csv-library-part/
		a = @class_list.length
		(0..a-1).each do |b|
			c = @class_list[b][1].to_i
			@class_list[b][1] = c
	
		end
		return @class_list

	end # master_class list

	 def randomizer(student_list) # def randomizer(student_list, class_list) #

		a= @student_list.length
		pointer = rand(0..a-1)			
		@student = @student_list[pointer] 
		@student_list.delete_at(pointer)

		# scheduler(@student,@class_list)
		return @student # student is handed off to scheduler

	end #randomizer

def scheduler(student,class_list) # def scheduler(student,class_list,scheduled) #after testing
	output = []
	xdx = 0
	tracking = false


	@student.each_with_index do |lmnt,ndx|

		@class_list.each_with_index do |element,indx|
			
			if lmnt==element[0] and element[1]>0
				xdex = 5-ndx
				output =[@student[0],element[0],xdex]
				element[1] -=1
				tracking = true
				break
			end
		end
		if tracking == true
			break
		end
	end		

	#puts output.inspect
	output
	@scheduled.push output
	return @scheduled
end #scheduler

def weighted_schedule(scheduled)

	@weight = @scheduled.map(&:last).inject(:+)
	

 	return @weight
 end

 def compair_schedules?(top_five, weight)
	@weight > @top_five[4][1]
	# puts @weight.inspect
 end
 


def delete_bottom_schedule(top_five)

	to_delete = @top_five[4][0]
	puts to_delete
	#need to create folder and use path command to point at
	if File.exists?(to_delete)
		file.delete(to_delete)
	else
		puts "file #{to_delete} does not exist"
	end
end

def make_current_schedule(count_loop, scheduled)
	puts "here I am"
	a = count_loop.to_s
	b = "_schedule.csv"
	create_file_name =a+b
	puts create_file_name
	if File.exists?(create_file_name)
		File.delete(create_file_name)
		puts "uh oh elroy"
	end
	CSV.open(create_file_name, "w") do |csv|
		csv << @scheduled
	end
end
def update_top_five(count_loop,top_five,weight)

	a = count_loop.to_s
	b = "_schedule.csv"
	create_file_name =a+b
	@top_five[4] =[create_file_name, @weight]
	
end

def sort_top_five(top_five)
	@top_five = @top_five.sort_by(&:last)
	@top_five.each_with_index do |element,ndx|
		puts element.inspect
	end # each_with_index
end #sort top five


end #class schedule 
