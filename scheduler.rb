require 'csv'

class SCHEDULE #oh the irony
# #class needs to pass two arrays
# #first array is student_list
# #second array is class_list
# # 3 variables will need to be passed into this program
# # file_name which is the name of the file that stores the students choice file
# # class_file which holds the class names and capacity

attr_accessor :student_list

def initialize(student_list,class_list)
    @student_list = student_list
    @class_list =class_list
    @file_name = file_name
end #initialize

def read_student_csv_file(file_name)
@student_list = CSV.read(file_name) # this line moves csv file into customer array	
	return student_list
end

def check_file(student_list)
    a = student_list.length
    puts a
end #check_file

end #class :schedule

