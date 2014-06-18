class AddColumnToTravel < ActiveRecord::Migration
  def change
    add_column :travels, :place_id, :integer
  end
end
