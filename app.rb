require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  'This is a secret page'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:cat_form)
end

post '/named-cat' do
  p params
  @name = params[:name]
  erb(:named)
end



set   :session_secret, "here be dragons"
