require 'csv'

class Schedule #oh the irony
	# #class needs to pass three arrays
	# #first array is student_list
	# #second array is class_list
	# #third array is scheduled
	# # 3 variables will need to be passed into this program
	# # file_name which is the name of the file that stores the students choice file
	# # class_file which holds the class names and capacity

	attr_accessor :student_list, :class_list, :student, :scheduled

	def initialize
	    @student_list = student_list # handed off to randomizer to generate the student variable 
	    @class_list =class_list # handed off to scheduler used to generate output in scheduled
	    @student = student
	    @scheduled =scheduled
	end #initialize

	def master_student_list(file_name)
	@student_list = CSV.read(file_name) # this line moves csv file into customer array	
	#values are sent to randomizer

	end

	def master_class_list(class_file)
		@class_list = CSV.read(class_file)

		return @class_list

	end # master_class list

	def randomizer(student_list)

		a= @student_list.length
		pointer = rand(0..a-1)			
		@student = @student_list[pointer] 
		@student_list.delete_at(pointer)
		return @student # student is handed off to scheduler

	end #randomizer

def scheduler(student,class_list) # scheduler(student,class_list,scheduled) #after testing
	output = []
	tracking = false

	@student.each_with_index do |lmnt,ndx|
		@class_list.each_with_index do |element,indx|
			if lmnt==element[0] and element[1]>0
				output =[student[0],element[0],ndx]
				element[1] -=1
				puts element[1]
				tracking = true
				break
			end
		end
		if tracking == true
			break
		end
	end		

	puts output.inspect
	# @scheduled << output
end #scheduler



end #class schedule 
