require 'rubygems'
require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require './models/model'
#require 'sinatra/reloader' if development?

get '/' do
  erb :home
end

post '/submit' do
  @model = Model.new(params[:model])
  if @model.save
    redirect '/models'
  else
    "Sorry, there was an error!"
  end
end

get '/models' do
  @models = Model.all
  erb :models
end