class Review < ApplicationRecord
  belongs_to :island
  belongs_to :user
  validates :description, presence: true
  validates :rating, presence: true


end
