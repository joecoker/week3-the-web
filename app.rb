require 'sinatra'

get '/' do
  "Hello!"
end

get '/secret' do
  "Goodbye"
end

get '/mission' do
  "James"
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end

get '/cat-naming' do
  erb(:index)
end
