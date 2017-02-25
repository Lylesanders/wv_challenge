#require "CSV"

 require_relative"scheduler.rb"
student_list = Array.new
classes = Array.new
student_schedule =Array.new

file_name ='students_file.csv'
#file_name='student.csv'
class_file = 'classes.csv'
load_classes(class_file)
read_student_csv_file(file_name)
# pass_on = "hi"
# file_write(pass_on)