class ChangeNameColumnTravel < ActiveRecord::Migration
  def change
    change_column :travels, :location_k, :float
  end

  #def down
  #  change_column :travels, :locatio_k, :float
  #end
end
