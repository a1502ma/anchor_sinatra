require 'sinatra'

get '/' do
  "Hello AIIT!<br>" +
  "<a href='win_a_car'>Win a Car</a>"
end

# win a car
set(:probability) { |value| condition { rand <= value } }
get '/win_a_car', :probability => 0.3 do
  "win!!<br>" +
  "<input type='button' value='もう一回！' onclick='location.reload();' /><br>" +
  "<a href='..'>戻る</a>"
end

get '/win_a_car' do
  "loose!<br>" +
  "<input type='button' value='もう一回！' onclick='location.reload();' /><br>" +
  "<a href='..'>戻る</a>"
end
