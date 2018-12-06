class Activity < ApplicationRecord
  has_many :journeys, dependent: :destroy
  CATEGORY = ["Sport de neige", "Sport d'eau", "Sport de montagne"].freeze
  validates :category, inclusion: {
      in: CATEGORY,

    }

  NAME = ["Ski", "Surf", "Snowboard", "Kite-Surf", "Escalade"].freeze
  validates :name, inclusion: {
      in: NAME,
    }
end
