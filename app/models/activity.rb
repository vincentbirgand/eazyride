class Activity < ApplicationRecord
  CATEGORY = ["Sport de neige", "Sport d'eau"].freeze
  validates :category, inclusion: {
      in: CATEGORY,
    }

  NAME = ["Ski", "Surf"].freeze
  validates :name, inclusion: {
      in: NAME,
    }
end
