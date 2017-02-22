require "sinatra"
require_relative "marv_isbn_app.rb"

get "/" do
	erb :get_isbn
end