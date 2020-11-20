class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  has_many :rentals, dependent: :destroy
  has_many :toothbrushes, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_one_attached :photo
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, presence: true, confirmation: true , length: { minimum: 5 }
  validates :first_name, presence: true
end
