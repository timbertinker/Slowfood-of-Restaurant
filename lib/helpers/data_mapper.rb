
env = ENV['RACK_ENV'] || 'development'
DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://postgres:postgres@localhost/slowfood_v1_#{env}")
DataMapper::Model.raise_on_save_failure = true
DataMapper.finalize
DataMapper.auto_upgrade!
