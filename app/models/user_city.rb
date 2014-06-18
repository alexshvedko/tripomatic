class UserCity < ActiveRecord::Base
  belongs_to :user
  belongs_to :city
  has_many :points
  attr_accessible :city_id, :user_id, :point_id
end
