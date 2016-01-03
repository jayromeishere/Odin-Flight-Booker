class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [ a.code, a.id ] }
    @passenger_options = [ [1,1], [2,2], [3,3], [4,4] ]
    @departure_date_options = Flight.all.map{ |f| [ formatted_date(f.departure_time), f.id ] }
    @search_results = if params[:q].present? 
                            Flight.where("origin_id = ?
                            AND destination_id = ?
                            AND departure_time >= ?",
                            search_params[:origin],
                            search_params[:destination],
                            Time.now) 
                      else 
                        nil
                      end
  end

  def show
  end
  
  private
    
    def formatted_date(date)
      date.strftime("%d/%m/%Y")
    end
    
    def search_params
      params.require(:q).permit(:origin, :destination, :passengers,
                                date: [ :month, :day, :year ] )
    end
     
end
