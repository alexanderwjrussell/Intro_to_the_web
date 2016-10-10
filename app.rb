require 'sinatra'

get '/' do
  "hello!"
end

get '/secret' do
  'This is a secret page'
end

get '/cat' do
  erb(:index)
end

set   :session_secret, "here be dragons"
