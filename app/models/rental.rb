class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :toothbrush
  validates :status, inclusion: { in: %w(Accepted Denied Pending),
    message: "%{value} is not a valid category" }
end
