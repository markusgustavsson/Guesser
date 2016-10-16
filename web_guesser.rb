require 'sinatra'
require 'sinatra/reloader'

number = rand(99)

def check_guess(x, y)
 if x.to_i > y.to_i
  "guess is too high"
  elsif y.to_i > x.to_i
   "guess is too low"
  else 
   "correct"
  end
end


get '/' do
guess = params["guess"].to_i
message = check_guess(guess, number)
  erb :index, :locals => {:number => number, :message => message}
end
