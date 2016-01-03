class CreateFlights < ActiveRecord::Migration
  def change
    create_table :flights do |t|
      t.integer :origin_airport_id
      t.integer :destination_airport_id
      t.datetime :departure_time
      t.time :duration

      t.timestamps null: false
    end
  end
end
