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

  post '/' do
    return erb :submit
  end
end
