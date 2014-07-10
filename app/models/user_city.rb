class UserCity < ActiveRecord::Base
  belongs_to :user
  belongs_to :city, dependent: :destroy
  has_many :points
  attr_accessible :city_id, :user_id

end
