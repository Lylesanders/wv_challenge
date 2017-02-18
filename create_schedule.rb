require"csv"

def read_student_csv_file(file_name)

	CSV.foreach(file_name) do |row|# reads the csv line by line
	puts"PROCESSING..."
    #puts row.inspect  
	puts row[0]	  
	puts row[1]
	puts row[2]
	puts row[3]
	puts row[4]
	end
	
end
student_array= Array.new
file_name ='students_file.csv'
read_student_csv_file(file_name)

