require 'sinatra'


get '/' do
  'Hello'
end

get '/secret' do
  "You're not supposed to be here"
end

get '/moss' do
  "Nice terrarium there"
end

get '/terrarium' do
  'Nice moss there'
end

get '/no_save' do
  'This wont load'
end

get '/random-cat' do
  random_name
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

def random_name
  @name = ["Amigo", "Oscar", "Viking"].sample
end
