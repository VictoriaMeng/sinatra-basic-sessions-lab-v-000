require_relative 'config/environment'

configure do
  enable :sessions
  set :session_secret, "secret"
end

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/checkout' do
    @session = session
  end

  # get '/checkout' do 
  #   session["item"]
  # end
end
