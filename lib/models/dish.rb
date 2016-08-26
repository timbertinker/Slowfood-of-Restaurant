require 'data_mapper'


class Dish
  include DataMapper::Resource

  property :id, Serial, key: true
  property :name, String
  property :price, Integer
  property :category, String
end
