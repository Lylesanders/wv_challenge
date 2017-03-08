require "sinatra"

#landing page

get "/" do
	erb :landing_page
end
# post '/landing_page' do
	
# 	erb :student_form
# end

get '/post' do
	# "hello world"
	erb :student_form2
end

post '/users_fname' do
	fname = params[:fname]
	lname = params[:lname]
	first_choice =[:first_choice]
    second_choice =[:second_choice]
   	third_choice =[:second_choice]
    fourth_choice =[:fourth_choice]


	erb:thank_you, :locals =>{:fname => fname}
end