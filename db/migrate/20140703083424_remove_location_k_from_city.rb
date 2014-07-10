class RemoveLocationKFromCity < ActiveRecord::Migration
  def up
    remove_column :cities, :location_k
  end

  def down
    add_column :cities, :location_k, :float
  end
end
