class RemoveLocationAFromCity < ActiveRecord::Migration
def change
  remove_column :cities, :location_a
end
end
