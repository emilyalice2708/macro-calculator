require 'sinatra/base'

class Macros < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/results' do
        @name = params[:Name]
        erb :results
    end

    run! if app_file == $0
end