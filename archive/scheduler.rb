require 'csv'

class Schedule 

	






	attr_accessor :students_list, :class_list, :student, :students_schedule

	def initialize
	    @students_list = Array.new # handed off to randomizer to generate the student variable 
	    @class_list = Array.new # handed off to scheduler used to generate output in scheduled	
	    @student = Array.new   
	    @students_schedule = Array.new
	


	end #initialize


	def student_list(file_name)
		puts "student_list"
		students_list = CSV.read(file_name) # this line moves csv file into customer array	
		
		#values are sent to randomizer

	# return student_list

	

	end #student_list

	def class_list(class_file)
		puts "class_list"
		@class_list = CSV.read(class_file)
		#creates the class list to be used in the scheduler module
		#the following changes the second value into an intiger
			a = @class_list.length
		(0..a-1).each do |b|
			c = @class_list[b][1].to_i
			@class_list[b][1] = c
	
		end
		puts @class_list.length
		return @class_list

	end # class list

	def student(students_list) # picks a random student or scheduling
		puts "student"
		puts @students_list.length
		a= @students_list.length
		pointer = rand(0..a-1)
		@student = @students_list[pointer] 
		@students_list.delete_at(pointer)
		return @student
	end #student

	

	def student_schedule(student,class_list)
		puts "student_schedule"

		output = []
		xdex = 0
		tracking = false
		# puts student.inspect

			@student.each_with_index do |lmnt,ndx|
				
				@class_list.each_with_index do |element, indx|

					if lmnt==element[0] and element[1]>0
						xdex = @student.length - ndx
						# xdex is used to calcualte the total schedule score
						# the value will be lower as the students choices progress
						# down the list. Idealy the studenst first choice should return 
						# a score of 4 and the last choice should return 1
					output =[@student[0],@student[1],element[0],xdex.to_i]

					element[1] -=1
					tracking = true
				
					break # break class_list .each_with index do
				end #if
			end #class_list.each with index
			if tracking == true
				break
			end #if
		end # student.each_with_index
		puts output.inspect

		@students_schedule.push output	
##########################################################
@students_schedule.each_with_index do |lemnt|
	puts lemnt.inspect
end
########################################################333


		return @students_schedule			
	end

	def schedule_score(students_schedule)
		puts "schedule_score"

		b = students_schedule.map(&:last).inject(:+)
		
		return b

	end #schedule_score


	def output_schedule(make_file,students_schedule)
		puts "output_schedule"

		if File.exists?(make_file)
			File.delete(make_file)
		end

		CSV.open(make_file,"a") do |csv|
			@students_schedule.each_with_index do |element|
				csv << element
			end #each with index do
		end

	end #output schedule


end #class