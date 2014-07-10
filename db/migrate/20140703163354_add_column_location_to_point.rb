class AddColumnLocationToPoint < ActiveRecord::Migration
  def change
    add_column :points, :location, :text
  end
end
