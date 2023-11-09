class Flight < ApplicationRecord
  belongs_to :origin_airport, foreign_key: "origin_id",  class_name: "Airport"
  belongs_to :destination_airport, foreign_key: "destination_id", class_name: "Airport"

  def self.options_for_select
    all.order(:departure_date).pluck(:departure_date).map(&:to_date).uniq
  end

end
