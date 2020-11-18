class Toothbrush < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
  has_many :reviews, dependent: :destroy
  has_many :rentals, dependent: :destroy
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :status, inclusion: { in: ["Available", "Not Available"],
    message: "%{value} is not a valid category" }
  
end
