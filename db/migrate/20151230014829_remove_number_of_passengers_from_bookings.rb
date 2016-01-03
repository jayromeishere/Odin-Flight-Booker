class RemoveNumberOfPassengersFromBookings < ActiveRecord::Migration
  def change
    remove_column :bookings, :number_of_passengers, :integer
  end
end
