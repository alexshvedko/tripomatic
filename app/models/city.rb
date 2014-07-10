class City < ActiveRecord::Base
  has_many :user_cities
  has_many :users, :through => :user_cities
  has_many :points, :through => :user_cities
  attr_accessible :name, :location
  serialize :location, Hash
end
