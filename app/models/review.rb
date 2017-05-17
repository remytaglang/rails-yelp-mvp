class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, presence: true, inclusion: { in: (0..5), allow_nil: true }
end
