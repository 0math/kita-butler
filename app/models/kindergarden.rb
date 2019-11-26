class Kindergarden < ApplicationRecord
  has_many :reservations
  belongs_to :favourite
  # we don't validate kindergardens for now, as they are hardcoded by us
end
