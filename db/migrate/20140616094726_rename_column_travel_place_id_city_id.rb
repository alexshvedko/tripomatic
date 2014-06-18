class RenameColumnTravelPlaceIdCityId < ActiveRecord::Migration
def change
  rename_column :travels, :place_id, :city_id
end
end
