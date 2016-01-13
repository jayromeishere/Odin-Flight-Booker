class BookingsController < ApplicationController
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def new
    @selected_flight = Flight.find_by(id: params[:booking][:flight_id])
    # build empty booking and passenger :number_of_passengers times 
    @passengers = Array.new(params[:booking][:number_of_passengers].to_i){
      @selected_flight.bookings.build(flight_id: @selected_flight.id).build_passenger
      }
  end
  
  def create
    @booking = Flight.find_by(id: params[:booking][:flight_id]).bookings.build(booking_params)
    redirect_to root_url if @booking.save
  end
  
  private
  
    def booking_params
      params.require(:booking).permit(:flight_id, :number_of_passengers,
                                      passengers_attributes: [:name, :email] ) 
    end
    
    def passenger_params
      params.require(booking: :passenger).permit(:name, :email)
    end
    
end
