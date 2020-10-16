require 'sinatra/base'
require_relative 'views/person'
require_relative 'views/calculator'

class Macros < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/results' do
        if !params[:Name] || !params[:gender] || !params[:age] || !params[:height] || !params[:weight]
            @errorMessage = "All fields are required"
            erb :index
        else
            @person = Person.new(params[:Name], params[:gender], params[:age].to_i, params[:height].to_i, params[:weight].to_i)
            @calculator = Calculator.new(@person)
            erb :results
        end
    end

    run! if app_file == $0
end