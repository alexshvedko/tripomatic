class AddUrlToPoint < ActiveRecord::Migration
  def change
    add_column :points, :url, :text
  end
end
