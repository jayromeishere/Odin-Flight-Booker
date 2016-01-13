class PassengersController < ApplicationController
  def create
    @selected_flight = Flight.find_by(id: params[:flight_id])
    @passengers = Array.new(1){
      params[:passengers].each do |passenger_params|
        @selected_flight.bookings.create(flight_id: @selected_flight.id).create_passenger(
        name: passenger_params[:name], email: passenger_params[:email])
      end
      }
    # how to add .save logic instead of using .create above? 
    # if @passengers.each { |passenger| passenger.save }
      redirect_to root_url
    # end

  end
  
  private
  
end
