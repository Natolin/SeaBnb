class Boat < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  include PgSearch

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  validates :name, uniqueness: true, presence: true
  validates :location, presence: true
  # validates :capacity, presence: true
  # validates :price, presence: true
  # validates :boat_type, presence: true

  pg_search_scope :search_by_location,
   against: [ :location ],
   using: {
     tsearch: { prefix: true } # <-- now `superman batm` will return something!
   }


end
