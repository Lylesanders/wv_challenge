require 'csv'

class Schedule 

def student_list(file_name)
	@student_list = CSV.read(file_name) # this line moves csv file into customer array	
	#values are sent to randomizer
end

	end