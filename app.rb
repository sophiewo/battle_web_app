require 'sinatra'

class Battle < Sinatra::Base


  get '/' do
    erb(:form)
  end

  post '/names' do
    @player_1 = params(:player_1)
    @player_2 = params(:player_2)
    erb(:names)
  end
end
