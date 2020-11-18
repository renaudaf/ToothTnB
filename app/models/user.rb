class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_many :rentals
  has_many :toothbrushes
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
end
