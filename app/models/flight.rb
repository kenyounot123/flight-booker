class Flight < ApplicationRecord
  belongs_to :origin_airport, foreign_key: "origin_id",  class_name: "Airport"
  belongs_to :destination_airport, foreign_key: "destination_id", class_name: "Airport"
end
