class BookingsController < ApplicationController
  
  def show
    @booking = Booking.find(params[:id])
  end
  
  def new
    @selected_flight = Flight.find_by(id: params[:booking][:flight_id])
    @booking = Booking.new
  end
  
  def create
    @booking = Booking.create(booking_params)
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
