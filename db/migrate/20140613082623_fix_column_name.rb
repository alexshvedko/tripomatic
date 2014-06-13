class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :travels, :locatio_k, :location_k
  end

end
