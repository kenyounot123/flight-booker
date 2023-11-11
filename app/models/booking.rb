class Booking < ApplicationRecord

  # has_many :passengers, dependent: :destroy
  # has_many :seats, dependent: :destroy
  # has_many :flights, through: :seats
  belongs_to :passenger
  belongs_to :flight

  accepts_nested_attributes_for :passenger
end
