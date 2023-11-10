class Passenger < ApplicationRecord
  has_many :bookings
  has_many :flights, through: :booking

  validates :name, presence: true
  validates :email, presence: true
end
