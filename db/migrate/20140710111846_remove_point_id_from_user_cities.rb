class RemovePointIdFromUserCities < ActiveRecord::Migration
  def up
    remove_column :user_cities, :point_id
  end

  def down
    add_column :user_cities, :point_id, :integer
  end
end
