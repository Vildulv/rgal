require 'sinatra'
require 'sinatra/reloader' if development?

get '/index' do
  "hello"
end