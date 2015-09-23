require 'sinatra'
require 'date'

get '/' do
  "Hello AIIT!"
end

day = Date.today
p day.to_s

# win a car 
set(:probability) { |value| condition { rand <= value } }
get '/win_a_car', :probability => 0.3 do
  "win!!"
end

get '/win_a_car' do
  "loose!"
end

