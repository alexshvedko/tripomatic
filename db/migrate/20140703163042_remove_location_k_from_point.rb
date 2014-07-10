class RemoveLocationKFromPoint < ActiveRecord::Migration
  def up
    remove_column :points, :location_k
  end

  def down
    add_column :points, :location_k, :float
  end
end
