require './environment'
require 'pry'
module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here

    get '/' do 
      erb :root
    end

    get '/new' do
      erb :'/pirates/new'
    end

    post '/pirates' do
      # binding.pry
      @pirate = Pirate.new(params[:pirate][:name],params[:pirate][:weight],params[:pirate][:weight])
      @ship1 = Ship.new(params[:pirate][:ships][0][:name],params[:pirate][:ships][0][:type],params[:pirate][:ships][0][:booty])
      @ship2 = Ship.new(params[:pirate][:ships][1][:name],params[:pirate][:ships][1][:type], params[:pirate][:ships][1][:booty])
      
      erb :'/pirates/show'
    end
  end
end
