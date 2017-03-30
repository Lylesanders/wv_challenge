require 'sinatra'
require_relative 'make_student.rb'

get '/' do
	erb :landing_page
end


get '/post' do
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


post '/submit_form' do
	navi = params[:navi]
	fname = params[:user_fname]
	lname = params[:user_lname]
	first_choice = params[:user_fchoice]
    second_choice = params[:user_schoice]
   	third_choice = params[:user_tchoice]
    fourth_choice = params[:user_lchoice]
 erb:your_selection, :locals => {:navi => navi}
end