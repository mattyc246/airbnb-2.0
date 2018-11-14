class Listing < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :tags
end