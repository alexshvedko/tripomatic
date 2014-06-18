class RenameColumnToTravels < ActiveRecord::Migration
  def change
    rename_column :travels, :user_city_id, :city_id
  end
end
