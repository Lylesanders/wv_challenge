# def scheduler(student,class_list)
# 	output = []
# 	tracking = false

# 	student.each_with_index do |lmnt,ndx|
# 		class_list.each_with_index do |element,indx|
# 			if lmnt==element[0] and element[1]>0
# 				output =[student[0],element[0],ndx]
# 				element[1] -=1
# 				puts element[1]
# 				tracking = true
# 				break
# 			end
# 		end
# 		if tracking == true
# 			break
# 		end
# 	end		

# 	puts output.inspect
# end #scheduler

class Search

	attr_accessor :student, :class_list

	def initialize
		@student = student
		@class_list = class_list
	end

	def scheduler(student,class_list)
		output =[]
		tracking = false
		# mover = @student.length
		# shaker = @class_list.length
		(1..4).each do |mover|
			lmnt = student[mover]
			(0..3).each do |shaker|
				element = class_list[shaker]
				if lmnt==element[0] and element[1]>0
					output =[student[0],element[0],mover]
					element[1] -=1
					puts element[1]
					tracking = true
					break
				end #if
			end #shaker
		
		if tracking == true
			break
		end #if
	end	#shaker

	puts output.inspect	
	end #scheduler


	end #class

runner = Search.new
class_list = [["coding", 12],["robotics",10],["fire_fighting",15],["emt",22]]
student = ["Clarisa Darling","emt","robotics","fire_fighting","coding"]
runner.scheduler(student,class_list)