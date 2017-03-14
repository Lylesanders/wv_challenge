require 'csv'

class Schedule 

	attr_accessor :student_list, :class_list, :student, :students_schedule

	def initialize
	    @student_list = Array.new # handed off to randomizer to generate the student variable 
	    @class_list = Array.new # handed off to scheduler used to generate output in scheduled	
	    @student = Array.new   
	    @students_schedule = Array.new
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

	def student_schedule(student,class_list)
		output = []
		xdex = 0
		tracking = false
		# puts student.inspect

			student.each_with_index do |lmnt,ndx|
				
				class_list.each_with_index do |element, indx|

					if lmnt==element[0] and element[1]>0
						xdex = student.length - ndx
					output =[student[0],student[1],element[0],xdex.to_i]

					element[1] -=1
					tracking = true
				
					break # break class_list .each_with index do
				end #if
			end #class_list.each with index
			if tracking == true
				break
			end #if
		end # student.each_with_index

		@students_schedule.push output	

		return @students_schedule			
	end

	def grand_score(students_schedule)

		b = students_schedule.map(&:last).inject(:+)
		
#		@weight = @scheduled.map(&:last).inject(:+)
		return b

	end #grand_score


end #class