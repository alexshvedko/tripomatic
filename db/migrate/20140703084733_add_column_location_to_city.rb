class AddColumnLocationToCity < ActiveRecord::Migration
  def change
    add_column :cities, :location, :text
  end
end
