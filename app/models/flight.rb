class Flight < ApplicationRecord
  belongs_to :origin_airport, foreign_key: "origin_id",  class_name: "Airport", inverse_of: :departing_flights
  belongs_to :destination_airport, foreign_key: "destination_id", class_name: "Airport", inverse_of: :arriving_flights


  # has_many :seats, dependent: :destroy
  # has_many :bookings, through: :seats
  # has_many :passengers, through: :bookings
  has_many :bookings, dependent: :destroy
  has_many :passengers, through: :bookings

end
