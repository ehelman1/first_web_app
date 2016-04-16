require 'sinatra'
require_relative "isbn.rb"

get '/' do
"Hello World"
end

get '/isbn_input' do
	erb :isbn_web, :locals => {:answer => ""}
end

post '/isbn_input' do
	input = params[:isbn_input]
	answer = valid_isbn?(input)
	if answer == false		
		erb :isbn_web, :locals => {:answer => "This is not a valid ISBN"}
	else answer == true
		erb :isbn_web, :locals => {:answer => "This is a valid ISBN"}
	end
end

