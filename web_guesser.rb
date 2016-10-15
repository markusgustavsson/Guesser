require 'sinatra'
require 'sinatra/reloader'

get '/' do
  "The SECRET NUMBER is #{rand(99)}"
end