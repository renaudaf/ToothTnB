class Toothbrush < ApplicationRecord
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :status, inclusion: { in: ["Available", "Not Available"],
    message: "%{value} is not a valid category" }
end
