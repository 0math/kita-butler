class Kid < ApplicationRecord
  belongs_to :user
  has_many :reservations
  has_many :favourites

  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates_uniqueness_of :first_name, scope: [:last_name, :date_of_birth]
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  # add validation for date format when implement datepicker
  validates :date_of_birth, presence: true
  validates :primary_language, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  # secondary language is not required
  validates :secondary_language, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :gender, presence: true
end
