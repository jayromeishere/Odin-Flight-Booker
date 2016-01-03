# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sfo = Airport.create(code: "SFO")
lax = Airport.create(code: "LAX")
nyc = Airport.create(code: "NYC")
mia = Airport.create(code: "MIA")

flight1 = Flight.create(
  origin_id:      1,
  destination_id: 2,
  departure_time:         "2016-1-1 12:00:00",
  duration:               "3:00:00"
)

flight2 = Flight.create(
  origin_id:      1,
  destination_id: 3,
  departure_time:         "2016-1-1 1:00:00",
  duration:               "4:00:00"
)

flight3 = Flight.create(
  origin_id:      2,
  destination_id: 3,
  departure_time:         "2016-1-3 4:00:00",
  duration:               "5:00:00"
)

flight4 = Flight.create(
  origin_id:      4,
  destination_id: 2,
  departure_time:         "2016-1-4 9:00:00",
  duration:               "5:00:00"
)

flight5 = Flight.create(
  origin_id:      1,
  destination_id: 2,
  departure_time:         "2016-1-5 9:00:00",
  duration:               "3:00:00"
)

passenger1 = Passenger.create(
  name: "Jerome",
  email: "jerome@foobar.com",
  booking_id: 1
)

passenger2 = Passenger.create(
  name: "Nora",
  email: "nora@foobar.com",
  booking_id: 1
)

