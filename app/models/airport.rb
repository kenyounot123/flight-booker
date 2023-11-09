class Airport < ApplicationRecord
  has_many :departing_flights, foreign_key: "origin_id", class_name: "Flight", inverse_of: :origin_airport
  has_many :arriving_flights, foreign_key: "destination_id", class_name: "Flight", inverse_of: :destination_airport

 
end
