# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Airport.delete_all
Flight.delete_all

["SFO", "NYC", "BOS", "HNL", "ATL"].each do |code|
  Airport.create(
    airport_code: "#{code}",
  )
end

Flight.create(
  origin_airport: Airport.find_by(airport_code: "SFO"),
  destination_airport: Airport.find_by(airport_code: "NYC"),
  flight_duration: 300,
  departure_time: DateTime.parse('3rd Feb 2023 04:00:00 PM'),
  arrival_time: DateTime.parse('3rd Feb 2023 09:00:00 PM')
)
Flight.create(
  origin_airport: Airport.find_by(airport_code: "BOS"),
  destination_airport: Airport.find_by(airport_code: "HNL"),
  flight_duration: 240,
  departure_time: DateTime.parse('3rd Nov 2023 04:00:00 PM'),
  arrival_time: DateTime.parse('3rd Nov 20023 08:00:00 PM')
)
Flight.create(
  origin_airport: Airport.find_by(airport_code: "HNL"),
  destination_airport: Airport.find_by(airport_code: "ATL"),
  flight_duration: 240,
  departure_time: DateTime.parse('13 Nov 2023 04:00:00 PM'),
  arrival_time: DateTime.parse('13 Nov 20023 08:00:00 PM')
)

