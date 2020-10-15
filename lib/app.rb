require 'sinatra/base'

class Macros < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/results' do
        @name = params[:Name]
        p params
        params[:gender] == 'female' ? @gender = 'female' : @gender = 'male'
        erb :results
    end

    run! if app_file == $0
end