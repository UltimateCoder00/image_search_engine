require "benchmark"

class ImageSearchEngine < Sinatra::Base
  get '/' do
    erb :'index'
  end

  get '/search' do
    time = Benchmark.measure do
      @colour = params[:colour]
      @result = RandomWord.new.result
      @list = CSV.new(File.new(Dir.pwd + '/app/url_list.csv')).to_a.flatten
      @image_urls = []

      for i in 0...5
        @list.shuffle!
        @image_urls << @list.pop
        @list.pop
      end
    end

    time = (time.real)*1000

    @history = SearchHistory.create(date: "#{Time.new.strftime("%d/%m/%Y")}", time: "#{Time.new.strftime("%H:%M:%S")}", noun: "#{@result}", colour: "#{@colour}", http_response: "#{time}")

    erb :'search'
  end

  get '/search_history' do
    @history = SearchHistory.all
    erb :'search_history'
  end

  get '/previous_search' do
    @history = SearchHistory.all
    @colour = 1
    @result = 1
    @image_urls = 1
    erb :'previous_searchs'
  end

end
