class Booking < ApplicationRecord
  belongs_to :car
  belongs_to :user
  validates :start, presence: true
  validates :end, presence: true
end
