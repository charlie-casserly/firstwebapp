require 'sinatra'
require "sinatra/reloader" if development?

get '/random-cat' do
  @name = ["Amigo", "Misty", "Almond"].sample
  erb(:index)
end

get '/named-cat' do
  params[:name] == nil || params[:name] == ''  ? @name = 'Charlie' : @name = params[:name]
  erb(:index)
end
