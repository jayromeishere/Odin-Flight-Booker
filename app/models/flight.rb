class Flight < ActiveRecord::Base
  belongs_to :origin, class_name: "Airport"
  belongs_to :destination, class_name: "Airport"
  has_many :bookings, inverse_of: :flight 
    #to ensure Rails saves multiples of objects in nested forms 
  has_many :passengers, through: :bookings 
  
end
