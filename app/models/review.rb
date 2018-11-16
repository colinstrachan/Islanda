class Review < ApplicationRecord
  belongs_to :island
  belongs_to :user
  validates :description, presence: true, length: { minimum: 20 }
  validates :rating, presence: true


end
