class RenameColumnUsercityIdToPoint < ActiveRecord::Migration
def change
  rename_column :points, :usercity_id, :user_city_id
end
end
