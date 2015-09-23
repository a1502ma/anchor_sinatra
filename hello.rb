require 'sinatra'

get '/' do
  "Hello AIIT!"
end

# win a car 
set(:probability) { |value| condition { rand <= value } }
get '/win_a_car', :probability => 0.3 do
  "win!!"
end

get '/win_a_car' do
  "loose!"
end

