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
all_airports = {
  "SFO": "San Francisco, CA",
  "NYC": "New York City, US",
  "BOS": "Boston, MA",
  "HNL": "Honolulu, HL",
  "LAX": "Los Angeles, CA"
}
all_airports.each do |code, location|
  Airport.create(
    code: code,
    location: location
  )
end
date_time = {}
4.times do |time|
  random_time = Faker::Time.between_dates(from: Date.today - 1, to: Date.today, period: :all)
  random_date = random_time.to_date
  date_time[time] = [random_time, random_date]
end
Flight.create(
  origin_airport: Airport.find_by(code: "SFO"),
  destination_airport: Airport.find_by(code: "NYC"),
  flight_duration: 300,
  departure_time: date_time[0][0],
  departure_date: date_time[0][1]
)
Flight.create(
  origin_airport: Airport.find_by(code: "SFO"),
  destination_airport: Airport.find_by(code: "NYC"),
  flight_duration: 300,
  departure_time: date_time[1][0],
  departure_date: date_time[1][1]
)
Flight.create(
  origin_airport: Airport.find_by(code: "BOS"),
  destination_airport: Airport.find_by(code: "HNL"),
  flight_duration: 240,
  departure_time: date_time[2][0],
  departure_date: date_time[2][1]
)
Flight.create(
  origin_airport: Airport.find_by(code: "HNL"),
  destination_airport: Airport.find_by(code: "LAX"),
  flight_duration: 240,
  departure_time: date_time[3][0],
  departure_date: date_time[3][1]
)


