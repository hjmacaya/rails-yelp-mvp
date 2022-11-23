class Review < ApplicationRecord
  # Validations
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }

  # Asociations
  belongs_to :restaurant
end
