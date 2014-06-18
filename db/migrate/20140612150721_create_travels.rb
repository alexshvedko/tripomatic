class CreateTravels < ActiveRecord::Migration
  def change
    create_table :travels do |t|
      t.references :user
      t.text :icon
      t.text :name
      t.string :phone_number
      t.float :rating
      t.text :website
      t.float :location_a
      t.float :location_k

      t.timestamps
    end
    add_index :travels, :user_id
  end
end
