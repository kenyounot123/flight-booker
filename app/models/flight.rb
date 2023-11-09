class Flight < ApplicationRecord
  belongs_to :origin_airport, foreign_key: "origin_id",  class_name: "Airport", inverse_of: :departing_flights
  belongs_to :destination_airport, foreign_key: "destination_id", class_name: "Airport", inverse_of: :arriving_flights

  def self.options_for_select
    all.order(:departure_time).pluck(:departure_time).map(&:to_date).uniq
  end

end
