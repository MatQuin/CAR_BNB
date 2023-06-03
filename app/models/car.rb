class Car < ApplicationRecord
  belongs_to :user
  has_many :bookmarks, dependent: :destroy
  validates :trademark, presence: true
end
