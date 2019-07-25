require 'sinatra'
require 'sinatra/reloader'
require 'erb'

set :public_folder, 'public'

get '/' do
  @player = '勇者'
  erb :players_menu
end
  
get '/hello' do 
  name = params[:name] 
  'Hello' + " "  + name
end

get '/user/:name' do
  @name = params[:name]
  @time = Time.now
  @players = ["戦士","勇者","剣士"]
  erb :hello
end

get '/time' do 
  Time.now.to_s 
end

get '/walk' do
  @player = "勇者"
  @message = "#{@player}は荒野を歩いていた"
end

