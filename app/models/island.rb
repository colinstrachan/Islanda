class Island < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, uniqueness: true, presence: true
  validates :location, uniqueness: true, presence: true
  validates :climate, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
end
