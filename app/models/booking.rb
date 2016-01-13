class Booking < ActiveRecord::Base
  belongs_to :flight
  belongs_to :passenger
  
  accepts_nested_attributes_for :passenger

end
