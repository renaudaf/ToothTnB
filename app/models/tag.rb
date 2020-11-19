class Tag < ApplicationRecord
  has_many :toothbrush_tags
  has_many :toothbrush, through: :toothbrush_tags
end
