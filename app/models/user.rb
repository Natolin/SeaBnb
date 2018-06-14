class User < ApplicationRecord
  has_many :boats
  has_many :bookings

  validates :email, uniqueness: true, presence: true
  validates :user_name, uniqueness: true, presence: true, on: :update
  validates :password, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
