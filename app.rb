require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do
    erb :index
  end
  
  get '/new' do
    erb :create_puppy
  end
  
  post '/new' do
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    raise @puppy.inspect
    erb :display_puppy
  end

end