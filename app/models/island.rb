class Island < ApplicationRecord
  has_many :bookings, dependent: :destroy
  belongs_to :user
  validates :name, uniqueness: true, presence: true
  validates :location, uniqueness: true, presence: true
  validates :climate, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :capacity, presence: true
  mount_uploader :photo, PhotoUploader
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def self.available?(search_start, search_end, location)
    booked = self.includes(:bookings).where("(?, ?) OVERLAPS (bookings.start_date, bookings.end_date)", search_start, search_end).references(:bookings)
    booked_ids = booked.map { |f| f.id }
    self.where("location ILIKE ?", "%#{location}%").where.not(id: booked_ids)
  end

  def available?(requested_start_date, requested_end_date)
    bookings.each do |booking|
      return false if booking.start_date <= requested_end_date && requested_start_date <= booking.end_date
    end
    return true
  end
end
