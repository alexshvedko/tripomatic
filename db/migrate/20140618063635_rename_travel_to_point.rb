class RenameTravelToPoint < ActiveRecord::Migration
  def up
    rename_table :travels, :points
  end

  def down
    rename_table :points, :travels
  end
end
