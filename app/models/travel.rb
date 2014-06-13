class Travel < ActiveRecord::Base
  belongs_to :user
  attr_accessible :icon, :location_k, :location_a, :name, :phone_number, :rating, :website
end
