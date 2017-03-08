require "sinatra"
require_relative 'make_student.rb'

student_data = Array.new

#landing page

get "/" do
	erb :landing_page
end
# post '/landing_page' do
	
# 	erb :student_form
# end

get '/post' do
	# "hello world"
	erb :student_form3
end

post '/users_fname' do
	fname = params[:fname]
	lname = params[:lname]
	first_choice = params[:first_choice]
    second_choice = params[:second_choice]
   	third_choice = params[:third_choice]
    fourth_choice = params[:fourth_choice]


	erb:thank_you, :locals =>{:fname => fname, :lname => lname, :first_choice => first_choice, :second_choice => second_choice, :third_choice => third_choice, :fourth_choice => fourth_choice}
end

get '/student_form' do
	submit_form = params[:submit_form]
	if submit_form == "YES"
		puts "\a"
		erb :landing_page
		# student_data = [fname,lname,first_choice,second_choice,third_choice,fourth_choice]
		# make_student_file(student_data)
		# erb :landing_page
	else 
		redirect'/:student_form2'
	end
end
