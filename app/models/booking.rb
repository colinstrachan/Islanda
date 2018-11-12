class Booking < ApplicationRecord
  belongs_to :island
  validates :start_date, presence: true
  validates :end_date, precense: true
  validates :end_date_after_start_date

private

  def end_date_after_start_date
    errors.add(:end_date, 'must be after start date') if end_date <= start_date
  end
end
