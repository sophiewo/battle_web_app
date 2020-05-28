require 'sinatra'

class Battle < Sinatra::Base


  get '/' do
    erb(:form)
  end

  post '/names' do
    
  end
end
