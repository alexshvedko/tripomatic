class RemoveColumnsToTravel < ActiveRecord::Migration
  def up
    remove_column :travels, :location_place_A
    remove_column :travels, :location_place_k
  end

  def down
    add_column :travels, :location_place_k, :float
    add_column :travels, :location_place_A, :float
  end
end
