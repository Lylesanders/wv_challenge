require"csv"


# class :sCHEDULE

# attr_accessor :student_list, :classes, :student_schedule

# def initialize
# 	@student_list = Array.new
# 	@classes = Array.new
#	@student_schedule = Array.new
# end


def read_student_csv_file(file_name)
student_list = CSV.read(file_name) # this line moves csv file into customer array

	
	#return student_list
	student_randomizer(student_list)	

end

def student_randomizer(student_list)
	

	a = student_list.length
until a == 0 do
		a=student_list.length
		pointer = rand(0..a-1)
		
		student = student_list[pointer]
		
		scheduling(student)
		student_list.delete_at(pointer)
		a = student_list.length
		if a == 1
			student = student_list[0]
		end
		

	end # until
end #student_randomizer

def scheduling(student)
if student[1] =="1" 	
	pass_on = [student[0], "coding"]	
	elsif student[2]== "1"
	pass_on = [student[0], "robotics"]
	elsif student[3] =="1"
	pass_on = [student[0], "fire-fighting"]
	else
	pass_on = [student[0], "emt"]
	end

#hard coding array to get section working
#coding will be removed when running normally
# classes = [["codeing","26"],["robotics","12"],["fire_fighting","30"],["emt","15"]]

# classes.each do |row|
# 	if student[row] == "1"
# 	#and classes[row] class slots not0
# 	course = classes[row]
# 	end
# 	pass_on=[student[0],course]
# 	#classes[row]-=1 # 
# 	puts pass_on
# 	end

file_write(pass_on)
end

def load_classes(class_file)
	classes = CSV.read(class_file)

end #load_classes
def file_write(pass_on)
	
	CSV.open("student1.csv", "a") do |csv|
		csv << pass_on

	end
end # file_write

# end #class

