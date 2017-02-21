require"csv"

def read_student_csv_file(file_name)
student_list = CSV.read(file_name) # this line moves csv file into customer array

	
	#return student_list
	student_randomizer(student_list)	

end

def student_randomizer(student_list)
	
	puts"student randomizer"
	a = student_list.length
until a == 0 do
		a=student_list.length
		pointer = rand(0..a)
		#puts student_list[pointer]
		#student = student_list[pointer]
		#at this point pass random sutudent to scheduling
		student_list.delete_at(pointer)
		a = student_list.length
	
		puts "line 25 array size = #{a}"
		#puts student_list.length
	end #whilee
end #student_randomizer

def scheduling(student)
if student[1] =="1" 
	puts "coding"	
	
	elsif student[2]== "1"
	puts "robotics"
	elsif student[3] =="1"
	puts "fire-fighting"
	else
	puts"emt"
	end
end

def load_classes(class_file)
	classes = CSV.read(class_file)
	#puts "  line 45 #{classes.length}"
end #load_classes


student_list = []
puts "beginning"
# file_name ='students_file.csv'
file_name='student.csv'
class_file = 'classes.csv'
load_classes(class_file)
read_student_csv_file(file_name)
puts "at controll student list length = #{student_list.length}"
student_randomizer(student_list)
