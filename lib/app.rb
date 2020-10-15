require 'sinatra/base'

class Macros < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/results' do
        @name = params[:Name]
        p params
        @gender = 'female' if params[:female] == 'on' 
        @gender = 'male' if params[:male] == 'on'
        erb :results
    end

    run! if app_file == $0
end