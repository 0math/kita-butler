class Kindergarden < ApplicationRecord
  include PgSearch::Model

  pg_search_scope :search_by_name_and_address_and_language,
    against: [ :name, :address, :language ],
    using: {
      tsearch: { prefix: true }
    }

  has_many :reservations
  has_many :reviews, through: :reservations
  # we don't validate kindergardens for now, as they are hardcoded by us
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
