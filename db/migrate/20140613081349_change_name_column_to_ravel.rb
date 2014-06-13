class ChangeNameColumnToRavel < ActiveRecord::Migration
def change
  change_column :travels, :location_k, :float
end
end
