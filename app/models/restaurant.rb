class Restaurant < ApplicationRecord
  # Validations
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian], message: "Please insert a valid category" }

  # Asociations
  has_many :reviews, dependent: :destroy
end
