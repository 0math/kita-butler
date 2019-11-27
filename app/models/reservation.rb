class Reservation < ApplicationRecord
  belongs_to :kindergarden
  belongs_to :kid

  has_many :reviews
end
