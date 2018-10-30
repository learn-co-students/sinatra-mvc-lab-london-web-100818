require_relative 'config/environment'

class App < Sinatra::Base

    get '/' do
      "Pig Latinizer!"
      erb :user_input
    end

   post '/piglatinize' do
     @user_text = PigLatinizer.new
     @result=@user_text.piglatinize(params[:user_phrase])
     erb :piglatinize
   end


end
