class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :boat

  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :total_price, presence: true
end

