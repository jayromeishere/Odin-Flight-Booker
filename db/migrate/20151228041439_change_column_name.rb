class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :flights, :origin_airport_id, :origin_id
    rename_column :flights, :destination_airport_id, :destination_id
  end
end
