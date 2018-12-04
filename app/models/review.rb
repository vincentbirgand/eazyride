class Review < ApplicationRecord
  belongs_to :journey
  belongs_to :reviewee, class_name: 'User'
  belongs_to :reviewer, class_name: 'User'
  RATINGS = [0, 1, 2, 3, 4, 5].freeze
  validates :rating, inclusion: {
    in: RATINGS,
    message: "Veuillez noter de 0 à 5"
  }
end
