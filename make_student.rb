require 'csv'

def make_student_file(student_data)
#    puts student_data.inspect
    CSV.open('make_student.csv','a') do |csv|
        csv << student_data
    end
end
#**********
