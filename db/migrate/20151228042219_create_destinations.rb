class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
      t.integer :flight_id
      t.integer :airport_id

      t.timestamps null: false
    end
  end
end
