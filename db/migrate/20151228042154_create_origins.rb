class CreateOrigins < ActiveRecord::Migration
  def change
    create_table :origins do |t|
      t.integer :flight_id
      t.integer :airport_id

      t.timestamps null: false
    end
  end
end
