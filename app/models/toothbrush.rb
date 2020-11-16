class Toothbrush < ApplicationRecord
  has_many :reviews
  has_many :rentals
  belongs_to :user, through: :rentals
end
