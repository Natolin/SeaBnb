class Boat < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user

  validates :name, uniqueness: true, presence: true
  validates :location, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
  validates :boat_type, presence: true


end
