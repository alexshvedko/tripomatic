class AddColumnsToTravel < ActiveRecord::Migration
  def change
    add_column :travels, :location_place_A, :float
    add_column :travels, :location_place_k, :float
  end
end
