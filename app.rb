require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
    binding.pry
    erb :checkout
  end

  get '/checkout' do
    erb :index
  end
end
