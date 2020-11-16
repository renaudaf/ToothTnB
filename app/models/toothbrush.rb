class Toothbrush < ApplicationRecord
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  belongs_to :user, through: :rentals
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :status, inclusion: { in: ["Available", "Not Available"],
    message: "%{value} is not a valid category" }
end
