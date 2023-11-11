class Passenger < ApplicationRecord
  # belongs_to :booking
  # has_many :flights, through: :booking
  has_many :bookings
  has_many :flights, through: :bookings

  validates :name, presence: true
  validates :email, presence: true
end
