class SearchHistory

  include DataMapper::Resource

  property :id,                Serial
  property :date,              String
  property :time,              String
  property :noun,              String
  property :colour,            String
  property :http_response,     String

end
