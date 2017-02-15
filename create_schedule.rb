require"csv"

def read_csv_file
	# old_class_file = file.open("classes.csv","r") #opens the list of available classes
	# class_file = "class_members.csv" # moves student names into the class from classes.csv
		CSV.foreach ("student.csv")do |row|
		puts row.inspect
	end
end

read_csv_file