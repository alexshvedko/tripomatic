class Point < ActiveRecord::Base
  belongs_to :user_city
  belongs_to :user
  belongs_to :city
  attr_accessible :icon, :location_k, :location_a, :name, :phone_number, :rating, :website, :user_city_id
end
