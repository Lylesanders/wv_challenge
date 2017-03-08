require 'csv'

def make_student_file(student_data)
    puts student_data.inspect
    CSV.open('make_student.csv','w') do |csv|
        csv << student_data
    end
end
#**********
student_data = ["McNeeley","Jaimie","Fire_fighting","EMT","Coding","Robotics"]
make_student_file(student_data)