require './config/environment'
require './app/models/hallway'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end

  get '/frontswipe'  do
    return erb :frontswipe
  end
  
  post '/' do
    @name = params[:name]
    @classroom = params[:room]
    return erb :submit
  end
end
