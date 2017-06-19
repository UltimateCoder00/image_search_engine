require 'data_mapper'
require 'dm-postgres-adapter'

require_relative 'models/...'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/image_search_engine_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
