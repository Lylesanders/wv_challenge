# app.rb
require 'sinatra'
require_relative 'make_student.rb'


target = target_number
rounds = 10
results = ""
guess = nil

def reset
    target = target_number
    rounds = 10
    results = ""
    guess = nil
end #reset


    puts target
    get '/'do
        erb :get_name
    end

    post '/users_name' do
        name = params[:user_name]
        redirect '/guess?user_name=' + name
    end

    get '/guess' do
        name = params[:user_name].capitalize
        erb:get_number, :locals =>{:name => name, :rounds => rounds, :results => results, :guess => guess}
    end

    post '/guess' do
        name = params[:user_name].capitalize
        guess = params[:guess]
        results = compare_guess(guess, target)
        rounds = guess_counter(rounds)
        if results =="correct"
            name = params[:user_name]
            guess = params[:guess]
            erb :correct_guess, :locals =>{ :name => name,  :guess => guess}
            elsif rounds == 0
                "you have used all of your guesses. The number was #{target}."
            else
                erb :get_number, :locals => {:name => name, :rounds => rounds, :results => results, :guess => guess}
        end #if
        
    end # post
    post '/play_again' do
              name = params[:user_name]
           # erb:play_again, :locals => {:name => name, :rounds => rounds, :results => results, :guess => guess}
                redirect'/replay?user_name=' + name
     end

     get '/replay' do
        name = params[:user_name].capitalize
        erb:play_again, :locals =>{:name => name}
    end
   
    # post '/replay' do
    #     name = params[:user_name].capitalize
    #     play_again = params[:play_again]
    #     # if play_again == "n"
    #     # #     play = no
    #     #     "good bye"
    #     #  end #if
    #     end #post
    post'/replay' do
        "hello world"
     end