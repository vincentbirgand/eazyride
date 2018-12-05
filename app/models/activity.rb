class Activity < ApplicationRecord
  has_many :journeys, dependent: :destroy
  CATEGORY = ["Sport de neige", "Sport d'eau"].freeze
  validates :category, inclusion: {
      in: CATEGORY,

    }

  NAME = ["Ski", "Surf", "Snowboard", "Kite-Surf"].freeze
  validates :name, inclusion: {
      in: NAME,
    }
end
