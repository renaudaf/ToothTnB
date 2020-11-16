class Toothbrush < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :status, inclusion: { in: ["Available", "Not Available"],
    message: "%{value} is not a valid category" }
end
