require 'sinatra'


get '/' do
"Hello World"
end

get '/isbn_input' do
	erb :isbn_web, :locals => {:answer => ""}
end

post '/isbn_input' do
	isbn_input = params[:isbn_input]
	erb :isbn_web, :locals => {:answer => isbn_input}	
end