class ImageSearchEngine < Sinatra::Base
  get '/' do
    erb :'index'
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

    # @history = SearchHistory.create(date: params[:date], time: params[:time], noun: params[:noun], colour: params[:colour], http_response: params[:http_response])
    @history = SearchHistory.create(date: "params[:date]", time: 'params[:time]', noun: 'params[:noun]', colour: 'params[:colour]', http_response: 'params[:http_response]')

    erb :'search'
  end

  get '/search_history' do
    @history = SearchHistory.all
    erb :'search_history'
  end
end
