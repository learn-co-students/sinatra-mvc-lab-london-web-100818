require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      erb :user_input  
    end

    post '/piglatinize' do
        string = "#{params[:user_phrase]}"
        new_pig = PigLatinizer.new
        @new_pig = new_pig.piglatinize(string)
        erb :piglatinize
    end

end