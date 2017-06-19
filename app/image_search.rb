class ImageSearchEngine < Sinatra::Base
  get '/' do
    erb :'index'
  end

  post '/search' do
    erb :'search'
  end

  get '/search' do
    @colour = params[:colour]
    erb :'search'
  end
end
