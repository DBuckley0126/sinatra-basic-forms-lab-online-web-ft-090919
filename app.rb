require_relative 'config/environment'
require_relative 'models/puppy'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = params[:name]
    @breed = params[:breed]
    @age = params[:months_old]
    @new_puppy = Puppy.new(@name, @breed, @age)
    erb :display_puppy
  end

end
