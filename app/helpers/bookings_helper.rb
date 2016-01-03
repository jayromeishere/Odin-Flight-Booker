module BookingsHelper
  
  def setup_booking(booking, number_of_passengers)
    booking.passengers ||= Array.new(number_of_passengers) { Passenger.new }
    number_of_passengers.to_i.times { booking.passengers.build }
    booking
  end

end
