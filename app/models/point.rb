class Point < ActiveRecord::Base
  belongs_to :user_city
  belongs_to :user
  belongs_to :city
  attr_accessible :icon, :name, :phone_number, :rating, :website, :user_city_id, :location, :url
  serialize :location, Hash
  after_destroy :remove_user_city

  def remove_user_city()
    #debugger
    if self.user_city.points.size.zero?
      self.user_city.destroy
    end
  end
end
