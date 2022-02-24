CATEGORY = ["Randonnée", "Visite", "Tir", "Concert", "Pêche", "Fight club", "Chasse"]
class Experience < ApplicationRecord
  has_many :bookings
  validates :city, presence: true
  validates :price_per_hour, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ["Randonnée", "Visite", "Tir", "Concert", "Pêche", "Fight club", "Chasse"], allow_nil: false }
  belongs_to :user
end
