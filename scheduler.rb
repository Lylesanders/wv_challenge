require 'csv'

class Schedule #oh the irony
	# #class needs to pass three arrays
	# #first array is student_list
	# #second array is class_list
	# #third array is scheduled
	# # 3 variables will need to be passed into this program
	# # file_name which is the name of the file that stores the students choice file
	# # class_file which holds the class names and capacity

	attr_accessor :student_list, :class_list, :student, :scheduled, :weight

	def initialize
	    @student_list = Array.new # handed off to randomizer to generate the student variable 
	    @class_list = Array.new # handed off to scheduler used to generate output in scheduled
	    @student = student
	    @scheduled =Array.new
	    @weight = weight

	end #initialize

	def master_student_list(file_name)
	@student_list = CSV.read(file_name) # this line moves csv file into array	
	#values are sent to randomizer

	end

	def master_class_list(class_file)
		@class_list = CSV.read(class_file)
	# https://www.sitepoint.com/guide-ruby-csv-library-part/
		#creates the class list to be used in the scheduler module
		#the following changes the second value into an intiger
		a = @class_list.length 
		(0..a-1).each do |b|
			c = @class_list[b][1].to_i 
			@class_list[b][1] = c
	
		end
		return @class_list

	end # master_class list

	 def randomizer(student_list) # selects a random student to send to scheduler #

		a= @student_list.length
		pointer = rand(0..a-1)			
		@student = @student_list[pointer] 
		@student_list.delete_at(pointer)

		return @student # student is handed off to scheduler

	end #randomizer

def scheduler(student,class_list) # def scheduler(student,class_list,scheduled) #after testing
	output = []
	xdx = 0
	tracking = false


	@student.each_with_index do |lmnt,ndx|

		@class_list.each_with_index do |element,indx|
			
			if lmnt==element[0] and element[1]>0
				xdex = @student.length-ndx
				# xdex is used to calcualte the total schedule score
				# the value will be lower as the students choices progress
				# down the list. Idealy the studenst first choice should return 
				# a score of 4 and the last choice should return 1				
				output =[@student[0],@student[1],element[0],xdex]
				# if changed to use a student number remvoe @student[1] from the line above
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

		b = scheduled.map(&:last).inject(:+)
		
		return b
 end

def make_current_schedule(make_file, scheduled)
	if File.exists?(make_file)
		File.delete(make_file)
	end
	CSV.open(make_file, "w") do |csv|
			scheduled.each_with_index do |element|			
				csv << element
			end #each with index do
	end
end

end #class schedule 