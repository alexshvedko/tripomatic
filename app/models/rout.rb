class Rout < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  attr_accessible :address, :description, :latitude, :longitude, :title, :user_id
end
