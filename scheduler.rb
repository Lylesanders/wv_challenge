require 'csv'

class Schedule 

	attr_accessor :student_list, :class_list

	def initialize
	    @student_list = Array.new # handed off to randomizer to generate the student variable 
	    @class_list = Array.new # handed off to scheduler used to generate output in scheduled	   
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



end #class