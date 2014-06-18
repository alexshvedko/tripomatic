class AddColumnToPoint < ActiveRecord::Migration
  def change
    add_column :points, :usercity_id, :integer
  end
end
