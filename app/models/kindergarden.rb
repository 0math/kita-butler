class Kindergarden < ApplicationRecord
  has_many :reservations
  belongs_to :favourite
end
