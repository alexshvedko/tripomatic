class CreateRouts < ActiveRecord::Migration
  def change
    create_table :routs do |t|
      t.references :user
      t.float :latitude
      t.float :longitude
      t.string :address
      t.text :description
      t.string :title
      t.string :user_id

      t.timestamps
    end
    add_index :routs, :user_id
  end
end
