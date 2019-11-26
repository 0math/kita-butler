class Kindergarden < ApplicationRecord
  has_many :reviews, through: :reservations
  # we don't validate kindergardens for now, as they are hardcoded by us
end
