require 'csv'

class Schedule 

	attr_accessor :student_list, :class_list, :student

	def initialize
	    @student_list = Array.new # handed off to randomizer to generate the student variable 
	    @class_list = Array.new # handed off to scheduler used to generate output in scheduled	
	    @student = Array.new   
	end #initialize

	def student_list(file_name)
		@student_list = CSV.read(file_name) # this line moves csv file into customer array	
		#values are sent to randomizer
	end #student_list

	def class_list(class_file)

		@class_list = CSV.read(class_file)
		a = @class_list.length
		(0..a-1).each do |b|
			c = @class_list[b][1].to_i
			@class_list[b][1] = c	
		end #each
		return @class_list
	end # class list

	def student(student_list) # picks a random student or scheduling
		a= student_list.length
		pointer = rand(0..a-1)
		student = student_list[pointer] 
		student_list.delete_at(pointer)
	end #student



end #class