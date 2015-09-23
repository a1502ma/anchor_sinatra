require 'sinatra'

get '/' do
  "Hello AIIT!<br>" +
  "<a href='win_a_car'>Win a Car</a>"
end

# win a car
set(:probability) { |value| condition { rand <= value } }
get '/win_a_car', :probability => 0.3 do
  "win!!<br>" +
  "<a href='..'>Back</a>"
end

get '/win_a_car' do
  "loose!<br>" +
  "<a href='..'>Back</a>"
end
