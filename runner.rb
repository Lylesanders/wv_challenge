#require "CSV"

require_relative"create_schedule.rb"
student_list = Array.new
# puts "beginning"
#file_name ='students_file.csv'
file_name='student.csv'
class_file = 'classes.csv'
load_classes(class_file)
read_student_csv_file(file_name)
check_file(student_list)
#puts "at controll student list length = #{student_list.length}"
#student_randomizer(student_list)