class RemoveColumnToTravel < ActiveRecord::Migration
  def up
    remove_column :travels, :user_id
  end

  def down
    add_column :travels, :user_id, :integer
  end
end
