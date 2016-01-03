class ChangeColumnNameInBooking < ActiveRecord::Migration
  def change
    rename_column :bookings, :passenger_id, :number_of_passengers
  end
end
