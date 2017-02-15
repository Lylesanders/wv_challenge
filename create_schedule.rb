require"csv"

def read_student_csv_file(student_array)
	# old_class_file = file.open("classes.csv","r") #opens the list of available classes
	# class_file = "class_members.csv" # moves student names into the class from classes.csv
		#student_array =[]
		CSV.foreach ("student.csv")do |row|
		student_array << row
	end
	# student_array= Array.new
	# student_array = CSV.parse("student.csv")
	
end
student_array= Array.new
read_student_csv_file(student_array)

# c = student_array.count
# puts c
puts student_array[1]
puts student_array[0]
