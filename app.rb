require_relative 'config/environment'
require relative ‘models/piglatinizer.rb

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    
    @piglatin = PigLatinizer.new.piglatinize(params[:user_input])
    
    erb :piglatinize
  end
  
end