require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
        erb :user_input
    end

    post '/piglatinize' do
        text_from_user = params[:user_phrase]
        pig = PigLatinizer.new
        @pig = pig.piglatinize(text_from_user)
        erb :piglatinize
    end

end