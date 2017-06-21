class ImageSearchEngine < Sinatra::Base
  get '/' do
    erb :'index'
  end

  post '/search' do
    erb :'search'
  end

  get '/search' do
    @colour = params[:colour]
    @result = RandomWord.new.result
    @list = CSV.new(File.new(Dir.pwd + '/app/url_list.csv')).to_a.flatten
    @image_urls = []

    for i in 0...5
      @list.shuffle!
      @image_urls << @list.pop
      @list.pop
    end
    erb :'search'
  end
end
