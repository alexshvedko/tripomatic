class RemoveLocationAFromPoint < ActiveRecord::Migration
  def up
    remove_column :points, :location_a
  end

  def down
    add_column :points, :location_a, :float
  end
end
