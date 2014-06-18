class AddPointIdToUserCity < ActiveRecord::Migration
  def change
    add_column :user_cities, :point_id, :integer
  end
end
