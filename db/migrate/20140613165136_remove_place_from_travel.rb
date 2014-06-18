class RemovePlaceFromTravel < ActiveRecord::Migration
  def up
    remove_column :travels, :place
  end

  def down
    add_column :travels, :place, :string
  end
end
