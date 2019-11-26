class Kid < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :favourites
end
