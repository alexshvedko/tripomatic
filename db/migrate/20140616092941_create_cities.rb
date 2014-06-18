class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.string :name
      t.float :location_a
      t.float :location_k

      t.timestamps
    end
  end
end
