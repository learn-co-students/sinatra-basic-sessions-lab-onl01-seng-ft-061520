require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :session
    set :session_secret, 'nadav'
  end

  get '/' do
    erb :index
  end

  post "/checkout" do
  session[:item] = params[:item]
  @session = session
  erb :checkout
end
end
