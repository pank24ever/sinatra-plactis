require 'sinatra'
require 'sinatra/reloader'

get '/' do
  'Hello world!!!!!!!!!'
end
  
get '/hello' do 
  name = params[:name] 
  'Hello' + " "  + name
end

get '/user/:name' do 
  name = params[:name] 
  "<h1>Hello,#{name}</h1>"
end


get '/time' do 
  Time.now.to_s
end