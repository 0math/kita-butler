class Kindergarden < ApplicationRecord
  has_many :reservations
  has_many :reviews, through: :reservations
  # we don't validate kindergardens for now, as they are hardcoded by us
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
