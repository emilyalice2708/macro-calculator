require 'sinatra/base'

class Macros < Sinatra::Base
    get '/' do
        "Calculator"
    end

    run! if app_file == $0
end