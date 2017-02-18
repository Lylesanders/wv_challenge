require"csv"

def read_student_csv_file(file_name)

	CSV.foreach(file_name) do |row|# reads the csv line by line
    puts row.inspect    
	puts row[1]
	puts row[2]
	puts row[3]
	puts row[4]
	puts row[0]
	end
	
end
student_array= Array.new
file_name ='megan_smith.csv'
read_student_csv_file(file_name)

c = student_array.count
puts c
puts student_array[1]
puts student_array[0]
