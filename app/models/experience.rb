class Experience < ApplicationRecord
  has_many :bookings
  validates :city, presence: true
  validates :price_per_hour, presence: true
  validates :description, presence: true
  validates :category, presence: true
  belongs_to :user
end
