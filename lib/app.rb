require 'sinatra/base'

class Macros < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/results' do
        @name = params[:Name]
        p params
        params[:gender] == 'female' ? @gender = 'female' : @gender = 'male'
        @age = params[:age].to_i
        @height = params[:height].to_i
        @weight = params[:weight].to_i
        if @gender == 'female'
            @bmr = 655.1 + (0.563 * @weight) + (1.85 * @height) - (4.676 * @age)
        else
            @bmr = 66.47 + (13.75 * @weight) + (5.003 * @height) - (6.755 * @age)
        end
        @tdee = (@bmr * 1.375).round

        erb :results
    end

    run! if app_file == $0
end